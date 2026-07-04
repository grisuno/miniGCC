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
#define MAX_SYMBOLS     2048
#define MAX_IDENT_LEN   32
#define MAX_SOURCE_SIZE 1048576
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
    T_VOID,
    T_ENUM,
    T_STATIC,
    T_TYPEDEF,
    T_STRUCT,
    T_CONST,
    T_FOR,
    T_INC,
    T_DEC,
    T_ARROW,
    T_LE,
    T_GE,
    T_EQ,
    T_NE,
    T_AND,
    T_OR,
    T_SWITCH,
    T_CASE,
    T_DEFAULT,
    T_BREAK,
    T_CONTINUE,
    T_STRING,
    T_ADD_ASSIGN,
    T_SUB_ASSIGN,
    T_GOTO,
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
    int pointed;  /* 0 = not a pointer, else the token type it points to */
    int is_const;
    int const_value;
    int is_array;
    int elem_size; /* element size for arrays (0 for non-arrays) */
} Symbol;

static Symbol symbols[MAX_SYMBOLS];
static int symbol_count = 0;
static int stack_size = 0;
static int label_counter = 0;
static int function_has_return = 0;
static int emit_enabled = 1;
static int max_func_stack = 0;
static int assign_size = 8;
static int expr_pointed = 0;
static int current_elem_size = 0;
static int no_postfix_deref = 0;

#define MAX_CASES_PER_SWITCH 256
static int switch_case_values[MAX_CASES_PER_SWITCH];
static int switch_case_labels[MAX_CASES_PER_SWITCH];
static int switch_case_count = 0;
static int switch_has_default = 0;
static int switch_default_label = 0;
static int break_target = 0;
static int break_target_valid = 0;
static int continue_target = 0;
static int continue_target_valid = 0;

static int str_label_counter = 0;

#define MAX_STRINGS 2048
static char *string_pool[MAX_STRINGS];
static int string_count = 0;

#define MAX_STRUCT_MEMBERS 32
static int struct_total_size = 0;
static char struct_member_names[MAX_STRUCT_MEMBERS][MAX_IDENT_LEN];
static int struct_member_offsets[MAX_STRUCT_MEMBERS];
static int struct_member_sizes[MAX_STRUCT_MEMBERS];
static int struct_member_elem_sizes[MAX_STRUCT_MEMBERS];
static int struct_member_count = 0;

static void error(const char *msg);

#define MAX_MACROS 256

typedef struct {
    char name[MAX_IDENT_LEN];
    int value;
} Macro;

static Macro macros[MAX_MACROS];
static int macro_count = 0;

static int find_macro(const char *name) {
    for (int i = 0; i < macro_count; i++) {
        if (strcmp(macros[i].name, name) == 0)
            return i;
    }
    return -1;
}

static void add_macro(const char *name, int value) {
    if (macro_count >= MAX_MACROS)
        error("too many macros");
    char *dest = macros[macro_count].name;
    macro_count++;
    int nlen = strlen(name);
    if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
    int i = 0;
    while (i < nlen) { dest[i] = name[i]; i++; }
    dest[nlen] = '\0';
    macros[macro_count - 1].value = value;
}

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
    for (;;) {
        while (isspace(c = *input_ptr)) {
            if (c == '\n') line++;
            input_ptr++;
        }
        if (c == '\0') {
            tok = T_EOF;
            return;
        }
        /* Skip comments and preprocessor directives */
        if (c == '/' && input_ptr[1] == '*') {
            input_ptr += 2;
            while (*input_ptr) {
                if (*input_ptr == '*' && input_ptr[1] == '/') {
                    input_ptr += 2;
                    break;
                }
                if (*input_ptr == '\n') line++;
                input_ptr++;
            }
            continue;
        }
        if (c == '/' && input_ptr[1] == '/') {
            input_ptr += 2;
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
            continue;
        }
        if (c == '#') {
            input_ptr++;
            while (isspace(*input_ptr)) { if (*input_ptr == '\n') line++; input_ptr++; }
            if (strncmp(input_ptr, "define", 6) == 0) {
                input_ptr += 6;
                while (isspace(*input_ptr)) input_ptr++;
                char mname[MAX_IDENT_LEN];
                int mlen = 0;
                while ((isalnum(*input_ptr) || *input_ptr == '_') && mlen < MAX_IDENT_LEN - 1) {
                    mname[mlen] = *input_ptr;
                    mlen++;
                    input_ptr++;
                }
                mname[mlen] = '\0';
                while (isspace(*input_ptr)) input_ptr++;
                int mval = 0;
                if (isdigit(*input_ptr)) {
                    while (isdigit(*input_ptr)) {
                        mval = mval * 10 + (*input_ptr - '0');
                        input_ptr++;
                    }
                }
                add_macro(mname, mval);
            }
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
            continue;
        }
        break;
    }

    if (isalpha(c) || c == '_') {
        char *p = token;
        int len = 0;
        while ((isalnum(*input_ptr) || *input_ptr == '_') && len < MAX_TOKEN_LEN - 1) {
            *p = *input_ptr;
            p++;
            input_ptr++;
            len++;
        }
        *p = '\0';
        if (strcmp(token, "if") == 0)       tok = T_IF;
        else if (strcmp(token, "else") == 0) tok = T_ELSE;
        else if (strcmp(token, "while") == 0) tok = T_WHILE;
        else if (strcmp(token, "return") == 0) tok = T_RETURN;
        else if (strcmp(token, "int") == 0)  tok = T_INT;
        else if (strcmp(token, "long") == 0) tok = T_INT;
        else if (strcmp(token, "char") == 0) tok = T_CHAR;
        else if (strcmp(token, "void") == 0) tok = T_VOID;
        else if (strcmp(token, "enum") == 0) tok = T_ENUM;
        else if (strcmp(token, "static") == 0) tok = T_STATIC;
        else if (strcmp(token, "typedef") == 0) tok = T_TYPEDEF;
        else if (strcmp(token, "struct") == 0) tok = T_STRUCT;
        else if (strcmp(token, "const") == 0) tok = T_CONST;
        else if (strcmp(token, "for") == 0) tok = T_FOR;
        else if (strcmp(token, "switch") == 0) tok = T_SWITCH;
        else if (strcmp(token, "case") == 0) tok = T_CASE;
        else if (strcmp(token, "default") == 0) tok = T_DEFAULT;
        else if (strcmp(token, "break") == 0) tok = T_BREAK;
        else if (strcmp(token, "continue") == 0) tok = T_CONTINUE;
        else if (strcmp(token, "goto") == 0) tok = T_GOTO;
        else {
            int mi = find_macro(token);
            if (mi >= 0) {
                snprintf(token, MAX_TOKEN_LEN, "%d", macros[mi].value);
                tok = T_NUM;
            } else {
                tok = T_ID;
            }
        }
        return;
    }

    if (isdigit(c)) {
        char *p = token;
        int len = 0;
        while (isdigit(*input_ptr) && len < MAX_TOKEN_LEN - 1) {
            *p = *input_ptr;
            p++;
            input_ptr++;
            len++;
        }
        *p = '\0';
        tok = T_NUM;
        return;
    }

    if (c == '"') {
        char *p = token;
        int len = 0;
        input_ptr++;
        while (*input_ptr && *input_ptr != '"' && len < MAX_TOKEN_LEN - 2) {
            if (*input_ptr == '\\' && input_ptr[1]) {
                if (input_ptr[1] == 'n') { *p = '\n'; p++; input_ptr += 2; len++; }
                else if (input_ptr[1] == 't') { *p = '\t'; p++; input_ptr += 2; len++; }
                else if (input_ptr[1] == '\\') { *p = '\\'; p++; input_ptr += 2; len++; }
                else if (input_ptr[1] == '"') { *p = '"'; p++; input_ptr += 2; len++; }
                else { *p = *input_ptr; p++; input_ptr++; *p = *input_ptr; p++; input_ptr++; len += 2; }
            } else {
                *p = *input_ptr;
                p++;
                input_ptr++;
                len++;
            }
        }
        *p = '\0';
        if (*input_ptr == '"') input_ptr++;
        else error("unterminated string literal");
        tok = T_STRING;
        return;
    }

    if (c == '\'') {
        input_ptr++;
        int ch;
        if (*input_ptr == '\\') {
            input_ptr++;
            switch (*input_ptr) {
                case 'n': ch = '\n'; break;
                case 't': ch = '\t'; break;
                case '0': ch = '\0'; break;
                case '\\': ch = '\\'; break;
                case '\'': ch = '\''; break;
                default: ch = *input_ptr; break;
            }
        } else {
            ch = *input_ptr;
        }
        input_ptr++;
        if (*input_ptr != '\'') error("unterminated char literal");
        input_ptr++;
        snprintf(token, MAX_TOKEN_LEN, "%d", ch);
        tok = T_NUM;
        return;
    }

    if (c == '=' && input_ptr[1] == '=') { input_ptr += 2; tok = T_EQ; strcpy(token, "=="); return; }
    if (c == '!' && input_ptr[1] == '=') { input_ptr += 2; tok = T_NE; strcpy(token, "!="); return; }
    if (c == '<' && input_ptr[1] == '=') { input_ptr += 2; tok = T_LE; strcpy(token, "<="); return; }
    if (c == '>' && input_ptr[1] == '=') { input_ptr += 2; tok = T_GE; strcpy(token, ">="); return; }
    if (c == '&' && input_ptr[1] == '&') { input_ptr += 2; tok = T_AND; strcpy(token, "&&"); return; }
    if (c == '|' && input_ptr[1] == '|') { input_ptr += 2; tok = T_OR; strcpy(token, "||"); return; }
    if (c == '+' && input_ptr[1] == '+') { input_ptr += 2; tok = T_INC; strcpy(token, "++"); return; }
    if (c == '+' && input_ptr[1] == '=') { input_ptr += 2; tok = T_ADD_ASSIGN; strcpy(token, "+="); return; }
    if (c == '-' && input_ptr[1] == '=') { input_ptr += 2; tok = T_SUB_ASSIGN; strcpy(token, "-="); return; }
    if (c == '-' && input_ptr[1] == '-') { input_ptr += 2; tok = T_DEC; strcpy(token, "--"); return; }
    if (c == '-' && input_ptr[1] == '>') { input_ptr += 2; tok = T_ARROW; strcpy(token, "->"); return; }

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

