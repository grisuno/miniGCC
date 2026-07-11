# Polyglot Codebase Knowledge Graph

> Generated offline by **readmenator**. Supports C, C++, Python, Go, Rust, JS/TS, Java, C#, Shell, PHP, Dart, GDScript, Nim, ASM.
> No LLMs. No tokens. Pure static analysis. See more [here](https://github.com/grisuno/ReadMenator)

**Total Files Parsed:** 9 | **Total Symbols Extracted:** 426 | **Total Imports:** 7

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
- `save_parser_state` (line 201) `static void save_parser_state(ParserState *state)`
- `restore_parser_state` (line 226) `static void restore_parser_state(ParserState *state)`
- `find_macro` (line 262) `static int find_macro(const char *name)`
- `add_macro` (line 271) `static void add_macro(const char *name, int value)`
- `error` (line 284) `static void error(const char *msg)`
- `safe_malloc` (line 290) `static void *safe_malloc(size_t size)`
- `is_file_processed` (line 299) `static int is_file_processed(const char *path)`
- `mark_file_processed` (line 308) `static void mark_file_processed(const char *path)`
- `get_dir_from_path` (line 320) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- `resolve_local_include` (line 339) `static char *resolve_local_include(const char *target)`
- `read_include_file` (line 378) `static char *read_include_file(const char *path)`
- `hash_name` (line 403) `static int hash_name(const char *name)` - *Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multiplication overflow.*
- `hash_init` (line 412) `static void hash_init(void)`
- `push_scope` (line 417) `static void push_scope(void)`
- `pop_scope` (line 425) `static void pop_scope(void)`
- `truncate_symbols` (line 455) `static void truncate_symbols(int start_idx)` - *Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (needed for the two-pass fun...*
- `my_isspace` (line 473) `static int my_isspace(int c)`
- `my_isalpha` (line 483) `static int my_isalpha(int c)`
- `my_isdigit` (line 489) `static int my_isdigit(int c)`
- `my_isalnum` (line 494) `static int my_isalnum(int c)`
- `next_token` (line 502) `static void next_token(void)` - *} static int my_isdigit(int c) { if (c >= '0' && c <= '9') return 1; return 0; } static int my_isalnum(int c) { if (my_isalpha(c)) return 1; if (my...*
- `match` (line 866) `static void match(int expected)`
- `emit` (line 871) `static void emit(const char *s)`
- `emit_i` (line 885) `static void emit_i(const char *fmt, int v)`
- `emit_s` (line 891) `static void emit_s(const char *fmt, const char *s)`
- `emit_is` (line 897) `static void emit_is(const char *fmt, int v, const char *s)`
- `emit_si` (line 903) `static void emit_si(const char *fmt, const char *s, int v)`
- `emit_label` (line 909) `static void emit_label(int label)`
- `find_symbol` (line 916) `static int find_symbol(const char *name)` - *} static void emit_si(const char *fmt, const char *s, int v) { if (!emit_enabled) return; fprintf(output, fmt, s, v); fputc('\n', output); } static...*
- `add_symbol` (line 926) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- `arg_reg` (line 982) `static const char *arg_reg(int i)` - *Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace...*
- `libc_global_name` (line 992) `static const char *libc_global_name(int i)` - *Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace...*
- `unary` (line 1004) `static void unary(void)`
- `lvalue_address` (line 1247) `static void lvalue_address(void)`
- `handle_postfix` (line 1296) `static void handle_postfix(int is_lvalue)`
- `unary_expr` (line 1421) `static void unary_expr(void)`
- `multiplicative_expr` (line 1436) `static void multiplicative_expr(void)`
- `additive_expr` (line 1500) `static void additive_expr(void)`
- `shift_expr` (line 1555) `static void shift_expr(void)`
- `relational_expr` (line 1572) `static void relational_expr(void)`
- `equality_expr` (line 1625) `static void equality_expr(void)`
- `bitwise_and_expr` (line 1674) `static void bitwise_and_expr(void)`
- `bitwise_xor_expr` (line 1686) `static void bitwise_xor_expr(void)`
- `bitwise_or_expr` (line 1698) `static void bitwise_or_expr(void)`
- `logical_and_expr` (line 1710) `static void logical_and_expr(void)`
- `logical_or_expr` (line 1730) `static void logical_or_expr(void)`
- `conditional_expr` (line 1750) `static void conditional_expr(void)`
- `assignment_expr` (line 1768) `static void assignment_expr(void)`
- `statement` (line 1929) `static void statement(void)`
- `parse_function` (line 2582) `static void parse_function(const char *name, int ret_type)`
- `parse_enum` (line 2707) `static void parse_enum(void)`
- `skip_struct` (line 2756) `static void skip_struct(void)`
- `skip_typedef` (line 2820) `static void skip_typedef(void)`
- `parse_program` (line 2873) `static void parse_program(void)`
- `emit_float_consts` (line 3007) `static void emit_float_consts(void)`
- `emit_string_pool` (line 3017) `static void emit_string_pool(void)`
- `main` (line 3037) `int main(int argc, char **argv)`

**Macros:**
- `MAX_TOKEN_LEN` (line 14)
- `MAX_SYMBOLS` (line 16)
- `MAX_IDENT_LEN` (line 17)
- `MAX_SOURCE_SIZE` (line 18)
- `MAX_INCLUDE_DEPTH` (line 19)
- `MAX_PROCESSED_FILES` (line 20)
- `STACK_ALIGN` (line 21)
- `HASH_TABLE_SIZE` (line 109)
- `MAX_SCOPE_DEPTH` (line 111)
- `MAX_FLOAT_CONSTS` (line 131)
- `MAX_CASES_PER_SWITCH` (line 136)
- `MAX_STRINGS` (line 149)
- `MAX_STRUCT_MEMBERS` (line 158)
- `MAX_IF_NESTING` (line 165)
- `CONST_VAR_FLAG` (line 167)
- `MAX_MACROS` (line 173)

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
- `float_const_str` (line 127)
- `float_const_is_float` (line 131)
- `float_const_count` (line 135)
- `switch_case_values` (line 139)
- `switch_case_labels` (line 143)
- `switch_case_count` (line 147)
- `switch_has_default` (line 151)
- `switch_default_label` (line 155)
- `break_target` (line 159)
- `break_target_valid` (line 163)
- `continue_target` (line 167)
- `continue_target_valid` (line 171)
- `str_label_counter` (line 175)
- `string_pool` (line 179)
- `string_count` (line 183)
- `struct_total_size` (line 187)
- `struct_member_names` (line 191)
- `struct_member_offsets` (line 195)
- `struct_member_sizes` (line 199)
- `struct_member_elem_sizes` (line 203)
- `struct_member_count` (line 207)
- `if_nest` (line 211)
- `if_depth` (line 215)
- `macro_count` (line 220)
- `save_parser_state` (line 224)
- `restore_parser_state` (line 363)
- `macros` (line 551)
- `find_macro` (line 555)
- `add_macro` (line 619)
- `error` (line 749)
- `safe_malloc` (line 801)
- `is_file_processed` (line 856)
- `mark_file_processed` (line 917)
- `get_dir_from_path` (line 1029)
- `resolve_local_include` (line 1172)
- `read_include_file` (line 1622)
- `hash_name` (line 1830)
- `hash_init` (line 1888)
- `push_scope` (line 1927)
- `pop_scope` (line 1979)
- `truncate_symbols` (line 2175)
- `my_isspace` (line 2328)
- `my_isalpha` (line 2417)
- `my_isdigit` (line 2486)
- `my_isalnum` (line 2526)
- `next_token` (line 2571)
- `restart` (line 2575)
- `match` (line 8020)
- `emit` (line 8058)
- `emit_i` (line 8172)
- `emit_s` (line 8221)
- `emit_is` (line 8270)
- `emit_si` (line 8323)
- `emit_label` (line 8376)
- `find_symbol` (line 8405)
- `add_symbol` (line 8492)
- `arg_reg` (line 8842)
- `libc_global_name` (line 8918)
- `unary` (line 9046)
- `lvalue_address` (line 11416)
- `handle_postfix` (line 11921)
- `unary_expr` (line 12898)
- `multiplicative_expr` (line 12923)
- `additive_expr` (line 13545)
- `shift_expr` (line 14040)
- `relational_expr` (line 14164)
- `equality_expr` (line 14766)
- `bitwise_and_expr` (line 15244)
- `bitwise_xor_expr` (line 15322)
- `bitwise_or_expr` (line 15400)
- `logical_and_expr` (line 15478)
- `logical_or_expr` (line 15641)
- `conditional_expr` (line 15804)
- `assignment_expr` (line 15936)
- `statement` (line 18456)
- `restart_typedef` (line 21880)
- `restart_int` (line 22911)
- `parse_function` (line 24067)
- `parse_enum` (line 25383)
- `skip_struct` (line 25795)
- `skip_typedef` (line 26381)
- `parse_program` (line 26871)
- `emit_float_consts` (line 28413)
- `emit_string_pool` (line 28512)
- `main` (line 28782)

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
- `float_const_str` (line 127)
- `float_const_is_float` (line 131)
- `float_const_count` (line 135)
- `switch_case_values` (line 139)
- `switch_case_labels` (line 143)
- `switch_case_count` (line 147)
- `switch_has_default` (line 151)
- `switch_default_label` (line 155)
- `break_target` (line 159)
- `break_target_valid` (line 163)
- `continue_target` (line 167)
- `continue_target_valid` (line 171)
- `str_label_counter` (line 175)
- `string_pool` (line 179)
- `string_count` (line 183)
- `struct_total_size` (line 187)
- `struct_member_names` (line 191)
- `struct_member_offsets` (line 195)
- `struct_member_sizes` (line 199)
- `struct_member_elem_sizes` (line 203)
- `struct_member_count` (line 207)
- `if_nest` (line 211)
- `if_depth` (line 215)
- `macro_count` (line 220)
- `save_parser_state` (line 224)
- `restore_parser_state` (line 363)
- `macros` (line 551)
- `find_macro` (line 555)
- `add_macro` (line 619)
- `error` (line 749)
- `safe_malloc` (line 801)
- `is_file_processed` (line 856)
- `mark_file_processed` (line 917)
- `get_dir_from_path` (line 1029)
- `resolve_local_include` (line 1172)
- `read_include_file` (line 1622)
- `hash_name` (line 1830)
- `hash_init` (line 1888)
- `push_scope` (line 1927)
- `pop_scope` (line 1979)
- `truncate_symbols` (line 2175)
- `my_isspace` (line 2328)
- `my_isalpha` (line 2417)
- `my_isdigit` (line 2486)
- `my_isalnum` (line 2526)
- `next_token` (line 2571)
- `restart` (line 2575)
- `match` (line 8020)
- `emit` (line 8058)
- `emit_i` (line 8172)
- `emit_s` (line 8221)
- `emit_is` (line 8270)
- `emit_si` (line 8323)
- `emit_label` (line 8376)
- `find_symbol` (line 8405)
- `add_symbol` (line 8492)
- `arg_reg` (line 8842)
- `libc_global_name` (line 8918)
- `unary` (line 9046)
- `lvalue_address` (line 11416)
- `handle_postfix` (line 11921)
- `unary_expr` (line 12898)
- `multiplicative_expr` (line 12923)
- `additive_expr` (line 13545)
- `shift_expr` (line 14040)
- `relational_expr` (line 14164)
- `equality_expr` (line 14766)
- `bitwise_and_expr` (line 15244)
- `bitwise_xor_expr` (line 15322)
- `bitwise_or_expr` (line 15400)
- `logical_and_expr` (line 15478)
- `logical_or_expr` (line 15641)
- `conditional_expr` (line 15804)
- `assignment_expr` (line 15936)
- `statement` (line 18456)
- `restart_typedef` (line 21880)
- `restart_int` (line 22911)
- `parse_function` (line 24067)
- `parse_enum` (line 25383)
- `skip_struct` (line 25795)
- `skip_typedef` (line 26381)
- `parse_program` (line 26871)
- `emit_float_consts` (line 28413)
- `emit_string_pool` (line 28512)
- `main` (line 28782)

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
- `float_const_str` (line 127)
- `float_const_is_float` (line 131)
- `float_const_count` (line 135)
- `switch_case_values` (line 139)
- `switch_case_labels` (line 143)
- `switch_case_count` (line 147)
- `switch_has_default` (line 151)
- `switch_default_label` (line 155)
- `break_target` (line 159)
- `break_target_valid` (line 163)
- `continue_target` (line 167)
- `continue_target_valid` (line 171)
- `str_label_counter` (line 175)
- `string_pool` (line 179)
- `string_count` (line 183)
- `struct_total_size` (line 187)
- `struct_member_names` (line 191)
- `struct_member_offsets` (line 195)
- `struct_member_sizes` (line 199)
- `struct_member_elem_sizes` (line 203)
- `struct_member_count` (line 207)
- `if_nest` (line 211)
- `if_depth` (line 215)
- `macro_count` (line 220)
- `save_parser_state` (line 224)
- `restore_parser_state` (line 363)
- `macros` (line 551)
- `find_macro` (line 555)
- `add_macro` (line 619)
- `error` (line 749)
- `safe_malloc` (line 801)
- `is_file_processed` (line 856)
- `mark_file_processed` (line 917)
- `get_dir_from_path` (line 1029)
- `resolve_local_include` (line 1172)
- `read_include_file` (line 1622)
- `hash_name` (line 1830)
- `hash_init` (line 1888)
- `push_scope` (line 1927)
- `pop_scope` (line 1979)
- `truncate_symbols` (line 2175)
- `my_isspace` (line 2328)
- `my_isalpha` (line 2417)
- `my_isdigit` (line 2486)
- `my_isalnum` (line 2526)
- `next_token` (line 2571)
- `restart` (line 2575)
- `match` (line 8020)
- `emit` (line 8058)
- `emit_i` (line 8172)
- `emit_s` (line 8221)
- `emit_is` (line 8270)
- `emit_si` (line 8323)
- `emit_label` (line 8376)
- `find_symbol` (line 8405)
- `add_symbol` (line 8492)
- `arg_reg` (line 8842)
- `libc_global_name` (line 8918)
- `unary` (line 9046)
- `lvalue_address` (line 11416)
- `handle_postfix` (line 11921)
- `unary_expr` (line 12898)
- `multiplicative_expr` (line 12923)
- `additive_expr` (line 13545)
- `shift_expr` (line 14040)
- `relational_expr` (line 14164)
- `equality_expr` (line 14766)
- `bitwise_and_expr` (line 15244)
- `bitwise_xor_expr` (line 15322)
- `bitwise_or_expr` (line 15400)
- `logical_and_expr` (line 15478)
- `logical_or_expr` (line 15641)
- `conditional_expr` (line 15804)
- `assignment_expr` (line 15936)
- `statement` (line 18456)
- `restart_typedef` (line 21880)
- `restart_int` (line 22911)
- `parse_function` (line 24067)
- `parse_enum` (line 25383)
- `skip_struct` (line 25795)
- `skip_typedef` (line 26381)
- `parse_program` (line 26871)
- `emit_float_consts` (line 28413)
- `emit_string_pool` (line 28512)
- `main` (line 28782)

### SH (1 files)

#### `test.sh`
**Path:** `test.sh`

*No symbols extracted*
