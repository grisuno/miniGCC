# Symbols

| Symbol | Kind | File:Line | Signature |
|--------|------|-----------|-----------|
| `CONST_VAR_FLAG` | macro | `minigcc.c:181` | `#define CONST_VAR_FLAG` |
| `FileContext` | struct | `minigcc.c:76` | `` |
| `HASH_TABLE_SIZE` | macro | `minigcc.c:111` | `#define HASH_TABLE_SIZE` |
| `MAX_CASES_PER_SWITCH` | macro | `minigcc.c:140` | `#define MAX_CASES_PER_SWITCH` |
| `MAX_FLOAT_CONSTS` | macro | `minigcc.c:135` | `#define MAX_FLOAT_CONSTS` |
| `MAX_IDENT_LEN` | macro | `minigcc.c:17` | `#define MAX_IDENT_LEN` |
| `MAX_IF_NESTING` | macro | `minigcc.c:179` | `#define MAX_IF_NESTING` |
| `MAX_INCLUDE_DEPTH` | macro | `minigcc.c:19` | `#define MAX_INCLUDE_DEPTH` |
| `MAX_MACROS` | macro | `minigcc.c:187` | `#define MAX_MACROS` |
| `MAX_PROCESSED_FILES` | macro | `minigcc.c:20` | `#define MAX_PROCESSED_FILES` |
| `MAX_PTR_INITS` | macro | `minigcc.c:162` | `#define MAX_PTR_INITS` |
| `MAX_SCOPE_DEPTH` | macro | `minigcc.c:113` | `#define MAX_SCOPE_DEPTH` |
| `MAX_SOURCE_SIZE` | macro | `minigcc.c:18` | `#define MAX_SOURCE_SIZE` |
| `MAX_STRINGS` | macro | `minigcc.c:153` | `#define MAX_STRINGS` |
| `MAX_STRUCT_MEMBERS` | macro | `minigcc.c:172` | `#define MAX_STRUCT_MEMBERS` |
| `MAX_SYMBOLS` | macro | `minigcc.c:16` | `#define MAX_SYMBOLS` |
| `MAX_TOKEN_LEN` | macro | `minigcc.c:14` | `#define MAX_TOKEN_LEN` |
| `Macro` | struct | `minigcc.c:270` | `` |
| `ParserState` | struct | `minigcc.c:191` | `` |
| `STACK_ALIGN` | macro | `minigcc.c:21` | `#define STACK_ALIGN` |
| `Symbol` | struct | `minigcc.c:89` | `` |
| `add_macro` | function | `minigcc.c:285` | `static void add_macro(const char *name, int value)` |
| `add_symbol` | function | `minigcc.c:1056` | `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...` |
| `additive_expr` | function | `minigcc.c:1653` | `static void additive_expr(void)` |
| `arg_reg` | function | `minigcc.c:1117` | `static const char *arg_reg(int i)` |
| `assignment_expr` | function | `minigcc.c:1923` | `static void assignment_expr(void)` |
| `bitwise_and_expr` | function | `minigcc.c:1829` | `static void bitwise_and_expr(void)` |
| `bitwise_or_expr` | function | `minigcc.c:1853` | `static void bitwise_or_expr(void)` |
| `bitwise_xor_expr` | function | `minigcc.c:1841` | `static void bitwise_xor_expr(void)` |
| `conditional_expr` | function | `minigcc.c:1905` | `static void conditional_expr(void)` |
| `data_directive` | function | `minigcc.c:3036` | `static const char *data_directive(int size)` |
| `emit` | function | `minigcc.c:979` | `static void emit(const char *s)` |
| `emit_asciz_body` | function | `minigcc.c:1021` | `static void emit_asciz_body(const char *s)` |
| `emit_float_consts` | function | `minigcc.c:3316` | `static void emit_float_consts(void)` |
| `emit_global_bss` | function | `minigcc.c:3044` | `static void emit_global_bss(const char *name, int is_static, int size)` |
| `emit_global_data_head` | function | `minigcc.c:3051` | `static void emit_global_data_head(const char *name, int is_static)` |
| `emit_global_initializer` | function | `minigcc.c:3101` | `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...` |
| `emit_i` | function | `minigcc.c:993` | `static void emit_i(const char *fmt, int v)` |
| `emit_is` | function | `minigcc.c:1005` | `static void emit_is(const char *fmt, int v, const char *s)` |
| `emit_label` | function | `minigcc.c:1039` | `static void emit_label(int label)` |
| `emit_s` | function | `minigcc.c:999` | `static void emit_s(const char *fmt, const char *s)` |
| `emit_si` | function | `minigcc.c:1011` | `static void emit_si(const char *fmt, const char *s, int v)` |
| `emit_string_pool` | function | `minigcc.c:3326` | `static void emit_string_pool(void)` |
| `equality_expr` | function | `minigcc.c:1780` | `static void equality_expr(void)` |
| `error` | function | `minigcc.c:298` | `static void error(const char *msg)` |
| `exit` | function | `minigcc.c:302` | `exit(EXIT_FAILURE);` |
| `fclose` | function | `minigcc.c:379` | `fclose(f);` |
| `find_macro` | function | `minigcc.c:276` | `static int find_macro(const char *name)` |
| `find_symbol` | function | `minigcc.c:1046` | `static int find_symbol(const char *name)` |
| `fprintf` | function | `minigcc.c:300` | `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);` |
| `fputc` | function | `minigcc.c:984` | `fputc('%', output);` |
| `free` | function | `minigcc.c:428` | `free(buf);` |
| `fseek` | function | `minigcc.c:418` | `fseek(f, 0, SEEK_END);` |
| `get_dir_from_path` | function | `minigcc.c:356` | `static void get_dir_from_path(const char *path, char *dir, int dir_sz)` |
| `handle_postfix` | function | `minigcc.c:1440` | `static void handle_postfix(int is_lvalue)` |
| `hash_init` | function | `minigcc.c:448` | `static void hash_init(void)` |
| `hash_name` | function | `minigcc.c:439` | `static int hash_name(const char *name)` |
| `intern_string` | function | `minigcc.c:3084` | `static int intern_string(const char *text)` |
| `is_file_processed` | function | `minigcc.c:335` | `static int is_file_processed(const char *path)` |
| `libc_global_name` | function | `minigcc.c:1127` | `static const char *libc_global_name(int i)` |
| `logical_and_expr` | function | `minigcc.c:1865` | `static void logical_and_expr(void)` |
| `logical_or_expr` | function | `minigcc.c:1885` | `static void logical_or_expr(void)` |
| `lvalue_address` | function | `minigcc.c:1389` | `static void lvalue_address(void)` |
| `main` | function | `minigcc.c:3336` | `int main(int argc, char **argv)` |
| `mark_file_processed` | function | `minigcc.c:344` | `static void mark_file_processed(const char *path)` |
| `match` | function | `minigcc.c:974` | `static void match(int expected)` |
| `memcpy` | function | `minigcc.c:2132` | `memcpy(varname, token, nlen);` |
| `multiplicative_expr` | function | `minigcc.c:1589` | `static void multiplicative_expr(void)` |
| `my_isalnum` | function | `minigcc.c:530` | `static int my_isalnum(int c)` |
| `my_isalpha` | function | `minigcc.c:519` | `static int my_isalpha(int c)` |
| `my_isdigit` | function | `minigcc.c:525` | `static int my_isdigit(int c)` |
| `my_isspace` | function | `minigcc.c:509` | `static int my_isspace(int c)` |
| `next_token` | function | `minigcc.c:538` | `static void next_token(void)` |
| `parse_const_int` | function | `minigcc.c:3061` | `static int parse_const_int(long long *out)` |
| `parse_enum` | function | `minigcc.c:2868` | `static void parse_enum(void)` |
| `parse_function` | function | `minigcc.c:2741` | `static void parse_function(const char *name, int ret_type)` |
| `parse_program` | function | `minigcc.c:3165` | `static void parse_program(void)` |
| `pop_scope` | function | `minigcc.c:461` | `static void pop_scope(void)` |
| `push_scope` | function | `minigcc.c:453` | `static void push_scope(void)` |
| `read_include_file` | function | `minigcc.c:414` | `static char *read_include_file(const char *path)` |
| `relational_expr` | function | `minigcc.c:1727` | `static void relational_expr(void)` |
| `resolve_local_include` | function | `minigcc.c:375` | `static char *resolve_local_include(const char *target)` |
| `restore_parser_state` | function | `minigcc.c:240` | `static void restore_parser_state(ParserState *state)` |
| `rewind` | function | `minigcc.c:424` | `rewind(f);` |
| `safe_malloc` | function | `minigcc.c:304` | `static void *safe_malloc(size_t size)` |
| `safe_strcpy` | function | `minigcc.c:313` | `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)` |
| `safe_strtoll` | function | `minigcc.c:322` | `static long safe_strtoll(const char *s)` |
| `save_parser_state` | function | `minigcc.c:215` | `static void save_parser_state(ParserState *state)` |
| `shift_expr` | function | `minigcc.c:1708` | `static void shift_expr(void)` |
| `skip_struct` | function | `minigcc.c:2917` | `static void skip_struct(void)` |
| `skip_typedef` | function | `minigcc.c:2981` | `static void skip_typedef(void)` |
| `snprintf` | function | `minigcc.c:774` | `snprintf(token, MAX_TOKEN_LEN, "%d", macros[mi].value);` |
| `statement` | function | `minigcc.c:2084` | `static void statement(void)` |
| `strcpy` | function | `minigcc.c:816` | `strcpy(float_const_str[float_const_count], token);` |
| `strncpy` | function | `minigcc.c:1062` | `strncpy(d, name, MAX_IDENT_LEN - 1);` |
| `truncate_symbols` | function | `minigcc.c:491` | `static void truncate_symbols(int start_idx)` |
| `unary` | function | `minigcc.c:1139` | `static void unary(void)` |
| `unary_expr` | function | `minigcc.c:1574` | `static void unary_expr(void)` |
| `_start` | function | `minigccg2.s:34714` | `` |
| `add_macro` | function | `minigccg2.s:639` | `` |
| `add_symbol` | function | `minigccg2.s:9688` | `` |
| `additive_expr` | function | `minigccg2.s:14918` | `` |
| `arg_reg` | function | `minigccg2.s:10056` | `` |
| `assign_size` | function | `minigccg2.s:91` | `` |
| `assignment_expr` | function | `minigccg2.s:17331` | `` |
| `bitwise_and_expr` | function | `minigccg2.s:16639` | `` |
| `bitwise_or_expr` | function | `minigccg2.s:16795` | `` |
| `bitwise_xor_expr` | function | `minigccg2.s:16717` | `` |
| `break_target` | function | `minigccg2.s:167` | `` |
| `break_target_valid` | function | `minigccg2.s:171` | `` |
| `conditional_expr` | function | `minigccg2.s:17199` | `` |
| `const_flag` | function | `minigccg2.s:123` | `` |
| `continue_target` | function | `minigccg2.s:175` | `` |
| `continue_target_valid` | function | `minigccg2.s:179` | `` |
| `ctx_stack` | function | `minigccg2.s:27` | `` |
| `ctx_top` | function | `minigccg2.s:31` | `` |
| `current_elem_size` | function | `minigccg2.s:99` | `` |
| `current_elem_size2` | function | `minigccg2.s:103` | `` |
| `current_file` | function | `minigccg2.s:35` | `` |
| `data_directive` | function | `minigccg2.s:28288` | `` |
| `emit` | function | `minigccg2.s:8930` | `` |
| `emit_asciz_body` | function | `minigccg2.s:9248` | `` |
| `emit_enabled` | function | `minigccg2.s:83` | `` |
| `emit_float_consts` | function | `minigccg2.s:31173` | `` |
| `emit_global_bss` | function | `minigccg2.s:28338` | `` |
| `emit_global_data_head` | function | `minigccg2.s:28429` | `` |
| `emit_global_initializer` | function | `minigccg2.s:28740` | `` |
| `emit_i` | function | `minigccg2.s:9044` | `` |
| `emit_is` | function | `minigccg2.s:9142` | `` |
| `emit_label` | function | `minigccg2.s:9572` | `` |
| `emit_s` | function | `minigccg2.s:9093` | `` |
| `emit_si` | function | `minigccg2.s:9195` | `` |
| `emit_string_pool` | function | `minigccg2.s:31272` | `` |
| `equality_expr` | function | `minigccg2.s:16161` | `` |
| `error` | function | `minigccg2.s:769` | `` |
| `expr_pointed` | function | `minigccg2.s:95` | `` |
| `expr_type` | function | `minigccg2.s:111` | `` |
| `extern_flag` | function | `minigccg2.s:127` | `` |
| `find_macro` | function | `minigccg2.s:575` | `` |
| `find_symbol` | function | `minigccg2.s:9601` | `` |
| `float_const_count` | function | `minigccg2.s:143` | `` |
| `float_const_is_float` | function | `minigccg2.s:139` | `` |
| `float_const_str` | function | `minigccg2.s:135` | `` |
| `function_has_return` | function | `minigccg2.s:79` | `` |
| `get_dir_from_path` | function | `minigccg2.s:1241` | `` |
| `global_emit_deferred` | function | `minigccg2.s:131` | `` |
| `handle_postfix` | function | `minigccg2.s:13294` | `` |
| `hash_init` | function | `minigccg2.s:2100` | `` |
| `hash_name` | function | `minigccg2.s:2042` | `` |
| `hash_table` | function | `minigccg2.s:55` | `` |
| `if_depth` | function | `minigccg2.s:235` | `` |
| `if_nest` | function | `minigccg2.s:231` | `` |
| `input_ptr` | function | `minigccg2.s:3` | `` |
| `intern_string` | function | `minigccg2.s:28647` | `` |
| `is_file_processed` | function | `minigccg2.s:1068` | `` |
| `label_counter` | function | `minigccg2.s:75` | `` |
| `libc_global_name` | function | `minigccg2.s:10132` | `` |
| `line` | function | `minigccg2.s:19` | `` |
| `logical_and_expr` | function | `minigccg2.s:16873` | `` |
| `logical_or_expr` | function | `minigccg2.s:17036` | `` |
| `lvalue_address` | function | `minigccg2.s:12789` | `` |
| `macro_count` | function | `minigccg2.s:240` | `` |
| `macros` | function | `minigccg2.s:571` | `` |
| `main` | function | `minigccg2.s:31374` | `` |
| `mark_file_processed` | function | `minigccg2.s:1129` | `` |
| `match` | function | `minigccg2.s:8892` | `` |
| `max_func_stack` | function | `minigccg2.s:87` | `` |
| `multiplicative_expr` | function | `minigccg2.s:14296` | `` |
| `my_isalnum` | function | `minigccg2.s:2738` | `` |
| `my_isalpha` | function | `minigccg2.s:2629` | `` |
| `my_isdigit` | function | `minigccg2.s:2698` | `` |
| `my_isspace` | function | `minigccg2.s:2540` | `` |
| `next_token` | function | `minigccg2.s:2783` | `` |
| `no_postfix_deref` | function | `minigccg2.s:107` | `` |
| `output` | function | `minigccg2.s:23` | `` |
| `parse_const_int` | function | `minigccg2.s:28484` | `` |
| `parse_enum` | function | `minigccg2.s:26800` | `` |
| `parse_function` | function | `minigccg2.s:25484` | `` |
| `parse_program` | function | `minigccg2.s:29457` | `` |
| `pop_scope` | function | `minigccg2.s:2191` | `` |
| `processed_count` | function | `minigccg2.s:43` | `` |
| `processed_files` | function | `minigccg2.s:39` | `` |
| `ptr_init_count` | function | `minigccg2.s:203` | `` |
| `ptr_init_label` | function | `minigccg2.s:199` | `` |
| `ptr_init_name` | function | `minigccg2.s:195` | `` |
| `push_scope` | function | `minigccg2.s:2139` | `` |
| `read_include_file` | function | `minigccg2.s:1834` | `` |
| `relational_expr` | function | `minigccg2.s:15559` | `` |
| `resolve_local_include` | function | `minigccg2.s:1384` | `` |
| `restart` | function | `minigccg2.s:2787` | `` |
| `restart_int` | function | `minigccg2.s:24328` | `` |
| `restart_typedef` | function | `minigccg2.s:23297` | `` |
| `restore_parser_state` | function | `minigccg2.s:383` | `` |
| `safe_malloc` | function | `minigccg2.s:821` | `` |
| `safe_strcpy` | function | `minigccg2.s:876` | `` |
| `safe_strtoll` | function | `minigccg2.s:953` | `` |
| `save_parser_state` | function | `minigccg2.s:244` | `` |
| `scope_depth` | function | `minigccg2.s:67` | `` |
| `scope_stack_stk` | function | `minigccg2.s:63` | `` |
| `scope_stack_sym` | function | `minigccg2.s:59` | `` |
| `shift_expr` | function | `minigccg2.s:15413` | `` |
| `skip_struct` | function | `minigccg2.s:27212` | `` |
| `skip_typedef` | function | `minigccg2.s:27798` | `` |
| `source_start` | function | `minigccg2.s:7` | `` |
| `stack_size` | function | `minigccg2.s:71` | `` |
| `statement` | function | `minigccg2.s:19851` | `` |
| `static_flag` | function | `minigccg2.s:115` | `` |
| `str_label_counter` | function | `minigccg2.s:183` | `` |
| `string_count` | function | `minigccg2.s:191` | `` |
| `string_pool` | function | `minigccg2.s:187` | `` |
| `struct_member_count` | function | `minigccg2.s:227` | `` |
| `struct_member_elem_sizes` | function | `minigccg2.s:223` | `` |
| `struct_member_names` | function | `minigccg2.s:211` | `` |
| `struct_member_offsets` | function | `minigccg2.s:215` | `` |
| `struct_member_sizes` | function | `minigccg2.s:219` | `` |
| `struct_total_size` | function | `minigccg2.s:207` | `` |
| `switch_case_count` | function | `minigccg2.s:155` | `` |
| `switch_case_labels` | function | `minigccg2.s:151` | `` |
| `switch_case_values` | function | `minigccg2.s:147` | `` |
| `switch_default_label` | function | `minigccg2.s:163` | `` |
| `switch_has_default` | function | `minigccg2.s:159` | `` |
| `symbol_count` | function | `minigccg2.s:51` | `` |
| `symbols` | function | `minigccg2.s:47` | `` |
| `tok` | function | `minigccg2.s:15` | `` |
| `token` | function | `minigccg2.s:11` | `` |
| `truncate_symbols` | function | `minigccg2.s:2387` | `` |
| `unary` | function | `minigccg2.s:10260` | `` |
| `unary_expr` | function | `minigccg2.s:14271` | `` |
| `unsigned_type` | function | `minigccg2.s:119` | `` |
| `_start` | function | `minigccg3.s:34714` | `` |
| `add_macro` | function | `minigccg3.s:639` | `` |
| `add_symbol` | function | `minigccg3.s:9688` | `` |
| `additive_expr` | function | `minigccg3.s:14918` | `` |
| `arg_reg` | function | `minigccg3.s:10056` | `` |
| `assign_size` | function | `minigccg3.s:91` | `` |
| `assignment_expr` | function | `minigccg3.s:17331` | `` |
| `bitwise_and_expr` | function | `minigccg3.s:16639` | `` |
| `bitwise_or_expr` | function | `minigccg3.s:16795` | `` |
| `bitwise_xor_expr` | function | `minigccg3.s:16717` | `` |
| `break_target` | function | `minigccg3.s:167` | `` |
| `break_target_valid` | function | `minigccg3.s:171` | `` |
| `conditional_expr` | function | `minigccg3.s:17199` | `` |
| `const_flag` | function | `minigccg3.s:123` | `` |
| `continue_target` | function | `minigccg3.s:175` | `` |
| `continue_target_valid` | function | `minigccg3.s:179` | `` |
| `ctx_stack` | function | `minigccg3.s:27` | `` |
| `ctx_top` | function | `minigccg3.s:31` | `` |
| `current_elem_size` | function | `minigccg3.s:99` | `` |
| `current_elem_size2` | function | `minigccg3.s:103` | `` |
| `current_file` | function | `minigccg3.s:35` | `` |
| `data_directive` | function | `minigccg3.s:28288` | `` |
| `emit` | function | `minigccg3.s:8930` | `` |
| `emit_asciz_body` | function | `minigccg3.s:9248` | `` |
| `emit_enabled` | function | `minigccg3.s:83` | `` |
| `emit_float_consts` | function | `minigccg3.s:31173` | `` |
| `emit_global_bss` | function | `minigccg3.s:28338` | `` |
| `emit_global_data_head` | function | `minigccg3.s:28429` | `` |
| `emit_global_initializer` | function | `minigccg3.s:28740` | `` |
| `emit_i` | function | `minigccg3.s:9044` | `` |
| `emit_is` | function | `minigccg3.s:9142` | `` |
| `emit_label` | function | `minigccg3.s:9572` | `` |
| `emit_s` | function | `minigccg3.s:9093` | `` |
| `emit_si` | function | `minigccg3.s:9195` | `` |
| `emit_string_pool` | function | `minigccg3.s:31272` | `` |
| `equality_expr` | function | `minigccg3.s:16161` | `` |
| `error` | function | `minigccg3.s:769` | `` |
| `expr_pointed` | function | `minigccg3.s:95` | `` |
| `expr_type` | function | `minigccg3.s:111` | `` |
| `extern_flag` | function | `minigccg3.s:127` | `` |
| `find_macro` | function | `minigccg3.s:575` | `` |
| `find_symbol` | function | `minigccg3.s:9601` | `` |
| `float_const_count` | function | `minigccg3.s:143` | `` |
| `float_const_is_float` | function | `minigccg3.s:139` | `` |
| `float_const_str` | function | `minigccg3.s:135` | `` |
| `function_has_return` | function | `minigccg3.s:79` | `` |
| `get_dir_from_path` | function | `minigccg3.s:1241` | `` |
| `global_emit_deferred` | function | `minigccg3.s:131` | `` |
| `handle_postfix` | function | `minigccg3.s:13294` | `` |
| `hash_init` | function | `minigccg3.s:2100` | `` |
| `hash_name` | function | `minigccg3.s:2042` | `` |
| `hash_table` | function | `minigccg3.s:55` | `` |
| `if_depth` | function | `minigccg3.s:235` | `` |
| `if_nest` | function | `minigccg3.s:231` | `` |
| `input_ptr` | function | `minigccg3.s:3` | `` |
| `intern_string` | function | `minigccg3.s:28647` | `` |
| `is_file_processed` | function | `minigccg3.s:1068` | `` |
| `label_counter` | function | `minigccg3.s:75` | `` |
| `libc_global_name` | function | `minigccg3.s:10132` | `` |
| `line` | function | `minigccg3.s:19` | `` |
| `logical_and_expr` | function | `minigccg3.s:16873` | `` |
| `logical_or_expr` | function | `minigccg3.s:17036` | `` |
| `lvalue_address` | function | `minigccg3.s:12789` | `` |
| `macro_count` | function | `minigccg3.s:240` | `` |
| `macros` | function | `minigccg3.s:571` | `` |
| `main` | function | `minigccg3.s:31374` | `` |
| `mark_file_processed` | function | `minigccg3.s:1129` | `` |
| `match` | function | `minigccg3.s:8892` | `` |
| `max_func_stack` | function | `minigccg3.s:87` | `` |
| `multiplicative_expr` | function | `minigccg3.s:14296` | `` |
| `my_isalnum` | function | `minigccg3.s:2738` | `` |
| `my_isalpha` | function | `minigccg3.s:2629` | `` |
| `my_isdigit` | function | `minigccg3.s:2698` | `` |
| `my_isspace` | function | `minigccg3.s:2540` | `` |
| `next_token` | function | `minigccg3.s:2783` | `` |
| `no_postfix_deref` | function | `minigccg3.s:107` | `` |
| `output` | function | `minigccg3.s:23` | `` |
| `parse_const_int` | function | `minigccg3.s:28484` | `` |
| `parse_enum` | function | `minigccg3.s:26800` | `` |
| `parse_function` | function | `minigccg3.s:25484` | `` |
| `parse_program` | function | `minigccg3.s:29457` | `` |
| `pop_scope` | function | `minigccg3.s:2191` | `` |
| `processed_count` | function | `minigccg3.s:43` | `` |
| `processed_files` | function | `minigccg3.s:39` | `` |
| `ptr_init_count` | function | `minigccg3.s:203` | `` |
| `ptr_init_label` | function | `minigccg3.s:199` | `` |
| `ptr_init_name` | function | `minigccg3.s:195` | `` |
| `push_scope` | function | `minigccg3.s:2139` | `` |
| `read_include_file` | function | `minigccg3.s:1834` | `` |
| `relational_expr` | function | `minigccg3.s:15559` | `` |
| `resolve_local_include` | function | `minigccg3.s:1384` | `` |
| `restart` | function | `minigccg3.s:2787` | `` |
| `restart_int` | function | `minigccg3.s:24328` | `` |
| `restart_typedef` | function | `minigccg3.s:23297` | `` |
| `restore_parser_state` | function | `minigccg3.s:383` | `` |
| `safe_malloc` | function | `minigccg3.s:821` | `` |
| `safe_strcpy` | function | `minigccg3.s:876` | `` |
| `safe_strtoll` | function | `minigccg3.s:953` | `` |
| `save_parser_state` | function | `minigccg3.s:244` | `` |
| `scope_depth` | function | `minigccg3.s:67` | `` |
| `scope_stack_stk` | function | `minigccg3.s:63` | `` |
| `scope_stack_sym` | function | `minigccg3.s:59` | `` |
| `shift_expr` | function | `minigccg3.s:15413` | `` |
| `skip_struct` | function | `minigccg3.s:27212` | `` |
| `skip_typedef` | function | `minigccg3.s:27798` | `` |
| `source_start` | function | `minigccg3.s:7` | `` |
| `stack_size` | function | `minigccg3.s:71` | `` |
| `statement` | function | `minigccg3.s:19851` | `` |
| `static_flag` | function | `minigccg3.s:115` | `` |
| `str_label_counter` | function | `minigccg3.s:183` | `` |
| `string_count` | function | `minigccg3.s:191` | `` |
| `string_pool` | function | `minigccg3.s:187` | `` |
| `struct_member_count` | function | `minigccg3.s:227` | `` |
| `struct_member_elem_sizes` | function | `minigccg3.s:223` | `` |
| `struct_member_names` | function | `minigccg3.s:211` | `` |
| `struct_member_offsets` | function | `minigccg3.s:215` | `` |
| `struct_member_sizes` | function | `minigccg3.s:219` | `` |
| `struct_total_size` | function | `minigccg3.s:207` | `` |
| `switch_case_count` | function | `minigccg3.s:155` | `` |
| `switch_case_labels` | function | `minigccg3.s:151` | `` |
| `switch_case_values` | function | `minigccg3.s:147` | `` |
| `switch_default_label` | function | `minigccg3.s:163` | `` |
| `switch_has_default` | function | `minigccg3.s:159` | `` |
| `symbol_count` | function | `minigccg3.s:51` | `` |
| `symbols` | function | `minigccg3.s:47` | `` |
| `tok` | function | `minigccg3.s:15` | `` |
| `token` | function | `minigccg3.s:11` | `` |
| `truncate_symbols` | function | `minigccg3.s:2387` | `` |
| `unary` | function | `minigccg3.s:10260` | `` |
| `unary_expr` | function | `minigccg3.s:14271` | `` |
| `unsigned_type` | function | `minigccg3.s:119` | `` |
| `_start` | function | `minigccg4.s:34714` | `` |
| `add_macro` | function | `minigccg4.s:639` | `` |
| `add_symbol` | function | `minigccg4.s:9688` | `` |
| `additive_expr` | function | `minigccg4.s:14918` | `` |
| `arg_reg` | function | `minigccg4.s:10056` | `` |
| `assign_size` | function | `minigccg4.s:91` | `` |
| `assignment_expr` | function | `minigccg4.s:17331` | `` |
| `bitwise_and_expr` | function | `minigccg4.s:16639` | `` |
| `bitwise_or_expr` | function | `minigccg4.s:16795` | `` |
| `bitwise_xor_expr` | function | `minigccg4.s:16717` | `` |
| `break_target` | function | `minigccg4.s:167` | `` |
| `break_target_valid` | function | `minigccg4.s:171` | `` |
| `conditional_expr` | function | `minigccg4.s:17199` | `` |
| `const_flag` | function | `minigccg4.s:123` | `` |
| `continue_target` | function | `minigccg4.s:175` | `` |
| `continue_target_valid` | function | `minigccg4.s:179` | `` |
| `ctx_stack` | function | `minigccg4.s:27` | `` |
| `ctx_top` | function | `minigccg4.s:31` | `` |
| `current_elem_size` | function | `minigccg4.s:99` | `` |
| `current_elem_size2` | function | `minigccg4.s:103` | `` |
| `current_file` | function | `minigccg4.s:35` | `` |
| `data_directive` | function | `minigccg4.s:28288` | `` |
| `emit` | function | `minigccg4.s:8930` | `` |
| `emit_asciz_body` | function | `minigccg4.s:9248` | `` |
| `emit_enabled` | function | `minigccg4.s:83` | `` |
| `emit_float_consts` | function | `minigccg4.s:31173` | `` |
| `emit_global_bss` | function | `minigccg4.s:28338` | `` |
| `emit_global_data_head` | function | `minigccg4.s:28429` | `` |
| `emit_global_initializer` | function | `minigccg4.s:28740` | `` |
| `emit_i` | function | `minigccg4.s:9044` | `` |
| `emit_is` | function | `minigccg4.s:9142` | `` |
| `emit_label` | function | `minigccg4.s:9572` | `` |
| `emit_s` | function | `minigccg4.s:9093` | `` |
| `emit_si` | function | `minigccg4.s:9195` | `` |
| `emit_string_pool` | function | `minigccg4.s:31272` | `` |
| `equality_expr` | function | `minigccg4.s:16161` | `` |
| `error` | function | `minigccg4.s:769` | `` |
| `expr_pointed` | function | `minigccg4.s:95` | `` |
| `expr_type` | function | `minigccg4.s:111` | `` |
| `extern_flag` | function | `minigccg4.s:127` | `` |
| `find_macro` | function | `minigccg4.s:575` | `` |
| `find_symbol` | function | `minigccg4.s:9601` | `` |
| `float_const_count` | function | `minigccg4.s:143` | `` |
| `float_const_is_float` | function | `minigccg4.s:139` | `` |
| `float_const_str` | function | `minigccg4.s:135` | `` |
| `function_has_return` | function | `minigccg4.s:79` | `` |
| `get_dir_from_path` | function | `minigccg4.s:1241` | `` |
| `global_emit_deferred` | function | `minigccg4.s:131` | `` |
| `handle_postfix` | function | `minigccg4.s:13294` | `` |
| `hash_init` | function | `minigccg4.s:2100` | `` |
| `hash_name` | function | `minigccg4.s:2042` | `` |
| `hash_table` | function | `minigccg4.s:55` | `` |
| `if_depth` | function | `minigccg4.s:235` | `` |
| `if_nest` | function | `minigccg4.s:231` | `` |
| `input_ptr` | function | `minigccg4.s:3` | `` |
| `intern_string` | function | `minigccg4.s:28647` | `` |
| `is_file_processed` | function | `minigccg4.s:1068` | `` |
| `label_counter` | function | `minigccg4.s:75` | `` |
| `libc_global_name` | function | `minigccg4.s:10132` | `` |
| `line` | function | `minigccg4.s:19` | `` |
| `logical_and_expr` | function | `minigccg4.s:16873` | `` |
| `logical_or_expr` | function | `minigccg4.s:17036` | `` |
| `lvalue_address` | function | `minigccg4.s:12789` | `` |
| `macro_count` | function | `minigccg4.s:240` | `` |
| `macros` | function | `minigccg4.s:571` | `` |
| `main` | function | `minigccg4.s:31374` | `` |
| `mark_file_processed` | function | `minigccg4.s:1129` | `` |
| `match` | function | `minigccg4.s:8892` | `` |
| `max_func_stack` | function | `minigccg4.s:87` | `` |
| `multiplicative_expr` | function | `minigccg4.s:14296` | `` |
| `my_isalnum` | function | `minigccg4.s:2738` | `` |
| `my_isalpha` | function | `minigccg4.s:2629` | `` |
| `my_isdigit` | function | `minigccg4.s:2698` | `` |
| `my_isspace` | function | `minigccg4.s:2540` | `` |
| `next_token` | function | `minigccg4.s:2783` | `` |
| `no_postfix_deref` | function | `minigccg4.s:107` | `` |
| `output` | function | `minigccg4.s:23` | `` |
| `parse_const_int` | function | `minigccg4.s:28484` | `` |
| `parse_enum` | function | `minigccg4.s:26800` | `` |
| `parse_function` | function | `minigccg4.s:25484` | `` |
| `parse_program` | function | `minigccg4.s:29457` | `` |
| `pop_scope` | function | `minigccg4.s:2191` | `` |
| `processed_count` | function | `minigccg4.s:43` | `` |
| `processed_files` | function | `minigccg4.s:39` | `` |
| `ptr_init_count` | function | `minigccg4.s:203` | `` |
| `ptr_init_label` | function | `minigccg4.s:199` | `` |
| `ptr_init_name` | function | `minigccg4.s:195` | `` |
| `push_scope` | function | `minigccg4.s:2139` | `` |
| `read_include_file` | function | `minigccg4.s:1834` | `` |
| `relational_expr` | function | `minigccg4.s:15559` | `` |
| `resolve_local_include` | function | `minigccg4.s:1384` | `` |
| `restart` | function | `minigccg4.s:2787` | `` |
| `restart_int` | function | `minigccg4.s:24328` | `` |
| `restart_typedef` | function | `minigccg4.s:23297` | `` |
| `restore_parser_state` | function | `minigccg4.s:383` | `` |
| `safe_malloc` | function | `minigccg4.s:821` | `` |
| `safe_strcpy` | function | `minigccg4.s:876` | `` |
| `safe_strtoll` | function | `minigccg4.s:953` | `` |
| `save_parser_state` | function | `minigccg4.s:244` | `` |
| `scope_depth` | function | `minigccg4.s:67` | `` |
| `scope_stack_stk` | function | `minigccg4.s:63` | `` |
| `scope_stack_sym` | function | `minigccg4.s:59` | `` |
| `shift_expr` | function | `minigccg4.s:15413` | `` |
| `skip_struct` | function | `minigccg4.s:27212` | `` |
| `skip_typedef` | function | `minigccg4.s:27798` | `` |
| `source_start` | function | `minigccg4.s:7` | `` |
| `stack_size` | function | `minigccg4.s:71` | `` |
| `statement` | function | `minigccg4.s:19851` | `` |
| `static_flag` | function | `minigccg4.s:115` | `` |
| `str_label_counter` | function | `minigccg4.s:183` | `` |
| `string_count` | function | `minigccg4.s:191` | `` |
| `string_pool` | function | `minigccg4.s:187` | `` |
| `struct_member_count` | function | `minigccg4.s:227` | `` |
| `struct_member_elem_sizes` | function | `minigccg4.s:223` | `` |
| `struct_member_names` | function | `minigccg4.s:211` | `` |
| `struct_member_offsets` | function | `minigccg4.s:215` | `` |
| `struct_member_sizes` | function | `minigccg4.s:219` | `` |
| `struct_total_size` | function | `minigccg4.s:207` | `` |
| `switch_case_count` | function | `minigccg4.s:155` | `` |
| `switch_case_labels` | function | `minigccg4.s:151` | `` |
| `switch_case_values` | function | `minigccg4.s:147` | `` |
| `switch_default_label` | function | `minigccg4.s:163` | `` |
| `switch_has_default` | function | `minigccg4.s:159` | `` |
| `symbol_count` | function | `minigccg4.s:51` | `` |
| `symbols` | function | `minigccg4.s:47` | `` |
| `tok` | function | `minigccg4.s:15` | `` |
| `token` | function | `minigccg4.s:11` | `` |
| `truncate_symbols` | function | `minigccg4.s:2387` | `` |
| `unary` | function | `minigccg4.s:10260` | `` |
| `unary_expr` | function | `minigccg4.s:14271` | `` |
| `unsigned_type` | function | `minigccg4.s:119` | `` |
| `MY_LIBRARY_H` | macro | `my_library.h:2` | `#define MY_LIBRARY_H` |
| `greet` | function | `my_library.h:5` | `void greet(void);` |
| `main` | function | `test.c:1` | `int main(void)` |
| `main` | function | `test_for.c:2` | `int main()` |
| `greet` | function | `test_include.c:9` | `void greet(void)` |
| `main` | function | `test_include.c:3` | `int main(void)` |
| `printf` | function | `test_include.c:5` | `printf("Compilation successful! The compiler includes files correctly.\n");` |
| `fail` | function | `test_ld_selfhost.sh:32` | `` |
| `pass` | function | `test_ld_selfhost.sh:27` | `` |