static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int elem_size) {
    if (symbol_count >= MAX_SYMBOLS)
        error("too many symbols");
    Symbol *s = &symbols[symbol_count];
    char *d = s->name;
    strncpy(d, name, MAX_IDENT_LEN - 1);
    d[MAX_IDENT_LEN - 1] = '\0';
    s->is_global = is_global;
    s->size = size;
    s->pointed = pointed;
    s->is_const = 0;
    s->const_value = 0;
    s->is_array = is_array;
    s->elem_size = elem_size;
    if (is_global) {
        s->offset = 0;
        emit("    .bss");
        emit("    .globl %s", name);
        emit("%s:", name);
        if (size > 0)
            emit("    .space %d", size);
        emit("    .text");
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
static void lvalue_address(void);
static void handle_postfix(int is_lvalue);
static void assignment_expr(void);
static void parse_enum(void);
static void skip_struct(void);
static void skip_typedef(void);

static void unary(void) {
    if (tok == T_NUM) {
        emit("    movq $%s, %%rax", token);
        expr_pointed = 0;
        next_token();
    } else if (tok == T_ID) {
        char id_name[MAX_IDENT_LEN];
        strcpy(id_name, token);
        next_token();
        if (tok == '(') {
            /* Function call */
            next_token();
            int argc = 0;
            if (tok != ')') {
                while (1) {
                    assignment_expr();
                    emit("    pushq %%rax");
                    argc++;
                    if (tok == ')') break;
                    match(',');
                }
            }
            match(')');
            static const char *reg64[] = {"%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"};
            for (int i = 0; i < argc && i < 6; i++)
                emit("    movq %d(%%rsp), %s", (argc - i - 1) * 8, reg64[i]);
            if (argc > 6)
                error("too many function arguments (max 6)");
            if (argc > 0)
                emit("    addq $%d, %%rsp", argc * 8);
            emit("    xorl %%eax, %%eax");
            emit("    call %s", id_name);
            expr_pointed = 0;
            } else {
                int idx = find_symbol(id_name);
                if (idx < 0) error("undefined variable");
                Symbol *s = &symbols[idx];
                if (s->is_const) {
                    emit("    movq $%d, %%rax", s->const_value);
                    expr_pointed = 0;
                } else if (s->is_array || (s->pointed && s->size > 8)) {
                    /* Array: emit address instead of value (decays to pointer) */
                    current_elem_size = s->is_array ? s->elem_size : 8;
                    if (s->is_global)
                        emit("    leaq %s(%%rip), %%rax", id_name);
                    else
                        emit("    leaq %d(%%rbp), %%rax", s->offset);
                    expr_pointed = s->size > 0 && s->size <= 8 ? 0 : (s->pointed ? s->pointed : T_INT);
                } else {
                expr_pointed = s->pointed;
                if (s->size == 1) {
                    if (s->is_global)
                        emit("    movsbq %s(%%rip), %%rax", id_name);
                    else
                        emit("    movsbq %d(%%rbp), %%rax", s->offset);
                } else {
                    if (s->is_global)
                        emit("    movq %s(%%rip), %%rax", id_name);
                    else
                        emit("    movq %d(%%rbp), %%rax", s->offset);
                }
            }
        }
    } else if (tok == '(') {
        /* Check for type cast: (type)expr */
        char *cast_save = input_ptr;
        int cast_line = line;
        next_token();
        int is_cast = 0;
        if (tok == T_ID) {
            int ti = find_symbol(token);
            if (ti >= 0 && symbols[ti].is_const) {
                next_token();
                while (tok == '*') next_token();
                if (tok == ')') is_cast = 1;
            }
        } else if (tok == T_INT || tok == T_CHAR) {
            int saved = tok;
            next_token();
            while (tok == '*') next_token();
            if (tok == ')') is_cast = 1;
            if (!is_cast) tok = saved;
        }
        if (is_cast) {
            next_token(); /* consume ')' */
            unary();
            /* For char cast, sign-extend; for int/typedef no-op */
        } else {
            input_ptr = cast_save;
            line = cast_line;
            tok = '(';
            next_token();
            expression();
            match(')');
        }
    } else if (tok == '*') {
        next_token();
        unary();
        if (expr_pointed == T_CHAR)
            emit("    movsbq (%%rax), %%rax");
        else
            emit("    movq (%%rax), %%rax");
    } else if (tok == '&') {
        next_token();
        if (tok != T_ID) error("expected identifier after '&'");
        int idx = find_symbol(token);
        if (idx < 0) error("undefined variable");
        Symbol *s = &symbols[idx];
        expr_pointed = (s->size == 1) ? T_CHAR : T_INT;
        current_elem_size = s->is_array ? s->elem_size : 0;
        no_postfix_deref = 1;
        if (s->is_global)
            emit("    leaq %s(%%rip), %%rax", token);
        else
            emit("    leaq %d(%%rbp), %%rax", s->offset);
        next_token();
    } else if (tok == T_STRING) {
        int lbl = str_label_counter++;
        if (string_count < MAX_STRINGS) {
            string_pool[string_count] = malloc(strlen(token) + 1);
            strcpy(string_pool[string_count], token);
            string_count++;
        }
        emit("    leaq .Lstr%d(%%rip), %%rax", lbl);
        expr_pointed = T_CHAR;
        next_token();
    } else if (tok == '-') {
        next_token();
        unary();
        emit("    negq %%rax");
    } else if (tok == '!') {
        next_token();
        unary();
        emit("    testq %%rax, %%rax");
        emit("    sete %%al");
        emit("    movzbq %%al, %%rax");
    } else if (tok == '~') {
        next_token();
        unary();
        emit("    notq %%rax");
    } else {
        error("invalid primary expression");
    }
}

static void lvalue_address(void) {
    if (tok == T_ID) {
        int idx = find_symbol(token);
        if (idx < 0) error("undefined variable");
        Symbol *s = &symbols[idx];
        assign_size = s->size;
        if (s->is_array || (s->pointed && s->size > 8)) {
            current_elem_size = s->is_array ? s->elem_size : 8;
            expr_pointed = s->pointed ? s->pointed : T_INT;
        } else {
            current_elem_size = 0;
            expr_pointed = s->pointed;
        }
        int need_ptr_value = (s->pointed && s->size == 8);
        next_token();
        if (need_ptr_value && (tok == '[' || tok == '.' || tok == T_ARROW || tok == '('))
            need_ptr_value = 1;
        else if (need_ptr_value)
            need_ptr_value = 0;
        if (need_ptr_value) {
            if (s->is_global)
                emit("    movq %s(%%rip), %%rax", s->name);
            else
                emit("    movq %d(%%rbp), %%rax", s->offset);
        } else {
            if (s->is_global)
                emit("    leaq %s(%%rip), %%rax", s->name);
            else
                emit("    leaq %d(%%rbp), %%rax", s->offset);
        }
        handle_postfix(1);
    } else if (tok == '*') {
        next_token();
        unary();
        handle_postfix(1);
        if (assign_size == 0) assign_size = (expr_pointed == T_CHAR) ? 1 : 8;
    } else {
        error("lvalue required");
    }
}

static void handle_postfix(int is_lvalue) {
    while (tok == '[' || tok == '.' || tok == T_ARROW) {
        if (tok == '[') {
            next_token();
            emit("    pushq %%rax");
            int saved_no_deref = no_postfix_deref;
            int saved_ep = expr_pointed;
            int saved_ces = current_elem_size;
            expression();
            no_postfix_deref = saved_no_deref;
            expr_pointed = saved_ep;
            current_elem_size = saved_ces;
            emit("    popq %%rcx");
            int elem_size = current_elem_size;
            if (elem_size == 0) elem_size = (expr_pointed == T_CHAR) ? 1 : 8;
            if (elem_size > 1) emit("    imulq $%d, %%rax", elem_size);
            emit("    addq %%rcx, %%rax");
            current_elem_size = elem_size;
            assign_size = elem_size;
            if (!is_lvalue && !no_postfix_deref && elem_size <= 8) {
                if (expr_pointed == T_CHAR)
                    emit("    movsbq (%%rax), %%rax");
                else
                    emit("    movq (%%rax), %%rax");
                expr_pointed = 0;
            }
            match(']');
        } else if (tok == '.') {
            next_token();
            int off = 0, msize = 8, mesize = 8;
            for (int i = 0; i < struct_member_count; i++) {
                if (strcmp(token, struct_member_names[i]) == 0) {
                    off = struct_member_offsets[i];
                    msize = struct_member_sizes[i];
                    mesize = struct_member_elem_sizes[i];
                    break;
                }
            }
            next_token();
            if (off > 0) emit("    addq $%d, %%rax", off);
            assign_size = msize;
            current_elem_size = mesize;
            if (is_lvalue) {
                expr_pointed = (msize > 8) ? T_INT : 0;
            } else {
                if (msize > 8) {
                    expr_pointed = (msize > 0) ? T_INT : 0;
                } else {
                    if (msize == 1)
                        emit("    movsbq (%%rax), %%rax");
                    else
                        emit("    movq (%%rax), %%rax");
                    expr_pointed = 0;
                }
            }
        } else if (tok == T_ARROW) {
            next_token();
            int off = 0, msize = 8, mesize = 8;
            for (int i = 0; i < struct_member_count; i++) {
                if (strcmp(token, struct_member_names[i]) == 0) {
                    off = struct_member_offsets[i];
                    msize = struct_member_sizes[i];
                    mesize = struct_member_elem_sizes[i];
                    break;
                }
            }
            next_token();
            if (off > 0) emit("    addq $%d, %%rax", off);
            assign_size = msize;
            current_elem_size = mesize;
            if (is_lvalue) {
                expr_pointed = (msize > 8) ? T_INT : 0;
            } else {
                if (msize > 8) {
                    expr_pointed = (msize > 0) ? T_INT : 0;
                } else {
                    if (msize == 1)
                        emit("    movsbq (%%rax), %%rax");
                    else
                        emit("    movq (%%rax), %%rax");
                    expr_pointed = 0;
                }
            }
        }
    }
}

static void expr_prec(int min_prec) {
    unary();

    /* Postfix operators: [subscript], .member, ->member */
    handle_postfix(0);
    no_postfix_deref = 0;

    while (1) {
        int op = tok;
        int prec = 0;
        if (op == '+' || op == '-') prec = 10;
        else if (op == '*' || op == '/' || op == '%') prec = 20;
        else if (op == T_EQ || op == T_NE || op == '<' || op == '>' || op == T_LE || op == T_GE) prec = 5;
        else if (op == '&') prec = 7;
        else if (op == '^') prec = 6;
        else if (op == '|') prec = 5;
        else if (op == T_AND) prec = 3;
        else if (op == T_OR) prec = 2;
        else if (op == '?') prec = 1;
        else break;
        if (prec < min_prec) break;
        next_token();

        if (op == '?') {
            int l_false = label_counter++;
            int l_end = label_counter++;
            emit("    cmpq $0, %%rax");
            emit("    je .L%d", l_false);
            expression();
            emit("    jmp .L%d", l_end);
            emit_label(l_false);
            match(':');
            expression();
            emit_label(l_end);
            continue;
        }

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
            case '&':
                emit("    andq %%rcx, %%rax");
                break;
            case '^':
                emit("    xorq %%rcx, %%rax");
                break;
            case '|':
                emit("    orq %%rcx, %%rax");
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
    /* Save state so we can re-parse as lvalue if ++/-- follows */
    char *save_src = input_ptr;
    int save_line_val = line;
    int save_tok = tok;
    char save_token[MAX_TOKEN_LEN];
    strcpy(save_token, token);

    expr_prec(0);

    if (tok == T_INC || tok == T_DEC) {
        int op = tok;
        /* Re-parse from saved position using lvalue_address */
        input_ptr = save_src;
        line = save_line_val;
        tok = save_tok;
        strcpy(token, save_token);
        lvalue_address();
        handle_postfix(1);
        int sz = (assign_size == 1) ? 1 : 8;
        if (assign_size == 1)
            emit("    movsbq (%%rax), %%rcx");
        else
            emit("    movq (%%rax), %%rcx");
        if (op == T_INC) {
            if (sz == 1) emit("    addb $1, (%%rax)");
            else emit("    addq $1, (%%rax)");
        } else {
            if (sz == 1) emit("    subb $1, (%%rax)");
            else emit("    subq $1, (%%rax)");
        }
        emit("    movq %%rcx, %%rax");
        next_token();
    }
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

        /* Peek ahead through postfix operators to detect =, ++, -- */
        char *peek_ptr = input_ptr;
        int peek_line = line;
        int peek_tok = tok;
        char peek_token[MAX_TOKEN_LEN];
        strcpy(peek_token, token);

        int assign_type = 0; /* 0=none, 1='=', 2=T_INC, 3=T_DEC */
        while (tok == '[' || tok == '.' || tok == T_ARROW || tok == '(') {
            if (tok == '(') {
                int depth = 1;
                while (depth > 0 && tok != T_EOF) { next_token(); if (tok == '(') depth++; else if (tok == ')') depth--; }
                next_token();
            } else if (tok == '[') {
                int depth = 1;
                while (depth > 0 && tok != T_EOF) { next_token(); if (tok == '[') depth++; else if (tok == ']') depth--; }
                next_token();
            } else {
                next_token(); /* . or ->: skip member name */
                next_token(); /* read token after member name */
            }
        }
        if (tok == '=') assign_type = 1;
        else if (tok == T_INC) assign_type = 2;
        else if (tok == T_DEC) assign_type = 3;
        else if (tok == T_ADD_ASSIGN) assign_type = 4;
        else if (tok == T_SUB_ASSIGN) assign_type = 5;
        else assign_type = 0;

        /* Restore to state after T_ID */
        input_ptr = peek_ptr;
        line = peek_line;
        tok = peek_tok;
        strcpy(token, peek_token);

        if (assign_type == 1) {
            tok = saved_tok;
            strcpy(token, saved_token);
            input_ptr = save_src;
            line = save_line;

            lvalue_address();
            match('=');
            emit("    pushq %%rax");
            assignment_expr();
            emit("    popq %%rcx");
            if (assign_size == 1)
                emit("    movb %%al, (%%rcx)");
            else
                emit("    movq %%rax, (%%rcx)");
            return;
        } else if (assign_type == 4) {
            /* += */
            tok = saved_tok;
            strcpy(token, saved_token);
            input_ptr = save_src;
            line = save_line;
            lvalue_address();
            emit("    pushq %%rax");
            if (assign_size == 1)
                emit("    movsbq (%%rax), %%rax");
            else
                emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax");
            next_token(); /* consume += */
            assignment_expr();
            emit("    popq %%rcx");
            if (assign_size == 1) {
                emit("    addq %%rcx, %%rax");
                emit("    popq %%rcx");
                emit("    movb %%al, (%%rcx)");
            } else {
                emit("    addq %%rcx, %%rax");
                emit("    popq %%rcx");
                emit("    movq %%rax, (%%rcx)");
            }
            return;
        } else if (assign_type == 5) {
            tok = saved_tok;
            strcpy(token, saved_token);
            input_ptr = save_src;
            line = save_line;
            lvalue_address();
            emit("    pushq %%rax");
            if (assign_size == 1)
                emit("    movsbq (%%rax), %%rax");
            else
                emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax");
            next_token(); /* consume -= */
            assignment_expr();
            emit("    popq %%rcx");
            if (assign_size == 1) {
                emit("    subq %%rcx, %%rax");
                emit("    popq %%rcx");
                emit("    movb %%al, (%%rcx)");
            } else {
                emit("    subq %%rcx, %%rax");
                emit("    popq %%rcx");
                emit("    movq %%rax, (%%rcx)");
            }
            return;
        } else if (assign_type != 0) {
            int op = tok == T_INC ? T_INC : T_DEC;
            input_ptr = save_src;
            line = save_line;
            tok = saved_tok;
            strcpy(token, saved_token);
            lvalue_address();
            if (assign_size == 1)
                emit("    movsbq (%%rax), %%rcx");
            else
                emit("    movq (%%rax), %%rcx");
            if (op == T_INC) {
                if (assign_size == 1)
                    emit("    addb $1, (%%rax)");
                else
                    emit("    addq $1, (%%rax)");
            } else {
                if (assign_size == 1)
                    emit("    subb $1, (%%rax)");
                else
                    emit("    subq $1, (%%rax)");
            }
            emit("    movq %%rcx, %%rax");
            next_token();
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
        /* tok == '*' — could be dereference lvalue like *p = expr */
        char *peek_ptr = input_ptr;
        int peek_line = line;
        int peek_tok = tok;
        char peek_token[MAX_TOKEN_LEN];
        strcpy(peek_token, token);

        expression();

        int assign_type = 0;
        if (tok == '=') assign_type = 1;
        else if (tok == T_INC) assign_type = 2;
        else if (tok == T_DEC) assign_type = 3;
        else if (tok == T_ADD_ASSIGN) assign_type = 4;
        else if (tok == T_SUB_ASSIGN) assign_type = 5;

        input_ptr = peek_ptr;
        line = peek_line;
        tok = peek_tok;
        strcpy(token, peek_token);

        if (assign_type == 1) {
            lvalue_address();
            match('=');
            emit("    pushq %%rax");
            assignment_expr();
            emit("    popq %%rcx");
            if (assign_size == 1)
                emit("    movb %%al, (%%rcx)");
            else
                emit("    movq %%rax, (%%rcx)");
            return;
        } else if (assign_type == 4) {
            lvalue_address();
            emit("    pushq %%rax");
            if (assign_size == 1)
                emit("    movsbq (%%rax), %%rax");
            else
                emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax");
            next_token();
            assignment_expr();
            emit("    popq %%rcx");
            if (assign_size == 1) {
                emit("    addq %%rcx, %%rax");
                emit("    popq %%rcx");
                emit("    movb %%al, (%%rcx)");
            } else {
                emit("    addq %%rcx, %%rax");
                emit("    popq %%rcx");
                emit("    movq %%rax, (%%rcx)");
            }
            return;
        } else if (assign_type == 5) {
            lvalue_address();
            emit("    pushq %%rax");
            if (assign_size == 1)
                emit("    movsbq (%%rax), %%rax");
            else
                emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax");
            next_token();
            assignment_expr();
            emit("    popq %%rcx");
            if (assign_size == 1) {
                emit("    subq %%rcx, %%rax");
                emit("    popq %%rcx");
                emit("    movb %%al, (%%rcx)");
            } else {
                emit("    subq %%rcx, %%rax");
                emit("    popq %%rcx");
                emit("    movq %%rax, (%%rcx)");
            }
            return;
        } else if (assign_type != 0) {
            lvalue_address();
            if (assign_size == 1)
                emit("    movsbq (%%rax), %%rcx");
            else
                emit("    movq (%%rax), %%rcx");
            if (assign_type == T_INC) {
                if (assign_size == 1)
                    emit("    addb $1, (%%rax)");
                else
                    emit("    addq $1, (%%rax)");
            } else {
                if (assign_size == 1)
                    emit("    subb $1, (%%rax)");
                else
                    emit("    subq $1, (%%rax)");
            }
            emit("    movq %%rcx, %%rax");
            next_token();
            return;
        } else {
            expression();
            return;
        }
    }
}

static void statement(void) {
    if (tok == T_IF) {
        next_token();
        match('(');
        assignment_expr();
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

    if (tok == T_FOR) {
        next_token();
        match('(');
        /* init */
        if (tok == T_INT || tok == T_CHAR) {
            int type = tok;
            next_token();
            int is_ptr = 0;
            while (tok == '*') { is_ptr = 1; next_token(); }
            if (tok != T_ID) error("expected variable name");
            char varname[MAX_IDENT_LEN];
            int nlen = strlen(token);
            if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
            memcpy(varname, token, nlen);
            varname[nlen] = '\0';
            next_token();
            int vsize = is_ptr ? 8 : (type == T_INT ? 8 : 1);
            add_symbol(varname, 0, vsize, is_ptr ? type : 0, 0, 0);
            if (tok == '=') {
                next_token();
                expression();
                /* Store init value to variable */
                int si = find_symbol(varname);
                Symbol *s = &symbols[si];
                if (s->is_global)
                    emit("    movq %%rax, %s(%%rip)", s->name);
                else
                    emit("    movq %%rax, %d(%%rbp)", s->offset);
            }
            match(';');
        } else if (tok != ';') {
            expression();
            match(';');
        } else {
            match(';');
        }

        /* Save condition position (tok is already first cond token) */
        char *cond_pos = input_ptr;
        int cond_line_saved = line;
        int cond_first_tok = tok;
        char cond_first_tok_val[MAX_TOKEN_LEN];
        strcpy(cond_first_tok_val, token);
        int has_cond = (tok != ';');
        if (has_cond) {
            while (tok != ';') next_token();
        }
        match(';');

        /* Save increment position (tok is already first inc token) */
        char *inc_pos = input_ptr;
        int inc_line_saved = line;
        int inc_first_tok = tok;
        char inc_first_tok_val[MAX_TOKEN_LEN];
        strcpy(inc_first_tok_val, token);
        int has_inc = (tok != ')');
        if (has_inc) {
            while (tok != ')') next_token();
        }
        match(')');

        int l_body = label_counter++;
        int l_inc = has_inc ? label_counter++ : 0;
        int l_cond = label_counter++;
        int l_end = label_counter++;
        int l_cont = has_inc ? l_inc : l_cond;

        emit("    jmp .L%d", l_cond);
        emit_label(l_body);

        /* Body */
        {
            int saved_cont = continue_target;
            int saved_cont_valid = continue_target_valid;
            int saved_break = break_target;
            int saved_break_valid = break_target_valid;
            continue_target = l_cont;
            continue_target_valid = 1;
            break_target = l_end;
            break_target_valid = 1;
            statement();
            continue_target = saved_cont;
            continue_target_valid = saved_cont_valid;
            break_target = saved_break;
            break_target_valid = saved_break_valid;
        }

        /* Save state after body (before re-parses modify input) */
        char *after_body_pos = input_ptr;
        int after_body_line = line;
        int after_body_tok = tok;
        char after_body_token[MAX_TOKEN_LEN];
        strcpy(after_body_token, token);

        /* Increment (re-parsed from saved position) */
        if (has_inc) {
            emit_label(l_inc);
            input_ptr = inc_pos;
            line = inc_line_saved;
            tok = inc_first_tok;
            strcpy(token, inc_first_tok_val);
            assignment_expr();
            emit("    jmp .L%d", l_cond);
        }

        /* Condition (re-parsed from saved position) */
        emit_label(l_cond);
        if (has_cond) {
            input_ptr = cond_pos;
            line = cond_line_saved;
            tok = cond_first_tok;
            strcpy(token, cond_first_tok_val);
            expression();
            emit("    cmpq $0, %%rax");
            emit("    jne .L%d", l_body);
        } else {
            emit("    jmp .L%d", l_body);
        }

        emit_label(l_end);

        /* Restore normal parsing position */
        input_ptr = after_body_pos;
        line = after_body_line;
        tok = after_body_tok;
        strcpy(token, after_body_token);
        return;
    }

    if (tok == T_WHILE) {
        next_token();
        match('(');
        int l1 = label_counter++;
        int l2 = label_counter++;
        int saved_cont = continue_target;
        int saved_cont_valid = continue_target_valid;
        int saved_break = break_target;
        int saved_break_valid = break_target_valid;
        continue_target = l1;
        continue_target_valid = 1;
        break_target = l2;
        break_target_valid = 1;
        emit_label(l1);
        assignment_expr();
        match(')');
        emit("    cmpq $0, %%rax");
        emit("    je .L%d", l2);
        statement();
        emit("    jmp .L%d", l1);
        emit_label(l2);
        continue_target = saved_cont;
        continue_target_valid = saved_cont_valid;
        break_target = saved_break;
        break_target_valid = saved_break_valid;
        return;
    }

    if (tok == T_SWITCH) {
        next_token();
        match('(');
        expression();
        match(')');
        int dispatch_label = label_counter++;
        int end_label = label_counter++;

        emit("    pushq %%rax");
        emit("    jmp .L%d", dispatch_label);

        /* Save outer break state */
        int saved_break_target = break_target;
        int saved_break_valid = break_target_valid;
        int saved_case_count = switch_case_count;
        int saved_has_default = switch_has_default;
        int saved_default_label = switch_default_label;
        break_target = end_label;
        break_target_valid = 1;
        switch_case_count = 0;
        switch_has_default = 0;
        switch_default_label = 0;

        match('{');
        while (tok != '}' && tok != T_EOF) {
            if (tok == T_CASE) {
                next_token();
                int val = atoi(token);
                next_token();
                match(':');
                int lbl = label_counter++;
                switch_case_values[switch_case_count] = val;
                switch_case_labels[switch_case_count] = lbl;
                switch_case_count++;
                emit_label(lbl);
            } else if (tok == T_DEFAULT) {
                next_token();
                match(':');
                switch_has_default = 1;
                switch_default_label = label_counter++;
                emit_label(switch_default_label);
            } else {
                statement();
            }
        }
        match('}');

        /* Emit fall-through guard: any case without break goes to end */
        emit("    jmp .L%d", end_label);

        /* Emit dispatch */
        emit_label(dispatch_label);
        emit("    movq (%%rsp), %%rax");
        for (int i = 0; i < switch_case_count; i++) {
            emit("    cmpq $%d, %%rax", switch_case_values[i]);
            emit("    je .L%d", switch_case_labels[i]);
        }
        if (switch_has_default)
            emit("    jmp .L%d", switch_default_label);
        emit_label(end_label);
        emit("    addq $8, %%rsp");

        /* Restore outer break state */
        break_target = saved_break_target;
        break_target_valid = saved_break_valid;
        switch_case_count = saved_case_count;
        switch_has_default = saved_has_default;
        switch_default_label = saved_default_label;
        return;
    }

    if (tok == T_BREAK) {
        next_token();
        match(';');
        if (break_target_valid)
            emit("    jmp .L%d", break_target);
        return;
    }

    if (tok == T_CONTINUE) {
        next_token();
        match(';');
        if (continue_target_valid)
            emit("    jmp .L%d", continue_target);
        return;
    }

    if (tok == T_GOTO) {
        next_token();
        if (tok != T_ID) error("expected label name");
        emit("    jmp %s", token);
        next_token();
        match(';');
        return;
    }

    if (tok == T_RETURN) {
        function_has_return = 1;
        next_token();
        if (tok != ';') expression();
        match(';');
        emit("    leave");
        emit("    ret");
        return;
    }

    if (tok == '{') {
        next_token();
        int saved_stack = stack_size;
        while (tok != '}' && tok != T_EOF) {
            if (tok == T_ID && (strcmp(token, "unsigned") == 0 || strcmp(token, "signed") == 0)) {
                next_token();
                /* fall through to type handling with next token */
            }
            if (tok == T_STATIC) {
                next_token();
                continue;
            } else if (tok == T_CONST) {
                next_token();
                continue;
            } else if (tok == T_TYPEDEF) {
                skip_typedef();
            } else if (tok == T_STRUCT) {
                next_token();
                skip_struct();
            } else if (tok == T_ID) {
                /* Check for label (ID followed by ':') */
                {
                    const char *p = input_ptr;
                    while (*p && (*p == ' ' || *p == '\t')) p++;
                    if (*p == ':') {
                        emit("%s:", token);
                        next_token();
                        next_token();
                        continue;
                    }
                }
                /* Typedef type declaration (e.g., Macro *m) */
                int ti = find_symbol(token);
                if (ti < 0 || !symbols[ti].is_const) { statement(); continue; }
                int type_size = symbols[ti].const_value;
                next_token();
                restart_typedef:
                int is_ptr = 0;
                while (tok == '*') { is_ptr = 1; next_token(); }
                if (tok != T_ID) error("expected variable name");
                char varname[MAX_IDENT_LEN];
                int nlen = strlen(token);
                if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
                memcpy(varname, token, nlen);
                varname[nlen] = '\0';
                next_token();
                int size = is_ptr ? 8 : type_size;
                int is_arr = 0;
                int elem_size = size;
                while (tok == '[') {
                    is_arr = 1;
                    next_token();
                    int cnt = 0;
                    if (tok == T_NUM) { cnt = atoi(token); next_token(); }
                    else if (tok == T_ID) {
                        int mi = find_macro(token);
                        if (mi >= 0) cnt = macros[mi].value;
                        else error("undefined macro");
                        next_token();
                    }
                    match(']');
                    size = size * (cnt > 0 ? cnt : 1);
                }
                add_symbol(varname, 0, size, is_ptr ? T_INT : 0, is_arr, elem_size);
                if (tok == '=') {
                    next_token();
                    if (tok == '{') {
                        next_token();
                        int elem_idx = 0;
                        while (tok != '}') {
                            expression();
                            int si = find_symbol(varname);
                            Symbol *s = &symbols[si];
                            int off = s->offset + elem_idx * elem_size;
                            if (elem_size == 1)
                                emit("    movb %%al, %d(%%rbp)", off);
                            else
                                emit("    movq %%rax, %d(%%rbp)", off);
                            if (tok == ',') next_token();
                            elem_idx++;
                        }
                        match('}');
                        if (is_arr && size == 0) {
                            size = elem_idx * elem_size;
                            int si = find_symbol(varname);
                            Symbol *s = &symbols[si];
                            int old_al = (s->size + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
                            int new_al = (size + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
                            s->size = size;
                            s->offset -= (new_al - old_al);
                            stack_size += (new_al - old_al);
                            if (stack_size > max_func_stack)
                                max_func_stack = stack_size;
                        }
                    } else {
                        expression();
                        int si = find_symbol(varname);
                        Symbol *s = &symbols[si];
                        if (s->is_global)
                            emit("    movq %%rax, %s(%%rip)", s->name);
                        else
                            emit("    movq %%rax, %d(%%rbp)", s->offset);
                    }
                }
                if (tok == ',') {
                    next_token();
                    goto restart_typedef;
                }
                match(';');
            } else if (tok == T_INT || tok == T_CHAR || tok == T_VOID) {
                int type = tok;
                next_token();
                restart_int:
                int is_ptr = 0;
                while (tok == '*') { is_ptr = 1; next_token(); }
                if (tok != T_ID) error("expected variable name");
                char varname[MAX_IDENT_LEN];
                int nlen = strlen(token);
                if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
                memcpy(varname, token, nlen);
                varname[nlen] = '\0';
                next_token();
                int size = is_ptr ? 8 : (type == T_INT ? 8 : 1);
                int is_arr = 0;
                int elem_size = size;
                while (tok == '[') {
                    is_arr = 1;
                    next_token();
                    int cnt = 0;
                    if (tok == T_NUM) {
                        cnt = atoi(token);
                        next_token();
                    } else if (tok == T_ID) {
                        int mi = find_macro(token);
                        if (mi >= 0) cnt = macros[mi].value;
                        else error("undefined macro");
                        next_token();
                    }
                    match(']');
                    size = size * (cnt > 0 ? cnt : 1);
                }
                add_symbol(varname, 0, size, is_ptr ? type : 0, is_arr, elem_size);
                if (tok == '=') {
                    next_token();
                    if (tok == '{') {
                        next_token();
                        int elem_idx = 0;
                        while (tok != '}') {
                            expression();
                            int si = find_symbol(varname);
                            Symbol *s = &symbols[si];
                            int off = s->offset + elem_idx * elem_size;
                            if (elem_size == 1)
                                emit("    movb %%al, %d(%%rbp)", off);
                            else
                                emit("    movq %%rax, %d(%%rbp)", off);
                            if (tok == ',') next_token();
                            elem_idx++;
                        }
                        match('}');
                        if (is_arr && size == 0) {
                            size = elem_idx * elem_size;
                            int si = find_symbol(varname);
                            Symbol *s = &symbols[si];
                            int old_al = (s->size + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
                            int new_al = (size + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
                            s->size = size;
                            s->offset -= (new_al - old_al);
                            stack_size += (new_al - old_al);
                            if (stack_size > max_func_stack)
                                max_func_stack = stack_size;
                        }
                    } else {
                        expression();
                        int si = find_symbol(varname);
                        Symbol *s = &symbols[si];
                        if (s->is_global)
                            emit("    movq %%rax, %s(%%rip)", s->name);
                        else
                            emit("    movq %%rax, %d(%%rbp)", s->offset);
                    }
                }
                if (tok == ',') {
                    next_token();
                    goto restart_int;
                }
                match(';');
            } else if (tok == T_ENUM) {
                parse_enum();
            } else {
                statement();
            }
        }
        match('}');
        stack_size = saved_stack;
        return;
    }

    if (tok == '(') {
        char *peek_src = input_ptr;
        int peek_line = line;
        int peek_tok = tok;
        char peek_token[MAX_TOKEN_LEN];
        strcpy(peek_token, token);
        next_token();
        if (tok == T_VOID) {
            next_token();
            if (tok == ')') {
                next_token();
                expression();
                match(';');
                return;
            }
        }
        input_ptr = peek_src;
        line = peek_line;
        tok = peek_tok;
        strcpy(token, peek_token);
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
    int outer_stack = stack_size;
    int saved_sym_count = symbol_count;
    int saved_stack_outer = stack_size;

    match('(');

    /* Parse parameters */
    char param_names[MAX_SYMBOLS][MAX_IDENT_LEN];
    int param_count = 0;
    if (tok == T_VOID) {
        next_token();
    } else {
        while (tok != ')') {
            if (tok == T_CONST) {
                next_token();
                continue;
        } else if (tok == T_INT || tok == T_CHAR || tok == T_VOID) {
                int ptype = tok;
                next_token();
                int is_ptr = 0;
                int ptr_count = 0;
                while (tok == '*') { is_ptr = 1; ptr_count++; next_token(); }
                if (tok != T_ID) error("expected parameter name");
                int nlen = strlen(token);
                if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
                memcpy(param_names[param_count], token, nlen);
                param_names[param_count][nlen] = '\0';
                int psize = is_ptr ? 8 : (ptype == T_CHAR ? 1 : 8);
                int pointed_type = is_ptr ? (ptr_count > 1 ? T_INT : ptype) : 0;
                add_symbol(token, 0, psize, pointed_type, 0, 0);
                param_count++;
                next_token();
                if (tok == ',') next_token();
            } else if (tok == T_VOID) {
                next_token();
            } else if (tok == '.') {
                /* Variadic ... */
                next_token();
                if (tok == '.') next_token();
                if (tok == '.') next_token();
                break;
            } else if (tok == T_ID) {
                /* Typedef type (e.g., size_t) */
                int ti = find_symbol(token);
                if (ti < 0 || !symbols[ti].is_const) error("invalid parameter type");
                int psize = symbols[ti].const_value;
                next_token();
                int is_ptr = 0;
                while (tok == '*') { is_ptr = 1; next_token(); }
                if (tok != T_ID) error("expected parameter name");
                int nlen = strlen(token);
                if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
                memcpy(param_names[param_count], token, nlen);
                param_names[param_count][nlen] = '\0';
                if (is_ptr) psize = 8;
                add_symbol(token, 0, psize, is_ptr ? T_INT : 0, 0, 0);
                param_count++;
                next_token();
                if (tok == ',') next_token();
            } else {
                error("invalid parameter type");
            }
        }
    }
    match(')');

    /* Handle function prototypes (forward declarations) */
    if (tok == ';') {
        /* Remove parameter symbols added during prototype parsing */
        symbol_count = saved_sym_count;
        stack_size = saved_stack_outer;
        next_token();
        return;
    }

    if (tok != '{') error("expected function body");

    int param_stack = stack_size - outer_stack;

    /* First pass: compute stack size (no code emitted) */
    char *body_start = input_ptr;
    int body_line = line;
    int body_tok = tok;
    char body_token[MAX_TOKEN_LEN];
    strcpy(body_token, token);
    int saved_symbol_cnt = symbol_count;

    emit_enabled = 0;
    max_func_stack = param_stack;
    stack_size = param_stack;
    function_has_return = 0;
    statement();
    int func_stack = max_func_stack;
    stack_size = outer_stack + param_stack;
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

    /* Save register parameters to stack */
    {
        static const char *param_regs[] = {"%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"};
        for (int i = 0; i < param_count; i++) {
            int idx = find_symbol(param_names[i]);
            if (idx < 0) error("parameter not found");
            Symbol *s = &symbols[idx];
            if (i < 6) {
                emit("    movq %s, %d(%%rbp)", param_regs[i], s->offset);
            } else {
                int stack_off = 16 + (i - 6) * 8;
                emit("    movq %d(%%rbp), %%rax", stack_off);
                emit("    movq %%rax, %d(%%rbp)", s->offset);
            }
        }
    }

    /* Second pass: emit code */
    stack_size = param_stack;
    function_has_return = 0;
    statement();
    if (!function_has_return) {
        emit("    leave");
        emit("    ret");
    }
    stack_size = outer_stack;
}

static void parse_enum(void) {
    next_token(); /* skip 'enum' */
    if (tok == T_ID) {
        next_token(); /* skip optional tag */
    }
    if (tok != '{') error("expected '{' after enum");
    next_token();
    int val = 0;
    while (tok != '}') {
        if (tok != T_ID) error("expected enumerator name");
        if (symbol_count >= MAX_SYMBOLS) error("too many symbols");
        Symbol *s = &symbols[symbol_count];
        char *d = s->name;
        symbol_count++;
        {
            int nlen = strlen(token);
            if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
            memcpy(d, token, nlen);
            d[nlen] = '\0';
        }
        s->is_const = 1;
        s->is_global = 0;
        s->size = 8;
        s->pointed = 0;
        next_token();
        if (tok == '=') {
            next_token();
            if (tok != T_NUM) error("expected integer constant");
            val = atoi(token);
            next_token();
        }
        s->const_value = val;
        val++;
        if (tok == ',') next_token();
    }
    match('}');
    match(';');
}

static void skip_struct(void) {
    /* skip optional tag */
    if (tok == T_ID) next_token();
    if (tok != '{') error("expected '{' in struct");
    next_token();

    struct_total_size = 0;
    struct_member_count = 0;

    while (tok != '}') {
        if (tok == T_INT || tok == T_CHAR) {
            int ftype = tok;
            next_token();
            int is_ptr = 0;
            while (tok == '*') { is_ptr = 1; next_token(); }
            int fsize = is_ptr ? 8 : (ftype == T_CHAR ? 1 : 8);
            while (tok != ';') {
                if (tok == T_ID) {
                    if (struct_member_count < MAX_STRUCT_MEMBERS) {
                        int nlen = strlen(token);
                        if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
                        memcpy(struct_member_names[struct_member_count], token, nlen);
                        struct_member_names[struct_member_count][nlen] = '\0';
                        struct_member_offsets[struct_member_count] = struct_total_size;
                        struct_member_sizes[struct_member_count] = fsize;
                        struct_member_elem_sizes[struct_member_count] = fsize;
                        struct_member_count++;
                    }
                    next_token();
                    if (tok == '[') {
                        next_token();
                        int count = 1;
                        if (tok == T_NUM) { count = atoi(token); next_token(); }
                        match(']');
                        struct_total_size += fsize * count;
                        if (struct_member_count > 0) {
                            struct_member_sizes[struct_member_count - 1] = fsize * count;
                        }
                    } else {
                        struct_total_size += fsize;
                    }
                } else {
                    next_token();
                }
            }
            match(';');
        } else if (tok == '}') {
            break;
        } else {
            next_token();
        }
    }
    match('}');
}

static void skip_typedef(void) {
    next_token(); /* skip 'typedef' */
    if (tok == T_STRUCT) {
        next_token();
        skip_struct();
    } else if (tok == T_INT || tok == T_CHAR || tok == T_VOID) {
        next_token();
        while (tok == '*') next_token();
        if (tok == T_ID) next_token();
    }
    /* skip to semicolon, recording the last identifier as the typedef name */
    char last_name[MAX_IDENT_LEN] = "";
    while (tok != ';' && tok != T_EOF) {
        if (tok == T_ID) {
            int nlen = strlen(token);
            if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
            memcpy(last_name, token, nlen);
            last_name[nlen] = '\0';
        }
        next_token();
    }
    if (last_name[0]) {
        /* Store as constant (just a placeholder - size 8) */
        if (symbol_count >= MAX_SYMBOLS) error("too many symbols");
        Symbol *s = &symbols[symbol_count];
        char *d = s->name;
        symbol_count++;
        int nlen = strlen(last_name);
        if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
        memcpy(d, last_name, nlen);
        d[nlen] = '\0';
        s->is_const = 1;
        s->is_global = 0;
        s->size = 8;
        s->pointed = 0;
        s->const_value = 8;  /* just a marker */
        /* If a struct was just parsed, store its size */
        if (struct_total_size > 0)
            s->const_value = struct_total_size;
    }
    match(';');
}

static void parse_program(void) {
    next_token();
    while (tok != T_EOF) {
        if (tok == T_STATIC) {
            next_token();
            continue;
        } else if (tok == T_CONST) {
            next_token();
            continue;
        } else if (tok == T_TYPEDEF) {
            skip_typedef();
        } else if (tok == T_STRUCT) {
            next_token();
            skip_struct();
        } else if (tok == T_ENUM) {
            parse_enum();
        } else if (tok == T_INT || tok == T_CHAR || tok == T_VOID) {
            int type = tok;
            next_token();
            int is_ptr = 0;
            while (tok == '*') { is_ptr = 1; next_token(); }
            if (tok != T_ID) error("expected identifier");
            char fname[MAX_IDENT_LEN];
            int nlen = strlen(token);
            if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
            memcpy(fname, token, nlen);
            fname[nlen] = '\0';
            next_token();
            if (tok == '(') {
                parse_function(fname, type);
            } else {
                int gsize = is_ptr ? 8 : (type == T_CHAR ? 1 : 8);
                int is_arr = 0;
                int elem_size = gsize;
                while (tok == '[') {
                    is_arr = 1;
                    next_token();
                    int cnt = 0;
                    if (tok == T_NUM) {
                        cnt = atoi(token);
                        next_token();
                    } else if (tok == T_ID) {
                        int mi = find_macro(token);
                        if (mi >= 0) cnt = macros[mi].value;
                        else error("undefined macro");
                        next_token();
                    }
                    match(']');
                    gsize = gsize * (cnt > 0 ? cnt : 1);
                }
                add_symbol(fname, 1, gsize, is_ptr ? type : 0, is_arr, elem_size);
                if (tok == '=') {
                    while (tok != ';' && tok != T_EOF) next_token();
                }
                if (tok == ';') next_token();
                else error("expected ';' or '(' after global");
            }
        } else if (tok == T_ID) {
            /* Fallback: treat unknown identifier as a type name (e.g. FILE) */
            int type_size = 8;
            int ti = find_symbol(token);
            if (ti >= 0 && symbols[ti].is_const) type_size = symbols[ti].const_value;
            next_token();
            int is_ptr = 0;
            while (tok == '*') { is_ptr = 1; next_token(); }
            if (tok != T_ID) error("expected identifier");
            char fname[MAX_IDENT_LEN];
            int nlen = strlen(token);
            if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
            memcpy(fname, token, nlen);
            fname[nlen] = '\0';
            next_token();
            int gsize = is_ptr ? 8 : type_size;
            int is_arr = 0;
            int elem_size = gsize;
            while (tok == '[') {
                is_arr = 1;
                next_token();
                int cnt = 0;
                if (tok == T_NUM) {
                    cnt = atoi(token);
                    next_token();
                } else if (tok == T_ID) {
                    int mi = find_macro(token);
                    if (mi >= 0) cnt = macros[mi].value;
                    else error("undefined macro");
                    next_token();
                }
                match(']');
                gsize = gsize * (cnt > 0 ? cnt : 1);
            }
            add_symbol(fname, 1, gsize, 0, is_arr, elem_size);
            if (tok == ';') next_token();
            else error("expected ';' or '(' after global");
        } else {
            error("global must be int or char");
        }
    }
}

static void emit_string_pool(void) {
    if (!emit_enabled) return;
    for (int i = 0; i < string_count; i++) {
        fprintf(output, ".Lstr%d:\n    .asciz \"", i);
        const char *s = string_pool[i];
        while (*s) {
            unsigned char c = *s;
            if (c == '\n') fprintf(output, "\\n");
            else if (c == '\t') fprintf(output, "\\t");
            else if (c == '\\') fprintf(output, "\\\\");
            else if (c == '"') fprintf(output, "\\\"");
            else if (c >= 32 && c < 127) fputc(c, output);
            else fprintf(output, "\\%hho", c);
            s++;
        }
        fprintf(output, "\"\n");
        free(string_pool[i]);
    }
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s source.c > output.s\n", argv[0]);
        return EXIT_FAILURE;
    }

    FILE *input = fopen(argv[1], "r");
    if (!input) {
        fprintf(stderr, "Cannot open input file: %s\n", argv[1]);
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

    /* Predefine common macros */
    add_macro("EXIT_FAILURE", 1);
    add_macro("EXIT_SUCCESS", 0);
    add_macro("SEEK_SET", 0);
    add_macro("SEEK_CUR", 1);
    add_macro("SEEK_END", 2);
    add_macro("NULL", 0);

    /* Predefine libc global symbols and types */
    {
        static const char *libc_globals[] = {"stderr", "stdin", "stdout", "optarg", "optind", "errno", "size_t", "va_list", "FILE", NULL};
        for (int i = 0; libc_globals[i]; i++) {
            Symbol *s = &symbols[symbol_count];
            char *d = s->name;
            symbol_count++;
            int nlen = strlen(libc_globals[i]);
            if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
            memcpy(d, libc_globals[i], nlen);
            d[nlen] = '\0';
            s->offset = 0;
            s->is_global = 1;
            s->size = 8;
            s->pointed = 0;
            s->is_const = (strcmp(libc_globals[i], "size_t") == 0 || strcmp(libc_globals[i], "va_list") == 0 || strcmp(libc_globals[i], "FILE") == 0) ? 1 : 0;
            s->const_value = 8;
            s->is_array = 0;
            s->elem_size = 0;
        }
    }

    emit("    .section .text");
    parse_program();

    if (string_count > 0) {
        emit("    .section .rodata");
        emit_string_pool();
        emit("    .section .text");
    }

    emit("    .globl _start");
    emit("_start:");
    emit("    movq (%%rsp), %%rdi");
    emit("    leaq 8(%%rsp), %%rsi");
    emit("    leaq 16(%%rsp,%%rdi,8), %%rdx");
    emit("    call main");
    emit("    movq %%rax, %%rdi");
    emit("    movq $60, %%rax");
    emit("    syscall");

    free(source_start);
    return EXIT_SUCCESS;
}