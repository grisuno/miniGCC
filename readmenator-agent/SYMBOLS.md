# Symbols

| Symbol | Kind | File:Line | Signature |
|--------|------|-----------|-----------|
| `CONST_VAR_FLAG` | macro | `minigcc.c:196` | `#define CONST_VAR_FLAG` |
| `FileContext` | struct | `minigcc.c:91` | `` |
| `HASH_TABLE_SIZE` | macro | `minigcc.c:126` | `#define HASH_TABLE_SIZE` |
| `LEX_KW_BLOB` | macro | `minigcc.c:78` | `#define LEX_KW_BLOB` |
| `LEX_KW_CAP` | macro | `minigcc.c:76` | `#define LEX_KW_CAP` |
| `MAX_CASES_PER_SWITCH` | macro | `minigcc.c:155` | `#define MAX_CASES_PER_SWITCH` |
| `MAX_FLOAT_CONSTS` | macro | `minigcc.c:150` | `#define MAX_FLOAT_CONSTS` |
| `MAX_IDENT_LEN` | macro | `minigcc.c:17` | `#define MAX_IDENT_LEN` |
| `MAX_IF_NESTING` | macro | `minigcc.c:194` | `#define MAX_IF_NESTING` |
| `MAX_INCLUDE_DEPTH` | macro | `minigcc.c:19` | `#define MAX_INCLUDE_DEPTH` |
| `MAX_MACROS` | macro | `minigcc.c:202` | `#define MAX_MACROS` |
| `MAX_PROCESSED_FILES` | macro | `minigcc.c:20` | `#define MAX_PROCESSED_FILES` |
| `MAX_PTR_INITS` | macro | `minigcc.c:177` | `#define MAX_PTR_INITS` |
| `MAX_SCOPE_DEPTH` | macro | `minigcc.c:128` | `#define MAX_SCOPE_DEPTH` |
| `MAX_SOURCE_SIZE` | macro | `minigcc.c:18` | `#define MAX_SOURCE_SIZE` |
| `MAX_STRINGS` | macro | `minigcc.c:168` | `#define MAX_STRINGS` |
| `MAX_STRUCT_MEMBERS` | macro | `minigcc.c:187` | `#define MAX_STRUCT_MEMBERS` |
| `MAX_SYMBOLS` | macro | `minigcc.c:16` | `#define MAX_SYMBOLS` |
| `MAX_TOKEN_LEN` | macro | `minigcc.c:14` | `#define MAX_TOKEN_LEN` |
| `Macro` | struct | `minigcc.c:285` | `` |
| `ParserState` | struct | `minigcc.c:206` | `` |
| `STACK_ALIGN` | macro | `minigcc.c:21` | `#define STACK_ALIGN` |
| `Symbol` | struct | `minigcc.c:104` | `` |
| `add_macro` | function | `minigcc.c:300` | `static void add_macro(const char *name, int value)` |
| `add_symbol` | function | `minigcc.c:1545` | `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...` |
| `additive_expr` | function | `minigcc.c:2143` | `static void additive_expr(void)` |
| `arg_reg` | function | `minigcc.c:1606` | `static const char *arg_reg(int i)` |
| `assignment_expr` | function | `minigcc.c:2454` | `static void assignment_expr(void)` |
| `bitwise_and_expr` | function | `minigcc.c:2319` | `static void bitwise_and_expr(void)` |
| `bitwise_or_expr` | function | `minigcc.c:2343` | `static void bitwise_or_expr(void)` |
| `bitwise_xor_expr` | function | `minigcc.c:2331` | `static void bitwise_xor_expr(void)` |
| `conditional_expr` | function | `minigcc.c:2395` | `static void conditional_expr(void)` |
| `data_directive` | function | `minigcc.c:3602` | `static const char *data_directive(int size)` |
| `emit` | function | `minigcc.c:1468` | `static void emit(const char *s)` |
| `emit_asciz_body` | function | `minigcc.c:1510` | `static void emit_asciz_body(const char *s)` |
| `emit_compound_op` | function | `minigcc.c:2413` | `static void emit_compound_op(int op, int asize)` |
| `emit_float_consts` | function | `minigcc.c:3882` | `static void emit_float_consts(void)` |
| `emit_global_bss` | function | `minigcc.c:3610` | `static void emit_global_bss(const char *name, int is_static, int size)` |
| `emit_global_data_head` | function | `minigcc.c:3617` | `static void emit_global_data_head(const char *name, int is_static)` |
| `emit_global_initializer` | function | `minigcc.c:3667` | `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...` |
| `emit_i` | function | `minigcc.c:1482` | `static void emit_i(const char *fmt, int v)` |
| `emit_is` | function | `minigcc.c:1494` | `static void emit_is(const char *fmt, int v, const char *s)` |
| `emit_label` | function | `minigcc.c:1528` | `static void emit_label(int label)` |
| `emit_s` | function | `minigcc.c:1488` | `static void emit_s(const char *fmt, const char *s)` |
| `emit_si` | function | `minigcc.c:1500` | `static void emit_si(const char *fmt, const char *s, int v)` |
| `emit_string_pool` | function | `minigcc.c:3892` | `static void emit_string_pool(void)` |
| `equality_expr` | function | `minigcc.c:2270` | `static void equality_expr(void)` |
| `error` | function | `minigcc.c:602` | `static void error(const char *msg)` |
| `exit` | function | `minigcc.c:606` | `exit(EXIT_FAILURE);` |
| `fclose` | function | `minigcc.c:683` | `fclose(f);` |
| `find_macro` | function | `minigcc.c:291` | `static int find_macro(const char *name)` |
| `find_symbol` | function | `minigcc.c:1535` | `static int find_symbol(const char *name)` |
| `fprintf` | function | `minigcc.c:604` | `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);` |
| `fputc` | function | `minigcc.c:1473` | `fputc('%', output);` |
| `free` | function | `minigcc.c:732` | `free(buf);` |
| `fseek` | function | `minigcc.c:722` | `fseek(f, 0, SEEK_END);` |
| `get_dir_from_path` | function | `minigcc.c:660` | `static void get_dir_from_path(const char *path, char *dir, int dir_sz)` |
| `handle_postfix` | function | `minigcc.c:1930` | `static void handle_postfix(int is_lvalue)` |
| `hash_init` | function | `minigcc.c:752` | `static void hash_init(void)` |
| `hash_name` | function | `minigcc.c:743` | `static int hash_name(const char *name)` |
| `intern_string` | function | `minigcc.c:3650` | `static int intern_string(const char *text)` |
| `is_file_processed` | function | `minigcc.c:639` | `static int is_file_processed(const char *path)` |
| `lex_fail` | function | `minigcc.c:840` | `static void lex_fail(const char *msg, char *start, char *end)` |
| `lex_hex_val` | function | `minigcc.c:917` | `static int lex_hex_val(int c)` |
| `lex_init_keywords` | function | `minigcc.c:863` | `static void lex_init_keywords(void)` |
| `lex_is_int_suffix` | function | `minigcc.c:924` | `static int lex_is_int_suffix(int c)` |
| `lex_kw_add` | function | `minigcc.c:850` | `static void lex_kw_add(const char *name, int id)` |
| `lex_kw_lookup` | function | `minigcc.c:893` | `static int lex_kw_lookup(void)` |
| `lex_match_op` | function | `minigcc.c:905` | `static int lex_match_op(const char *op, int id)` |
| `lex_number` | function | `minigcc.c:930` | `static void lex_number(void)` |
| `libc_global_name` | function | `minigcc.c:1616` | `static const char *libc_global_name(int i)` |
| `logical_and_expr` | function | `minigcc.c:2355` | `static void logical_and_expr(void)` |
| `logical_or_expr` | function | `minigcc.c:2375` | `static void logical_or_expr(void)` |
| `lvalue_address` | function | `minigcc.c:1878` | `static void lvalue_address(void)` |
| `macro_add` | function | `minigcc.c:453` | `static int macro_add(void)` |
| `macro_bitand` | function | `minigcc.c:527` | `static int macro_bitand(void)` |
| `macro_bitor` | function | `minigcc.c:555` | `static int macro_bitor(void)` |
| `macro_bitxor` | function | `minigcc.c:541` | `static int macro_bitxor(void)` |
| `macro_cmp` | function | `minigcc.c:487` | `static int macro_cmp(void)` |
| `macro_digit_val` | function | `minigcc.c:338` | `static int macro_digit_val(int c)` |
| `macro_eq` | function | `minigcc.c:510` | `static int macro_eq(void)` |
| `macro_fold` | function | `minigcc.c:597` | `static int macro_fold(void)` |
| `macro_hex_digit` | function | `minigcc.c:331` | `static int macro_hex_digit(int c)` |
| `macro_logand` | function | `minigcc.c:569` | `static int macro_logand(void)` |
| `macro_mul` | function | `minigcc.c:428` | `static int macro_mul(void)` |
| `macro_or_expr` | function | `minigcc.c:583` | `static int macro_or_expr(void)` |
| `macro_primary` | function | `minigcc.c:345` | `static int macro_primary(void)` |
| `macro_shift` | function | `minigcc.c:470` | `static int macro_shift(void)` |
| `macro_skipws` | function | `minigcc.c:327` | `static void macro_skipws(void)` |
| `macro_unary` | function | `minigcc.c:419` | `static int macro_unary(void)` |
| `main` | function | `minigcc.c:3902` | `int main(int argc, char **argv)` |
| `mark_file_processed` | function | `minigcc.c:648` | `static void mark_file_processed(const char *path)` |
| `match` | function | `minigcc.c:1463` | `static void match(int expected)` |
| `memcpy` | function | `minigcc.c:2698` | `memcpy(varname, token, nlen);` |
| `multiplicative_expr` | function | `minigcc.c:2079` | `static void multiplicative_expr(void)` |
| `my_isalnum` | function | `minigcc.c:834` | `static int my_isalnum(int c)` |
| `my_isalpha` | function | `minigcc.c:823` | `static int my_isalpha(int c)` |
| `my_isdigit` | function | `minigcc.c:829` | `static int my_isdigit(int c)` |
| `my_isspace` | function | `minigcc.c:813` | `static int my_isspace(int c)` |
| `next_token` | function | `minigcc.c:1049` | `static void next_token(void)` |
| `parse_const_int` | function | `minigcc.c:3627` | `static int parse_const_int(long long *out)` |
| `parse_enum` | function | `minigcc.c:3434` | `static void parse_enum(void)` |
| `parse_function` | function | `minigcc.c:3307` | `static void parse_function(const char *name, int ret_type)` |
| `parse_program` | function | `minigcc.c:3731` | `static void parse_program(void)` |
| `pop_scope` | function | `minigcc.c:765` | `static void pop_scope(void)` |
| `push_scope` | function | `minigcc.c:757` | `static void push_scope(void)` |
| `read_include_file` | function | `minigcc.c:718` | `static char *read_include_file(const char *path)` |
| `relational_expr` | function | `minigcc.c:2217` | `static void relational_expr(void)` |
| `resolve_local_include` | function | `minigcc.c:679` | `static char *resolve_local_include(const char *target)` |
| `restore_parser_state` | function | `minigcc.c:255` | `static void restore_parser_state(ParserState *state)` |
| `rewind` | function | `minigcc.c:728` | `rewind(f);` |
| `safe_malloc` | function | `minigcc.c:608` | `static void *safe_malloc(size_t size)` |
| `safe_strcpy` | function | `minigcc.c:617` | `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)` |
| `safe_strtoll` | function | `minigcc.c:626` | `static long safe_strtoll(const char *s)` |
| `save_parser_state` | function | `minigcc.c:230` | `static void save_parser_state(ParserState *state)` |
| `shift_expr` | function | `minigcc.c:2198` | `static void shift_expr(void)` |
| `skip_struct` | function | `minigcc.c:3483` | `static void skip_struct(void)` |
| `skip_typedef` | function | `minigcc.c:3547` | `static void skip_typedef(void)` |
| `snprintf` | function | `minigcc.c:945` | `snprintf(token, MAX_TOKEN_LEN, "%ld", v);` |
| `statement` | function | `minigcc.c:2650` | `static void statement(void)` |
| `strcpy` | function | `minigcc.c:2459` | `strcpy(saved_token, token);` |
| `strncpy` | function | `minigcc.c:1551` | `strncpy(d, name, MAX_IDENT_LEN - 1);` |
| `truncate_symbols` | function | `minigcc.c:795` | `static void truncate_symbols(int start_idx)` |
| `unary` | function | `minigcc.c:1628` | `static void unary(void)` |
| `unary_expr` | function | `minigcc.c:2064` | `static void unary_expr(void)` |
| `_start` | function | `minigccg2.s:39836` | `` |
| `add_macro` | function | `minigccg2.s:651` | `` |
| `add_symbol` | function | `minigccg2.s:13130` | `` |
| `additive_expr` | function | `minigccg2.s:18446` | `` |
| `arg_reg` | function | `minigccg2.s:13504` | `` |
| `assign_size` | function | `minigccg2.s:103` | `` |
| `assignment_expr` | function | `minigccg2.s:21361` | `` |
| `bitwise_and_expr` | function | `minigccg2.s:20167` | `` |
| `bitwise_or_expr` | function | `minigccg2.s:20323` | `` |
| `bitwise_xor_expr` | function | `minigccg2.s:20245` | `` |
| `break_target` | function | `minigccg2.s:179` | `` |
| `break_target_valid` | function | `minigccg2.s:183` | `` |
| `conditional_expr` | function | `minigccg2.s:20727` | `` |
| `const_flag` | function | `minigccg2.s:135` | `` |
| `continue_target` | function | `minigccg2.s:187` | `` |
| `continue_target_valid` | function | `minigccg2.s:191` | `` |
| `ctx_stack` | function | `minigccg2.s:39` | `` |
| `ctx_top` | function | `minigccg2.s:43` | `` |
| `current_elem_size` | function | `minigccg2.s:111` | `` |
| `current_elem_size2` | function | `minigccg2.s:115` | `` |
| `current_file` | function | `minigccg2.s:47` | `` |
| `data_directive` | function | `minigccg2.s:33120` | `` |
| `emit` | function | `minigccg2.s:12372` | `` |
| `emit_asciz_body` | function | `minigccg2.s:12690` | `` |
| `emit_compound_op` | function | `minigccg2.s:20859` | `` |
| `emit_enabled` | function | `minigccg2.s:95` | `` |
| `emit_float_consts` | function | `minigccg2.s:36005` | `` |
| `emit_global_bss` | function | `minigccg2.s:33170` | `` |
| `emit_global_data_head` | function | `minigccg2.s:33261` | `` |
| `emit_global_initializer` | function | `minigccg2.s:33572` | `` |
| `emit_i` | function | `minigccg2.s:12486` | `` |
| `emit_is` | function | `minigccg2.s:12584` | `` |
| `emit_label` | function | `minigccg2.s:13014` | `` |
| `emit_s` | function | `minigccg2.s:12535` | `` |
| `emit_si` | function | `minigccg2.s:12637` | `` |
| `emit_string_pool` | function | `minigccg2.s:36104` | `` |
| `equality_expr` | function | `minigccg2.s:19689` | `` |
| `error` | function | `minigccg2.s:3255` | `` |
| `expr_pointed` | function | `minigccg2.s:107` | `` |
| `expr_type` | function | `minigccg2.s:123` | `` |
| `extern_flag` | function | `minigccg2.s:139` | `` |
| `find_macro` | function | `minigccg2.s:587` | `` |
| `find_symbol` | function | `minigccg2.s:13043` | `` |
| `float_const_count` | function | `minigccg2.s:155` | `` |
| `float_const_is_float` | function | `minigccg2.s:151` | `` |
| `float_const_str` | function | `minigccg2.s:147` | `` |
| `function_has_return` | function | `minigccg2.s:91` | `` |
| `get_dir_from_path` | function | `minigccg2.s:3727` | `` |
| `global_emit_deferred` | function | `minigccg2.s:143` | `` |
| `handle_postfix` | function | `minigccg2.s:16777` | `` |
| `hash_init` | function | `minigccg2.s:4586` | `` |
| `hash_name` | function | `minigccg2.s:4528` | `` |
| `hash_table` | function | `minigccg2.s:67` | `` |
| `if_depth` | function | `minigccg2.s:247` | `` |
| `if_nest` | function | `minigccg2.s:243` | `` |
| `input_ptr` | function | `minigccg2.s:15` | `` |
| `intern_string` | function | `minigccg2.s:33479` | `` |
| `is_file_processed` | function | `minigccg2.s:3554` | `` |
| `label_counter` | function | `minigccg2.s:87` | `` |
| `lex_fail` | function | `minigccg2.s:5269` | `` |
| `lex_hex_val` | function | `minigccg2.s:6096` | `` |
| `lex_init_keywords` | function | `minigccg2.s:5536` | `` |
| `lex_is_int_suffix` | function | `minigccg2.s:6218` | `` |
| `lex_kw_add` | function | `minigccg2.s:5373` | `` |
| `lex_kw_blob` | function | `minigccg2.s:3` | `` |
| `lex_kw_count` | function | `minigccg2.s:11` | `` |
| `lex_kw_ids` | function | `minigccg2.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg2.s:5919` | `` |
| `lex_match_op` | function | `minigccg2.s:6013` | `` |
| `lex_number` | function | `minigccg2.s:6287` | `` |
| `libc_global_name` | function | `minigccg2.s:13580` | `` |
| `line` | function | `minigccg2.s:31` | `` |
| `logical_and_expr` | function | `minigccg2.s:20401` | `` |
| `logical_or_expr` | function | `minigccg2.s:20564` | `` |
| `lvalue_address` | function | `minigccg2.s:16252` | `` |
| `macro_add` | function | `minigccg2.s:2178` | `` |
| `macro_bitand` | function | `minigccg2.s:2803` | `` |
| `macro_bitor` | function | `minigccg2.s:2954` | `` |
| `macro_bitxor` | function | `minigccg2.s:2889` | `` |
| `macro_cmp` | function | `minigccg2.s:2429` | `` |
| `macro_count` | function | `minigccg2.s:252` | `` |
| `macro_digit_val` | function | `minigccg2.s:928` | `` |
| `macro_eq` | function | `minigccg2.s:2650` | `` |
| `macro_fold` | function | `minigccg2.s:3234` | `` |
| `macro_hex_digit` | function | `minigccg2.s:830` | `` |
| `macro_logand` | function | `minigccg2.s:3040` | `` |
| `macro_mul` | function | `minigccg2.s:1975` | `` |
| `macro_ok` | function | `minigccg2.s:785` | `` |
| `macro_or_expr` | function | `minigccg2.s:3137` | `` |
| `macro_p` | function | `minigccg2.s:781` | `` |
| `macro_primary` | function | `minigccg2.s:1049` | `` |
| `macro_shift` | function | `minigccg2.s:2276` | `` |
| `macro_skipws` | function | `minigccg2.s:789` | `` |
| `macro_unary` | function | `minigccg2.s:1847` | `` |
| `macros` | function | `minigccg2.s:583` | `` |
| `main` | function | `minigccg2.s:36206` | `` |
| `mark_file_processed` | function | `minigccg2.s:3615` | `` |
| `match` | function | `minigccg2.s:12334` | `` |
| `max_func_stack` | function | `minigccg2.s:99` | `` |
| `multiplicative_expr` | function | `minigccg2.s:17824` | `` |
| `my_isalnum` | function | `minigccg2.s:5224` | `` |
| `my_isalpha` | function | `minigccg2.s:5115` | `` |
| `my_isdigit` | function | `minigccg2.s:5184` | `` |
| `my_isspace` | function | `minigccg2.s:5026` | `` |
| `next_token` | function | `minigccg2.s:7817` | `` |
| `no_postfix_deref` | function | `minigccg2.s:119` | `` |
| `output` | function | `minigccg2.s:35` | `` |
| `parse_const_int` | function | `minigccg2.s:33316` | `` |
| `parse_enum` | function | `minigccg2.s:31632` | `` |
| `parse_function` | function | `minigccg2.s:30311` | `` |
| `parse_program` | function | `minigccg2.s:34289` | `` |
| `pop_scope` | function | `minigccg2.s:4677` | `` |
| `processed_count` | function | `minigccg2.s:55` | `` |
| `processed_files` | function | `minigccg2.s:51` | `` |
| `ptr_init_count` | function | `minigccg2.s:215` | `` |
| `ptr_init_label` | function | `minigccg2.s:211` | `` |
| `ptr_init_name` | function | `minigccg2.s:207` | `` |
| `push_scope` | function | `minigccg2.s:4625` | `` |
| `read_include_file` | function | `minigccg2.s:4320` | `` |
| `relational_expr` | function | `minigccg2.s:19087` | `` |
| `resolve_local_include` | function | `minigccg2.s:3870` | `` |
| `restart` | function | `minigccg2.s:7821` | `` |
| `restart_int` | function | `minigccg2.s:29154` | `` |
| `restart_typedef` | function | `minigccg2.s:28122` | `` |
| `restore_parser_state` | function | `minigccg2.s:395` | `` |
| `safe_malloc` | function | `minigccg2.s:3307` | `` |
| `safe_strcpy` | function | `minigccg2.s:3362` | `` |
| `safe_strtoll` | function | `minigccg2.s:3439` | `` |
| `save_parser_state` | function | `minigccg2.s:256` | `` |
| `scope_depth` | function | `minigccg2.s:79` | `` |
| `scope_stack_stk` | function | `minigccg2.s:75` | `` |
| `scope_stack_sym` | function | `minigccg2.s:71` | `` |
| `shift_expr` | function | `minigccg2.s:18941` | `` |
| `skip_struct` | function | `minigccg2.s:32044` | `` |
| `skip_typedef` | function | `minigccg2.s:32630` | `` |
| `source_start` | function | `minigccg2.s:19` | `` |
| `stack_size` | function | `minigccg2.s:83` | `` |
| `statement` | function | `minigccg2.s:24676` | `` |
| `static_flag` | function | `minigccg2.s:127` | `` |
| `str_label_counter` | function | `minigccg2.s:195` | `` |
| `string_count` | function | `minigccg2.s:203` | `` |
| `string_pool` | function | `minigccg2.s:199` | `` |
| `struct_member_count` | function | `minigccg2.s:239` | `` |
| `struct_member_elem_sizes` | function | `minigccg2.s:235` | `` |
| `struct_member_names` | function | `minigccg2.s:223` | `` |
| `struct_member_offsets` | function | `minigccg2.s:227` | `` |
| `struct_member_sizes` | function | `minigccg2.s:231` | `` |
| `struct_total_size` | function | `minigccg2.s:219` | `` |
| `switch_case_count` | function | `minigccg2.s:167` | `` |
| `switch_case_labels` | function | `minigccg2.s:163` | `` |
| `switch_case_values` | function | `minigccg2.s:159` | `` |
| `switch_default_label` | function | `minigccg2.s:175` | `` |
| `switch_has_default` | function | `minigccg2.s:171` | `` |
| `symbol_count` | function | `minigccg2.s:63` | `` |
| `symbols` | function | `minigccg2.s:59` | `` |
| `tok` | function | `minigccg2.s:27` | `` |
| `token` | function | `minigccg2.s:23` | `` |
| `truncate_symbols` | function | `minigccg2.s:4873` | `` |
| `unary` | function | `minigccg2.s:13708` | `` |
| `unary_expr` | function | `minigccg2.s:17799` | `` |
| `unsigned_type` | function | `minigccg2.s:131` | `` |
| `_start` | function | `minigccg3.s:39836` | `` |
| `add_macro` | function | `minigccg3.s:651` | `` |
| `add_symbol` | function | `minigccg3.s:13130` | `` |
| `additive_expr` | function | `minigccg3.s:18446` | `` |
| `arg_reg` | function | `minigccg3.s:13504` | `` |
| `assign_size` | function | `minigccg3.s:103` | `` |
| `assignment_expr` | function | `minigccg3.s:21361` | `` |
| `bitwise_and_expr` | function | `minigccg3.s:20167` | `` |
| `bitwise_or_expr` | function | `minigccg3.s:20323` | `` |
| `bitwise_xor_expr` | function | `minigccg3.s:20245` | `` |
| `break_target` | function | `minigccg3.s:179` | `` |
| `break_target_valid` | function | `minigccg3.s:183` | `` |
| `conditional_expr` | function | `minigccg3.s:20727` | `` |
| `const_flag` | function | `minigccg3.s:135` | `` |
| `continue_target` | function | `minigccg3.s:187` | `` |
| `continue_target_valid` | function | `minigccg3.s:191` | `` |
| `ctx_stack` | function | `minigccg3.s:39` | `` |
| `ctx_top` | function | `minigccg3.s:43` | `` |
| `current_elem_size` | function | `minigccg3.s:111` | `` |
| `current_elem_size2` | function | `minigccg3.s:115` | `` |
| `current_file` | function | `minigccg3.s:47` | `` |
| `data_directive` | function | `minigccg3.s:33120` | `` |
| `emit` | function | `minigccg3.s:12372` | `` |
| `emit_asciz_body` | function | `minigccg3.s:12690` | `` |
| `emit_compound_op` | function | `minigccg3.s:20859` | `` |
| `emit_enabled` | function | `minigccg3.s:95` | `` |
| `emit_float_consts` | function | `minigccg3.s:36005` | `` |
| `emit_global_bss` | function | `minigccg3.s:33170` | `` |
| `emit_global_data_head` | function | `minigccg3.s:33261` | `` |
| `emit_global_initializer` | function | `minigccg3.s:33572` | `` |
| `emit_i` | function | `minigccg3.s:12486` | `` |
| `emit_is` | function | `minigccg3.s:12584` | `` |
| `emit_label` | function | `minigccg3.s:13014` | `` |
| `emit_s` | function | `minigccg3.s:12535` | `` |
| `emit_si` | function | `minigccg3.s:12637` | `` |
| `emit_string_pool` | function | `minigccg3.s:36104` | `` |
| `equality_expr` | function | `minigccg3.s:19689` | `` |
| `error` | function | `minigccg3.s:3255` | `` |
| `expr_pointed` | function | `minigccg3.s:107` | `` |
| `expr_type` | function | `minigccg3.s:123` | `` |
| `extern_flag` | function | `minigccg3.s:139` | `` |
| `find_macro` | function | `minigccg3.s:587` | `` |
| `find_symbol` | function | `minigccg3.s:13043` | `` |
| `float_const_count` | function | `minigccg3.s:155` | `` |
| `float_const_is_float` | function | `minigccg3.s:151` | `` |
| `float_const_str` | function | `minigccg3.s:147` | `` |
| `function_has_return` | function | `minigccg3.s:91` | `` |
| `get_dir_from_path` | function | `minigccg3.s:3727` | `` |
| `global_emit_deferred` | function | `minigccg3.s:143` | `` |
| `handle_postfix` | function | `minigccg3.s:16777` | `` |
| `hash_init` | function | `minigccg3.s:4586` | `` |
| `hash_name` | function | `minigccg3.s:4528` | `` |
| `hash_table` | function | `minigccg3.s:67` | `` |
| `if_depth` | function | `minigccg3.s:247` | `` |
| `if_nest` | function | `minigccg3.s:243` | `` |
| `input_ptr` | function | `minigccg3.s:15` | `` |
| `intern_string` | function | `minigccg3.s:33479` | `` |
| `is_file_processed` | function | `minigccg3.s:3554` | `` |
| `label_counter` | function | `minigccg3.s:87` | `` |
| `lex_fail` | function | `minigccg3.s:5269` | `` |
| `lex_hex_val` | function | `minigccg3.s:6096` | `` |
| `lex_init_keywords` | function | `minigccg3.s:5536` | `` |
| `lex_is_int_suffix` | function | `minigccg3.s:6218` | `` |
| `lex_kw_add` | function | `minigccg3.s:5373` | `` |
| `lex_kw_blob` | function | `minigccg3.s:3` | `` |
| `lex_kw_count` | function | `minigccg3.s:11` | `` |
| `lex_kw_ids` | function | `minigccg3.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg3.s:5919` | `` |
| `lex_match_op` | function | `minigccg3.s:6013` | `` |
| `lex_number` | function | `minigccg3.s:6287` | `` |
| `libc_global_name` | function | `minigccg3.s:13580` | `` |
| `line` | function | `minigccg3.s:31` | `` |
| `logical_and_expr` | function | `minigccg3.s:20401` | `` |
| `logical_or_expr` | function | `minigccg3.s:20564` | `` |
| `lvalue_address` | function | `minigccg3.s:16252` | `` |
| `macro_add` | function | `minigccg3.s:2178` | `` |
| `macro_bitand` | function | `minigccg3.s:2803` | `` |
| `macro_bitor` | function | `minigccg3.s:2954` | `` |
| `macro_bitxor` | function | `minigccg3.s:2889` | `` |
| `macro_cmp` | function | `minigccg3.s:2429` | `` |
| `macro_count` | function | `minigccg3.s:252` | `` |
| `macro_digit_val` | function | `minigccg3.s:928` | `` |
| `macro_eq` | function | `minigccg3.s:2650` | `` |
| `macro_fold` | function | `minigccg3.s:3234` | `` |
| `macro_hex_digit` | function | `minigccg3.s:830` | `` |
| `macro_logand` | function | `minigccg3.s:3040` | `` |
| `macro_mul` | function | `minigccg3.s:1975` | `` |
| `macro_ok` | function | `minigccg3.s:785` | `` |
| `macro_or_expr` | function | `minigccg3.s:3137` | `` |
| `macro_p` | function | `minigccg3.s:781` | `` |
| `macro_primary` | function | `minigccg3.s:1049` | `` |
| `macro_shift` | function | `minigccg3.s:2276` | `` |
| `macro_skipws` | function | `minigccg3.s:789` | `` |
| `macro_unary` | function | `minigccg3.s:1847` | `` |
| `macros` | function | `minigccg3.s:583` | `` |
| `main` | function | `minigccg3.s:36206` | `` |
| `mark_file_processed` | function | `minigccg3.s:3615` | `` |
| `match` | function | `minigccg3.s:12334` | `` |
| `max_func_stack` | function | `minigccg3.s:99` | `` |
| `multiplicative_expr` | function | `minigccg3.s:17824` | `` |
| `my_isalnum` | function | `minigccg3.s:5224` | `` |
| `my_isalpha` | function | `minigccg3.s:5115` | `` |
| `my_isdigit` | function | `minigccg3.s:5184` | `` |
| `my_isspace` | function | `minigccg3.s:5026` | `` |
| `next_token` | function | `minigccg3.s:7817` | `` |
| `no_postfix_deref` | function | `minigccg3.s:119` | `` |
| `output` | function | `minigccg3.s:35` | `` |
| `parse_const_int` | function | `minigccg3.s:33316` | `` |
| `parse_enum` | function | `minigccg3.s:31632` | `` |
| `parse_function` | function | `minigccg3.s:30311` | `` |
| `parse_program` | function | `minigccg3.s:34289` | `` |
| `pop_scope` | function | `minigccg3.s:4677` | `` |
| `processed_count` | function | `minigccg3.s:55` | `` |
| `processed_files` | function | `minigccg3.s:51` | `` |
| `ptr_init_count` | function | `minigccg3.s:215` | `` |
| `ptr_init_label` | function | `minigccg3.s:211` | `` |
| `ptr_init_name` | function | `minigccg3.s:207` | `` |
| `push_scope` | function | `minigccg3.s:4625` | `` |
| `read_include_file` | function | `minigccg3.s:4320` | `` |
| `relational_expr` | function | `minigccg3.s:19087` | `` |
| `resolve_local_include` | function | `minigccg3.s:3870` | `` |
| `restart` | function | `minigccg3.s:7821` | `` |
| `restart_int` | function | `minigccg3.s:29154` | `` |
| `restart_typedef` | function | `minigccg3.s:28122` | `` |
| `restore_parser_state` | function | `minigccg3.s:395` | `` |
| `safe_malloc` | function | `minigccg3.s:3307` | `` |
| `safe_strcpy` | function | `minigccg3.s:3362` | `` |
| `safe_strtoll` | function | `minigccg3.s:3439` | `` |
| `save_parser_state` | function | `minigccg3.s:256` | `` |
| `scope_depth` | function | `minigccg3.s:79` | `` |
| `scope_stack_stk` | function | `minigccg3.s:75` | `` |
| `scope_stack_sym` | function | `minigccg3.s:71` | `` |
| `shift_expr` | function | `minigccg3.s:18941` | `` |
| `skip_struct` | function | `minigccg3.s:32044` | `` |
| `skip_typedef` | function | `minigccg3.s:32630` | `` |
| `source_start` | function | `minigccg3.s:19` | `` |
| `stack_size` | function | `minigccg3.s:83` | `` |
| `statement` | function | `minigccg3.s:24676` | `` |
| `static_flag` | function | `minigccg3.s:127` | `` |
| `str_label_counter` | function | `minigccg3.s:195` | `` |
| `string_count` | function | `minigccg3.s:203` | `` |
| `string_pool` | function | `minigccg3.s:199` | `` |
| `struct_member_count` | function | `minigccg3.s:239` | `` |
| `struct_member_elem_sizes` | function | `minigccg3.s:235` | `` |
| `struct_member_names` | function | `minigccg3.s:223` | `` |
| `struct_member_offsets` | function | `minigccg3.s:227` | `` |
| `struct_member_sizes` | function | `minigccg3.s:231` | `` |
| `struct_total_size` | function | `minigccg3.s:219` | `` |
| `switch_case_count` | function | `minigccg3.s:167` | `` |
| `switch_case_labels` | function | `minigccg3.s:163` | `` |
| `switch_case_values` | function | `minigccg3.s:159` | `` |
| `switch_default_label` | function | `minigccg3.s:175` | `` |
| `switch_has_default` | function | `minigccg3.s:171` | `` |
| `symbol_count` | function | `minigccg3.s:63` | `` |
| `symbols` | function | `minigccg3.s:59` | `` |
| `tok` | function | `minigccg3.s:27` | `` |
| `token` | function | `minigccg3.s:23` | `` |
| `truncate_symbols` | function | `minigccg3.s:4873` | `` |
| `unary` | function | `minigccg3.s:13708` | `` |
| `unary_expr` | function | `minigccg3.s:17799` | `` |
| `unsigned_type` | function | `minigccg3.s:131` | `` |
| `_start` | function | `minigccg4.s:39836` | `` |
| `add_macro` | function | `minigccg4.s:651` | `` |
| `add_symbol` | function | `minigccg4.s:13130` | `` |
| `additive_expr` | function | `minigccg4.s:18446` | `` |
| `arg_reg` | function | `minigccg4.s:13504` | `` |
| `assign_size` | function | `minigccg4.s:103` | `` |
| `assignment_expr` | function | `minigccg4.s:21361` | `` |
| `bitwise_and_expr` | function | `minigccg4.s:20167` | `` |
| `bitwise_or_expr` | function | `minigccg4.s:20323` | `` |
| `bitwise_xor_expr` | function | `minigccg4.s:20245` | `` |
| `break_target` | function | `minigccg4.s:179` | `` |
| `break_target_valid` | function | `minigccg4.s:183` | `` |
| `conditional_expr` | function | `minigccg4.s:20727` | `` |
| `const_flag` | function | `minigccg4.s:135` | `` |
| `continue_target` | function | `minigccg4.s:187` | `` |
| `continue_target_valid` | function | `minigccg4.s:191` | `` |
| `ctx_stack` | function | `minigccg4.s:39` | `` |
| `ctx_top` | function | `minigccg4.s:43` | `` |
| `current_elem_size` | function | `minigccg4.s:111` | `` |
| `current_elem_size2` | function | `minigccg4.s:115` | `` |
| `current_file` | function | `minigccg4.s:47` | `` |
| `data_directive` | function | `minigccg4.s:33120` | `` |
| `emit` | function | `minigccg4.s:12372` | `` |
| `emit_asciz_body` | function | `minigccg4.s:12690` | `` |
| `emit_compound_op` | function | `minigccg4.s:20859` | `` |
| `emit_enabled` | function | `minigccg4.s:95` | `` |
| `emit_float_consts` | function | `minigccg4.s:36005` | `` |
| `emit_global_bss` | function | `minigccg4.s:33170` | `` |
| `emit_global_data_head` | function | `minigccg4.s:33261` | `` |
| `emit_global_initializer` | function | `minigccg4.s:33572` | `` |
| `emit_i` | function | `minigccg4.s:12486` | `` |
| `emit_is` | function | `minigccg4.s:12584` | `` |
| `emit_label` | function | `minigccg4.s:13014` | `` |
| `emit_s` | function | `minigccg4.s:12535` | `` |
| `emit_si` | function | `minigccg4.s:12637` | `` |
| `emit_string_pool` | function | `minigccg4.s:36104` | `` |
| `equality_expr` | function | `minigccg4.s:19689` | `` |
| `error` | function | `minigccg4.s:3255` | `` |
| `expr_pointed` | function | `minigccg4.s:107` | `` |
| `expr_type` | function | `minigccg4.s:123` | `` |
| `extern_flag` | function | `minigccg4.s:139` | `` |
| `find_macro` | function | `minigccg4.s:587` | `` |
| `find_symbol` | function | `minigccg4.s:13043` | `` |
| `float_const_count` | function | `minigccg4.s:155` | `` |
| `float_const_is_float` | function | `minigccg4.s:151` | `` |
| `float_const_str` | function | `minigccg4.s:147` | `` |
| `function_has_return` | function | `minigccg4.s:91` | `` |
| `get_dir_from_path` | function | `minigccg4.s:3727` | `` |
| `global_emit_deferred` | function | `minigccg4.s:143` | `` |
| `handle_postfix` | function | `minigccg4.s:16777` | `` |
| `hash_init` | function | `minigccg4.s:4586` | `` |
| `hash_name` | function | `minigccg4.s:4528` | `` |
| `hash_table` | function | `minigccg4.s:67` | `` |
| `if_depth` | function | `minigccg4.s:247` | `` |
| `if_nest` | function | `minigccg4.s:243` | `` |
| `input_ptr` | function | `minigccg4.s:15` | `` |
| `intern_string` | function | `minigccg4.s:33479` | `` |
| `is_file_processed` | function | `minigccg4.s:3554` | `` |
| `label_counter` | function | `minigccg4.s:87` | `` |
| `lex_fail` | function | `minigccg4.s:5269` | `` |
| `lex_hex_val` | function | `minigccg4.s:6096` | `` |
| `lex_init_keywords` | function | `minigccg4.s:5536` | `` |
| `lex_is_int_suffix` | function | `minigccg4.s:6218` | `` |
| `lex_kw_add` | function | `minigccg4.s:5373` | `` |
| `lex_kw_blob` | function | `minigccg4.s:3` | `` |
| `lex_kw_count` | function | `minigccg4.s:11` | `` |
| `lex_kw_ids` | function | `minigccg4.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg4.s:5919` | `` |
| `lex_match_op` | function | `minigccg4.s:6013` | `` |
| `lex_number` | function | `minigccg4.s:6287` | `` |
| `libc_global_name` | function | `minigccg4.s:13580` | `` |
| `line` | function | `minigccg4.s:31` | `` |
| `logical_and_expr` | function | `minigccg4.s:20401` | `` |
| `logical_or_expr` | function | `minigccg4.s:20564` | `` |
| `lvalue_address` | function | `minigccg4.s:16252` | `` |
| `macro_add` | function | `minigccg4.s:2178` | `` |
| `macro_bitand` | function | `minigccg4.s:2803` | `` |
| `macro_bitor` | function | `minigccg4.s:2954` | `` |
| `macro_bitxor` | function | `minigccg4.s:2889` | `` |
| `macro_cmp` | function | `minigccg4.s:2429` | `` |
| `macro_count` | function | `minigccg4.s:252` | `` |
| `macro_digit_val` | function | `minigccg4.s:928` | `` |
| `macro_eq` | function | `minigccg4.s:2650` | `` |
| `macro_fold` | function | `minigccg4.s:3234` | `` |
| `macro_hex_digit` | function | `minigccg4.s:830` | `` |
| `macro_logand` | function | `minigccg4.s:3040` | `` |
| `macro_mul` | function | `minigccg4.s:1975` | `` |
| `macro_ok` | function | `minigccg4.s:785` | `` |
| `macro_or_expr` | function | `minigccg4.s:3137` | `` |
| `macro_p` | function | `minigccg4.s:781` | `` |
| `macro_primary` | function | `minigccg4.s:1049` | `` |
| `macro_shift` | function | `minigccg4.s:2276` | `` |
| `macro_skipws` | function | `minigccg4.s:789` | `` |
| `macro_unary` | function | `minigccg4.s:1847` | `` |
| `macros` | function | `minigccg4.s:583` | `` |
| `main` | function | `minigccg4.s:36206` | `` |
| `mark_file_processed` | function | `minigccg4.s:3615` | `` |
| `match` | function | `minigccg4.s:12334` | `` |
| `max_func_stack` | function | `minigccg4.s:99` | `` |
| `multiplicative_expr` | function | `minigccg4.s:17824` | `` |
| `my_isalnum` | function | `minigccg4.s:5224` | `` |
| `my_isalpha` | function | `minigccg4.s:5115` | `` |
| `my_isdigit` | function | `minigccg4.s:5184` | `` |
| `my_isspace` | function | `minigccg4.s:5026` | `` |
| `next_token` | function | `minigccg4.s:7817` | `` |
| `no_postfix_deref` | function | `minigccg4.s:119` | `` |
| `output` | function | `minigccg4.s:35` | `` |
| `parse_const_int` | function | `minigccg4.s:33316` | `` |
| `parse_enum` | function | `minigccg4.s:31632` | `` |
| `parse_function` | function | `minigccg4.s:30311` | `` |
| `parse_program` | function | `minigccg4.s:34289` | `` |
| `pop_scope` | function | `minigccg4.s:4677` | `` |
| `processed_count` | function | `minigccg4.s:55` | `` |
| `processed_files` | function | `minigccg4.s:51` | `` |
| `ptr_init_count` | function | `minigccg4.s:215` | `` |
| `ptr_init_label` | function | `minigccg4.s:211` | `` |
| `ptr_init_name` | function | `minigccg4.s:207` | `` |
| `push_scope` | function | `minigccg4.s:4625` | `` |
| `read_include_file` | function | `minigccg4.s:4320` | `` |
| `relational_expr` | function | `minigccg4.s:19087` | `` |
| `resolve_local_include` | function | `minigccg4.s:3870` | `` |
| `restart` | function | `minigccg4.s:7821` | `` |
| `restart_int` | function | `minigccg4.s:29154` | `` |
| `restart_typedef` | function | `minigccg4.s:28122` | `` |
| `restore_parser_state` | function | `minigccg4.s:395` | `` |
| `safe_malloc` | function | `minigccg4.s:3307` | `` |
| `safe_strcpy` | function | `minigccg4.s:3362` | `` |
| `safe_strtoll` | function | `minigccg4.s:3439` | `` |
| `save_parser_state` | function | `minigccg4.s:256` | `` |
| `scope_depth` | function | `minigccg4.s:79` | `` |
| `scope_stack_stk` | function | `minigccg4.s:75` | `` |
| `scope_stack_sym` | function | `minigccg4.s:71` | `` |
| `shift_expr` | function | `minigccg4.s:18941` | `` |
| `skip_struct` | function | `minigccg4.s:32044` | `` |
| `skip_typedef` | function | `minigccg4.s:32630` | `` |
| `source_start` | function | `minigccg4.s:19` | `` |
| `stack_size` | function | `minigccg4.s:83` | `` |
| `statement` | function | `minigccg4.s:24676` | `` |
| `static_flag` | function | `minigccg4.s:127` | `` |
| `str_label_counter` | function | `minigccg4.s:195` | `` |
| `string_count` | function | `minigccg4.s:203` | `` |
| `string_pool` | function | `minigccg4.s:199` | `` |
| `struct_member_count` | function | `minigccg4.s:239` | `` |
| `struct_member_elem_sizes` | function | `minigccg4.s:235` | `` |
| `struct_member_names` | function | `minigccg4.s:223` | `` |
| `struct_member_offsets` | function | `minigccg4.s:227` | `` |
| `struct_member_sizes` | function | `minigccg4.s:231` | `` |
| `struct_total_size` | function | `minigccg4.s:219` | `` |
| `switch_case_count` | function | `minigccg4.s:167` | `` |
| `switch_case_labels` | function | `minigccg4.s:163` | `` |
| `switch_case_values` | function | `minigccg4.s:159` | `` |
| `switch_default_label` | function | `minigccg4.s:175` | `` |
| `switch_has_default` | function | `minigccg4.s:171` | `` |
| `symbol_count` | function | `minigccg4.s:63` | `` |
| `symbols` | function | `minigccg4.s:59` | `` |
| `tok` | function | `minigccg4.s:27` | `` |
| `token` | function | `minigccg4.s:23` | `` |
| `truncate_symbols` | function | `minigccg4.s:4873` | `` |
| `unary` | function | `minigccg4.s:13708` | `` |
| `unary_expr` | function | `minigccg4.s:17799` | `` |
| `unsigned_type` | function | `minigccg4.s:131` | `` |
| `MY_LIBRARY_H` | macro | `my_library.h:2` | `#define MY_LIBRARY_H` |
| `greet` | function | `my_library.h:5` | `void greet(void);` |
| `main` | function | `test.c:1` | `int main(void)` |
| `main` | function | `test_for.c:2` | `int main()` |
| `greet` | function | `test_include.c:9` | `void greet(void)` |
| `main` | function | `test_include.c:3` | `int main(void)` |
| `printf` | function | `test_include.c:5` | `printf("Compilation successful! The compiler includes files correctly.\n");` |
| `fail` | function | `test_ld_selfhost.sh:32` | `` |
| `pass` | function | `test_ld_selfhost.sh:27` | `` |
