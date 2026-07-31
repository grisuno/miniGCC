# Polyglot Codebase Knowledge Graph

> Generated offline by **readmenator**. Supports C, C++, Python, Go, Rust, JS/TS, Java, C#, Shell, PHP, Dart, GDScript, Nim, ASM.
> No LLMs. No tokens. Pure static analysis. See more [here](https://github.com/grisuno/ReadMenator)

**Total Files Parsed:** 9 | **Total Symbols Extracted:** 440 | **Total Imports:** 7

## Structural Knowledge Map
```mermaid
graph TD
    classDef mod fill:#1e1e1e,stroke:#ff6666,stroke-width:2px,color:#fff;
    classDef cls fill:#2d2d2d,stroke:#4ec9b0,stroke-width:2px,color:#fff;
    classDef fn fill:#333,stroke:#dcdcaa,stroke-width:1px,color:#dcdcaa;
    classDef ext fill:#111,stroke:#666,stroke-dasharray:5 5,color:#aaa;
    minigcc_c["minigcc.c (c)"]
    class minigcc_c mod;
    minigcc_c_save_parser_state["save_parser_state"]
    class minigcc_c_save_parser_state fn;
    minigcc_c --> minigcc_c_save_parser_state
    minigcc_c_restore_parser_state["restore_parser_state"]
    class minigcc_c_restore_parser_state fn;
    minigcc_c --> minigcc_c_restore_parser_state
    minigcc_c_find_macro["find_macro"]
    class minigcc_c_find_macro fn;
    minigcc_c --> minigcc_c_find_macro
    minigcc_c_add_macro["add_macro"]
    class minigcc_c_add_macro fn;
    minigcc_c --> minigcc_c_add_macro
    minigcc_c_error["error"]
    class minigcc_c_error fn;
    minigcc_c --> minigcc_c_error
    test_include_c["test_include.c (c)"]
    class test_include_c mod;
    test_include_c_main["main"]
    class test_include_c_main fn;
    test_include_c --> test_include_c_main
    test_include_c_greet["greet"]
    class test_include_c_greet fn;
    test_include_c --> test_include_c_greet
    test_for_c["test_for.c (c)"]
    class test_for_c mod;
    test_for_c_main["main"]
    class test_for_c_main fn;
    test_for_c --> test_for_c_main
    minigccg2_s["minigccg2.s (s)"]
    class minigccg2_s mod;
    minigccg2_s_input_ptr["input_ptr"]
    class minigccg2_s_input_ptr fn;
    minigccg2_s --> minigccg2_s_input_ptr
    minigccg2_s_source_start["source_start"]
    class minigccg2_s_source_start fn;
    minigccg2_s --> minigccg2_s_source_start
    minigccg2_s_token["token"]
    class minigccg2_s_token fn;
    minigccg2_s --> minigccg2_s_token
    minigccg2_s_tok["tok"]
    class minigccg2_s_tok fn;
    minigccg2_s --> minigccg2_s_tok
    minigccg2_s_line["line"]
    class minigccg2_s_line fn;
    minigccg2_s --> minigccg2_s_line
    minigccg3_s["minigccg3.s (s)"]
    class minigccg3_s mod;
    minigccg3_s_input_ptr["input_ptr"]
    class minigccg3_s_input_ptr fn;
    minigccg3_s --> minigccg3_s_input_ptr
    minigccg3_s_source_start["source_start"]
    class minigccg3_s_source_start fn;
    minigccg3_s --> minigccg3_s_source_start
    minigccg3_s_token["token"]
    class minigccg3_s_token fn;
    minigccg3_s --> minigccg3_s_token
    minigccg3_s_tok["tok"]
    class minigccg3_s_tok fn;
    minigccg3_s --> minigccg3_s_tok
    minigccg3_s_line["line"]
    class minigccg3_s_line fn;
    minigccg3_s --> minigccg3_s_line
    minigccg4_s["minigccg4.s (s)"]
    class minigccg4_s mod;
    minigccg4_s_input_ptr["input_ptr"]
    class minigccg4_s_input_ptr fn;
    minigccg4_s --> minigccg4_s_input_ptr
    minigccg4_s_source_start["source_start"]
    class minigccg4_s_source_start fn;
    minigccg4_s --> minigccg4_s_source_start
    minigccg4_s_token["token"]
    class minigccg4_s_token fn;
    minigccg4_s --> minigccg4_s_token
    minigccg4_s_tok["tok"]
    class minigccg4_s_tok fn;
    minigccg4_s --> minigccg4_s_tok
    minigccg4_s_line["line"]
    class minigccg4_s_line fn;
    minigccg4_s --> minigccg4_s_line
    my_library_h["my_library.h (h)"]
    class my_library_h mod;
    my_library_h_MY_LIBRARY_H["MY_LIBRARY_H"]
    class my_library_h_MY_LIBRARY_H fn;
    my_library_h --> my_library_h_MY_LIBRARY_H
    test_c["test.c (c)"]
    class test_c mod;
    test_c_main["main"]
    class test_c_main fn;
    test_c --> test_c_main
    test_sh["test.sh (sh)"]
    class test_sh mod;
    ext_stdio_h["stdio.h"]
    class ext_stdio_h ext;
    minigcc_c -.->|imports| ext_stdio_h
    ext_stdlib_h["stdlib.h"]
    class ext_stdlib_h ext;
    minigcc_c -.->|imports| ext_stdlib_h
    ext_string_h["string.h"]
    class ext_string_h ext;
    minigcc_c -.->|imports| ext_string_h
    ext_errno_h["errno.h"]
    class ext_errno_h ext;
    minigcc_c -.->|imports| ext_errno_h
    test_for_c -.->|imports| ext_stdio_h
    test_include_c -.->|imports| ext_stdio_h
    ext_my_library_h["my_library.h"]
    class ext_my_library_h ext;
    test_include_c -.->|imports| ext_my_library_h
```

---

## Architecture Reference

### C (4 files)

#### `minigcc.c`
**Path:** `minigcc.c`

**Functions:**
- `save_parser_state` (line 203) `static void save_parser_state(ParserState *state)`
- `restore_parser_state` (line 228) `static void restore_parser_state(ParserState *state)`
- `find_macro` (line 264) `static int find_macro(const char *name)`
- `add_macro` (line 273) `static void add_macro(const char *name, int value)`
- `error` (line 286) `static void error(const char *msg)`
- `safe_malloc` (line 292) `static void *safe_malloc(size_t size)`
- `safe_strcpy` (line 301) `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- `safe_strtoll` (line 310) `static long safe_strtoll(const char *s)`
- `is_file_processed` (line 323) `static int is_file_processed(const char *path)`
- `mark_file_processed` (line 332) `static void mark_file_processed(const char *path)`
- `get_dir_from_path` (line 344) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- `resolve_local_include` (line 363) `static char *resolve_local_include(const char *target)`
- `read_include_file` (line 402) `static char *read_include_file(const char *path)`
- `hash_name` (line 427) `static int hash_name(const char *name)` - *Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multiplication overflow.*
- `hash_init` (line 436) `static void hash_init(void)`
- `push_scope` (line 441) `static void push_scope(void)`
- `pop_scope` (line 449) `static void pop_scope(void)`
- `truncate_symbols` (line 479) `static void truncate_symbols(int start_idx)` - *Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (needed for the two-pass fun...*
- `my_isspace` (line 497) `static int my_isspace(int c)`
- `my_isalpha` (line 507) `static int my_isalpha(int c)`
- `my_isdigit` (line 513) `static int my_isdigit(int c)`
- `my_isalnum` (line 518) `static int my_isalnum(int c)`
- `next_token` (line 526) `static void next_token(void)` - *} static int my_isdigit(int c) { if (c >= '0' && c <= '9') return 1; return 0; } static int my_isalnum(int c) { if (my_isalpha(c)) return 1; if (my...*
- `match` (line 962) `static void match(int expected)`
- `emit` (line 967) `static void emit(const char *s)`
- `emit_i` (line 981) `static void emit_i(const char *fmt, int v)`
- `emit_s` (line 987) `static void emit_s(const char *fmt, const char *s)`
- `emit_is` (line 993) `static void emit_is(const char *fmt, int v, const char *s)`
- `emit_si` (line 999) `static void emit_si(const char *fmt, const char *s, int v)`
- `emit_label` (line 1005) `static void emit_label(int label)`
- `find_symbol` (line 1012) `static int find_symbol(const char *name)` - *} static void emit_si(const char *fmt, const char *s, int v) { if (!emit_enabled) return; fprintf(output, fmt, s, v); fputc('\n', output); } static...*
- `add_symbol` (line 1022) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- `arg_reg` (line 1082) `static const char *arg_reg(int i)` - *Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace...*
- `libc_global_name` (line 1092) `static const char *libc_global_name(int i)` - *Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace...*
- `unary` (line 1104) `static void unary(void)`
- `lvalue_address` (line 1352) `static void lvalue_address(void)`
- `handle_postfix` (line 1401) `static void handle_postfix(int is_lvalue)`
- `unary_expr` (line 1526) `static void unary_expr(void)`
- `multiplicative_expr` (line 1541) `static void multiplicative_expr(void)`
- `additive_expr` (line 1605) `static void additive_expr(void)`
- `shift_expr` (line 1660) `static void shift_expr(void)`
- `relational_expr` (line 1677) `static void relational_expr(void)`
- `equality_expr` (line 1730) `static void equality_expr(void)`
- `bitwise_and_expr` (line 1779) `static void bitwise_and_expr(void)`
- `bitwise_xor_expr` (line 1791) `static void bitwise_xor_expr(void)`
- `bitwise_or_expr` (line 1803) `static void bitwise_or_expr(void)`
- `logical_and_expr` (line 1815) `static void logical_and_expr(void)`
- `logical_or_expr` (line 1835) `static void logical_or_expr(void)`
- `conditional_expr` (line 1855) `static void conditional_expr(void)`
- `assignment_expr` (line 1873) `static void assignment_expr(void)`
- `statement` (line 2034) `static void statement(void)`
- `parse_function` (line 2691) `static void parse_function(const char *name, int ret_type)`
- `parse_enum` (line 2816) `static void parse_enum(void)`
- `skip_struct` (line 2865) `static void skip_struct(void)`
- `skip_typedef` (line 2929) `static void skip_typedef(void)`
- `parse_program` (line 2982) `static void parse_program(void)`
- `emit_float_consts` (line 3118) `static void emit_float_consts(void)`
- `emit_string_pool` (line 3128) `static void emit_string_pool(void)`
- `main` (line 3154) `int main(int argc, char **argv)`

**Macros:**
- `MAX_TOKEN_LEN` (line 14)
- `MAX_SYMBOLS` (line 16)
- `MAX_IDENT_LEN` (line 17)
- `MAX_SOURCE_SIZE` (line 18)
- `MAX_INCLUDE_DEPTH` (line 19)
- `MAX_PROCESSED_FILES` (line 20)
- `STACK_ALIGN` (line 21)
- `HASH_TABLE_SIZE` (line 110)
- `MAX_SCOPE_DEPTH` (line 112)
- `MAX_FLOAT_CONSTS` (line 133)
- `MAX_CASES_PER_SWITCH` (line 138)
- `MAX_STRINGS` (line 151)
- `MAX_STRUCT_MEMBERS` (line 160)
- `MAX_IF_NESTING` (line 167)
- `CONST_VAR_FLAG` (line 169)
- `MAX_MACROS` (line 175)

#### `test.c`
**Path:** `test.c`

**Functions:**
- `main` (line 1) `int main(void)`

#### `test_for.c`
**Path:** `test_for.c`

**Functions:**
- `main` (line 2) `int main()` - *include <stdio.h>*

#### `test_include.c`
**Path:** `test_include.c`

**Functions:**
- `main` (line 3) `int main(void)` - *include <stdio.h> include "my_library.h"*
- `greet` (line 9) `void greet(void)`

### H (1 files)

#### `my_library.h`
**Path:** `my_library.h`

**Macros:**
- `MY_LIBRARY_H` (line 2)

### S (3 files)

#### `minigccg2.s`
**Path:** `minigccg2.s`

**Functions:**
- `input_ptr` (line 3)
- `source_start` (line 7)
- `token` (line 11)
- `tok` (line 15)
- `line` (line 19)
- `output` (line 23)
- `ctx_stack` (line 27)
- `ctx_top` (line 31)
- `current_file` (line 35)
- `processed_files` (line 39)
- `processed_count` (line 43)
- `symbols` (line 47)
- `symbol_count` (line 51)
- `hash_table` (line 55)
- `scope_stack_sym` (line 59)
- `scope_stack_stk` (line 63)
- `scope_depth` (line 67)
- `stack_size` (line 71)
- `label_counter` (line 75)
- `function_has_return` (line 79)
- `emit_enabled` (line 83)
- `max_func_stack` (line 87)
- `assign_size` (line 91)
- `expr_pointed` (line 95)
- `current_elem_size` (line 99)
- `current_elem_size2` (line 103)
- `no_postfix_deref` (line 107)
- `expr_type` (line 111)
- `static_flag` (line 115)
- `unsigned_type` (line 119)
- `const_flag` (line 123)
- `extern_flag` (line 127)
- `float_const_str` (line 131)
- `float_const_is_float` (line 135)
- `float_const_count` (line 139)
- `switch_case_values` (line 143)
- `switch_case_labels` (line 147)
- `switch_case_count` (line 151)
- `switch_has_default` (line 155)
- `switch_default_label` (line 159)
- `break_target` (line 163)
- `break_target_valid` (line 167)
- `continue_target` (line 171)
- `continue_target_valid` (line 175)
- `str_label_counter` (line 179)
- `string_pool` (line 183)
- `string_count` (line 187)
- `struct_total_size` (line 191)
- `struct_member_names` (line 195)
- `struct_member_offsets` (line 199)
- `struct_member_sizes` (line 203)
- `struct_member_elem_sizes` (line 207)
- `struct_member_count` (line 211)
- `if_nest` (line 215)
- `if_depth` (line 219)
- `macro_count` (line 224)
- `save_parser_state` (line 228)
- `restore_parser_state` (line 367)
- `macros` (line 555)
- `find_macro` (line 559)
- `add_macro` (line 623)
- `error` (line 753)
- `safe_malloc` (line 805)
- `safe_strcpy` (line 860)
- `safe_strtoll` (line 937)
- `is_file_processed` (line 1052)
- `mark_file_processed` (line 1113)
- `get_dir_from_path` (line 1225)
- `resolve_local_include` (line 1368)
- `read_include_file` (line 1818)
- `hash_name` (line 2026)
- `hash_init` (line 2084)
- `push_scope` (line 2123)
- `pop_scope` (line 2175)
- `truncate_symbols` (line 2371)
- `my_isspace` (line 2524)
- `my_isalpha` (line 2613)
- `my_isdigit` (line 2682)
- `my_isalnum` (line 2722)
- `next_token` (line 2767)
- `restart` (line 2771)
- `match` (line 8860)
- `emit` (line 8898)
- `emit_i` (line 9012)
- `emit_s` (line 9061)
- `emit_is` (line 9110)
- `emit_si` (line 9163)
- `emit_label` (line 9216)
- `find_symbol` (line 9245)
- `add_symbol` (line 9332)
- `arg_reg` (line 9696)
- `libc_global_name` (line 9772)
- `unary` (line 9900)
- `lvalue_address` (line 12429)
- `handle_postfix` (line 12934)
- `unary_expr` (line 13911)
- `multiplicative_expr` (line 13936)
- `additive_expr` (line 14558)
- `shift_expr` (line 15053)
- `relational_expr` (line 15177)
- `equality_expr` (line 15779)
- `bitwise_and_expr` (line 16257)
- `bitwise_xor_expr` (line 16335)
- `bitwise_or_expr` (line 16413)
- `logical_and_expr` (line 16491)
- `logical_or_expr` (line 16654)
- `conditional_expr` (line 16817)
- `assignment_expr` (line 16949)
- `statement` (line 19469)
- `restart_typedef` (line 22915)
- `restart_int` (line 23946)
- `parse_function` (line 25102)
- `parse_enum` (line 26418)
- `skip_struct` (line 26830)
- `skip_typedef` (line 27416)
- `parse_program` (line 27906)
- `emit_float_consts` (line 29470)
- `emit_string_pool` (line 29569)
- `main` (line 29995)
- `_start` (line 33167)

#### `minigccg3.s`
**Path:** `minigccg3.s`

**Functions:**
- `input_ptr` (line 3)
- `source_start` (line 7)
- `token` (line 11)
- `tok` (line 15)
- `line` (line 19)
- `output` (line 23)
- `ctx_stack` (line 27)
- `ctx_top` (line 31)
- `current_file` (line 35)
- `processed_files` (line 39)
- `processed_count` (line 43)
- `symbols` (line 47)
- `symbol_count` (line 51)
- `hash_table` (line 55)
- `scope_stack_sym` (line 59)
- `scope_stack_stk` (line 63)
- `scope_depth` (line 67)
- `stack_size` (line 71)
- `label_counter` (line 75)
- `function_has_return` (line 79)
- `emit_enabled` (line 83)
- `max_func_stack` (line 87)
- `assign_size` (line 91)
- `expr_pointed` (line 95)
- `current_elem_size` (line 99)
- `current_elem_size2` (line 103)
- `no_postfix_deref` (line 107)
- `expr_type` (line 111)
- `static_flag` (line 115)
- `unsigned_type` (line 119)
- `const_flag` (line 123)
- `extern_flag` (line 127)
- `float_const_str` (line 131)
- `float_const_is_float` (line 135)
- `float_const_count` (line 139)
- `switch_case_values` (line 143)
- `switch_case_labels` (line 147)
- `switch_case_count` (line 151)
- `switch_has_default` (line 155)
- `switch_default_label` (line 159)
- `break_target` (line 163)
- `break_target_valid` (line 167)
- `continue_target` (line 171)
- `continue_target_valid` (line 175)
- `str_label_counter` (line 179)
- `string_pool` (line 183)
- `string_count` (line 187)
- `struct_total_size` (line 191)
- `struct_member_names` (line 195)
- `struct_member_offsets` (line 199)
- `struct_member_sizes` (line 203)
- `struct_member_elem_sizes` (line 207)
- `struct_member_count` (line 211)
- `if_nest` (line 215)
- `if_depth` (line 219)
- `macro_count` (line 224)
- `save_parser_state` (line 228)
- `restore_parser_state` (line 367)
- `macros` (line 555)
- `find_macro` (line 559)
- `add_macro` (line 623)
- `error` (line 753)
- `safe_malloc` (line 805)
- `safe_strcpy` (line 860)
- `safe_strtoll` (line 937)
- `is_file_processed` (line 1052)
- `mark_file_processed` (line 1113)
- `get_dir_from_path` (line 1225)
- `resolve_local_include` (line 1368)
- `read_include_file` (line 1818)
- `hash_name` (line 2026)
- `hash_init` (line 2084)
- `push_scope` (line 2123)
- `pop_scope` (line 2175)
- `truncate_symbols` (line 2371)
- `my_isspace` (line 2524)
- `my_isalpha` (line 2613)
- `my_isdigit` (line 2682)
- `my_isalnum` (line 2722)
- `next_token` (line 2767)
- `restart` (line 2771)
- `match` (line 8860)
- `emit` (line 8898)
- `emit_i` (line 9012)
- `emit_s` (line 9061)
- `emit_is` (line 9110)
- `emit_si` (line 9163)
- `emit_label` (line 9216)
- `find_symbol` (line 9245)
- `add_symbol` (line 9332)
- `arg_reg` (line 9696)
- `libc_global_name` (line 9772)
- `unary` (line 9900)
- `lvalue_address` (line 12429)
- `handle_postfix` (line 12934)
- `unary_expr` (line 13911)
- `multiplicative_expr` (line 13936)
- `additive_expr` (line 14558)
- `shift_expr` (line 15053)
- `relational_expr` (line 15177)
- `equality_expr` (line 15779)
- `bitwise_and_expr` (line 16257)
- `bitwise_xor_expr` (line 16335)
- `bitwise_or_expr` (line 16413)
- `logical_and_expr` (line 16491)
- `logical_or_expr` (line 16654)
- `conditional_expr` (line 16817)
- `assignment_expr` (line 16949)
- `statement` (line 19469)
- `restart_typedef` (line 22915)
- `restart_int` (line 23946)
- `parse_function` (line 25102)
- `parse_enum` (line 26418)
- `skip_struct` (line 26830)
- `skip_typedef` (line 27416)
- `parse_program` (line 27906)
- `emit_float_consts` (line 29470)
- `emit_string_pool` (line 29569)
- `main` (line 29995)
- `_start` (line 33167)

#### `minigccg4.s`
**Path:** `minigccg4.s`

**Functions:**
- `input_ptr` (line 3)
- `source_start` (line 7)
- `token` (line 11)
- `tok` (line 15)
- `line` (line 19)
- `output` (line 23)
- `ctx_stack` (line 27)
- `ctx_top` (line 31)
- `current_file` (line 35)
- `processed_files` (line 39)
- `processed_count` (line 43)
- `symbols` (line 47)
- `symbol_count` (line 51)
- `hash_table` (line 55)
- `scope_stack_sym` (line 59)
- `scope_stack_stk` (line 63)
- `scope_depth` (line 67)
- `stack_size` (line 71)
- `label_counter` (line 75)
- `function_has_return` (line 79)
- `emit_enabled` (line 83)
- `max_func_stack` (line 87)
- `assign_size` (line 91)
- `expr_pointed` (line 95)
- `current_elem_size` (line 99)
- `current_elem_size2` (line 103)
- `no_postfix_deref` (line 107)
- `expr_type` (line 111)
- `static_flag` (line 115)
- `unsigned_type` (line 119)
- `const_flag` (line 123)
- `extern_flag` (line 127)
- `float_const_str` (line 131)
- `float_const_is_float` (line 135)
- `float_const_count` (line 139)
- `switch_case_values` (line 143)
- `switch_case_labels` (line 147)
- `switch_case_count` (line 151)
- `switch_has_default` (line 155)
- `switch_default_label` (line 159)
- `break_target` (line 163)
- `break_target_valid` (line 167)
- `continue_target` (line 171)
- `continue_target_valid` (line 175)
- `str_label_counter` (line 179)
- `string_pool` (line 183)
- `string_count` (line 187)
- `struct_total_size` (line 191)
- `struct_member_names` (line 195)
- `struct_member_offsets` (line 199)
- `struct_member_sizes` (line 203)
- `struct_member_elem_sizes` (line 207)
- `struct_member_count` (line 211)
- `if_nest` (line 215)
- `if_depth` (line 219)
- `macro_count` (line 224)
- `save_parser_state` (line 228)
- `restore_parser_state` (line 367)
- `macros` (line 555)
- `find_macro` (line 559)
- `add_macro` (line 623)
- `error` (line 753)
- `safe_malloc` (line 805)
- `safe_strcpy` (line 860)
- `safe_strtoll` (line 937)
- `is_file_processed` (line 1052)
- `mark_file_processed` (line 1113)
- `get_dir_from_path` (line 1225)
- `resolve_local_include` (line 1368)
- `read_include_file` (line 1818)
- `hash_name` (line 2026)
- `hash_init` (line 2084)
- `push_scope` (line 2123)
- `pop_scope` (line 2175)
- `truncate_symbols` (line 2371)
- `my_isspace` (line 2524)
- `my_isalpha` (line 2613)
- `my_isdigit` (line 2682)
- `my_isalnum` (line 2722)
- `next_token` (line 2767)
- `restart` (line 2771)
- `match` (line 8860)
- `emit` (line 8898)
- `emit_i` (line 9012)
- `emit_s` (line 9061)
- `emit_is` (line 9110)
- `emit_si` (line 9163)
- `emit_label` (line 9216)
- `find_symbol` (line 9245)
- `add_symbol` (line 9332)
- `arg_reg` (line 9696)
- `libc_global_name` (line 9772)
- `unary` (line 9900)
- `lvalue_address` (line 12429)
- `handle_postfix` (line 12934)
- `unary_expr` (line 13911)
- `multiplicative_expr` (line 13936)
- `additive_expr` (line 14558)
- `shift_expr` (line 15053)
- `relational_expr` (line 15177)
- `equality_expr` (line 15779)
- `bitwise_and_expr` (line 16257)
- `bitwise_xor_expr` (line 16335)
- `bitwise_or_expr` (line 16413)
- `logical_and_expr` (line 16491)
- `logical_or_expr` (line 16654)
- `conditional_expr` (line 16817)
- `assignment_expr` (line 16949)
- `statement` (line 19469)
- `restart_typedef` (line 22915)
- `restart_int` (line 23946)
- `parse_function` (line 25102)
- `parse_enum` (line 26418)
- `skip_struct` (line 26830)
- `skip_typedef` (line 27416)
- `parse_program` (line 27906)
- `emit_float_consts` (line 29470)
- `emit_string_pool` (line 29569)
- `main` (line 29995)
- `_start` (line 33167)

### SH (1 files)

#### `test.sh`
**Path:** `test.sh`

*No symbols extracted*
