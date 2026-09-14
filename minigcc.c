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
/*#include <ctype.h>*/
#include <errno.h>

#define MAX_TOKEN_LEN   256
#define MAX_SYMBOLS     2048
#define MAX_IDENT_LEN   32
#define MAX_SOURCE_SIZE 1048576
#define MAX_INCLUDE_DEPTH 64
#define MAX_PROCESSED_FILES 256
#define STACK_ALIGN     16

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
    T_FLOAT,
    T_DOUBLE,
    T_FLOAT_NUM,
    T_DO,
    T_SIZEOF,
    T_SHL,
    T_SHR,
    T_MUL_ASSIGN,
    T_DIV_ASSIGN,
    T_MOD_ASSIGN,
    T_AND_ASSIGN,
    T_OR_ASSIGN,
    T_XOR_ASSIGN,
    T_SHL_ASSIGN,
    T_SHR_ASSIGN,
    T_UNION,
    T_EXTERN,
    T_EOF
};

#define LEX_KW_CAP 32
#define LEX_KW_BLOB 256

static char lex_kw_blob[LEX_KW_BLOB];
static int lex_kw_ids[LEX_KW_CAP];
static int lex_kw_count = 0;

static char *input_ptr;
static char *source_start;
static char token[MAX_TOKEN_LEN];
static int tok;
static int line = 1;
static FILE *output;

typedef struct {
    char *buf_start;
    char *buf_ptr;
    char *filename;
    int saved_line;
} FileContext;

static FileContext ctx_stack[MAX_INCLUDE_DEPTH];
static int ctx_top = 0;
static char *current_file = NULL;
static char *processed_files[MAX_PROCESSED_FILES];
static int processed_count = 0;

typedef struct {
    char name[MAX_IDENT_LEN];
    int offset;
    int is_global;
    int is_static;
    int size;
    int pointed;
    int is_const;
    int const_value;
    int is_array;
    int elem_size;
    int elem_size2;
    int var_type;
    int elem_ptr;      /* pointer elements: stride 8 on the first subscript */
    int is_unsigned;
    int next_hash;
} Symbol;

static Symbol symbols[MAX_SYMBOLS];
static int symbol_count = 0;

/* Hash table for O(1) symbol lookup */
#define HASH_TABLE_SIZE 512
static int hash_table[HASH_TABLE_SIZE];

#define MAX_SCOPE_DEPTH 256
static int scope_stack_sym[MAX_SCOPE_DEPTH];
static int scope_stack_stk[MAX_SCOPE_DEPTH];
static int scope_depth = 0;

static int stack_size = 0;
static int label_counter = 0;
static int function_has_return = 0;
static int emit_enabled = 1;
static int max_func_stack = 0;
static int assign_size = 8;
static int expr_pointed = 0;
static int current_elem_size = 0;
static int current_elem_size2 = 0;
static int no_postfix_deref = 0;
static int expr_type = 0;
static int static_flag = 0;
static int unsigned_type = 0;
static int const_flag = 0;
static int extern_flag = 0;
static int global_emit_deferred = 0;

#define MAX_FLOAT_CONSTS 2048
static char float_const_str[MAX_FLOAT_CONSTS][MAX_TOKEN_LEN];
static int float_const_is_float[MAX_FLOAT_CONSTS];
static int float_const_count = 0;

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

/* Pointer globals initialized with a string literal cannot hold the address
 * at rest: the output is position independent and carries no load-time
 * relocations, so an absolute address baked into .data would be wrong once
 * the image is loaded anywhere but its link address. The slot is defined as
 * zero and filled in with rip-relative code emitted into _start. */
#define MAX_PTR_INITS 256
static char ptr_init_name[MAX_PTR_INITS][MAX_IDENT_LEN];
static int  ptr_init_label[MAX_PTR_INITS];
static int  ptr_init_count = 0;

/* Members of ALL structs accumulate into one global table (see skip_struct),
   so this must exceed the sum of members across every struct in the program,
   not the size of the largest single struct. Symbol + ParserState + Macro
   already total 33, which overflowed the old value of 32 and silently dropped
   Macro.value, breaking every macro lookup. */
#define MAX_STRUCT_MEMBERS 256
static int struct_total_size = 0;
static char struct_member_names[MAX_STRUCT_MEMBERS][MAX_IDENT_LEN];
static int struct_member_offsets[MAX_STRUCT_MEMBERS];
static int struct_member_sizes[MAX_STRUCT_MEMBERS];
static int struct_member_elem_sizes[MAX_STRUCT_MEMBERS];
static int struct_member_count = 0;

#define MAX_IF_NESTING 64
#define CONST_VAR_FLAG 0x10000
static int if_nest[MAX_IF_NESTING];
static int if_depth = 0;

static void error(const char *msg);
static void truncate_symbols(int start_idx);

#define MAX_MACROS 256

int macro_count;
typedef struct {
    int assign_size;
    int expr_pointed;
    int current_elem_size;
    int current_elem_size2;
    int no_postfix_deref;
    int symbol_count;
    int stack_size;
    int function_has_return;
    int emit_enabled;
    int max_func_stack;
    int switch_case_count;
    int switch_has_default;
    int switch_default_label;
    int break_target;
    int break_target_valid;
    int continue_target;
    int continue_target_valid;
    int struct_total_size;
    int struct_member_count;
    int macro_count;
    int expr_type;
    int float_const_count;
} ParserState;

static void save_parser_state(ParserState *state) {
    state->assign_size = assign_size;
    state->expr_pointed = expr_pointed;
    state->current_elem_size = current_elem_size;
    state->current_elem_size2 = current_elem_size2;
    state->no_postfix_deref = no_postfix_deref;
    state->symbol_count = symbol_count;
    state->stack_size = stack_size;
    state->function_has_return = function_has_return;
    state->emit_enabled = emit_enabled;
    state->max_func_stack = max_func_stack;
    state->switch_case_count = switch_case_count;
    state->switch_has_default = switch_has_default;
    state->switch_default_label = switch_default_label;
    state->break_target = break_target;
    state->break_target_valid = break_target_valid;
    state->continue_target = continue_target;
    state->continue_target_valid = continue_target_valid;
    state->struct_total_size = struct_total_size;
    state->struct_member_count = struct_member_count;
    state->macro_count = macro_count;
    state->expr_type = expr_type;
    state->float_const_count = float_const_count;
}

static void restore_parser_state(ParserState *state) {
    assign_size = state->assign_size;
    expr_pointed = state->expr_pointed;
    current_elem_size = state->current_elem_size;
    current_elem_size2 = state->current_elem_size2;
    no_postfix_deref = state->no_postfix_deref;
    /* Clean up hash table entries for symbols added since the saved state */
    if (state->symbol_count < symbol_count)
        truncate_symbols(state->symbol_count);
    else
        symbol_count = state->symbol_count;
    stack_size = state->stack_size;
    function_has_return = state->function_has_return;
    emit_enabled = state->emit_enabled;
    max_func_stack = state->max_func_stack;
    switch_case_count = state->switch_case_count;
    switch_has_default = state->switch_has_default;
    switch_default_label = state->switch_default_label;
    break_target = state->break_target;
    break_target_valid = state->break_target_valid;
    continue_target = state->continue_target;
    continue_target_valid = state->continue_target_valid;
    struct_total_size = state->struct_total_size;
    struct_member_count = state->struct_member_count;
    macro_count = state->macro_count;
    expr_type = state->expr_type;
    float_const_count = state->float_const_count;
}

typedef struct {
    char name[MAX_IDENT_LEN];
    int value;
} Macro;

static Macro macros[MAX_MACROS];


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

/* Constant integer expression folding for `#define NAME <expr>`.
 * MiniGCC macros are numeric substitutions, so a directive whose value is
 * an expression (e.g. `#define N (1 << EI)`) must be reduced to a value at
 * define time.  This is a small recursive-descent folder over the subset of
 * C operators miniGCC itself emits, written in the same restricted dialect
 * the compiler accepts so the self-hosted build stays correct.  Any RHS
 * that is not a foldable integer constant (function-like macros, strings)
 * leaves macro_ok clear and the caller falls back to the historical value-0
 * behaviour, so nothing that compiled before changes meaning. */
static char *macro_p;
static int macro_ok;

static int macro_or_expr(void);

static void macro_skipws(void) {
    while (*macro_p == ' ' || *macro_p == '\t') macro_p++;
}

static int macro_hex_digit(int c) {
    if (c >= '0' && c <= '9') return 1;
    if (c >= 'a' && c <= 'f') return 1;
    if (c >= 'A' && c <= 'F') return 1;
    return 0;
}

static int macro_digit_val(int c) {
    if (c >= '0' && c <= '9') return c - '0';
    if (c >= 'a' && c <= 'f') return c - 'a' + 10;
    if (c >= 'A' && c <= 'F') return c - 'A' + 10;
    return 0;
}

static int macro_primary(void) {
    int v;
    int mi;
    char name[MAX_IDENT_LEN];
    int n;
    macro_skipws();
    if (*macro_p == '(') {
        macro_p++;
        v = macro_or_expr();
        macro_skipws();
        if (*macro_p != ')') { macro_ok = 0; return 0; }
        macro_p++;
        return v;
    }
    if (*macro_p == '\'') {
        int c;
        macro_p++;
        if (*macro_p == '\\') {
            macro_p++;
            c = *macro_p;
            if (c == 'n') c = 10;
            else if (c == 't') c = 9;
            else if (c == 'r') c = 13;
            else if (c == '0') c = 0;
            else if (c == '\\') c = 92;
            else if (c == '\'') c = 39;
            else if (c == '"') c = 34;
            else if (c == 'a') c = 7;
            else if (c == 'b') c = 8;
            macro_p++;
        } else {
            c = *macro_p;
            macro_p++;
        }
        if (*macro_p != '\'') { macro_ok = 0; return 0; }
        macro_p++;
        return c;
    }
    if (*macro_p >= '0' && *macro_p <= '9') {
        v = 0;
        if (*macro_p == '0' && (macro_p[1] == 'x' || macro_p[1] == 'X')) {
            macro_p += 2;
            while (macro_hex_digit(*macro_p)) {
                v = v * 16 + macro_digit_val(*macro_p);
                macro_p++;
            }
        } else {
            while (*macro_p >= '0' && *macro_p <= '9') {
                v = v * 10 + (*macro_p - '0');
                macro_p++;
            }
        }
        return v;
    }
    if ((*macro_p >= 'a' && *macro_p <= 'z') ||
        (*macro_p >= 'A' && *macro_p <= 'Z') || *macro_p == '_') {
        n = 0;
        while (((*macro_p >= 'a' && *macro_p <= 'z') ||
                (*macro_p >= 'A' && *macro_p <= 'Z') ||
                (*macro_p >= '0' && *macro_p <= '9') || *macro_p == '_') &&
               n < MAX_IDENT_LEN - 1) {
            name[n] = *macro_p;
            n++;
            macro_p++;
        }
        name[n] = '\0';
        mi = find_macro(name);
        if (mi < 0) { macro_ok = 0; return 0; }
        return macros[mi].value;
    }
    macro_ok = 0;
    return 0;
}

static int macro_unary(void) {
    macro_skipws();
    if (*macro_p == '-') { macro_p++; return 0 - macro_unary(); }
    if (*macro_p == '+') { macro_p++; return macro_unary(); }
    if (*macro_p == '~') { macro_p++; return ~macro_unary(); }
    if (*macro_p == '!') { macro_p++; return !macro_unary(); }
    return macro_primary();
}

static int macro_mul(void) {
    int v;
    int d;
    v = macro_unary();
    for (;;) {
        macro_skipws();
        if (*macro_p == '*') {
            macro_p++;
            v = v * macro_unary();
        } else if (*macro_p == '/' && macro_p[1] != '/') {
            macro_p++;
            d = macro_unary();
            if (d == 0) { macro_ok = 0; return 0; }
            v = v / d;
        } else if (*macro_p == '%') {
            macro_p++;
            d = macro_unary();
            if (d == 0) { macro_ok = 0; return 0; }
            v = v % d;
        } else {
            return v;
        }
    }
}

static int macro_add(void) {
    int v;
    v = macro_mul();
    for (;;) {
        macro_skipws();
        if (*macro_p == '+') {
            macro_p++;
            v = v + macro_mul();
        } else if (*macro_p == '-') {
            macro_p++;
            v = v - macro_mul();
        } else {
            return v;
        }
    }
}

static int macro_shift(void) {
    int v;
    v = macro_add();
    for (;;) {
        macro_skipws();
        if (*macro_p == '<' && macro_p[1] == '<') {
            macro_p += 2;
            v = v << macro_add();
        } else if (*macro_p == '>' && macro_p[1] == '>') {
            macro_p += 2;
            v = v >> macro_add();
        } else {
            return v;
        }
    }
}

static int macro_cmp(void) {
    int v;
    v = macro_shift();
    for (;;) {
        macro_skipws();
        if (*macro_p == '<' && macro_p[1] == '=') {
            macro_p += 2;
            v = (v <= macro_shift());
        } else if (*macro_p == '>' && macro_p[1] == '=') {
            macro_p += 2;
            v = (v >= macro_shift());
        } else if (*macro_p == '<') {
            macro_p++;
            v = (v < macro_shift());
        } else if (*macro_p == '>') {
            macro_p++;
            v = (v > macro_shift());
        } else {
            return v;
        }
    }
}

static int macro_eq(void) {
    int v;
    v = macro_cmp();
    for (;;) {
        macro_skipws();
        if (*macro_p == '=' && macro_p[1] == '=') {
            macro_p += 2;
            v = (v == macro_cmp());
        } else if (*macro_p == '!' && macro_p[1] == '=') {
            macro_p += 2;
            v = (v != macro_cmp());
        } else {
            return v;
        }
    }
}

static int macro_bitand(void) {
    int v;
    v = macro_eq();
    for (;;) {
        macro_skipws();
        if (*macro_p == '&' && macro_p[1] != '&') {
            macro_p++;
            v = v & macro_eq();
        } else {
            return v;
        }
    }
}

static int macro_bitxor(void) {
    int v;
    v = macro_bitand();
    for (;;) {
        macro_skipws();
        if (*macro_p == '^') {
            macro_p++;
            v = v ^ macro_bitand();
        } else {
            return v;
        }
    }
}

static int macro_bitor(void) {
    int v;
    v = macro_bitxor();
    for (;;) {
        macro_skipws();
        if (*macro_p == '|' && macro_p[1] != '|') {
            macro_p++;
            v = v | macro_bitxor();
        } else {
            return v;
        }
    }
}

static int macro_logand(void) {
    int v;
    v = macro_bitor();
    for (;;) {
        macro_skipws();
        if (*macro_p == '&' && macro_p[1] == '&') {
            macro_p += 2;
            v = (v && macro_bitor());
        } else {
            return v;
        }
    }
}

static int macro_or_expr(void) {
    int v;
    v = macro_logand();
    for (;;) {
        macro_skipws();
        if (*macro_p == '|' && macro_p[1] == '|') {
            macro_p += 2;
            v = (v || macro_logand());
        } else {
            return v;
        }
    }
}

static int macro_fold(void) {
    macro_ok = 1;
    return macro_or_expr();
}

