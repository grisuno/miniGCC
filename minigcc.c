/*
 * mini_c – minimal C compiler for x86-64 Linux.
 * All ints are 8 bytes, stack-aligned, with correct operator order.
 * Generates standalone ELF with _start entry point.
 * Usage: ./mini_c source.c > output.s
 * Then: as output.s -o output.o && ld output.o -o output
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdarg.h>
#include <errno.h>

#define MAX_TOKEN_LEN   64
#define MAX_SYMBOLS     256
#define MAX_IDENT_LEN   32
#define MAX_SOURCE_SIZE (1024 * 1024)
#define STACK_ALIGN     8

enum {
    T_NUM = 256,
    T_ID,
    T_IF,
    T_ELSE,
    T_WHILE,
    T_RETURN,
    T_INT,
    T_CHAR,
    T_LE,
    T_GE,
    T_EQ,
    T_NE,
    T_AND,
    T_OR,
    T_EOF
};

static char *input_ptr;
static char *source_start;
static char token[MAX_TOKEN_LEN];
static int tok;
static int line = 1;
static FILE *output;

typedef struct {
    char name[MAX_IDENT_LEN];
    int offset;
    int is_global;
    int size;
} Symbol;

static Symbol symbols[MAX_SYMBOLS];
static int symbol_count = 0;
static int stack_size = 0;
static int label_counter = 0;
static int function_has_return = 0;
static int emit_enabled = 1;
static int max_func_stack = 0;

static void error(const char *msg) {
    fprintf(stderr, "Error at line %d, token '%s': %s\n", line, token, msg);
    exit(EXIT_FAILURE);
}

static void *safe_malloc(size_t size) {
    void *p = malloc(size);
    if (!p) {
        fprintf(stderr, "Out of memory\n");
        exit(EXIT_FAILURE);
    }
    return p;
}

/* Lexer */
static void next_token(void) {
    int c;
    while (isspace(c = *input_ptr)) {
        if (c == '\n') line++;
        input_ptr++;
    }
    if (c == '\0') {
        tok = T_EOF;
        return;
    }

    if (isalpha(c) || c == '_') {
        char *p = token;
        int len = 0;
        while ((isalnum(*input_ptr) || *input_ptr == '_') && len < MAX_TOKEN_LEN - 1) {
            *p++ = *input_ptr++;
            len++;
        }
        *p = '\0';
        if (strcmp(token, "if") == 0)       tok = T_IF;
        else if (strcmp(token, "else") == 0) tok = T_ELSE;
        else if (strcmp(token, "while") == 0) tok = T_WHILE;
        else if (strcmp(token, "return") == 0) tok = T_RETURN;
        else if (strcmp(token, "int") == 0)  tok = T_INT;
        else if (strcmp(token, "char") == 0) tok = T_CHAR;
        else tok = T_ID;
        return;
    }

    if (isdigit(c)) {
        char *p = token;
        int len = 0;
        while (isdigit(*input_ptr) && len < MAX_TOKEN_LEN - 1) {
            *p++ = *input_ptr++;
            len++;
        }
        *p = '\0';
        tok = T_NUM;
        return;
    }

    if (c == '=' && input_ptr[1] == '=') { input_ptr += 2; tok = T_EQ; strcpy(token, "=="); return; }
    if (c == '!' && input_ptr[1] == '=') { input_ptr += 2; tok = T_NE; strcpy(token, "!="); return; }
    if (c == '<' && input_ptr[1] == '=') { input_ptr += 2; tok = T_LE; strcpy(token, "<="); return; }
    if (c == '>' && input_ptr[1] == '=') { input_ptr += 2; tok = T_GE; strcpy(token, ">="); return; }
    if (c == '&' && input_ptr[1] == '&') { input_ptr += 2; tok = T_AND; strcpy(token, "&&"); return; }
    if (c == '|' && input_ptr[1] == '|') { input_ptr += 2; tok = T_OR; strcpy(token, "||"); return; }

    token[0] = c;
    token[1] = '\0';
    tok = c;
    input_ptr++;
}