static void error(const char *msg) {
    fprintf(stderr, "%s:%d: Error at token '%s': %s\n",
            current_file ? current_file : "(unknown)", line, token, msg);
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

static void safe_strcpy(char *dst, const char *src, size_t dst_sz) {
    size_t i = 0;
    while (i < dst_sz - 1 && src[i] != '\0') {
        dst[i] = src[i];
        i++;
    }
    dst[i] = '\0';
}

static long safe_strtoll(const char *s) {
    long result = 0;
    int neg = 0;
    const char *p = s;
    if (*p == '-') { neg = 1; p++; }
    else if (*p == '+') { p++; }
    while (*p >= '0' && *p <= '9') {
        result = result * 10 + (*p - '0');
        p++;
    }
    return neg ? -result : result;
}

static int is_file_processed(const char *path) {
    int i = 0;
    while (i < processed_count) {
        if (strcmp(processed_files[i], path) == 0) return 1;
        i++;
    }
    return 0;
}

static void mark_file_processed(const char *path) {
    if (processed_count >= MAX_PROCESSED_FILES) {
        fprintf(stderr, "Warning: too many processed files\n");
        return;
    }
    int len = strlen(path);
    processed_files[processed_count] = safe_malloc(len + 1);
    int i = 0;
    while (i <= len) { processed_files[processed_count][i] = path[i]; i++; }
    processed_count++;
}

static void get_dir_from_path(const char *path, char *dir, int dir_sz) {
    int last_slash = -1;
    int i = 0;
    while (path[i]) {
        if (path[i] == '/') last_slash = i;
        i++;
    }
    if (last_slash >= 0) {
        int len = last_slash;
        if (len >= dir_sz) len = dir_sz - 1;
        int j = 0;
        while (j < len) { dir[j] = path[j]; j++; }
        dir[len] = '\0';
    } else {
        dir[0] = '.';
        dir[1] = '\0';
    }
}

static char *resolve_local_include(const char *target) {
    FILE *f = fopen(target, "r");
    if (f) {
        fclose(f);
        int len = strlen(target);
        char *p = safe_malloc(len + 1);
        int i = 0;
        while (i <= len) { p[i] = target[i]; i++; }
        return p;
    }
    if (current_file) {
        char dir[512];
        get_dir_from_path(current_file, dir, 512);
        char full[1024];
        int dlen = strlen(dir);
        int tlen = strlen(target);
        int pos = 0;
        if (dlen > 0 && dir[dlen - 1] != '/') {
            while (pos < dlen && pos < 1023) { full[pos] = dir[pos]; pos++; }
            full[pos++] = '/';
        } else {
            while (pos < dlen && pos < 1023) { full[pos] = dir[pos]; pos++; }
        }
        int k = 0;
        while (k < tlen && pos < 1023) { full[pos] = target[k]; pos++; k++; }
        full[pos] = '\0';
        f = fopen(full, "r");
        if (f) {
            fclose(f);
            int len2 = strlen(full);
            char *p = safe_malloc(len2 + 1);
            int j = 0;
            while (j <= len2) { p[j] = full[j]; j++; }
            return p;
        }
    }
    return NULL;
}

static char *read_include_file(const char *path) {
    FILE *f = fopen(path, "r");
    if (!f) return NULL;
    fseek(f, 0, SEEK_END);
    long sz = ftell(f);
    if (sz < 0 || sz > MAX_SOURCE_SIZE) {
        fclose(f);
        return NULL;
    }
    rewind(f);
    char *buf = safe_malloc(sz + 1);
    size_t rd = fread(buf, 1, sz, f);
    if (rd != (size_t)sz) {
        free(buf);
        fclose(f);
        return NULL;
    }
    buf[sz] = '\0';
    fclose(f);
    return buf;
}

/* Must produce identical results under gcc (32-bit int) and under the
   compiler's own model (64-bit int), so avoid multiplication overflow. */
static int hash_name(const char *name) {
    int h = 0;
    while (*name) {
        h = h + *name;
        name++;
    }
    if (h < 0) h = -h;
    return h % HASH_TABLE_SIZE;
}

static void hash_init(void) {
    for (int i = 0; i < HASH_TABLE_SIZE; i++)
        hash_table[i] = -1;
}

static void push_scope(void) {
    if (scope_depth >= MAX_SCOPE_DEPTH)
        error("scope depth exceeded");
    scope_stack_sym[scope_depth] = symbol_count;
    scope_stack_stk[scope_depth] = stack_size;
    scope_depth++;
}

static void pop_scope(void) {
    if (scope_depth <= 0)
        error("scope underflow");
    scope_depth--;
    int old_count = scope_stack_sym[scope_depth];
    stack_size = scope_stack_stk[scope_depth];
    for (int i = old_count; i < symbol_count; i++) {
        int h = hash_name(symbols[i].name);
        /* Check if hash_table[h] points directly to i */
        if (hash_table[h] == i) {
            hash_table[h] = symbols[i].next_hash;
            continue;
        }
        /* Walk the chain of next_hash fields */
        int prev = hash_table[h];
        while (prev >= 0) {
            if (symbols[prev].next_hash == i) {
                symbols[prev].next_hash = symbols[i].next_hash;
                break;
            }
            prev = symbols[prev].next_hash;
        }
    }
    symbol_count = old_count;
}

/* Remove all symbols from start_idx onward from the hash table and
   truncate symbol_count. Does NOT touch the scope stack (needed for
   the two-pass function body parsing pattern). */
static void truncate_symbols(int start_idx) {
    for (int i = start_idx; i < symbol_count; i++) {
        int h = hash_name(symbols[i].name);
        if (hash_table[h] == i) {
            hash_table[h] = symbols[i].next_hash;
            continue;
        }
        int prev = hash_table[h];
        while (prev >= 0) {
            if (symbols[prev].next_hash == i) {
                symbols[prev].next_hash = symbols[i].next_hash;
                break;
            }
            prev = symbols[prev].next_hash;
        }
    }
    symbol_count = start_idx;
}

static int my_isspace(int c) {
    if (c == ' ') return 1;
    if (c == '\t') return 1;
    if (c == '\n') return 1;
    if (c == '\r') return 1;
    if (c == '\f') return 1;
    if (c == '\v') return 1;
    return 0;
}

static int my_isalpha(int c) {
    if (c >= 'a' && c <= 'z') return 1;
    if (c >= 'A' && c <= 'Z') return 1;
    return 0;
}

static int my_isdigit(int c) {
    if (c >= '0' && c <= '9') return 1;
    return 0;
}

static int my_isalnum(int c) {
    if (my_isalpha(c)) return 1;
    if (my_isdigit(c)) return 1;
    return 0;
}

static void lex_fail(const char *msg, char *start, char *end) {
    int n = end - start;
    if (n < 0) n = 0;
    if (n >= MAX_TOKEN_LEN) n = MAX_TOKEN_LEN - 1;
    int i = 0;
    while (i < n) { token[i] = start[i]; i++; }
    token[n] = '\0';
    error(msg);
}

static void lex_kw_add(const char *name, int id) {
    int off = 0;
    int i = 0;
    while (i < lex_kw_count) { off += strlen(lex_kw_blob + off) + 1; i++; }
    int n = strlen(name);
    if (lex_kw_count >= LEX_KW_CAP || off + n + 1 >= LEX_KW_BLOB)
        error("keyword table full");
    int j = 0;
    while (j <= n) { lex_kw_blob[off + j] = name[j]; j++; }
    lex_kw_ids[lex_kw_count] = id;
    lex_kw_count++;
}

static void lex_init_keywords(void) {
    if (lex_kw_count > 0) return;
    lex_kw_add("if", T_IF);
    lex_kw_add("else", T_ELSE);
    lex_kw_add("while", T_WHILE);
    lex_kw_add("return", T_RETURN);
    lex_kw_add("int", T_INT);
    lex_kw_add("long", T_INT);
    lex_kw_add("char", T_CHAR);
    lex_kw_add("void", T_VOID);
    lex_kw_add("enum", T_ENUM);
    lex_kw_add("static", T_STATIC);
    lex_kw_add("typedef", T_TYPEDEF);
    lex_kw_add("struct", T_STRUCT);
    lex_kw_add("const", T_CONST);
    lex_kw_add("for", T_FOR);
    lex_kw_add("switch", T_SWITCH);
    lex_kw_add("case", T_CASE);
    lex_kw_add("default", T_DEFAULT);
    lex_kw_add("break", T_BREAK);
    lex_kw_add("continue", T_CONTINUE);
    lex_kw_add("goto", T_GOTO);
    lex_kw_add("float", T_FLOAT);
    lex_kw_add("double", T_DOUBLE);
    lex_kw_add("do", T_DO);
    lex_kw_add("sizeof", T_SIZEOF);
    lex_kw_add("union", T_UNION);
    lex_kw_add("extern", T_EXTERN);
}

static int lex_kw_lookup(void) {
    int off = 0;
    int i = 0;
    while (i < lex_kw_count) {
        if (strcmp(token, lex_kw_blob + off) == 0)
            return lex_kw_ids[i];
        off += strlen(lex_kw_blob + off) + 1;
        i++;
    }
    return -1;
}

static int lex_match_op(const char *op, int id) {
    int i = 0;
    while (op[i]) {
        if (input_ptr[i] != op[i]) return 0;
        i++;
    }
    safe_strcpy(token, op, MAX_TOKEN_LEN);
    tok = id;
    input_ptr += i;
    return 1;
}

static int lex_hex_val(int c) {
    if (c >= '0' && c <= '9') return c - '0';
    if (c >= 'a' && c <= 'f') return c - 'a' + 10;
    if (c >= 'A' && c <= 'F') return c - 'A' + 10;
    return -1;
}

static int lex_is_int_suffix(int c) {
    if (c == 'u' || c == 'U') return 1;
    if (c == 'l' || c == 'L') return 1;
    return 0;
}

static void lex_number(void) {
    if (*input_ptr == '0' && (input_ptr[1] == 'x' || input_ptr[1] == 'X')) {
        char *bad = input_ptr;
        long v = 0;
        input_ptr += 2;
        if (lex_hex_val(*input_ptr) < 0) {
            lex_fail("invalid hex constant", bad, input_ptr);
            return;
        }
        while (lex_hex_val(*input_ptr) >= 0) {
            v = v * 16 + lex_hex_val(*input_ptr);
            input_ptr++;
        }
        while (lex_is_int_suffix(*input_ptr)) input_ptr++;
        snprintf(token, MAX_TOKEN_LEN, "%ld", v);
        tok = T_NUM;
        return;
    }
    if (*input_ptr == '0' && input_ptr[1] >= '0' && input_ptr[1] <= '9') {
        char *t = input_ptr + 1;
        while (*t >= '0' && *t <= '9') t++;
        if (*t != '.' && *t != 'e' && *t != 'E') {
            char *bad = input_ptr;
            long v = 0;
            while (*input_ptr >= '0' && *input_ptr <= '9') {
                if (*input_ptr == '8' || *input_ptr == '9') {
                    char *end = input_ptr + 1;
                    while (*end >= '0' && *end <= '9') end++;
                    lex_fail("invalid octal constant", bad, end);
                    return;
                }
                v = v * 8 + (*input_ptr - '0');
                input_ptr++;
            }
            while (lex_is_int_suffix(*input_ptr)) input_ptr++;
            snprintf(token, MAX_TOKEN_LEN, "%ld", v);
            tok = T_NUM;
            return;
        }
    }
    if (*input_ptr == '.') {
        char *q = input_ptr + 1;
        while (*q >= '0' && *q <= '9') q++;
        if (*q == 'e' || *q == 'E') {
            char *r = q + 1;
            if (*r == '+' || *r == '-') r++;
            if (*r < '0' || *r > '9') {
                lex_fail("invalid float constant", input_ptr, r);
                return;
            }
            q = r;
            while (*q >= '0' && *q <= '9') q++;
        }
        if (q - input_ptr >= MAX_TOKEN_LEN - 1) {
            lex_fail("numeric constant too long", input_ptr, q);
            return;
        }
        int n = q - input_ptr;
        int i = 0;
        while (i < n) { token[i] = input_ptr[i]; i++; }
        token[n] = '\0';
        input_ptr = q;
        int sfx = *input_ptr;
        if (sfx == 'f' || sfx == 'F' || sfx == 'l' || sfx == 'L') input_ptr++;
        tok = T_FLOAT_NUM;
        float_const_is_float[float_const_count] = (sfx == 'f' || sfx == 'F') ? 1 : 0;
        safe_strcpy(float_const_str[float_const_count], token, MAX_TOKEN_LEN);
        float_const_count++;
        return;
    }
    {
        char *q = input_ptr;
        long v = 0;
        int is_float = 0;
        while (*q >= '0' && *q <= '9') { v = v * 10 + (*q - '0'); q++; }
        if (*q == '.') {
            is_float = 1;
            q++;
            while (*q >= '0' && *q <= '9') q++;
        }
        if (*q == 'e' || *q == 'E') {
            char *r = q + 1;
            if (*r == '+' || *r == '-') r++;
            if (*r < '0' || *r > '9') {
                lex_fail("invalid float constant", input_ptr, r);
                return;
            }
            is_float = 1;
            q = r;
            while (*q >= '0' && *q <= '9') q++;
        }
        if (q - input_ptr >= MAX_TOKEN_LEN - 1) {
            lex_fail("numeric constant too long", input_ptr, q);
            return;
        }
        if (is_float) {
            int n = q - input_ptr;
            int i = 0;
            while (i < n) { token[i] = input_ptr[i]; i++; }
            token[n] = '\0';
            input_ptr = q;
            int sfx = *input_ptr;
            if (sfx == 'f' || sfx == 'F' || sfx == 'l' || sfx == 'L') input_ptr++;
            tok = T_FLOAT_NUM;
            float_const_is_float[float_const_count] = (sfx == 'f' || sfx == 'F') ? 1 : 0;
            safe_strcpy(float_const_str[float_const_count], token, MAX_TOKEN_LEN);
            float_const_count++;
            return;
        }
        while (lex_is_int_suffix(*q)) q++;
        input_ptr = q;
        snprintf(token, MAX_TOKEN_LEN, "%ld", v);
        tok = T_NUM;
        return;
    }
}

/* Lexer */
static void next_token(void) {
    int c;
    restart:

    c = *input_ptr;
    while (my_isspace(c)) {
        if (c == '\n') line++;
        input_ptr++;
        c = *input_ptr;
    }

    if (if_depth > 0 && if_nest[if_depth - 1]) {
        while (if_depth > 0 && if_nest[if_depth - 1] && *input_ptr) {
            while (*input_ptr && *input_ptr != '#') {
                if (*input_ptr == '\n') line++;
                input_ptr++;
            }
            if (*input_ptr == '\0') break;
            input_ptr++;
            while (my_isspace(*input_ptr)) { if (*input_ptr == '\n') line++; input_ptr++; }
            if (strncmp(input_ptr, "ifdef", 5) == 0 || strncmp(input_ptr, "ifndef", 6) == 0 || strncmp(input_ptr, "if", 2) == 0) {
                if (if_depth >= MAX_IF_NESTING) error("#if nesting too deep");
                if_nest[if_depth++] = 1;
            } else if (strncmp(input_ptr, "else", 4) == 0 && (input_ptr[4] == '\0' || my_isspace(input_ptr[4]))) {
                if_nest[if_depth - 1] = !if_nest[if_depth - 1];
            } else if (strncmp(input_ptr, "endif", 5) == 0) {
                if (if_depth > 0) if_depth--;
            }
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
        }
        goto restart;
    }
    
    if (c == '\0') {
        if (ctx_top > 0) {
            free(source_start);
            ctx_top--;
            source_start = ctx_stack[ctx_top].buf_start;
            input_ptr = ctx_stack[ctx_top].buf_ptr;
            line = ctx_stack[ctx_top].saved_line;
            free(current_file);
            current_file = ctx_stack[ctx_top].filename;
            goto restart;
        }
        tok = T_EOF;
        return;
    }
    
    /* Skip comments and preprocessor directives */
    if (c == '/' && input_ptr[1] == '*') {
        char *cstart = input_ptr;
        int closed = 0;
        input_ptr += 2;
        while (*input_ptr) {
            if (*input_ptr == '*' && input_ptr[1] == '/') {
                input_ptr += 2;
                closed = 1;
                break;
            }
            if (*input_ptr == '\n') line++;
            input_ptr++;
        }
        if (!closed) {
            lex_fail("unterminated comment", cstart, input_ptr);
            return;
        }
        goto restart;
    }
    if (c == '/' && input_ptr[1] == '/') {
        input_ptr += 2;
        while (*input_ptr && *input_ptr != '\n') input_ptr++;
        goto restart;
    }
    if (c == '#') {
        input_ptr++;
        while (my_isspace(*input_ptr)) { if (*input_ptr == '\n') line++; input_ptr++; }
        if (strncmp(input_ptr, "define", 6) == 0) {
            input_ptr += 6;
            while (my_isspace(*input_ptr)) input_ptr++;
            char mname[MAX_IDENT_LEN];
            int mlen = 0;
            while ((my_isalnum(*input_ptr) || *input_ptr == '_') && mlen < MAX_IDENT_LEN - 1) {
                mname[mlen] = *input_ptr;
                mlen++;
                input_ptr++;
            }
            mname[mlen] = '\0';
            while (*input_ptr == ' ' || *input_ptr == '\t') input_ptr++;
            int mval = 0;
            int has_val = 0;
            macro_p = input_ptr;
            mval = macro_fold();
            if (macro_ok) {
                has_val = 1;
                input_ptr = macro_p;
            }
            if (has_val || mlen > 0) {
                add_macro(mname, mval);
            }
        } else if (strncmp(input_ptr, "include", 7) == 0) {
            input_ptr += 7;
            while (my_isspace(*input_ptr)) input_ptr++;
            char inc_path[512];
            int plen = 0;
            int is_local = 0;
            if (*input_ptr == '"') {
                is_local = 1;
                input_ptr++;
                while (*input_ptr && *input_ptr != '"' && plen < 511) {
                    inc_path[plen++] = *input_ptr;
                    input_ptr++;
                }
                if (*input_ptr == '"') input_ptr++;
            } else if (*input_ptr == '<') {
                input_ptr++;
                while (*input_ptr && *input_ptr != '>' && plen < 511) {
                    inc_path[plen++] = *input_ptr;
                    input_ptr++;
                }
                if (*input_ptr == '>') input_ptr++;
            }
            inc_path[plen] = '\0';
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
            if (is_local && plen > 0) {
                char *resolved = resolve_local_include(inc_path);
                if (resolved) {
                    if (!is_file_processed(resolved)) {
                        mark_file_processed(resolved);
                        char *new_buf = read_include_file(resolved);
                        if (new_buf) {
                            if (ctx_top >= MAX_INCLUDE_DEPTH) {
                                error("include depth exceeded");
                            }
                            ctx_stack[ctx_top].buf_start = source_start;
                            ctx_stack[ctx_top].buf_ptr = input_ptr;
                            ctx_stack[ctx_top].filename = current_file;
                            ctx_stack[ctx_top].saved_line = line;
                            ctx_top++;
                            source_start = new_buf;
                            input_ptr = new_buf;
                            line = 1;
                            current_file = resolved;
                            goto restart;
                        } else {
                            fprintf(stderr, "Warning: could not read included file: %s\n", inc_path);
                            free(resolved);
                        }
                    } else {
                        free(resolved);
                    }
                } else {
                    fprintf(stderr, "Warning: could not find included file: %s\n", inc_path);
                }
            }
        } else if (strncmp(input_ptr, "ifdef", 5) == 0) {
            input_ptr += 5;
            while (my_isspace(*input_ptr)) input_ptr++;
            char mname[MAX_IDENT_LEN]; int mlen = 0;
            while ((my_isalnum(*input_ptr) || *input_ptr == '_') && mlen < MAX_IDENT_LEN - 1) {
                mname[mlen++] = *input_ptr++;
            }
            mname[mlen] = '\0';
            if (if_depth >= MAX_IF_NESTING) error("#if nesting too deep");
            if_nest[if_depth++] = (find_macro(mname) < 0);
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
            goto restart;
        } else if (strncmp(input_ptr, "ifndef", 6) == 0) {
            input_ptr += 6;
            while (my_isspace(*input_ptr)) input_ptr++;
            char mname[MAX_IDENT_LEN]; int mlen = 0;
            while ((my_isalnum(*input_ptr) || *input_ptr == '_') && mlen < MAX_IDENT_LEN - 1) {
                mname[mlen++] = *input_ptr++;
            }
            mname[mlen] = '\0';
            if (if_depth >= MAX_IF_NESTING) error("#if nesting too deep");
            if_nest[if_depth++] = (find_macro(mname) >= 0);
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
            goto restart;
        } else if (strncmp(input_ptr, "if", 2) == 0) {
            input_ptr += 2;
            while (my_isspace(*input_ptr)) input_ptr++;
            int val = 0;
            if (*input_ptr == '0') { val = 0; input_ptr++; }
            else if (*input_ptr == '1') { val = 1; input_ptr++; }
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
            if (if_depth >= MAX_IF_NESTING) error("#if nesting too deep");
            if_nest[if_depth++] = !val;
            goto restart;
        } else if (strncmp(input_ptr, "else", 4) == 0 && (input_ptr[4] == '\0' || my_isspace(input_ptr[4]))) {
            if (if_depth == 0) error("#else without #if");
            if_nest[if_depth - 1] = !if_nest[if_depth - 1];
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
            goto restart;
        } else if (strncmp(input_ptr, "endif", 5) == 0) {
            if (if_depth == 0) error("#endif without #if");
            if_depth--;
            while (*input_ptr && *input_ptr != '\n') input_ptr++;
            goto restart;
        }
        while (*input_ptr && *input_ptr != '\n') input_ptr++;
        goto restart;
    }

    if (my_isalpha(c) || c == '_') {
        char *start = input_ptr;
        int len = 0;
        int kid;
        int mi;
        while (my_isalnum(*input_ptr) || *input_ptr == '_') {
            input_ptr++;
            len++;
        }
        if (len >= MAX_TOKEN_LEN) {
            char *end = start + len;
            lex_fail("identifier too long", start, end);
            return;
        }
        int i = 0;
        while (i < len) { token[i] = start[i]; i++; }
        token[len] = '\0';
        kid = lex_kw_lookup();
        if (kid >= 0) {
            tok = kid;
            return;
        }
        mi = find_macro(token);
        if (mi >= 0) {
            snprintf(token, MAX_TOKEN_LEN, "%d", macros[mi].value);
            tok = T_NUM;
        } else {
            tok = T_ID;
        }
        return;
    }

    if (my_isdigit(c) || (c == '.' && my_isdigit(input_ptr[1]))) {
        lex_number();
        return;
    }

    if (c == '"') {
        char *p = token;
        int len = 0;
        input_ptr++;
        while (*input_ptr && *input_ptr != '"' && len < MAX_TOKEN_LEN - 2) {
            if (*input_ptr == '\\' && input_ptr[1]) {
                switch (input_ptr[1]) {
                    case 'n': *p = '\n'; break;
                    case 't': *p = '\t'; break;
                    case 'r': *p = '\r'; break;
                    case 'f': *p = '\f'; break;
                    case 'v': *p = '\v'; break;
                    case 'a': *p = '\a'; break;
                    case 'b': *p = '\b'; break;
                    case '0': *p = '\0'; break;
                    case '\\': *p = '\\'; break;
                    case '"': *p = '"'; break;
                    case '\'': *p = '\''; break;
                    case 'e': *p = 033; break;
                    case 'x': {
                        input_ptr += 2;
                        int hv = 0;
                        while (*input_ptr) {
                            char hc = *input_ptr;
                            if (hc >= '0' && hc <= '9') hv = (hv << 4) | (hc - '0');
                            else if (hc >= 'a' && hc <= 'f') hv = (hv << 4) | (hc - 'a' + 10);
                            else if (hc >= 'A' && hc <= 'F') hv = (hv << 4) | (hc - 'A' + 10);
                            else break;
                            input_ptr++;
                        }
                        *p = (char)hv;
                        p++; len++;
                        continue;
                    }
                    default:
                        if (input_ptr[1] >= '0' && input_ptr[1] <= '7') {
                            int ov = 0;
                            int cnt = 0;
                            while (input_ptr[1] >= '0' && input_ptr[1] <= '7' && cnt < 3) {
                                ov = (ov << 3) | (input_ptr[1] - '0');
                                input_ptr++;
                                cnt++;
                            }
                            *p = (char)ov;
                            p++; len++;
                            continue;
                        }
                        *p = input_ptr[1];
                        break;
                }
                p++; input_ptr += 2; len++;
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
                case 'r': ch = '\r'; break;
                case 'f': ch = '\f'; break;
                case 'v': ch = '\v'; break;
                case 'a': ch = '\a'; break;
                case 'b': ch = '\b'; break;
                case 'e': ch = 033; break;
                case '0': ch = '\0'; break;
                case '\\': ch = '\\'; break;
                case '\'': ch = '\''; break;
                case '"': ch = '"'; break;
                case 'x': {
                    input_ptr++;
                    int hv = 0;
                    while (*input_ptr) {
                        char hc = *input_ptr;
                        if (hc >= '0' && hc <= '9') hv = (hv << 4) | (hc - '0');
                        else if (hc >= 'a' && hc <= 'f') hv = (hv << 4) | (hc - 'a' + 10);
                        else if (hc >= 'A' && hc <= 'F') hv = (hv << 4) | (hc - 'A' + 10);
                        else break;
                        input_ptr++;
                    }
                    ch = hv;
                    break;
                }
                default:
                    if (*input_ptr >= '0' && *input_ptr <= '7') {
                        int ov = 0;
                        int cnt = 0;
                        while (*input_ptr >= '0' && *input_ptr <= '7' && cnt < 3) {
                            ov = (ov << 3) | (*input_ptr - '0');
                            input_ptr++;
                            cnt++;
                        }
                        ch = ov;
                    } else {
                        ch = *input_ptr;
                    }
                    break;
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

    if (c == '<') {
        if (lex_match_op("<<=", T_SHL_ASSIGN)) return;
        if (lex_match_op("<<", T_SHL)) return;
        if (lex_match_op("<=", T_LE)) return;
    }
    if (c == '>') {
        if (lex_match_op(">>=", T_SHR_ASSIGN)) return;
        if (lex_match_op(">>", T_SHR)) return;
        if (lex_match_op(">=", T_GE)) return;
    }
    if (c == '=') {
        if (lex_match_op("==", T_EQ)) return;
    }
    if (c == '!') {
        if (lex_match_op("!=", T_NE)) return;
    }
    if (c == '&') {
        if (lex_match_op("&&", T_AND)) return;
        if (lex_match_op("&=", T_AND_ASSIGN)) return;
    }
    if (c == '|') {
        if (lex_match_op("||", T_OR)) return;
        if (lex_match_op("|=", T_OR_ASSIGN)) return;
    }
    if (c == '+') {
        if (lex_match_op("++", T_INC)) return;
        if (lex_match_op("+=", T_ADD_ASSIGN)) return;
    }
    if (c == '-') {
        if (lex_match_op("--", T_DEC)) return;
        if (lex_match_op("-=", T_SUB_ASSIGN)) return;
        if (lex_match_op("->", T_ARROW)) return;
    }
    if (c == '*') {
        if (lex_match_op("*=", T_MUL_ASSIGN)) return;
    }
    if (c == '/') {
        if (lex_match_op("/=", T_DIV_ASSIGN)) return;
    }
    if (c == '%') {
        if (lex_match_op("%=", T_MOD_ASSIGN)) return;
    }
    if (c == '^') {
        if (lex_match_op("^=", T_XOR_ASSIGN)) return;
    }

    token[0] = c;
    token[1] = '\0';
    tok = c;
    input_ptr++;
}

static void match(int expected) {
    if (tok == expected) next_token();
    else error("unexpected token");
}

static void emit(const char *s) {
    if (!emit_enabled) return;
    while (*s) {
        if (*s == '%' && s[1] == '%') {
            fputc('%', output);
            s += 2;
        } else {
            fputc(*s, output);
            s++;
        }
    }
    fputc('\n', output);
}

static void emit_i(const char *fmt, int v) {
    if (!emit_enabled) return;
    fprintf(output, fmt, v);
    fputc('\n', output);
}

static void emit_s(const char *fmt, const char *s) {
    if (!emit_enabled) return;
    fprintf(output, fmt, s);
    fputc('\n', output);
}

static void emit_is(const char *fmt, int v, const char *s) {
    if (!emit_enabled) return;
    fprintf(output, fmt, v, s);
    fputc('\n', output);
}

static void emit_si(const char *fmt, const char *s, int v) {
    if (!emit_enabled) return;
    fprintf(output, fmt, s, v);
    fputc('\n', output);
}

/* Write a C string as the body of a .asciz directive, escaping everything the
 * assembler cannot take literally. Shared by the string pool and by string
 * initializers of global arrays. */
static void emit_asciz_body(const char *s) {
    if (!emit_enabled) return;
    while (*s) {
        unsigned char c = *s;
        if (c == '\n') fprintf(output, "\\n");
        else if (c == '\t') fprintf(output, "\\t");
        else if (c == '\\') fprintf(output, "\\\\");
        else if (c == '"') fprintf(output, "\\\"");
        else if (c == '\r') fprintf(output, "\\r");
        else if (c == '\f') fprintf(output, "\\f");
        else if (c == '\v') fprintf(output, "\\v");
        else if (c == '\a') fprintf(output, "\\a");
        else if (c == '\b') fprintf(output, "\\b");
        else if (c >= 32 && c <= 126) fputc(c, output);
        else fprintf(output, "\\%03o", c);
        s++;
    }
}

static void emit_label(int label) {
    if (emit_enabled)
        fprintf(output, ".L%d:\n", label);
}

/* Symbol table */
static int find_symbol(const char *name) {
    int h = hash_name(name);
    int i = hash_table[h];
    while (i >= 0) {
        if (strcmp(symbols[i].name, name) == 0)
            return i;
        i = symbols[i].next_hash;
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
    s->is_static = static_flag;
    static_flag = 0;
    s->is_unsigned = unsigned_type;
    unsigned_type = 0;
    s->size = size;
    s->pointed = pointed;
    s->is_const = 0;
    const_flag = 0;
    s->const_value = 0;
    s->is_array = is_array;
    s->elem_size = elem_size;
    s->elem_size2 = 0;
    s->var_type = 0;
    s->elem_ptr = 0;
    s->next_hash = -1;
    if (is_global) {
        s->offset = 0;
        if (extern_flag) {
            extern_flag = 0;
        } else if (!global_emit_deferred) {
            emit("    .bss");
            if (!s->is_static)
                emit_s("    .globl %s", name);
            emit_s("%s:", name);
            if (size > 0)
                emit_i("    .space %d", size);
            emit("    .text");
        }
    } else {
        stack_size = (stack_size + size + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
        s->offset = -stack_size;
        if (stack_size > max_func_stack)
            max_func_stack = stack_size;
    }
    int h = hash_name(name);
    s->next_hash = hash_table[h];
    hash_table[h] = symbol_count;
    symbol_count++;
}

/* Parser forward declarations */
static void statement(void);
static void lvalue_address(void);
static void handle_postfix(int is_lvalue);
static void assignment_expr(void);
static void parse_enum(void);
static void skip_struct(void);
static void skip_typedef(void);

/* Argument/parameter register names by ABI index. Written as a function
   instead of a local array literal because the compiler does not allocate
   brace-initialized local arrays correctly (they overlap adjacent locals). */
static const char *arg_reg(int i) {
    if (i == 0) return "%rdi";
    if (i == 1) return "%rsi";
    if (i == 2) return "%rdx";
    if (i == 3) return "%rcx";
    if (i == 4) return "%r8";
    return "%r9";
}

/* Predefined libc global symbol names, indexed; returns NULL past the end. */
static const char *libc_global_name(int i) {
    if (i == 0) return "stderr";
    if (i == 1) return "stdin";
    if (i == 2) return "stdout";
    if (i == 3) return "optarg";
    if (i == 4) return "optind";
    if (i == 5) return "errno";
    if (i == 6) return "size_t";
    if (i == 7) return "va_list";
    if (i == 8) return "FILE";
    return NULL;
}

static void unary(void) {
    if (tok == T_NUM) {
        emit_s("    movq $%s, %%rax", token);
        expr_pointed = 0;
        expr_type = 0;
        next_token();
    } else if (tok == T_FLOAT_NUM) {
        int fcidx = float_const_count - 1;
        int is_f = float_const_is_float[fcidx];
        emit_i("    leaq .LCf%d(%%rip), %%rax", fcidx);
        if (is_f) {
            emit("    movss (%%rax), %%xmm0");
            emit("    movd %%xmm0, %%eax");
            expr_type = T_FLOAT;
        } else {
            emit("    movsd (%%rax), %%xmm0");
            emit("    movq %%xmm0, %%rax");
            expr_type = T_DOUBLE;
        }
        expr_pointed = 0;
        next_token();
    } else if (tok == T_ID) {
        char id_name[MAX_IDENT_LEN];
        safe_strcpy(id_name, token, MAX_IDENT_LEN);
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
            for (int i = 0; i < argc && i < 6; i++)
                emit_is("    movq %d(%%rsp), %s", (argc - i - 1) * 8, arg_reg(i));
            if (argc > 6)
                error("too many function arguments (max 6)");
            if (argc > 0)
                emit_i("    addq $%d, %%rsp", argc * 8);
            
            /* Alineación dinámica de pila a 16 bytes antes de call (ABI x86-64). */
            // En lugar de andq, calculamos si necesitamos alinear basándonos en el número de argumentos
            // Pero la forma más segura es usar r12 como ancla y asegurar que el stack no baje de rbp - func_stack
            emit("    pushq %%r12");
            emit("    movq %%rsp, %%r12");
            // Si el stack ya está alineado a 16 antes del call (después de los pushes de args), no hacemos andq
            // Pero para ser seguros con la ABI:
            emit("    andq $-16, %%rsp"); 
            emit("    xorl %%eax, %%eax");
            emit_s("    call %s", id_name);
            emit("    movq %%r12, %%rsp"); // Restauramos exactamente donde estábamos antes de alinear
            emit("    popq %%r12");
            
            expr_pointed = 0;
        } else {
            int idx = find_symbol(id_name);
            if (idx < 0) error("undefined variable");
            Symbol *s = &symbols[idx];
            int sc = s->is_const;
            if (sc) {
                int cv = s->const_value;
                emit_i("    movq $%d, %%rax", cv);
                expr_pointed = 0;
            } else if (s->is_array || (s->pointed && s->size > 8)) {
                int sg = s->is_global;
                int sa = s->is_array;
                int se = sa ? s->elem_size : 8;
                int se2 = sa ? s->elem_size2 : 0;
                current_elem_size = se;
                current_elem_size2 = se2;
                if (sg)
                    emit_s("    leaq %s(%%rip), %%rax", id_name);
                else
                    emit_i("    leaq %d(%%rbp), %%rax", s->offset);
                expr_pointed = s->size > 0 && s->size <= 8 ? 0 : (s->pointed ? s->pointed : T_INT);
            } else {
                int sg = s->is_global;
                int sz = s->size;
                int sv = s->var_type;
                expr_pointed = s->pointed;
                current_elem_size2 = 0;
                if (s->pointed)
                    current_elem_size =
                        (s->pointed == T_CHAR && !s->elem_ptr) ? 1 : 8;
                else current_elem_size = 0;
                expr_type = sv;
                
                if (sv == T_FLOAT) {
                    if (sg)
                        emit_s("    movl %s(%%rip), %%eax", id_name);
                    else
                        emit_i("    movl %d(%%rbp), %%eax", s->offset);
                } else if (sz == 1) {
                    if (sg)
                        emit_s("    movsbq %s(%%rip), %%rax", id_name);
                    else
                        emit_i("    movsbq %d(%%rbp), %%rax", s->offset);
                } else {
                    if (sg)
                        emit_s("    movq %s(%%rip), %%rax", id_name);
                    else
                        emit_i("    movq %d(%%rbp), %%rax", s->offset);
                }
            }
        }
    } else if (tok == '(') {
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
        } else if (tok == T_INT || tok == T_CHAR || tok == T_FLOAT || tok == T_DOUBLE) {
            int saved = tok;
            next_token();
            while (tok == '*') next_token();
            if (tok == ')') is_cast = 1;
            if (!is_cast) tok = saved;
        }
        if (is_cast) {
            next_token();
            unary();
        } else {
            input_ptr = cast_save;
            line = cast_line;
            tok = '(';
            next_token();
            assignment_expr();
            match(')');
        }
    } else if (tok == '*') {
        next_token();
        unary();
        if (expr_pointed == T_CHAR)
            emit("    movsbq (%%rax), %%rax");
        else if (expr_pointed == T_FLOAT) {
            emit("    movl (%%rax), %%eax");
            expr_type = T_FLOAT;
        } else if (expr_pointed == T_DOUBLE) {
            emit("    movq (%%rax), %%rax");
            expr_type = T_DOUBLE;
        } else
            emit("    movq (%%rax), %%rax");
    } else if (tok == '&') {
        next_token();
        if (tok != T_ID) error("expected identifier after '&'");
        int idx = find_symbol(token);
        if (idx < 0) error("undefined variable");
        Symbol *s = &symbols[idx];
        if (s->var_type == T_CHAR) expr_pointed = T_CHAR;
        else if (s->var_type == T_FLOAT) expr_pointed = T_FLOAT;
        else if (s->var_type == T_DOUBLE) expr_pointed = T_DOUBLE;
        else expr_pointed = T_INT;
        current_elem_size = s->is_array ? s->elem_size : 0;
        current_elem_size2 = s->is_array ? s->elem_size2 : 0;
        no_postfix_deref = 1;
        if (s->is_global)
            emit_s("    leaq %s(%%rip), %%rax", token);
        else
            emit_i("    leaq %d(%%rbp), %%rax", s->offset);
        next_token();
    } else if (tok == T_STRING) {
        int lbl = str_label_counter++;
        if (string_count < MAX_STRINGS) {
            int toklen = strlen(token);
            string_pool[string_count] = safe_malloc(toklen + 1);
            safe_strcpy(string_pool[string_count], token, toklen + 1);
            string_count++;
        }
        emit_i("    leaq .Lstr%d(%%rip), %%rax", lbl);
        expr_pointed = T_CHAR;
        next_token();
    } else if (tok == '-') {
        next_token();
        unary();
        handle_postfix(0);
        if (expr_type == T_FLOAT)
            emit("    xorl $0x80000000, %%eax");
        else if (expr_type == T_DOUBLE)
            emit("    xorq $0x8000000000000000, %%rax");
        else
            emit("    negq %%rax");
    } else if (tok == '!') {
        next_token();
        unary();
        handle_postfix(0);
        emit("    testq %%rax, %%rax");
        emit("    sete %%al");
        emit("    movzbq %%al, %%rax");
    } else if (tok == '~') {
        next_token();
        unary();
        handle_postfix(0);
        emit("    notq %%rax");
    } else if (tok == T_SIZEOF) {
        next_token();
        int sz = 0;
        int need_paren = 0;
        if (tok == '(') { need_paren = 1; next_token(); }
        if (tok == T_ID && (strcmp(token, "unsigned") == 0 || strcmp(token, "signed") == 0)) {
            next_token();
            if (tok == T_INT || tok == T_CHAR || tok == T_FLOAT || tok == T_DOUBLE) next_token();
            sz = 8;
        } else if (tok == T_CHAR) { sz = 1; next_token(); }
        else if (tok == T_FLOAT) { sz = 4; next_token(); }
        else if (tok == T_DOUBLE) { sz = 8; next_token(); }
        else if (tok == T_INT || tok == T_VOID) { sz = 8; next_token(); }
        else if (tok == T_STRUCT || tok == T_UNION) {
            next_token();
            if (tok == T_ID) {
                int ti = find_symbol(token);
                if (ti >= 0 && symbols[ti].is_const && symbols[ti].size == 0)
                    sz = symbols[ti].const_value;
                next_token();
            }
        } else if (tok == T_ID) {
            int idx = find_symbol(token);
            if (idx >= 0) sz = symbols[idx].size;
            else error("sizeof: undefined variable");
            next_token();
        } else {
            int old_emit = emit_enabled;
            emit_enabled = 0;
            unary();
            handle_postfix(0);
            emit_enabled = old_emit;
            if (expr_type == T_CHAR) sz = 1;
            else if (expr_type == T_FLOAT) sz = 4;
            else sz = 8;
        }
        while (tok == '*') { sz = 8; next_token(); }
        if (need_paren) match(')');
        emit_i("    movq $%d, %%rax", sz);
        expr_pointed = 0;
    } else {
        error("invalid primary expression");
    }
}

static void lvalue_address(void) {
    no_postfix_deref = 0;
    if (tok == T_ID) {
        int idx = find_symbol(token);
        if (idx < 0) error("undefined variable");
        Symbol *s = &symbols[idx];
        assign_size = s->size;
        if (s->is_array || (s->pointed && s->size > 8)) {
            current_elem_size = s->is_array ? s->elem_size : 8;
            current_elem_size2 = s->is_array ? s->elem_size2 : 0;
            expr_pointed = s->pointed ? s->pointed : T_INT;
        } else {
            current_elem_size2 = 0;
            expr_pointed = s->pointed;
            if (s->pointed)
                current_elem_size =
                    (s->pointed == T_CHAR && !s->elem_ptr) ? 1 : 8;
            else current_elem_size = 0;
        }
        int need_ptr_value = (s->pointed && s->size == 8);
        next_token();
        if (need_ptr_value && (tok == '[' || tok == '.' || tok == T_ARROW || tok == '('))
            need_ptr_value = 1;
        else if (need_ptr_value)
            need_ptr_value = 0;
        if (need_ptr_value) {
            if (s->is_global)
                emit_s("    movq %s(%%rip), %%rax", s->name);
            else
                emit_i("    movq %d(%%rbp), %%rax", s->offset);
        } else {
            if (s->is_global)
                emit_s("    leaq %s(%%rip), %%rax", s->name);
            else
                emit_i("    leaq %d(%%rbp), %%rax", s->offset);
        }
        handle_postfix(1);
    } else if (tok == '*') {
        next_token();
        unary();
        assign_size = 0;
        handle_postfix(1);
        if (assign_size == 0) {
            if (expr_pointed == T_CHAR) assign_size = 1;
            else if (expr_pointed == T_FLOAT) assign_size = 4;
            else assign_size = 8;
        }
    } else {
        error("lvalue required");
    }
}

static void handle_postfix(int is_lvalue) {
	while (tok == '[' || tok == '.' || tok == T_ARROW) {
		if (tok == '[') {
			next_token();
			emit("    pushq %%rax");
			
			// --- GUARDADO DE ESTADO TOTAL (BLINDAJE) ---
			int saved_ep = expr_pointed;
			int saved_ces = current_elem_size;
			int saved_ces2 = current_elem_size2;
			int saved_as = assign_size;       // <--- ¡FALTABA ESTE!
			int saved_npd = no_postfix_deref;
			
			assignment_expr(); // Evalúa el índice del array
			
			// --- RESTAURACIÓN DE ESTADO TOTAL ---
			expr_pointed = saved_ep;
			current_elem_size = saved_ces;
			current_elem_size2 = saved_ces2;
			assign_size = saved_as;           // <--- ¡RESTAURADO!
			no_postfix_deref = saved_npd;
			// ------------------------------------------

			emit("    popq %%rcx");
			int elem_size = current_elem_size;
			if (elem_size == 0) elem_size = (expr_pointed == T_CHAR) ? 1 : 8;
			if (elem_size > 1) emit_i("    imulq $%d, %%rax", elem_size);
			emit("    addq %%rcx, %%rax");
			current_elem_size = elem_size;
			assign_size = elem_size;
			
			if (current_elem_size2 > 0) {
				/* First subscript of a 2D array yields a row (a sub-array),
				   not a scalar: leave its address in %rax without dereferencing
				   and drop to the base element size so that a following
				   subscript indexes within the row (stride elem_size2) instead
				   of reusing the row stride. */
				current_elem_size = current_elem_size2;
				current_elem_size2 = 0;
				assign_size = current_elem_size;
			} else if (!is_lvalue && !no_postfix_deref && elem_size <= 8) {
				/* Load width follows the element size, not the pointed-to
				   type: elements of a char*[] array are 8-byte pointers even
				   though they point to char. Only genuine 1-byte elements
				   (char[]) use a sign-extending byte load. */
				if (elem_size == 1)
					emit("    movsbq (%%rax), %%rax");
				else if (elem_size == 4)
					emit("    movl (%%rax), %%eax");
				else
					emit("    movq (%%rax), %%rax");
				if (elem_size == 8 && saved_ep) {
					/* The loaded element is itself a pointer: the value in
					   %rax still points at the pointee, so a chained
					   subscript (argv[i][j]) indexes it with the pointee's
					   element size, not the pointer-array stride. */
					expr_pointed = saved_ep;
					current_elem_size = (saved_ep == T_CHAR) ? 1 : 8;
				} else {
					expr_pointed = 0;
				}
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
			if (off > 0) emit_i("    addq $%d, %%rax", off);
			assign_size = msize;
			current_elem_size = mesize;
			current_elem_size2 = 0;
			if (is_lvalue || no_postfix_deref) {
				if (msize == 1) expr_pointed = T_CHAR;
				else if (msize == 4) expr_pointed = T_FLOAT;
				else expr_pointed = (msize > 8) ? T_INT : 0;
			} else {
				if (msize > 8) {
					expr_pointed = (msize > 0) ? T_INT : 0;
				} else {
					if (msize == 1)
						emit("    movsbq (%%rax), %%rax");
					else if (msize == 4)
						emit("    movslq (%%rax), %%rax");
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
			if (off > 0) emit_i("    addq $%d, %%rax", off);
			assign_size = msize;
			current_elem_size = mesize;
			current_elem_size2 = 0;
			if (is_lvalue || no_postfix_deref) {
				if (msize == 1) expr_pointed = T_CHAR;
				else if (msize == 4) expr_pointed = T_FLOAT;
				else expr_pointed = (msize > 8) ? T_INT : 0;
			} else {
				if (msize > 8) {
					expr_pointed = (msize > 0) ? T_INT : 0;
				} else {
					if (msize == 1)
						emit("    movsbq (%%rax), %%rax");
					else if (msize == 4)
						emit("    movslq (%%rax), %%rax");
					else
						emit("    movq (%%rax), %%rax");
					expr_pointed = 0;
				}
			}
		}
	}
    no_postfix_deref = 0;
}

static void unary_expr(void) {
    unary();
    handle_postfix(0);
}

static void multiplicative_expr(void);
static void additive_expr(void);
static void relational_expr(void);
static void equality_expr(void);
static void bitwise_and_expr(void);
static void bitwise_xor_expr(void);
static void bitwise_or_expr(void);
static void logical_and_expr(void);
static void logical_or_expr(void);

static void multiplicative_expr(void) {
    unary_expr();
    while (tok == '*' || tok == '/' || tok == '%') {
        int op = tok;
        next_token();
        emit("    pushq %%rax");
        int left_type = expr_type;
        unary_expr();
        int right_type = expr_type;
        emit("    popq %%rcx");
        
        int t = right_type;
        if (left_type == T_DOUBLE || t == T_DOUBLE) t = T_DOUBLE;
        else if (left_type == T_FLOAT || t == T_FLOAT) t = T_FLOAT;
        
        if (t == T_FLOAT || t == T_DOUBLE) {
            if (left_type == T_FLOAT)
                emit("    movd %%ecx, %%xmm0");
            else if (left_type == T_DOUBLE)
                emit("    movq %%rcx, %%xmm0");
            else {
                emit("    movq %%rcx, %%xmm0");
                if (t == T_DOUBLE) emit("    cvtsi2sdq %%rcx, %%xmm0");
                else emit("    cvtsi2ssq %%rcx, %%xmm0");
            }
            if (right_type == T_FLOAT)
                emit("    movd %%eax, %%xmm1");
            else if (right_type == T_DOUBLE)
                emit("    movq %%rax, %%xmm1");
            else {
                emit("    movq %%rax, %%xmm1");
                if (t == T_DOUBLE) emit("    cvtsi2sdq %%rax, %%xmm1");
                else emit("    cvtsi2ssq %%rax, %%xmm1");
            }
            
            if (t == T_DOUBLE) {
                if (op == '*') emit("    mulsd %%xmm1, %%xmm0");
                else emit("    divsd %%xmm1, %%xmm0");
                emit("    movq %%xmm0, %%rax");
            } else {
                if (op == '*') emit("    mulss %%xmm1, %%xmm0");
                else emit("    divss %%xmm1, %%xmm0");
                emit("    movd %%xmm0, %%eax");
            }
        } else if (op == '%') {
            emit("    movq %%rax, %%r8");
            emit("    movq %%rcx, %%rax");
            emit("    cqto");
            emit("    idivq %%r8");
            emit("    movq %%rdx, %%rax");
        } else {
            if (op == '*') emit("    imulq %%rcx, %%rax");
            else {
                emit("    movq %%rax, %%r8");
                emit("    movq %%rcx, %%rax");
                emit("    cqto");
                emit("    idivq %%r8");
            }
        }
        expr_type = t;
        expr_pointed = 0;
    }
}

static void additive_expr(void) {
    multiplicative_expr();
    while (tok == '+' || tok == '-') {
        int op = tok;
        next_token();
        emit("    pushq %%rax");
        int left_type = expr_type;
        multiplicative_expr();
        int right_type = expr_type;
        emit("    popq %%rcx");
        
        int t = right_type;
        if (left_type == T_DOUBLE || t == T_DOUBLE) t = T_DOUBLE;
        else if (left_type == T_FLOAT || t == T_FLOAT) t = T_FLOAT;
        
        if (t == T_FLOAT || t == T_DOUBLE) {
            if (left_type == T_FLOAT)
                emit("    movd %%ecx, %%xmm0");
            else if (left_type == T_DOUBLE)
                emit("    movq %%rcx, %%xmm0");
            else {
                if (t == T_DOUBLE) emit("    cvtsi2sdq %%rcx, %%xmm0");
                else emit("    cvtsi2ssq %%rcx, %%xmm0");
            }
            if (right_type == T_FLOAT)
                emit("    movd %%eax, %%xmm1");
            else if (right_type == T_DOUBLE)
                emit("    movq %%rax, %%xmm1");
            else {
                if (t == T_DOUBLE) emit("    cvtsi2sdq %%rax, %%xmm1");
                else emit("    cvtsi2ssq %%rax, %%xmm1");
            }
            
            if (t == T_DOUBLE) {
                if (op == '+') emit("    addsd %%xmm1, %%xmm0");
                else emit("    subsd %%xmm1, %%xmm0");
                emit("    movq %%xmm0, %%rax");
            } else {
                if (op == '+') emit("    addss %%xmm1, %%xmm0");
                else emit("    subss %%xmm1, %%xmm0");
                emit("    movd %%xmm0, %%eax");
            }
        } else {
            if (op == '+') {
                emit("    addq %%rcx, %%rax");
            } else {
                emit("    subq %%rax, %%rcx");
                emit("    movq %%rcx, %%rax");
            }
        }
        expr_type = t;
        expr_pointed = 0;
    }
}

static void shift_expr(void) {
    additive_expr();
    while (tok == T_SHL || tok == T_SHR) {
        int op = tok;
        next_token();
        emit("    pushq %%rax");
        shift_expr();
        emit("    pushq %%rax");
        emit("    popq %%rcx");
        emit("    popq %%rax");
        if (op == T_SHL)
            emit("    salq %%cl, %%rax");
        else
            emit("    sarq %%cl, %%rax");
        expr_pointed = 0;
        expr_type = 0;
    }
}

static void relational_expr(void) {
    shift_expr();
    while (tok == '<' || tok == T_LE || tok == '>' || tok == T_GE) {
        int op = tok;
        next_token();
        emit("    pushq %%rax");
        int left_type = expr_type;
        additive_expr();
        int right_type = expr_type;
        emit("    popq %%rcx");
        
        int t = right_type;
        if (left_type == T_DOUBLE || t == T_DOUBLE) t = T_DOUBLE;
        else if (left_type == T_FLOAT || t == T_FLOAT) t = T_FLOAT;
        
        if (t == T_FLOAT || t == T_DOUBLE) {
            if (left_type == T_FLOAT)
                emit("    movd %%ecx, %%xmm0");
            else if (left_type == T_DOUBLE)
                emit("    movq %%rcx, %%xmm0");
            else {
                if (t == T_DOUBLE) emit("    cvtsi2sdq %%rcx, %%xmm0");
                else emit("    cvtsi2ssq %%rcx, %%xmm0");
            }
            if (right_type == T_FLOAT)
                emit("    movd %%eax, %%xmm1");
            else if (right_type == T_DOUBLE)
                emit("    movq %%rax, %%xmm1");
            else {
                if (t == T_DOUBLE) emit("    cvtsi2sdq %%rax, %%xmm1");
                else emit("    cvtsi2ssq %%rax, %%xmm1");
            }
            
            if (t == T_DOUBLE) emit("    ucomisd %%xmm1, %%xmm0");
            else emit("    ucomiss %%xmm1, %%xmm0");
            
            if (op == '<') emit("    setb %%al");
            else if (op == T_LE) emit("    setbe %%al");
            else if (op == '>') emit("    seta %%al");
            else emit("    setae %%al");
            emit("    movzbq %%al, %%rax");
        } else {
            emit("    cmpq %%rax, %%rcx");
            if (op == '<') emit("    setl %%al");
            else if (op == T_LE) emit("    setle %%al");
            else if (op == '>') emit("    setg %%al");
            else emit("    setge %%al");
            emit("    movzbq %%al, %%rax");
        }
        expr_pointed = 0;
    }
}

static void equality_expr(void) {
    relational_expr();
    while (tok == T_EQ || tok == T_NE) {
        int op = tok;
        next_token();
        emit("    pushq %%rax");
        int left_type = expr_type;
        relational_expr();
        int right_type = expr_type;
        emit("    popq %%rcx");
        
        int t = right_type;
        if (left_type == T_DOUBLE || t == T_DOUBLE) t = T_DOUBLE;
        else if (left_type == T_FLOAT || t == T_FLOAT) t = T_FLOAT;
        
        if (t == T_FLOAT || t == T_DOUBLE) {
            if (left_type == T_FLOAT)
                emit("    movd %%ecx, %%xmm0");
            else if (left_type == T_DOUBLE)
                emit("    movq %%rcx, %%xmm0");
            else {
                if (t == T_DOUBLE) emit("    cvtsi2sdq %%rcx, %%xmm0");
                else emit("    cvtsi2ssq %%rcx, %%xmm0");
            }
            if (right_type == T_FLOAT)
                emit("    movd %%eax, %%xmm1");
            else if (right_type == T_DOUBLE)
                emit("    movq %%rax, %%xmm1");
            else {
                if (t == T_DOUBLE) emit("    cvtsi2sdq %%rax, %%xmm1");
                else emit("    cvtsi2ssq %%rax, %%xmm1");
            }
            
            if (t == T_DOUBLE) emit("    ucomisd %%xmm1, %%xmm0");
            else emit("    ucomiss %%xmm1, %%xmm0");
            
            if (op == T_EQ) emit("    sete %%al");
            else emit("    setne %%al");
            emit("    movzbq %%al, %%rax");
        } else {
            emit("    cmpq %%rax, %%rcx");
            if (op == T_EQ) emit("    sete %%al");
            else emit("    setne %%al");
            emit("    movzbq %%al, %%rax");
        }
        expr_pointed = 0;
    }
}

static void bitwise_and_expr(void) {
    equality_expr();
    while (tok == '&') {
        next_token();
        emit("    pushq %%rax");
        equality_expr();
        emit("    popq %%rcx");
        emit("    andq %%rcx, %%rax");
        expr_pointed = 0;
    }
}

static void bitwise_xor_expr(void) {
    bitwise_and_expr();
    while (tok == '^') {
        next_token();
        emit("    pushq %%rax");
        bitwise_and_expr();
        emit("    popq %%rcx");
        emit("    xorq %%rcx, %%rax");
        expr_pointed = 0;
    }
}

static void bitwise_or_expr(void) {
    bitwise_xor_expr();
    while (tok == '|') {
        next_token();
        emit("    pushq %%rax");
        bitwise_xor_expr();
        emit("    popq %%rcx");
        emit("    orq %%rcx, %%rax");
        expr_pointed = 0;
    }
}

static void logical_and_expr(void) {
    bitwise_or_expr();
    while (tok == T_AND) {
        next_token();
        int l_false = label_counter++;
        int l_end = label_counter++;
        emit("    testq %%rax, %%rax");
        emit_i("    je .L%d", l_false);
        bitwise_or_expr();
        emit("    testq %%rax, %%rax");
        emit_i("    je .L%d", l_false);
        emit("    movl $1, %%eax");
        emit_i("    jmp .L%d", l_end);
        emit_label(l_false);
        emit("    xorl %%eax, %%eax");
        emit_label(l_end);
        expr_pointed = 0;
    }
}

static void logical_or_expr(void) {
    logical_and_expr();
    while (tok == T_OR) {
        next_token();
        int l_true = label_counter++;
        int l_end = label_counter++;
        emit("    testq %%rax, %%rax");
        emit_i("    jne .L%d", l_true);
        logical_and_expr();
        emit("    testq %%rax, %%rax");
        emit_i("    jne .L%d", l_true);
        emit("    xorl %%eax, %%eax");
        emit_i("    jmp .L%d", l_end);
        emit_label(l_true);
        emit("    movl $1, %%eax");
        emit_label(l_end);
        expr_pointed = 0;
    }
}

static void conditional_expr(void) {
    logical_or_expr();
    if (tok == '?') {
        int l_false = label_counter++;
        int l_end = label_counter++;
        next_token();
        emit("    testq %%rax, %%rax");
        emit_i("    je .L%d", l_false);
        assignment_expr(); /* Rama verdadera */
        emit_i("    jmp .L%d", l_end);
        emit_label(l_false);
        match(':');
        conditional_expr(); /* Rama falsa (recursiva para asociatividad derecha) */
        emit_label(l_end);
        expr_pointed = 0;
    }
}

static void emit_compound_op(int op, int asize) {
    if (op == T_MUL_ASSIGN) {
        if (asize == 4) emit("    imull %%ecx, %%eax");
        else emit("    imulq %%rcx, %%rax");
    } else if (op == T_DIV_ASSIGN || op == T_MOD_ASSIGN) {
        if (asize == 4) {
            emit("    movl %%eax, %%r8d");
            emit("    movl %%ecx, %%eax");
            emit("    cltd");
            emit("    idivl %%r8d");
            if (op == T_MOD_ASSIGN) emit("    movl %%edx, %%eax");
        } else {
            emit("    movq %%rax, %%r8");
            emit("    movq %%rcx, %%rax");
            emit("    cqto");
            emit("    idivq %%r8");
            if (op == T_MOD_ASSIGN) emit("    movq %%rdx, %%rax");
        }
    } else if (op == T_AND_ASSIGN) {
        if (asize == 4) emit("    andl %%ecx, %%eax");
        else emit("    andq %%rcx, %%rax");
    } else if (op == T_OR_ASSIGN) {
        if (asize == 4) emit("    orl %%ecx, %%eax");
        else emit("    orq %%rcx, %%rax");
    } else if (op == T_XOR_ASSIGN) {
        if (asize == 4) emit("    xorl %%ecx, %%eax");
        else emit("    xorq %%rcx, %%rax");
    } else if (op == T_SHL_ASSIGN || op == T_SHR_ASSIGN) {
        emit("    movq %%rax, %%r8");
        emit("    movq %%rcx, %%rax");
        emit("    movq %%r8, %%rcx");
        if (op == T_SHL_ASSIGN) {
            if (asize == 4) emit("    sall %%cl, %%eax");
            else emit("    salq %%cl, %%rax");
        } else {
            if (asize == 4) emit("    sarl %%cl, %%eax");
            else emit("    sarq %%cl, %%rax");
        }
    }
}

static void assignment_expr(void) {
    //no_postfix_deref = 0; 
    int saved_tok = tok;
    char saved_token[MAX_TOKEN_LEN];
    strcpy(saved_token, token);
    char *save_src = input_ptr;
    int save_line = line;

    if (tok != T_ID && tok != '*') {
        conditional_expr(); // <-- Cambiado
        return;
    }

    if (tok == T_ID) {
        next_token();
        char *peek_ptr = input_ptr;
        int peek_line = line;
        int peek_tok = tok;
        char peek_token[MAX_TOKEN_LEN];
        strcpy(peek_token, token);

        int assign_type = 0;
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
                next_token();
                next_token();
            }
        }
        if (tok == '=') assign_type = 1;
        else if (tok == T_INC) assign_type = 2;
        else if (tok == T_DEC) assign_type = 3;
        else if (tok == T_ADD_ASSIGN) assign_type = 4;
        else if (tok == T_SUB_ASSIGN) assign_type = 5;
        else if (tok == T_MUL_ASSIGN) assign_type = 6;
        else if (tok == T_DIV_ASSIGN) assign_type = 7;
        else if (tok == T_MOD_ASSIGN) assign_type = 8;
        else if (tok == T_AND_ASSIGN) assign_type = 9;
        else if (tok == T_OR_ASSIGN) assign_type = 10;
        else if (tok == T_XOR_ASSIGN) assign_type = 11;
        else if (tok == T_SHL_ASSIGN) assign_type = 12;
        else if (tok == T_SHR_ASSIGN) assign_type = 13;
        else assign_type = 0;

        input_ptr = peek_ptr;
        line = peek_line;
        tok = peek_tok;
        strcpy(token, peek_token);

        if (assign_type == 1) {
            tok = saved_tok; strcpy(token, saved_token); input_ptr = save_src; line = save_line;
            lvalue_address(); match('='); emit("    pushq %%rax");
            int saved_as = assign_size; assignment_expr(); emit("    popq %%rcx");
            assign_size = saved_as;
            if (assign_size == 1) emit("    movb %%al, (%%rcx)"); else if (assign_size == 4) emit("    movl %%eax, (%%rcx)"); else emit("    movq %%rax, (%%rcx)");
            return;
        } else if (assign_type == 4) {
            tok = saved_tok; strcpy(token, saved_token); input_ptr = save_src; line = save_line;
            lvalue_address(); emit("    pushq %%rax");
            if (assign_size == 1) emit("    movsbq (%%rax), %%rax"); else if (assign_size == 4) emit("    movl (%%rax), %%eax"); else emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax"); next_token(); assignment_expr(); emit("    popq %%rcx");
            if (assign_size == 1) { emit("    addq %%rcx, %%rax"); emit("    popq %%rcx"); emit("    movb %%al, (%%rcx)"); }
            else if (assign_size == 4) { emit("    addl %%ecx, %%eax"); emit("    popq %%rcx"); emit("    movl %%eax, (%%rcx)"); }
            else { emit("    addq %%rcx, %%rax"); emit("    popq %%rcx"); emit("    movq %%rax, (%%rcx)"); }
            return;
        } else if (assign_type == 5) {
            tok = saved_tok; strcpy(token, saved_token); input_ptr = save_src; line = save_line;
            lvalue_address(); emit("    pushq %%rax");
            if (assign_size == 1) emit("    movsbq (%%rax), %%rax"); else if (assign_size == 4) emit("    movl (%%rax), %%eax"); else emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax"); next_token(); assignment_expr(); emit("    popq %%rcx");
            if (assign_size == 1) { emit("    subq %%rax, %%rcx"); emit("    movq %%rcx, %%rax"); emit("    popq %%rcx"); emit("    movb %%al, (%%rcx)"); }
            else if (assign_size == 4) { emit("    subl %%eax, %%ecx"); emit("    movl %%ecx, %%eax"); emit("    popq %%rcx"); emit("    movl %%eax, (%%rcx)"); }
            else { emit("    subq %%rax, %%rcx"); emit("    movq %%rcx, %%rax"); emit("    popq %%rcx"); emit("    movq %%rax, (%%rcx)"); }
            return;
        } else if (assign_type >= 6) {
            int cop = 0;
            tok = saved_tok; strcpy(token, saved_token); input_ptr = save_src; line = save_line;
            lvalue_address(); emit("    pushq %%rax");
            if (assign_size == 1) emit("    movsbq (%%rax), %%rax"); else if (assign_size == 4) emit("    movl (%%rax), %%eax"); else emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax"); cop = tok; next_token(); assignment_expr(); emit("    popq %%rcx");
            emit_compound_op(cop, assign_size);
            emit("    popq %%rcx");
            if (assign_size == 1) emit("    movb %%al, (%%rcx)"); else if (assign_size == 4) emit("    movl %%eax, (%%rcx)"); else emit("    movq %%rax, (%%rcx)");
            return;
        } else if (assign_type != 0) {
            int op = tok == T_INC ? T_INC : T_DEC;
            input_ptr = save_src; line = save_line; tok = saved_tok; strcpy(token, saved_token);
            lvalue_address();
            if (assign_size == 1) emit("    movsbq (%%rax), %%rcx"); else if (assign_size == 4) emit("    movl (%%rax), %%ecx"); else emit("    movq (%%rax), %%rcx");
            if (op == T_INC) { if (assign_size == 1) emit("    addb $1, (%%rax)"); else if (assign_size == 4) emit("    addl $1, (%%rax)"); else emit("    addq $1, (%%rax)"); }
            else { if (assign_size == 1) emit("    subb $1, (%%rax)"); else if (assign_size == 4) emit("    subl $1, (%%rax)"); else emit("    subq $1, (%%rax)"); }
            emit("    movq %%rcx, %%rax"); next_token(); return;
        } else {
            tok = saved_tok; strcpy(token, saved_token); input_ptr = save_src; line = save_line;
            conditional_expr(); // <-- Cambiado
            return;
        }
    } else {
        char *peek_ptr = input_ptr;
        int peek_line = line;
        int peek_tok = tok;
        char peek_token[MAX_TOKEN_LEN];
        strcpy(peek_token, token);

        /* Guardar estado global de tipos para el modo peek */
        int saved_assign_size = assign_size;
        int saved_expr_pointed = expr_pointed;
        int saved_current_elem_size = current_elem_size;
        int saved_current_elem_size2 = current_elem_size2;
        int saved_no_postfix_deref = no_postfix_deref;

        int saved_emit = emit_enabled;
        emit_enabled = 0;
        conditional_expr(); 
        emit_enabled = saved_emit;

        /* Restaurar estado global de tipos */
        assign_size = saved_assign_size;
        expr_pointed = saved_expr_pointed;
        current_elem_size = saved_current_elem_size;
        current_elem_size2 = saved_current_elem_size2;
        no_postfix_deref = saved_no_postfix_deref;
        
        /* NOTA: NO restauramos label_counter ni string_count para evitar duplicados */

        int assign_type = 0;
        if (tok == '=') assign_type = 1;
        else if (tok == T_INC) assign_type = 2;
        else if (tok == T_DEC) assign_type = 3;
        else if (tok == T_ADD_ASSIGN) assign_type = 4;
        else if (tok == T_SUB_ASSIGN) assign_type = 5;
        else if (tok == T_MUL_ASSIGN) assign_type = 6;
        else if (tok == T_DIV_ASSIGN) assign_type = 7;
        else if (tok == T_MOD_ASSIGN) assign_type = 8;
        else if (tok == T_AND_ASSIGN) assign_type = 9;
        else if (tok == T_OR_ASSIGN) assign_type = 10;
        else if (tok == T_XOR_ASSIGN) assign_type = 11;
        else if (tok == T_SHL_ASSIGN) assign_type = 12;
        else if (tok == T_SHR_ASSIGN) assign_type = 13;

        input_ptr = peek_ptr; 
        line = peek_line; 
        tok = peek_tok; 
        strcpy(token, peek_token);

        if (assign_type == 1) {
            lvalue_address(); match('='); emit("    pushq %%rax");
            int saved_as = assign_size; assignment_expr(); emit("    popq %%rcx");
            assign_size = saved_as;
            if (assign_size == 1) emit("    movb %%al, (%%rcx)"); else if (assign_size == 4) emit("    movl %%eax, (%%rcx)"); else emit("    movq %%rax, (%%rcx)");
            return;
        } else if (assign_type == 4) {
            lvalue_address(); emit("    pushq %%rax");
            if (assign_size == 1) emit("    movsbq (%%rax), %%rax"); else if (assign_size == 4) emit("    movl (%%rax), %%eax"); else emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax"); next_token(); assignment_expr(); emit("    popq %%rcx");
            if (assign_size == 1) { emit("    addq %%rcx, %%rax"); emit("    popq %%rcx"); emit("    movb %%al, (%%rcx)"); }
            else if (assign_size == 4) { emit("    addl %%ecx, %%eax"); emit("    popq %%rcx"); emit("    movl %%eax, (%%rcx)"); }
            else { emit("    addq %%rcx, %%rax"); emit("    popq %%rcx"); emit("    movq %%rax, (%%rcx)"); }
            return;
        } else if (assign_type == 5) {
            lvalue_address(); emit("    pushq %%rax");
            if (assign_size == 1) emit("    movsbq (%%rax), %%rax"); else if (assign_size == 4) emit("    movl (%%rax), %%eax"); else emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax"); next_token(); assignment_expr(); emit("    popq %%rcx");
            if (assign_size == 1) { emit("    subq %%rax, %%rcx"); emit("    movq %%rcx, %%rax"); emit("    popq %%rcx"); emit("    movb %%al, (%%rcx)"); }
            else if (assign_size == 4) { emit("    subl %%eax, %%ecx"); emit("    movl %%ecx, %%eax"); emit("    popq %%rcx"); emit("    movl %%eax, (%%rcx)"); }
            else { emit("    subq %%rax, %%rcx"); emit("    movq %%rcx, %%rax"); emit("    popq %%rcx"); emit("    movq %%rax, (%%rcx)"); }
            return;
        } else if (assign_type >= 6) {
            int cop = 0;
            lvalue_address(); emit("    pushq %%rax");
            if (assign_size == 1) emit("    movsbq (%%rax), %%rax"); else if (assign_size == 4) emit("    movl (%%rax), %%eax"); else emit("    movq (%%rax), %%rax");
            emit("    pushq %%rax"); cop = tok; next_token(); assignment_expr(); emit("    popq %%rcx");
            emit_compound_op(cop, assign_size);
            emit("    popq %%rcx");
            if (assign_size == 1) emit("    movb %%al, (%%rcx)"); else if (assign_size == 4) emit("    movl %%eax, (%%rcx)"); else emit("    movq %%rax, (%%rcx)");
            return;
        } else if (assign_type != 0) {
            lvalue_address();
            if (assign_size == 1) emit("    movsbq (%%rax), %%rcx"); else if (assign_size == 4) emit("    movl (%%rax), %%ecx"); else emit("    movq (%%rax), %%rcx");
            if (assign_type == 2) { if (assign_size == 1) emit("    addb $1, (%%rax)"); else if (assign_size == 4) emit("    addl $1, (%%rax)"); else emit("    addq $1, (%%rax)"); }
            else { if (assign_size == 1) emit("    subb $1, (%%rax)"); else if (assign_size == 4) emit("    subl $1, (%%rax)"); else emit("    subq $1, (%%rax)"); }
            emit("    movq %%rcx, %%rax"); next_token(); return;
        } else {
            conditional_expr(); 
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
        emit_i("    je .L%d", l1);
        statement();
        if (tok == T_ELSE) {
            next_token();
            emit_i("    jmp .L%d", l2);
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
        push_scope();
        
        /* init */
        if (tok == T_CONST) { next_token(); }
        if (tok == T_ID && (strcmp(token, "unsigned") == 0 || strcmp(token, "signed") == 0)) {
            unsigned_type = (strcmp(token, "unsigned") == 0);
            next_token();
            while (tok == T_INT && (strcmp(token, "long") == 0 || strcmp(token, "int") == 0)) next_token();
        }
        if (tok == T_INT || tok == T_CHAR || tok == T_FLOAT || tok == T_DOUBLE) {
            int type = tok;
            next_token();
            while (tok == T_INT && (strcmp(token, "long") == 0 || strcmp(token, "int") == 0)) next_token();
            
            while (tok != ';' && tok != T_EOF) {
                int is_ptr = 0;
                while (tok == '*') { is_ptr = 1; next_token(); }
                if (tok != T_ID) error("expected variable name");
                char varname[MAX_IDENT_LEN];
                int nlen = strlen(token);
                if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
                memcpy(varname, token, nlen);
                varname[nlen] = '\0';
                next_token();
                int vsize = is_ptr ? 8 : (type == T_CHAR ? 1 : (type == T_FLOAT ? 4 : 8));
                int vt = (type == T_INT) ? 0 : type;
                add_symbol(varname, 0, vsize, is_ptr ? type : 0, 0, 0);
                symbols[symbol_count - 1].var_type = vt;
                if (tok == '=') {
                    next_token();
                    assignment_expr();
                    int si = find_symbol(varname);
                    Symbol *s = &symbols[si];
                    if (s->is_global) {
                        if (s->var_type == T_FLOAT)
                            emit_s("    movl %%eax, %s(%%rip)", s->name);
                        else
                            emit_s("    movq %%rax, %s(%%rip)", s->name);
                    } else {
                        if (s->var_type == T_FLOAT)
                            emit_i("    movl %%eax, %d(%%rbp)", s->offset);
                        else
                            emit_i("    movq %%rax, %d(%%rbp)", s->offset);
                    }
                }
                if (tok == ',') next_token();
                else break;
            }
            match(';');
        } else if (tok != ';') {
            while (tok != ';' && tok != T_EOF) {
                assignment_expr();
                if (tok == ',') next_token();
                else break;
            }
            match(';');
        } else {
            match(';');
        }

        /* Save condition position */
        char *cond_pos = input_ptr;
        int cond_line_saved = line;
        int cond_first_tok = tok;
        char cond_first_tok_val[MAX_TOKEN_LEN];
        strcpy(cond_first_tok_val, token);
        int has_cond = (tok != ';');
        if (has_cond) {
            while (tok != ';' && tok != T_EOF) next_token();
        }
        match(';');

        /* Save increment position */
        char *inc_pos = input_ptr;
        int inc_line_saved = line;
        int inc_first_tok = tok;
        char inc_first_tok_val[MAX_TOKEN_LEN];
        strcpy(inc_first_tok_val, token);
        int has_inc = (tok != ')');
        if (has_inc) {
            while (tok != ')' && tok != T_EOF) next_token();
        }
        match(')');

        int l_body = label_counter++;
        int l_inc = has_inc ? label_counter++ : 0;
        int l_cond = label_counter++;
        int l_end = label_counter++;
        int l_cont = has_inc ? l_inc : l_cond;

        emit_i("    jmp .L%d", l_cond);
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

        char *after_body_pos = input_ptr;
        int after_body_line = line;
        int after_body_tok = tok;
        char after_body_token[MAX_TOKEN_LEN];
        strcpy(after_body_token, token);
        
        /* Increment (re-parsed) - CON ESTADO COMPLETO */
        if (has_inc) {
            emit_label(l_inc);
            input_ptr = inc_pos; line = inc_line_saved; tok = inc_first_tok; strcpy(token, inc_first_tok_val);
            
            ParserState saved_state;
            save_parser_state(&saved_state);
            
            // Parsear el incremento respetando el límite del ')'
            int paren_depth = 0;
            while (tok != T_EOF) {
                if (tok == '(') paren_depth++;
                else if (tok == ')') {
                    if (paren_depth == 0) break;
                    paren_depth--;
                }
                
                assignment_expr();
                
                if (tok == ',') {
                    next_token();
                } else if (tok == ')' && paren_depth == 0) {
                    break;
                } else if (tok != ')') {
                    // Si no es coma ni paréntesis de cierre, algo salió mal
                    break;
                }
            }

            restore_parser_state(&saved_state);
            emit_i("    jmp .L%d", l_cond);
        }

        /* Condition (re-parsed) - CON ESTADO COMPLETO */
        emit_label(l_cond);
        if (has_cond) {
            input_ptr = cond_pos; line = cond_line_saved; tok = cond_first_tok; strcpy(token, cond_first_tok_val);
            
            ParserState saved_state;
            save_parser_state(&saved_state);
            
            // Parsear la condición respetando el límite del ';'
            int semicolon_found = 0;
            int paren_depth = 0;
            while (tok != T_EOF && !semicolon_found) {
                if (tok == '(') paren_depth++;
                else if (tok == ')') paren_depth--;
                else if (tok == ';' && paren_depth == 0) {
                    semicolon_found = 1;
                    break;
                }
                
                assignment_expr();
                
                if (tok == ',') {
                    next_token();
                } else if (tok == ';' && paren_depth == 0) {
                    break;
                }
            }

            restore_parser_state(&saved_state);
            emit("    cmpq $0, %%rax");
            emit_i("    jne .L%d", l_body);
        } else {
            emit_i("    jmp .L%d", l_body);
        }

        emit_label(l_end);

        input_ptr = after_body_pos; line = after_body_line; tok = after_body_tok; strcpy(token, after_body_token);
        pop_scope();
        return;
    }

    if (tok == T_DO) {
        next_token();
        int l_body = label_counter++;
        int l_end = label_counter++;
        int saved_cont = continue_target;
        int saved_cont_valid = continue_target_valid;
        int saved_break = break_target;
        int saved_break_valid = break_target_valid;
        continue_target = l_body;
        continue_target_valid = 1;
        break_target = l_end;
        break_target_valid = 1;
        emit_label(l_body);
        statement();
        if (tok != T_WHILE) error("expected 'while' after do body");
        next_token();
        match('(');
        assignment_expr();
        match(')');
        match(';');
        emit("    cmpq $0, %%rax");
        emit_i("    jne .L%d", l_body);
        emit_label(l_end);
        continue_target = saved_cont;
        continue_target_valid = saved_cont_valid;
        break_target = saved_break;
        break_target_valid = saved_break_valid;
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
        emit_i("    je .L%d", l2);
        statement();
        emit_i("    jmp .L%d", l1);
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
        assignment_expr(); 
        match(')');
        int dispatch_label = label_counter++;
        int end_label = label_counter++;

        emit("    pushq %%rax");
        emit("    pushq $0"); /* Mantiene alineación de pila de 16 bytes */
        emit_i("    jmp .L%d", dispatch_label);

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
                int val = (int)safe_strtoll(token);
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

        emit_i("    jmp .L%d", end_label);

        emit_label(dispatch_label);
        emit("    movq 8(%%rsp), %%rax"); /* Leer el valor original saltando el padding */
        for (int i = 0; i < switch_case_count; i++) {
            emit_i("    cmpq $%d, %%rax", switch_case_values[i]);
            emit_i("    je .L%d", switch_case_labels[i]);
        }
        if (switch_has_default)
            emit_i("    jmp .L%d", switch_default_label);
        emit_label(end_label);
        emit("    addq $16, %%rsp"); /* Restaurar pila (8 bytes del valor + 8 bytes de padding) */

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
            emit_i("    jmp .L%d", break_target);
        return;
    }

    if (tok == T_CONTINUE) {
        next_token();
        match(';');
        if (continue_target_valid)
            emit_i("    jmp .L%d", continue_target);
        return;
    }

    if (tok == T_GOTO) {
        next_token();
        if (tok != T_ID) error("expected label name");
        emit_s("    jmp %s", token);
        next_token();
        match(';');
        return;
    }

    if (tok == T_RETURN) {
        function_has_return = 1;
        next_token();
        if (tok != ';') assignment_expr();
        match(';');
        emit("    leave");
        emit("    ret");
        return;
    }

    if (tok == '{') {
        next_token();
        push_scope();
        while (tok != '}' && tok != T_EOF) {
            if (tok == T_ID && (strcmp(token, "unsigned") == 0 || strcmp(token, "signed") == 0)) {
                unsigned_type = (strcmp(token, "unsigned") == 0);
                next_token();
                while (tok == T_INT && (strcmp(token, "long") == 0 || strcmp(token, "int") == 0)) next_token();
                /* fall through to type handling with next token */
            }
        if (tok == T_EXTERN) {
            extern_flag = 1;
            next_token();
        }
        if (tok == T_STATIC) {
                next_token();
                continue;
            } else if (tok == T_CONST) {
                next_token();
                continue;
            } else if (tok == T_TYPEDEF) {
                skip_typedef();
            } else if (tok == T_STRUCT || tok == T_UNION) {
                next_token();
                skip_struct();
            } else if (tok == T_ID) {
                /* Check for label (ID followed by ':') */
                {
                    const char *p = input_ptr;
                    while (*p && (*p == ' ' || *p == '\t')) p++;
                    if (*p == ':') {
                        emit_s("%s:", token);
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
                restart_typedef: ;
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
                int elem_size2 = 0;
                int ndims = 0;
                while (tok == '[') {
                    is_arr = 1;
                    next_token();
                    int cnt = 0;
                    if (tok == T_NUM) { cnt = (int)safe_strtoll(token); next_token(); }
                    else if (tok == T_ID) {
                        int mi = find_macro(token);
                        if (mi >= 0) cnt = macros[mi].value;
                        else error("undefined macro");
                        next_token();
                    }
                    match(']');
                    size = size * (cnt > 0 ? cnt : 1);
                    ndims++;
                    if (ndims == 2) {
                        elem_size2 = elem_size;
                        elem_size = elem_size * (cnt > 0 ? cnt : 1);
                    }
                }
                add_symbol(varname, 0, size, is_ptr ? T_INT : 0, is_arr, elem_size);
                if (elem_size2 > 0) {
                    Symbol *s2 = &symbols[symbol_count - 1];
                    s2->elem_size2 = elem_size2;
                }
                if (tok == '=') {
                    next_token();
                    if (tok == '{') {
                        next_token();
                        int elem_idx = 0;
                        while (tok != '}') {
                            assignment_expr();
                            int si = find_symbol(varname);
                            Symbol *s = &symbols[si];
                            int off = s->offset + elem_idx * elem_size;
                            if (elem_size == 1)
                                emit_i("    movb %%al, %d(%%rbp)", off);
                            else if (elem_size == 4)
                                emit_i("    movl %%eax, %d(%%rbp)", off);
                            else
                                emit_i("    movq %%rax, %d(%%rbp)", off);
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
                        assignment_expr();
                        int si = find_symbol(varname);
                        Symbol *s = &symbols[si];
                        if (s->is_global) {
                            if (s->var_type == T_FLOAT)
                                emit_s("    movl %%eax, %s(%%rip)", s->name);
                            else
                                emit_s("    movq %%rax, %s(%%rip)", s->name);
                        } else {
                            if (s->var_type == T_FLOAT)
                                emit_i("    movl %%eax, %d(%%rbp)", s->offset);
                            else
                                emit_i("    movq %%rax, %d(%%rbp)", s->offset);
                        }
                    }
                }
                if (tok == ',') {
                    next_token();
                    goto restart_typedef;
                }
                match(';');
            } else if (tok == T_INT || tok == T_CHAR || tok == T_VOID || tok == T_FLOAT || tok == T_DOUBLE) {
                int type = tok;
                int ndims = 0;
                next_token();
                /* FIX: saltar 'long' extra para 'long long', 'long int', etc. */
                while (tok == T_INT && (strcmp(token, "long") == 0 || strcmp(token, "int") == 0)) next_token();
                restart_int: ;
                int is_ptr = 0;
                while (tok == '*') { is_ptr = 1; next_token(); }
                if (tok != T_ID) error("expected variable name");
                char varname[MAX_IDENT_LEN];
                int nlen = strlen(token);
                if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
                memcpy(varname, token, nlen);
                varname[nlen] = '\0';
                next_token();
                int gsize = is_ptr ? 8 : (type == T_CHAR ? 1 : (type == T_FLOAT ? 4 : 8));
                int vt = (type == T_INT || type == T_VOID) ? 0 : type;
                int is_arr = 0;
                int elem_size = gsize; // <--- REVERTIR A ESTO (Debe ser 'gsize', no 1)
                int elem_size2 = 0;
                while (tok == '[') {
                    is_arr = 1;
                    next_token();
                    int cnt = 0;
                    if (tok == T_NUM) {
                        cnt = (int)safe_strtoll(token);
                        next_token();
                    } else if (tok == T_ID) {
                        int mi = find_macro(token);
                        if (mi >= 0) cnt = macros[mi].value;
                        else error("undefined macro");
                        next_token();
                    }
                    match(']');
                    gsize = gsize * (cnt > 0 ? cnt : 1);
                    ndims++;
                    if (ndims == 2) {
                        elem_size2 = elem_size;
                        elem_size = elem_size * (cnt > 0 ? cnt : 1);
                    }
                }
                add_symbol(varname, 0, gsize, is_ptr ? type : 0, is_arr, elem_size);
                symbols[symbol_count - 1].var_type = vt;
                if (elem_size2 > 0) {
                    Symbol *s2 = &symbols[symbol_count - 1];
                    s2->elem_size2 = elem_size2;
                }
                if (tok == '=') {
                    next_token();
                    if (tok == '{') {
                        next_token();
                        int elem_idx = 0;
                        while (tok != '}') {
                            assignment_expr();
                            int si = find_symbol(varname);
                            Symbol *s = &symbols[si];
                            int off = s->offset + elem_idx * elem_size;
                            if (elem_size == 1)
                                emit_i("    movb %%al, %d(%%rbp)", off);
                            else if (elem_size == 4)
                                emit_i("    movl %%eax, %d(%%rbp)", off);
                            else
                                emit_i("    movq %%rax, %d(%%rbp)", off);
                            if (tok == ',') next_token();
                            elem_idx++;
                        }
                        match('}');
                        if (is_arr && gsize == 0) {
                            gsize = elem_idx * elem_size;
                            int si = find_symbol(varname);
                            Symbol *s = &symbols[si];
                            int old_al = (s->size + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
                            int new_al = (gsize + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
                            s->size = gsize;
                            s->offset -= (new_al - old_al);
                            stack_size += (new_al - old_al);
                            if (stack_size > max_func_stack)
                                max_func_stack = stack_size;
                        }
                    } else {
                        assignment_expr();
                        int si = find_symbol(varname);
                        Symbol *s = &symbols[si];
                        if (s->is_global) {
                            if (s->var_type == T_FLOAT)
                                emit_s("    movl %%eax, %s(%%rip)", s->name);
                            else
                                emit_s("    movq %%rax, %s(%%rip)", s->name);
                        } else {
                            if (s->var_type == T_FLOAT)
                                emit_i("    movl %%eax, %d(%%rbp)", s->offset);
                            else
                                emit_i("    movq %%rax, %d(%%rbp)", s->offset);
                        }
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
        pop_scope();
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
                assignment_expr();
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
    push_scope();

    match('(');

    char param_names[MAX_SYMBOLS][MAX_IDENT_LEN];
    int param_count = 0;
    if (tok == T_VOID) {
        next_token();
    } else {
        while (tok != ')' && tok != T_EOF) {
            if (tok == T_CONST) { next_token(); continue; }
            if (tok == T_ID && (strcmp(token, "unsigned") == 0 || strcmp(token, "signed") == 0)) {
                unsigned_type = (strcmp(token, "unsigned") == 0);
                next_token();
                while (tok == T_INT && (strcmp(token, "long") == 0 || strcmp(token, "int") == 0)) next_token();
            }
            if (tok == T_INT || tok == T_CHAR || tok == T_VOID || tok == T_FLOAT || tok == T_DOUBLE || tok == T_ID) {
                int ptype = (tok == T_ID) ? T_INT : tok;
                if (tok == T_ID) {
                    int ti = find_symbol(token);
                    if (ti >= 0 && symbols[ti].is_const) ptype = T_INT;
                }
                next_token();
                while (tok == T_INT && (strcmp(token, "long") == 0 || strcmp(token, "int") == 0)) next_token();
                int nstars = 0;
                while (tok == '*') { nstars = nstars + 1; next_token(); }
                int is_ptr = nstars > 0;
                if (tok != T_ID) error("expected parameter name");
                int nlen = strlen(token);
                if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
                memcpy(param_names[param_count], token, nlen);
                param_names[param_count][nlen] = '\0';
                int psize = is_ptr ? 8 : (ptype == T_CHAR ? 1 : (ptype == T_FLOAT ? 4 : 8));
                /* Pointee type after one dereference: char* points at char
                   (movsbq, stride 1); with two or more stars the first
                   subscript yields another pointer (stride 8) whose pointee
                   is still the base type, so char** keeps char as the
                   pointee and elem_ptr marks the 8-byte first stride. */
                int pointed_type = 0;
                int vt = (ptype == T_INT || ptype == T_VOID) ? 0 : ptype;
                if (nstars >= 1) pointed_type = ptype;
                add_symbol(token, 0, psize, pointed_type, 0, 0);
                symbols[symbol_count - 1].var_type = vt;
                symbols[symbol_count - 1].elem_ptr = (nstars >= 2);
                param_count++;
                next_token();
                if (tok == ',') next_token();
            } else if (tok == '.') {
                next_token(); if (tok == '.') next_token(); if (tok == '.') next_token();
                break;
            } else {
                next_token();
            }
        }
    }
    match(')');

    if (tok == ';') {
        pop_scope();
        next_token();
        return;
    }

    if (tok != '{') error("expected function body");

    int param_stack = stack_size - outer_stack;

    /* Primera pasada: calcular stack size correctamente */
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

    statement();  /* primera pasada completa */

    int func_stack = (max_func_stack + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
    if (func_stack < 64) func_stack = 64; // Margen de seguridad para pushes de argumentos
    /* Restaurar estado exacto */
    truncate_symbols(saved_symbol_cnt);
    input_ptr = body_start;
    line = body_line;
    tok = body_tok;
    strcpy(token, body_token);
    emit_enabled = 1;

    /* Prologue real */
    emit_s("    .globl %s", name);
    emit_s("%s:", name);
    emit("    pushq %%rbp");
    emit("    movq %%rsp, %%rbp");
    int safe_stack = (func_stack + 16 + STACK_ALIGN - 1) & ~(STACK_ALIGN - 1);
    if (safe_stack > 0)
        emit_i("    subq $%d, %%rsp", safe_stack);

    /* Guardar parámetros de registros */
    for (int i = 0; i < param_count && i < 6; i++) {
        int idx = find_symbol(param_names[i]);
        if (idx >= 0) {
            Symbol *s = &symbols[idx];
            emit_si("    movq %s, %d(%%rbp)", arg_reg(i), s->offset);
        }
    }

    /* Segunda pasada: generar código */
    stack_size = param_stack;
    function_has_return = 0;
    statement();

    /* Epílogo incondicional: un return en alguna rama no garantiza que el
       último camino del cuerpo retorne; sin esto la ejecución cae en la
       siguiente función. Si el cuerpo ya retornó, esto es código muerto. */
    emit("    leave");
    emit("    ret");

    pop_scope();
}

static void parse_enum(void) {
    next_token(); /* skip 'enum' */
    if (tok == T_ID) {
        next_token(); /* skip optional tag */
    }
    if (tok != '{') error("expected '{' after enum");
    next_token();
    int val = 0;
    while (tok != '}' && tok != T_EOF) {
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
        s->is_array = 0;
        s->elem_size = 0;
        s->elem_size2 = 0;
        s->var_type = 0;
        s->next_hash = -1;
        {
            int h = hash_name(s->name);
            s->next_hash = hash_table[h];
            hash_table[h] = symbol_count - 1;
        }
        next_token();
        if (tok == '=') {
            next_token();
            if (tok != T_NUM) error("expected integer constant");
            val = (int)safe_strtoll(token);
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

    /* struct_member_count NO se resetea: los miembros de todos los structs
       se acumulan en una sola tabla global para que los accesos a miembros
       de structs definidos antes sigan resolviendo su offset correcto.
       (Los offsets son por-struct porque struct_total_size si se resetea.) */
    struct_total_size = 0;

    while (tok != '}' && tok != T_EOF) {
        if (tok == T_INT || tok == T_CHAR || tok == T_FLOAT || tok == T_DOUBLE) {
            int ftype = tok;
            next_token();
            int is_ptr = 0;
            while (tok == '*') { is_ptr = 1; next_token(); }
            int fsize;
            if (is_ptr) fsize = 8;
            else if (ftype == T_CHAR) fsize = 1;
            else if (ftype == T_FLOAT) fsize = 4;
            else if (ftype == T_DOUBLE) fsize = 8;
            else fsize = 4;

            while (tok != ';' && tok != '}' && tok != T_EOF) {
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
                        if (tok == T_NUM) { count = (int)safe_strtoll(token); next_token(); }
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
    } else if (tok == T_INT || tok == T_CHAR || tok == T_VOID || tok == T_FLOAT || tok == T_DOUBLE) {
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
        s->is_array = 0;
        s->elem_size = 0;
        s->elem_size2 = 0;
        s->var_type = 0;
        s->next_hash = -1;
        s->const_value = 8;  /* just a marker */
        /* If a struct was just parsed, store its size */
        if (struct_total_size > 0)
            s->const_value = struct_total_size;
        {
            int h = hash_name(last_name);
            s->next_hash = hash_table[h];
            hash_table[h] = symbol_count - 1;
        }
    }
    match(';');
}

/* Storage directive for a datum of `size` bytes. */
static const char *data_directive(int size) {
    if (size == 1) return "    .byte %d";
    if (size == 2) return "    .word %d";
    if (size == 4) return "    .long %d";
    return "    .quad %d";
}

/* Reserve zero-initialized storage for a global. */
static void emit_global_bss(const char *name, int is_static, int size) {
    emit("    .bss");
    if (!is_static) emit_s("    .globl %s", name);
    emit_s("%s:", name);
    if (size > 0) emit_i("    .space %d", size);
    emit("    .text");
}

static void emit_global_data_head(const char *name, int is_static) {
    emit("    .data");
    if (!is_static) emit_s("    .globl %s", name);
    emit_s("%s:", name);
}

/* Parse an integer constant usable as a static initializer: an optionally
 * signed numeric or character literal, or a macro standing for one.
 * Returns 1 when a constant was consumed. */
static int parse_const_int(long long *out) {
    int neg = 0;
    if (tok == '-') { neg = 1; next_token(); }
    else if (tok == '+') { next_token(); }
    if (tok == T_NUM) {
        long long v = safe_strtoll(token);
        next_token();
        *out = neg ? -v : v;
        return 1;
    }
    if (tok == T_ID) {
        int mi = find_macro(token);
        if (mi >= 0) {
            long long v = macros[mi].value;
            next_token();
            *out = neg ? -v : v;
            return 1;
        }
    }
    return 0;
}

/* Record a string literal in the pool and return its label index. */
static int intern_string(const char *text) {
    int lbl = str_label_counter++;
    if (string_count < MAX_STRINGS) {
        int len = strlen(text);
        string_pool[string_count] = safe_malloc(len + 1);
        safe_strcpy(string_pool[string_count], text, len + 1);
        string_count++;
    }
    return lbl;
}

/* Emit the definition of a global that carries an initializer. On entry the
 * current token is the one after '='. `size` is the declared byte size and is
 * updated in place when the initializer determines the length of an unsized
 * array. Returns 1 when the initializer was materialized, 0 when the form is
 * unsupported, in which case nothing was emitted and the caller falls back to
 * zero-initialized storage. */
static int emit_global_initializer(const char *name, int is_static, int *size,
                                   int elem_size, int is_array, int is_ptr) {
    long long v = 0;

    if (is_array && !is_ptr && elem_size == 1 && tok == T_STRING) {
        int len = strlen(token);
        if (*size <= 1) *size = len + 1;
        emit_global_data_head(name, is_static);
        if (emit_enabled) {
            fprintf(output, "    .asciz \"");
            emit_asciz_body(token);
            fprintf(output, "\"\n");
        }
        if (*size > len + 1) emit_i("    .space %d", *size - (len + 1));
        emit("    .text");
        next_token();
        return 1;
    }

    if (is_ptr && tok == T_STRING) {
        int lbl = intern_string(token);
        if (ptr_init_count >= MAX_PTR_INITS)
            error("too many pointer initializers");
        safe_strcpy(ptr_init_name[ptr_init_count], name, MAX_IDENT_LEN);
        ptr_init_label[ptr_init_count] = lbl;
        ptr_init_count++;
        emit_global_data_head(name, is_static);
        emit("    .quad 0");
        emit("    .text");
        next_token();
        return 1;
    }

    if (tok == '{') {
        int count = 0;
        int slot = elem_size > 0 ? elem_size : 8;
        int capacity = slot > 0 ? *size / slot : 0;
        next_token();
        emit_global_data_head(name, is_static);
        while (tok != '}' && tok != T_EOF) {
            if (!parse_const_int(&v)) error("unsupported global initializer");
            if (capacity == 0 || count < capacity)
                emit_i(data_directive(slot), (int)v);
            count++;
            if (tok == ',') next_token();
            else break;
        }
        if (tok == '}') next_token();
        else error("expected '}' in global initializer");
        if (capacity == 0) *size = count * slot;
        else if (count < capacity) emit_i("    .space %d", (capacity - count) * slot);
        emit("    .text");
        return 1;
    }

    if (parse_const_int(&v)) {
        emit_global_data_head(name, is_static);
        emit_i(data_directive(*size), (int)v);
        emit("    .text");
        return 1;
    }

    return 0;
}

static void parse_program(void) {
    next_token();
    while (tok != T_EOF) {
        if (tok == T_ID && (strcmp(token, "unsigned") == 0 || strcmp(token, "signed") == 0)) {
            unsigned_type = (strcmp(token, "unsigned") == 0);
            next_token();
            while (tok == T_INT && (strcmp(token, "long") == 0 || strcmp(token, "int") == 0)) next_token();
        }
        if (tok == T_EXTERN) {
            extern_flag = 1;
            next_token();
        }
        if (tok == T_STATIC) {
            static_flag = 1;
            next_token();
        }
        if (tok == T_CONST) {
            next_token();
            continue;
        } else if (tok == T_TYPEDEF) {
            skip_typedef();
        } else if (tok == T_STRUCT || tok == T_UNION) {
            next_token();
            skip_struct();
        } else if (tok == T_ENUM) {
            parse_enum();
        } else if (tok == T_INT || tok == T_CHAR || tok == T_VOID || tok == T_FLOAT || tok == T_DOUBLE) {
            int type = tok;
            next_token();
            /* FIX: saltar 'long' extra para 'long long', 'long int', etc. */
            while (tok == T_INT && (strcmp(token, "long") == 0 || strcmp(token, "int") == 0)) next_token();
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
                int gsize = is_ptr ? 8 : (type == T_CHAR ? 1 : (type == T_FLOAT ? 4 : 8));
                int vt = (type == T_INT || type == T_VOID) ? 0 : type;
                int is_arr = 0;
                int elem_size = gsize;
                int elem_size2 = 0;
                int ndims = 0;
                while (tok == '[') {
                    is_arr = 1;
                    next_token();
                    int cnt = 0;
                    if (tok == T_NUM) {
                        cnt = (int)safe_strtoll(token);
                        next_token();
                    } else if (tok == T_ID) {
                        int mi = find_macro(token);
                        if (mi >= 0) cnt = macros[mi].value;
                        else error("undefined macro");
                        next_token();
                    }
                    match(']');
                    gsize = gsize * (cnt > 0 ? cnt : 1);
                    ndims++;
                    if (ndims == 2) {
                        elem_size2 = elem_size;
                        elem_size = elem_size * (cnt > 0 ? cnt : 1);
                    }
                }
                int was_extern = extern_flag;
                int was_static = static_flag;
                global_emit_deferred = 1;
                add_symbol(fname, 1, gsize, is_ptr ? type : 0, is_arr, elem_size);
                global_emit_deferred = 0;
                symbols[symbol_count - 1].var_type = vt;
                if (elem_size2 > 0) {
                    Symbol *s2 = &symbols[symbol_count - 1];
                    s2->elem_size2 = elem_size2;
                }
                if (tok == '=') {
                    next_token();
                    if (was_extern) {
                        while (tok != ';' && tok != T_EOF) next_token();
                    } else if (emit_global_initializer(fname, was_static, &gsize,
                                                       elem_size, is_arr, is_ptr)) {
                        symbols[symbol_count - 1].size = gsize;
                    } else {
                        while (tok != ';' && tok != T_EOF) next_token();
                        emit_global_bss(fname, was_static, gsize);
                    }
                } else if (!was_extern) {
                    emit_global_bss(fname, was_static, gsize);
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
            int elem_size2 = 0;
            int ndims = 0;
            while (tok == '[') {
                is_arr = 1;
                next_token();
                int cnt = 0;
                if (tok == T_NUM) {
                    cnt = (int)safe_strtoll(token);
                    next_token();
                } else if (tok == T_ID) {
                    int mi = find_macro(token);
                    if (mi >= 0) cnt = macros[mi].value;
                    else error("undefined macro");
                    next_token();
                }
                match(']');
                gsize = gsize * (cnt > 0 ? cnt : 1);
                ndims++;
                if (ndims == 2) {
                    elem_size2 = elem_size;
                    elem_size = elem_size * (cnt > 0 ? cnt : 1);
                }
            }
            add_symbol(fname, 1, gsize, 0, is_arr, elem_size);
            if (elem_size2 > 0) {
                Symbol *s2 = &symbols[symbol_count - 1];
                s2->elem_size2 = elem_size2;
            }
            if (tok == ';') next_token();
            else error("expected ';' or '(' after global");
        } else {
            error("global must be int, char, float, or double");
        }
    }
}

static void emit_float_consts(void) {
    if (!emit_enabled) return;
    for (int i = 0; i < float_const_count; i++) {
        if (float_const_is_float[i])
            fprintf(output, ".LCf%d:\n    .float %s\n", i, float_const_str[i]);
        else
            fprintf(output, ".LCf%d:\n    .double %s\n", i, float_const_str[i]);
    }
}

static void emit_string_pool(void) {
    if (!emit_enabled) return;
    for (int i = 0; i < string_count; i++) {
        fprintf(output, ".Lstr%d:\n    .asciz \"", i);
        emit_asciz_body(string_pool[i]);
        fprintf(output, "\"\n");
        free(string_pool[i]);
    }
}

int main(int argc, char **argv) {
    /* This compiler does not emit global initializers (globals land zeroed in
       .bss), so when it compiles itself the non-zero initializers above are
       lost. Re-establish them explicitly at startup. emit_enabled must be 1
       before parse_program emits the leading global definitions, otherwise
       they are silently dropped from the output. */
    emit_enabled = 1;
    line = 1;
    assign_size = 8;
    hash_init();
    lex_init_keywords();

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
    {
        int fnlen = strlen(argv[1]);
        current_file = safe_malloc(fnlen + 1);
        int i = 0;
        while (i <= fnlen) { current_file[i] = argv[1][i]; i++; }
    }

    /* Predefine common macros */
    add_macro("EXIT_FAILURE", 1);
    add_macro("EXIT_SUCCESS", 0);
    add_macro("SEEK_SET", 0);
    add_macro("SEEK_CUR", 1);
    add_macro("SEEK_END", 2);
    add_macro("NULL", 0);

    /* Predefine libc global symbols and types */
    {
        int i = 0;
        while (1) {
            const char *gname = libc_global_name(i);
            if (gname == NULL) break;
            Symbol *s = &symbols[symbol_count];
            char *d = s->name;
            symbol_count++;
            int nlen = strlen(gname);
            if (nlen >= MAX_IDENT_LEN) nlen = MAX_IDENT_LEN - 1;
            memcpy(d, gname, nlen);
            d[nlen] = '\0';
            s->offset = 0;
            s->is_global = 1;
            s->size = 8;
            s->pointed = 0;
            s->is_const = (strcmp(gname, "size_t") == 0 || strcmp(gname, "va_list") == 0 || strcmp(gname, "FILE") == 0) ? 1 : 0;
            s->const_value = 8;
            s->is_array = 0;
            s->elem_size = 0;
            s->elem_size2 = 0;
    s->var_type = const_flag ? CONST_VAR_FLAG : 0;
            s->next_hash = -1;
            {
                int h = hash_name(gname);
                s->next_hash = hash_table[h];
                hash_table[h] = symbol_count - 1;
            }
            i++;
        }
    }

    emit("    .section .text");
    parse_program();

    if (string_count > 0 || float_const_count > 0) {
        emit("    .section .rodata");
        emit_float_consts();
        emit_string_pool();
        emit("    .section .text");
    }

    emit("    .weak _start");
    emit("    .globl _start");
    emit("_start:");
    emit("    subq $8, %rsp");
    for (int i = 0; i < ptr_init_count; i++) {
        emit_i("    leaq .Lstr%d(%%rip), %%rax", ptr_init_label[i]);
        emit_s("    movq %%rax, %s(%%rip)", ptr_init_name[i]);
    }
    emit("    movq 8(%rsp), %rdi");
    emit("    leaq 16(%rsp), %rsi");
    emit("    leaq 24(%rsp,%rdi,8), %rdx");
    emit("    call main");
    emit("    addq $8, %rsp");
    emit("    movq %rax, %rdi");
    emit("    movq $60, %rax");
    emit("    syscall");
    free(source_start);
    {
        int i = 0;
        while (i < processed_count) { free(processed_files[i]); i++; }
    }
    if (current_file) free(current_file);
    return EXIT_SUCCESS;
}