static void match(int expected) {
    if (tok == expected) next_token();
    else error("unexpected token");
}

static void emit(const char *fmt, ...) {
    if (!emit_enabled) return;
    va_list args;
    va_start(args, fmt);
    vfprintf(output, fmt, args);
    va_end(args);
    fputc('\n', output);
}

static void emit_label(int label) {
    if (emit_enabled)
        fprintf(output, ".L%d:\n", label);
}

/* Symbol table */
static int find_symbol(const char *name) {
    for (int i = symbol_count - 1; i >= 0; i--) {
        if (strcmp(symbols[i].name, name) == 0)
            return i;
    }
    return -1;
}

static void add_symbol(const char *name, int is_global, int size) {
    if (symbol_count >= MAX_SYMBOLS)
        error("too many symbols");
    Symbol *s = &symbols[symbol_count];
    strncpy(s->name, name, MAX_IDENT_LEN - 1);
    s->name[MAX_IDENT_LEN - 1] = '\0';
    s->is_global = is_global;
    s->size = size;
    if (is_global) {
        s->offset = 0;
        emit("    .globl %s", name);
        emit("%s:", name);
        if (size > 0)
            emit("    .space %d", size);
    } else {
        stack_size = (stack_size + size + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
        s->offset = -stack_size;
        if (stack_size > max_func_stack)
            max_func_stack = stack_size;
    }
    symbol_count++;
}

/* Parser forward declarations */
static void expression(void);
static void statement(void);

static void unary(void) {
    if (tok == T_NUM) {
        emit("    movq $%s, %%rax", token);
        next_token();
    } else if (tok == T_ID) {
        int idx = find_symbol(token);
        if (idx < 0) error("undefined variable");
        Symbol *s = &symbols[idx];
        if (s->is_global)
            emit("    movq %s(%%rip), %%rax", token);
        else
            emit("    movq %d(%%rbp), %%rax", s->offset);
        next_token();
    } else if (tok == '(') {
        next_token();
        expression();
        match(')');
    } else if (tok == '*') {
        next_token();
        unary();
        emit("    movq (%%rax), %%rax");
    } else if (tok == '&') {
        next_token();
        if (tok != T_ID) error("expected identifier after '&'");
        int idx = find_symbol(token);
        if (idx < 0) error("undefined variable");
        Symbol *s = &symbols[idx];
        if (s->is_global)
            emit("    leaq %s(%%rip), %%rax", token);
        else
            emit("    leaq %d(%%rbp), %%rax", s->offset);
        next_token();
    } else {
        error("invalid primary expression");
    }
}

static void lvalue_address(void) {
    if (tok == T_ID) {
        int idx = find_symbol(token);
        if (idx < 0) error("undefined variable");
        Symbol *s = &symbols[idx];
        if (s->is_global)
            emit("    leaq %s(%%rip), %%rax", token);
        else
            emit("    leaq %d(%%rbp), %%rax", s->offset);
        next_token();
    } else if (tok == '*') {
        next_token();
        unary();   /* pointer value in %rax */
    } else {
        error("lvalue required");
    }
}

static void expr_prec(int min_prec) {
    unary();
    while (1) {
        int op = tok;
        int prec = 0;
        if (op == '+' || op == '-') prec = 10;
        else if (op == '*' || op == '/' || op == '%') prec = 20;
        else if (op == T_EQ || op == T_NE || op == '<' || op == '>' || op == T_LE || op == T_GE) prec = 5;
        else if (op == T_AND) prec = 3;
        else if (op == T_OR) prec = 2;
        else break;
        if (prec < min_prec) break;
        next_token();

        emit("    pushq %%rax");      /* save left operand */
        expr_prec(prec + 1);          /* right operand in %rax */
        emit("    popq %%rcx");       /* left operand in %rcx, right in %rax */

        switch (op) {
            case '+':
                emit("    addq %%rcx, %%rax");   /* rax = right + left */
                break;
            case '-':
                /* left (rcx) - right (rax) */
                emit("    subq %%rax, %%rcx");
                emit("    movq %%rcx, %%rax");
                break;
            case '*':
                emit("    imulq %%rcx, %%rax");  /* rax = right * left */
                break;
            case '/':
                /* left / right: dividend in %rax (left), divisor in %rcx (right) */
                emit("    movq %%rcx, %%rax");   /* left -> rax */
                emit("    cqto");                /* sign-extend rax to rdx:rax */
                emit("    idivq %%rcx");         /* divide rdx:rax by rcx (right) */
                break;
            case '%':
                emit("    movq %%rcx, %%rax");   /* left -> rax */
                emit("    cqto");
                emit("    idivq %%rcx");         /* quotient in rax, remainder in rdx */
                emit("    movq %%rdx, %%rax");   /* remainder -> rax */
                break;
            case T_EQ:
                emit("    cmpq %%rax, %%rcx");   /* compare left and right */
                emit("    sete %%al");
                emit("    movzbq %%al, %%rax");
                break;
            case T_NE:
                emit("    cmpq %%rax, %%rcx");
                emit("    setne %%al");
                emit("    movzbq %%al, %%rax");
                break;
            case '<':
                emit("    cmpq %%rax, %%rcx");
                emit("    setl %%al");
                emit("    movzbq %%al, %%rax");
                break;
            case '>':
                emit("    cmpq %%rax, %%rcx");
                emit("    setg %%al");
                emit("    movzbq %%al, %%rax");
                break;
            case T_LE:
                emit("    cmpq %%rax, %%rcx");
                emit("    setle %%al");
                emit("    movzbq %%al, %%rax");
                break;
            case T_GE:
                emit("    cmpq %%rax, %%rcx");
                emit("    setge %%al");
                emit("    movzbq %%al, %%rax");
                break;
            case T_AND:
                emit("    andq %%rcx, %%rax");
                break;
            case T_OR:
                emit("    orq %%rcx, %%rax");
                break;
            default:
                error("unknown binary operator");
        }
    }
}

static void expression(void) {
    expr_prec(0);
}

static void assignment_expr(void) {
    int saved_tok = tok;
    char saved_token[MAX_TOKEN_LEN];
    strcpy(saved_token, token);
    char *save_src = input_ptr;
    int save_line = line;

    if (tok != T_ID && tok != '*') {
        expression();
        return;
    }

    if (tok == T_ID) {
        next_token();
        if (tok == '=') {
            tok = saved_tok;
            strcpy(token, saved_token);
            input_ptr = save_src;
            line = save_line;

            lvalue_address();
            match('=');
            emit("    pushq %%rax");
            assignment_expr();
            emit("    popq %%rcx");
            emit("    movq %%rax, (%%rcx)");
            return;
        } else {
            tok = saved_tok;
            strcpy(token, saved_token);
            input_ptr = save_src;
            line = save_line;
            expression();
            return;
        }
    } else {
        expression();
        return;
    }
}

static void statement(void) {
    if (tok == T_IF) {
        next_token();
        match('(');
        expression();
        match(')');
        int l1 = label_counter++;
        int l2 = label_counter++;
        emit("    cmpq $0, %%rax");
        emit("    je .L%d", l1);
        statement();
        if (tok == T_ELSE) {
            next_token();
            emit("    jmp .L%d", l2);
            emit_label(l1);
            statement();
            emit_label(l2);
        } else {
            emit_label(l1);
        }
        return;
    }

    if (tok == T_WHILE) {
        next_token();
        match('(');
        int l1 = label_counter++;
        int l2 = label_counter++;
        emit_label(l1);
        expression();
        match(')');
        emit("    cmpq $0, %%rax");
        emit("    je .L%d", l2);
        statement();
        emit("    jmp .L%d", l1);
        emit_label(l2);
        return;
    }

    if (tok == T_RETURN) {
        function_has_return = 1;
        next_token();
        expression();
        match(';');
        emit("    leave");
        emit("    ret");
        return;
    }

    if (tok == '{') {
        next_token();
        int saved_stack = stack_size;
        while (tok != '}' && tok != T_EOF) {
            if (tok == T_INT || tok == T_CHAR) {
                int type = tok;
                next_token();
                if (tok != T_ID) error("expected variable name");
                int size = (type == T_INT) ? 8 : 1;
                add_symbol(token, 0, size);
                next_token();
                match(';');
            } else {
                statement();
            }
        }
        match('}');
        stack_size = saved_stack;
        return;
    }

    if (tok == ';') {
        next_token();
        return;
    }

    assignment_expr();
    match(';');
}

static void parse_function(const char *name, int ret_type) {
    (void)ret_type;
    match('(');
    while (tok != ')') {
        if (tok == T_INT || tok == T_CHAR) next_token();
        if (tok == T_ID) next_token();
        if (tok == ',') next_token();
    }
    match(')');

    if (tok != '{') error("expected function body");

    /* First pass: compute stack size (no code emitted) */
    char *body_start = input_ptr;
    int body_line = line;
    int body_tok = tok;
    char body_token[MAX_TOKEN_LEN];
    strcpy(body_token, token);
    int saved_symbol_cnt = symbol_count;

    emit_enabled = 0;
    int saved_stack = stack_size;
    max_func_stack = 0;
    stack_size = 0;
    function_has_return = 0;
    statement();
    int func_stack = max_func_stack;
    stack_size = saved_stack;
    emit_enabled = 1;

    /* Restore state for second pass */
    symbol_count = saved_symbol_cnt;
    input_ptr = body_start;
    line = body_line;
    tok = body_tok;
    strcpy(token, body_token);

    /* Emit function prologue */
    emit("    .globl %s", name);
    emit("%s:", name);
    emit("    pushq %%rbp");
    emit("    movq %%rsp, %%rbp");
    if (func_stack > 0)
        emit("    subq $%d, %%rsp", func_stack);

    /* Second pass: emit code */
    saved_stack = stack_size;
    stack_size = 0;
    function_has_return = 0;
    statement();
    if (!function_has_return) {
        emit("    leave");
        emit("    ret");
    }
    stack_size = saved_stack;
}

static void parse_program(void) {
    next_token();
    while (tok != T_EOF) {
        if (tok == T_INT || tok == T_CHAR) {
            int type = tok;
            next_token();
            if (tok != T_ID) error("expected identifier");
            char fname[MAX_IDENT_LEN];
            strncpy(fname, token, MAX_IDENT_LEN - 1);
            fname[MAX_IDENT_LEN - 1] = '\0';
            next_token();
            if (tok == '(') {
                parse_function(fname, type);
            } else {
                add_symbol(fname, 1, (type == T_INT) ? 8 : 1);
                if (tok == ';') next_token();
                else error("expected ';' or '(' after global");
            }
        } else {
            error("global must be int or char");
        }
    }
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s source.c > output.s\n", argv[0]);
        return EXIT_FAILURE;
    }

    FILE *input = fopen(argv[1], "r");
    if (!input) {
        fprintf(stderr, "Cannot open input file: %s\n", strerror(errno));
        return EXIT_FAILURE;
    }

    fseek(input, 0, SEEK_END);
    long file_size = ftell(input);
    if (file_size < 0 || file_size > MAX_SOURCE_SIZE) {
        fprintf(stderr, "Invalid file size\n");
        fclose(input);
        return EXIT_FAILURE;
    }
    rewind(input);

    source_start = safe_malloc(file_size + 1);
    size_t read_bytes = fread(source_start, 1, file_size, input);
    if (read_bytes != (size_t)file_size) {
        fprintf(stderr, "Error reading file\n");
        free(source_start);
        fclose(input);
        return EXIT_FAILURE;
    }
    source_start[file_size] = '\0';
    fclose(input);

    input_ptr = source_start;
    output = stdout;

    emit("    .section .text");
    parse_program();

    emit("    .globl _start");
    emit("_start:");
    emit("    call main");
    emit("    movq %%rax, %%rdi");
    emit("    movq $60, %%rax");
    emit("    syscall");

    free(source_start);
    return EXIT_SUCCESS;
}