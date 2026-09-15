# Symbols

| Symbol | Kind | File:Line | Signature |
|--------|------|-----------|-----------|
| `CONST_VAR_FLAG` | macro | `minigcc.c:200` | `#define CONST_VAR_FLAG` |
| `FileContext` | struct | `minigcc.c:95` | `` |
| `HASH_TABLE_SIZE` | macro | `minigcc.c:130` | `#define HASH_TABLE_SIZE` |
| `LEX_KW_BLOB` | macro | `minigcc.c:81` | `#define LEX_KW_BLOB` |
| `LEX_KW_CAP` | macro | `minigcc.c:79` | `#define LEX_KW_CAP` |
| `MAX_CASES_PER_SWITCH` | macro | `minigcc.c:159` | `#define MAX_CASES_PER_SWITCH` |
| `MAX_FLOAT_CONSTS` | macro | `minigcc.c:154` | `#define MAX_FLOAT_CONSTS` |
| `MAX_IDENT_LEN` | macro | `minigcc.c:17` | `#define MAX_IDENT_LEN` |
| `MAX_IF_NESTING` | macro | `minigcc.c:198` | `#define MAX_IF_NESTING` |
| `MAX_INCLUDE_DEPTH` | macro | `minigcc.c:19` | `#define MAX_INCLUDE_DEPTH` |
| `MAX_MACROS` | macro | `minigcc.c:206` | `#define MAX_MACROS` |
| `MAX_PROCESSED_FILES` | macro | `minigcc.c:20` | `#define MAX_PROCESSED_FILES` |
| `MAX_PTR_INITS` | macro | `minigcc.c:181` | `#define MAX_PTR_INITS` |
| `MAX_SCOPE_DEPTH` | macro | `minigcc.c:132` | `#define MAX_SCOPE_DEPTH` |
| `MAX_SOURCE_SIZE` | macro | `minigcc.c:18` | `#define MAX_SOURCE_SIZE` |
| `MAX_STRINGS` | macro | `minigcc.c:172` | `#define MAX_STRINGS` |
| `MAX_STRUCT_MEMBERS` | macro | `minigcc.c:191` | `#define MAX_STRUCT_MEMBERS` |
| `MAX_SYMBOLS` | macro | `minigcc.c:16` | `#define MAX_SYMBOLS` |
| `MAX_TOKEN_LEN` | macro | `minigcc.c:14` | `#define MAX_TOKEN_LEN` |
| `Macro` | struct | `minigcc.c:289` | `` |
| `ParserState` | struct | `minigcc.c:210` | `` |
| `STACK_ALIGN` | macro | `minigcc.c:21` | `#define STACK_ALIGN` |
| `Symbol` | struct | `minigcc.c:108` | `` |
| `add_macro` | function | `minigcc.c:304` | `static void add_macro(const char *name, int value)` |
| `add_symbol` | function | `minigcc.c:1571` | `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...` |
| `additive_expr` | function | `minigcc.c:2192` | `static void additive_expr(void)` |
| `arg_reg` | function | `minigcc.c:1633` | `static const char *arg_reg(int i)` |
| `assignment_expr` | function | `minigcc.c:2503` | `static void assignment_expr(void)` |
| `bitwise_and_expr` | function | `minigcc.c:2368` | `static void bitwise_and_expr(void)` |
| `bitwise_or_expr` | function | `minigcc.c:2392` | `static void bitwise_or_expr(void)` |
| `bitwise_xor_expr` | function | `minigcc.c:2380` | `static void bitwise_xor_expr(void)` |
| `conditional_expr` | function | `minigcc.c:2444` | `static void conditional_expr(void)` |
| `data_directive` | function | `minigcc.c:3696` | `static const char *data_directive(int size)` |
| `emit` | function | `minigcc.c:1494` | `static void emit(const char *s)` |
| `emit_asciz_body` | function | `minigcc.c:1536` | `static void emit_asciz_body(const char *s)` |
| `emit_compound_op` | function | `minigcc.c:2462` | `static void emit_compound_op(int op, int asize)` |
| `emit_float_consts` | function | `minigcc.c:3980` | `static void emit_float_consts(void)` |
| `emit_global_bss` | function | `minigcc.c:3704` | `static void emit_global_bss(const char *name, int is_static, int size)` |
| `emit_global_data_head` | function | `minigcc.c:3711` | `static void emit_global_data_head(const char *name, int is_static)` |
| `emit_global_initializer` | function | `minigcc.c:3761` | `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...` |
| `emit_i` | function | `minigcc.c:1508` | `static void emit_i(const char *fmt, int v)` |
| `emit_is` | function | `minigcc.c:1520` | `static void emit_is(const char *fmt, int v, const char *s)` |
| `emit_label` | function | `minigcc.c:1554` | `static void emit_label(int label)` |
| `emit_s` | function | `minigcc.c:1514` | `static void emit_s(const char *fmt, const char *s)` |
| `emit_si` | function | `minigcc.c:1526` | `static void emit_si(const char *fmt, const char *s, int v)` |
| `emit_string_pool` | function | `minigcc.c:3990` | `static void emit_string_pool(void)` |
| `equality_expr` | function | `minigcc.c:2319` | `static void equality_expr(void)` |
| `error` | function | `minigcc.c:606` | `static void error(const char *msg)` |
| `exit` | function | `minigcc.c:610` | `exit(EXIT_FAILURE);` |
| `fclose` | function | `minigcc.c:687` | `fclose(f);` |
| `find_macro` | function | `minigcc.c:295` | `static int find_macro(const char *name)` |
| `find_symbol` | function | `minigcc.c:1561` | `static int find_symbol(const char *name)` |
| `fprintf` | function | `minigcc.c:608` | `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);` |
| `fputc` | function | `minigcc.c:1499` | `fputc('%', output);` |
| `fputs` | function | `minigcc.c:2706` | `fputs(token, output);` |
| `free` | function | `minigcc.c:736` | `free(buf);` |
| `fseek` | function | `minigcc.c:726` | `fseek(f, 0, SEEK_END);` |
| `get_dir_from_path` | function | `minigcc.c:664` | `static void get_dir_from_path(const char *path, char *dir, int dir_sz)` |
| `handle_postfix` | function | `minigcc.c:1979` | `static void handle_postfix(int is_lvalue)` |
| `hash_init` | function | `minigcc.c:756` | `static void hash_init(void)` |
| `hash_name` | function | `minigcc.c:747` | `static int hash_name(const char *name)` |
| `intern_string` | function | `minigcc.c:3744` | `static int intern_string(const char *text)` |
| `is_file_processed` | function | `minigcc.c:643` | `static int is_file_processed(const char *path)` |
| `lex_fail` | function | `minigcc.c:844` | `static void lex_fail(const char *msg, char *start, char *end)` |
| `lex_hex_val` | function | `minigcc.c:929` | `static int lex_hex_val(int c)` |
| `lex_init_keywords` | function | `minigcc.c:867` | `static void lex_init_keywords(void)` |
| `lex_is_int_suffix` | function | `minigcc.c:936` | `static int lex_is_int_suffix(int c)` |
| `lex_kw_add` | function | `minigcc.c:854` | `static void lex_kw_add(const char *name, int id)` |
| `lex_kw_lookup` | function | `minigcc.c:905` | `static int lex_kw_lookup(void)` |
| `lex_match_op` | function | `minigcc.c:917` | `static int lex_match_op(const char *op, int id)` |
| `lex_number` | function | `minigcc.c:942` | `static void lex_number(void)` |
| `libc_global_name` | function | `minigcc.c:1643` | `static const char *libc_global_name(int i)` |
| `logical_and_expr` | function | `minigcc.c:2404` | `static void logical_and_expr(void)` |
| `logical_or_expr` | function | `minigcc.c:2424` | `static void logical_or_expr(void)` |
| `lvalue_address` | function | `minigcc.c:1927` | `static void lvalue_address(void)` |
| `macro_add` | function | `minigcc.c:457` | `static int macro_add(void)` |
| `macro_bitand` | function | `minigcc.c:531` | `static int macro_bitand(void)` |
| `macro_bitor` | function | `minigcc.c:559` | `static int macro_bitor(void)` |
| `macro_bitxor` | function | `minigcc.c:545` | `static int macro_bitxor(void)` |
| `macro_cmp` | function | `minigcc.c:491` | `static int macro_cmp(void)` |
| `macro_digit_val` | function | `minigcc.c:342` | `static int macro_digit_val(int c)` |
| `macro_eq` | function | `minigcc.c:514` | `static int macro_eq(void)` |
| `macro_fold` | function | `minigcc.c:601` | `static int macro_fold(void)` |
| `macro_hex_digit` | function | `minigcc.c:335` | `static int macro_hex_digit(int c)` |
| `macro_logand` | function | `minigcc.c:573` | `static int macro_logand(void)` |
| `macro_mul` | function | `minigcc.c:432` | `static int macro_mul(void)` |
| `macro_or_expr` | function | `minigcc.c:587` | `static int macro_or_expr(void)` |
| `macro_primary` | function | `minigcc.c:349` | `static int macro_primary(void)` |
| `macro_shift` | function | `minigcc.c:474` | `static int macro_shift(void)` |
| `macro_skipws` | function | `minigcc.c:331` | `static void macro_skipws(void)` |
| `macro_unary` | function | `minigcc.c:423` | `static int macro_unary(void)` |
| `main` | function | `minigcc.c:4000` | `int main(int argc, char **argv)` |
| `mark_file_processed` | function | `minigcc.c:652` | `static void mark_file_processed(const char *path)` |
| `match` | function | `minigcc.c:1489` | `static void match(int expected)` |
| `memcpy` | function | `minigcc.c:2766` | `memcpy(varname, token, nlen);` |
| `multiplicative_expr` | function | `minigcc.c:2128` | `static void multiplicative_expr(void)` |
| `my_isalnum` | function | `minigcc.c:838` | `static int my_isalnum(int c)` |
| `my_isalpha` | function | `minigcc.c:827` | `static int my_isalpha(int c)` |
| `my_isdigit` | function | `minigcc.c:833` | `static int my_isdigit(int c)` |
| `my_isspace` | function | `minigcc.c:817` | `static int my_isspace(int c)` |
| `next_token` | function | `minigcc.c:1061` | `static void next_token(void)` |
| `parse_asm_block` | function | `minigcc.c:2699` | `static void parse_asm_block(void)` |
| `parse_const_int` | function | `minigcc.c:3721` | `static int parse_const_int(long long *out)` |
| `parse_enum` | function | `minigcc.c:3528` | `static void parse_enum(void)` |
| `parse_function` | function | `minigcc.c:3381` | `static void parse_function(const char *name, int ret_type)` |
| `parse_program` | function | `minigcc.c:3825` | `static void parse_program(void)` |
| `pop_scope` | function | `minigcc.c:769` | `static void pop_scope(void)` |
| `push_scope` | function | `minigcc.c:761` | `static void push_scope(void)` |
| `read_include_file` | function | `minigcc.c:722` | `static char *read_include_file(const char *path)` |
| `relational_expr` | function | `minigcc.c:2266` | `static void relational_expr(void)` |
| `resolve_local_include` | function | `minigcc.c:683` | `static char *resolve_local_include(const char *target)` |
| `restore_parser_state` | function | `minigcc.c:259` | `static void restore_parser_state(ParserState *state)` |
| `rewind` | function | `minigcc.c:732` | `rewind(f);` |
| `safe_malloc` | function | `minigcc.c:612` | `static void *safe_malloc(size_t size)` |
| `safe_strcpy` | function | `minigcc.c:621` | `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)` |
| `safe_strtoll` | function | `minigcc.c:630` | `static long safe_strtoll(const char *s)` |
| `save_parser_state` | function | `minigcc.c:234` | `static void save_parser_state(ParserState *state)` |
| `shift_expr` | function | `minigcc.c:2247` | `static void shift_expr(void)` |
| `skip_struct` | function | `minigcc.c:3577` | `static void skip_struct(void)` |
| `skip_typedef` | function | `minigcc.c:3641` | `static void skip_typedef(void)` |
| `snprintf` | function | `minigcc.c:957` | `snprintf(token, MAX_TOKEN_LEN, "%ld", v);` |
| `statement` | function | `minigcc.c:2714` | `static void statement(void)` |
| `strcpy` | function | `minigcc.c:2508` | `strcpy(saved_token, token);` |
| `strncpy` | function | `minigcc.c:1577` | `strncpy(d, name, MAX_IDENT_LEN - 1);` |
| `truncate_symbols` | function | `minigcc.c:799` | `static void truncate_symbols(int start_idx)` |
| `unary` | function | `minigcc.c:1655` | `static void unary(void)` |
| `unary_expr` | function | `minigcc.c:2113` | `static void unary_expr(void)` |
| `_start` | function | `minigccg2.s:40790` | `` |
| `add_macro` | function | `minigccg2.s:655` | `` |
| `add_symbol` | function | `minigccg2.s:13412` | `` |
| `additive_expr` | function | `minigccg2.s:18877` | `` |
| `arg_reg` | function | `minigccg2.s:13786` | `` |
| `assign_size` | function | `minigccg2.s:107` | `` |
| `assignment_expr` | function | `minigccg2.s:21792` | `` |
| `bitwise_and_expr` | function | `minigccg2.s:20598` | `` |
| `bitwise_or_expr` | function | `minigccg2.s:20754` | `` |
| `bitwise_xor_expr` | function | `minigccg2.s:20676` | `` |
| `break_target` | function | `minigccg2.s:183` | `` |
| `break_target_valid` | function | `minigccg2.s:187` | `` |
| `conditional_expr` | function | `minigccg2.s:21158` | `` |
| `const_flag` | function | `minigccg2.s:139` | `` |
| `continue_target` | function | `minigccg2.s:191` | `` |
| `continue_target_valid` | function | `minigccg2.s:195` | `` |
| `ctx_stack` | function | `minigccg2.s:43` | `` |
| `ctx_top` | function | `minigccg2.s:47` | `` |
| `current_elem_size` | function | `minigccg2.s:115` | `` |
| `current_elem_size2` | function | `minigccg2.s:119` | `` |
| `current_file` | function | `minigccg2.s:51` | `` |
| `data_directive` | function | `minigccg2.s:33917` | `` |
| `emit` | function | `minigccg2.s:12654` | `` |
| `emit_asciz_body` | function | `minigccg2.s:12972` | `` |
| `emit_compound_op` | function | `minigccg2.s:21290` | `` |
| `emit_enabled` | function | `minigccg2.s:99` | `` |
| `emit_float_consts` | function | `minigccg2.s:36891` | `` |
| `emit_global_bss` | function | `minigccg2.s:33967` | `` |
| `emit_global_data_head` | function | `minigccg2.s:34058` | `` |
| `emit_global_initializer` | function | `minigccg2.s:34369` | `` |
| `emit_i` | function | `minigccg2.s:12768` | `` |
| `emit_is` | function | `minigccg2.s:12866` | `` |
| `emit_label` | function | `minigccg2.s:13296` | `` |
| `emit_s` | function | `minigccg2.s:12817` | `` |
| `emit_si` | function | `minigccg2.s:12919` | `` |
| `emit_string_pool` | function | `minigccg2.s:36990` | `` |
| `equality_expr` | function | `minigccg2.s:20120` | `` |
| `error` | function | `minigccg2.s:3259` | `` |
| `expr_pointed` | function | `minigccg2.s:111` | `` |
| `expr_type` | function | `minigccg2.s:127` | `` |
| `extern_flag` | function | `minigccg2.s:143` | `` |
| `find_macro` | function | `minigccg2.s:591` | `` |
| `find_symbol` | function | `minigccg2.s:13325` | `` |
| `float_const_count` | function | `minigccg2.s:159` | `` |
| `float_const_is_float` | function | `minigccg2.s:155` | `` |
| `float_const_str` | function | `minigccg2.s:151` | `` |
| `function_has_return` | function | `minigccg2.s:95` | `` |
| `get_dir_from_path` | function | `minigccg2.s:3731` | `` |
| `global_emit_deferred` | function | `minigccg2.s:147` | `` |
| `handle_postfix` | function | `minigccg2.s:17208` | `` |
| `hash_init` | function | `minigccg2.s:4590` | `` |
| `hash_name` | function | `minigccg2.s:4532` | `` |
| `hash_table` | function | `minigccg2.s:71` | `` |
| `if_depth` | function | `minigccg2.s:251` | `` |
| `if_nest` | function | `minigccg2.s:247` | `` |
| `input_ptr` | function | `minigccg2.s:19` | `` |
| `intern_string` | function | `minigccg2.s:34276` | `` |
| `is_file_processed` | function | `minigccg2.s:3558` | `` |
| `label_counter` | function | `minigccg2.s:91` | `` |
| `lex_fail` | function | `minigccg2.s:5273` | `` |
| `lex_hex_val` | function | `minigccg2.s:6212` | `` |
| `lex_init_keywords` | function | `minigccg2.s:5540` | `` |
| `lex_is_int_suffix` | function | `minigccg2.s:6334` | `` |
| `lex_kw_add` | function | `minigccg2.s:5377` | `` |
| `lex_kw_blob` | function | `minigccg2.s:3` | `` |
| `lex_kw_count` | function | `minigccg2.s:11` | `` |
| `lex_kw_ids` | function | `minigccg2.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg2.s:6035` | `` |
| `lex_match_op` | function | `minigccg2.s:6129` | `` |
| `lex_number` | function | `minigccg2.s:6403` | `` |
| `lex_pass_top` | function | `minigccg2.s:15` | `` |
| `libc_global_name` | function | `minigccg2.s:13862` | `` |
| `line` | function | `minigccg2.s:35` | `` |
| `logical_and_expr` | function | `minigccg2.s:20832` | `` |
| `logical_or_expr` | function | `minigccg2.s:20995` | `` |
| `lvalue_address` | function | `minigccg2.s:16683` | `` |
| `macro_add` | function | `minigccg2.s:2182` | `` |
| `macro_bitand` | function | `minigccg2.s:2807` | `` |
| `macro_bitor` | function | `minigccg2.s:2958` | `` |
| `macro_bitxor` | function | `minigccg2.s:2893` | `` |
| `macro_cmp` | function | `minigccg2.s:2433` | `` |
| `macro_count` | function | `minigccg2.s:256` | `` |
| `macro_digit_val` | function | `minigccg2.s:932` | `` |
| `macro_eq` | function | `minigccg2.s:2654` | `` |
| `macro_fold` | function | `minigccg2.s:3238` | `` |
| `macro_hex_digit` | function | `minigccg2.s:834` | `` |
| `macro_logand` | function | `minigccg2.s:3044` | `` |
| `macro_mul` | function | `minigccg2.s:1979` | `` |
| `macro_ok` | function | `minigccg2.s:789` | `` |
| `macro_or_expr` | function | `minigccg2.s:3141` | `` |
| `macro_p` | function | `minigccg2.s:785` | `` |
| `macro_primary` | function | `minigccg2.s:1053` | `` |
| `macro_shift` | function | `minigccg2.s:2280` | `` |
| `macro_skipws` | function | `minigccg2.s:793` | `` |
| `macro_unary` | function | `minigccg2.s:1851` | `` |
| `macros` | function | `minigccg2.s:587` | `` |
| `main` | function | `minigccg2.s:37092` | `` |
| `mark_file_processed` | function | `minigccg2.s:3619` | `` |
| `match` | function | `minigccg2.s:12616` | `` |
| `max_func_stack` | function | `minigccg2.s:103` | `` |
| `multiplicative_expr` | function | `minigccg2.s:18255` | `` |
| `my_isalnum` | function | `minigccg2.s:5228` | `` |
| `my_isalpha` | function | `minigccg2.s:5119` | `` |
| `my_isdigit` | function | `minigccg2.s:5188` | `` |
| `my_isspace` | function | `minigccg2.s:5030` | `` |
| `next_token` | function | `minigccg2.s:7933` | `` |
| `no_postfix_deref` | function | `minigccg2.s:123` | `` |
| `output` | function | `minigccg2.s:39` | `` |
| `parse_asm_block` | function | `minigccg2.s:25107` | `` |
| `parse_const_int` | function | `minigccg2.s:34113` | `` |
| `parse_enum` | function | `minigccg2.s:32429` | `` |
| `parse_function` | function | `minigccg2.s:30964` | `` |
| `parse_program` | function | `minigccg2.s:35086` | `` |
| `pop_scope` | function | `minigccg2.s:4681` | `` |
| `processed_count` | function | `minigccg2.s:59` | `` |
| `processed_files` | function | `minigccg2.s:55` | `` |
| `ptr_init_count` | function | `minigccg2.s:219` | `` |
| `ptr_init_label` | function | `minigccg2.s:215` | `` |
| `ptr_init_name` | function | `minigccg2.s:211` | `` |
| `push_scope` | function | `minigccg2.s:4629` | `` |
| `read_include_file` | function | `minigccg2.s:4324` | `` |
| `relational_expr` | function | `minigccg2.s:19518` | `` |
| `resolve_local_include` | function | `minigccg2.s:3874` | `` |
| `restart` | function | `minigccg2.s:7937` | `` |
| `restart_int` | function | `minigccg2.s:29805` | `` |
| `restart_typedef` | function | `minigccg2.s:28773` | `` |
| `restore_parser_state` | function | `minigccg2.s:399` | `` |
| `safe_malloc` | function | `minigccg2.s:3311` | `` |
| `safe_strcpy` | function | `minigccg2.s:3366` | `` |
| `safe_strtoll` | function | `minigccg2.s:3443` | `` |
| `save_parser_state` | function | `minigccg2.s:260` | `` |
| `scope_depth` | function | `minigccg2.s:83` | `` |
| `scope_stack_stk` | function | `minigccg2.s:79` | `` |
| `scope_stack_sym` | function | `minigccg2.s:75` | `` |
| `shift_expr` | function | `minigccg2.s:19372` | `` |
| `skip_struct` | function | `minigccg2.s:32841` | `` |
| `skip_typedef` | function | `minigccg2.s:33427` | `` |
| `source_start` | function | `minigccg2.s:23` | `` |
| `stack_size` | function | `minigccg2.s:87` | `` |
| `statement` | function | `minigccg2.s:25254` | `` |
| `static_flag` | function | `minigccg2.s:131` | `` |
| `str_label_counter` | function | `minigccg2.s:199` | `` |
| `string_count` | function | `minigccg2.s:207` | `` |
| `string_pool` | function | `minigccg2.s:203` | `` |
| `struct_member_count` | function | `minigccg2.s:243` | `` |
| `struct_member_elem_sizes` | function | `minigccg2.s:239` | `` |
| `struct_member_names` | function | `minigccg2.s:227` | `` |
| `struct_member_offsets` | function | `minigccg2.s:231` | `` |
| `struct_member_sizes` | function | `minigccg2.s:235` | `` |
| `struct_total_size` | function | `minigccg2.s:223` | `` |
| `switch_case_count` | function | `minigccg2.s:171` | `` |
| `switch_case_labels` | function | `minigccg2.s:167` | `` |
| `switch_case_values` | function | `minigccg2.s:163` | `` |
| `switch_default_label` | function | `minigccg2.s:179` | `` |
| `switch_has_default` | function | `minigccg2.s:175` | `` |
| `symbol_count` | function | `minigccg2.s:67` | `` |
| `symbols` | function | `minigccg2.s:63` | `` |
| `tok` | function | `minigccg2.s:31` | `` |
| `token` | function | `minigccg2.s:27` | `` |
| `truncate_symbols` | function | `minigccg2.s:4877` | `` |
| `unary` | function | `minigccg2.s:13990` | `` |
| `unary_expr` | function | `minigccg2.s:18230` | `` |
| `unsigned_type` | function | `minigccg2.s:135` | `` |
| `_start` | function | `minigccg3.s:40790` | `` |
| `add_macro` | function | `minigccg3.s:655` | `` |
| `add_symbol` | function | `minigccg3.s:13412` | `` |
| `additive_expr` | function | `minigccg3.s:18877` | `` |
| `arg_reg` | function | `minigccg3.s:13786` | `` |
| `assign_size` | function | `minigccg3.s:107` | `` |
| `assignment_expr` | function | `minigccg3.s:21792` | `` |
| `bitwise_and_expr` | function | `minigccg3.s:20598` | `` |
| `bitwise_or_expr` | function | `minigccg3.s:20754` | `` |
| `bitwise_xor_expr` | function | `minigccg3.s:20676` | `` |
| `break_target` | function | `minigccg3.s:183` | `` |
| `break_target_valid` | function | `minigccg3.s:187` | `` |
| `conditional_expr` | function | `minigccg3.s:21158` | `` |
| `const_flag` | function | `minigccg3.s:139` | `` |
| `continue_target` | function | `minigccg3.s:191` | `` |
| `continue_target_valid` | function | `minigccg3.s:195` | `` |
| `ctx_stack` | function | `minigccg3.s:43` | `` |
| `ctx_top` | function | `minigccg3.s:47` | `` |
| `current_elem_size` | function | `minigccg3.s:115` | `` |
| `current_elem_size2` | function | `minigccg3.s:119` | `` |
| `current_file` | function | `minigccg3.s:51` | `` |
| `data_directive` | function | `minigccg3.s:33917` | `` |
| `emit` | function | `minigccg3.s:12654` | `` |
| `emit_asciz_body` | function | `minigccg3.s:12972` | `` |
| `emit_compound_op` | function | `minigccg3.s:21290` | `` |
| `emit_enabled` | function | `minigccg3.s:99` | `` |
| `emit_float_consts` | function | `minigccg3.s:36891` | `` |
| `emit_global_bss` | function | `minigccg3.s:33967` | `` |
| `emit_global_data_head` | function | `minigccg3.s:34058` | `` |
| `emit_global_initializer` | function | `minigccg3.s:34369` | `` |
| `emit_i` | function | `minigccg3.s:12768` | `` |
| `emit_is` | function | `minigccg3.s:12866` | `` |
| `emit_label` | function | `minigccg3.s:13296` | `` |
| `emit_s` | function | `minigccg3.s:12817` | `` |
| `emit_si` | function | `minigccg3.s:12919` | `` |
| `emit_string_pool` | function | `minigccg3.s:36990` | `` |
| `equality_expr` | function | `minigccg3.s:20120` | `` |
| `error` | function | `minigccg3.s:3259` | `` |
| `expr_pointed` | function | `minigccg3.s:111` | `` |
| `expr_type` | function | `minigccg3.s:127` | `` |
| `extern_flag` | function | `minigccg3.s:143` | `` |
| `find_macro` | function | `minigccg3.s:591` | `` |
| `find_symbol` | function | `minigccg3.s:13325` | `` |
| `float_const_count` | function | `minigccg3.s:159` | `` |
| `float_const_is_float` | function | `minigccg3.s:155` | `` |
| `float_const_str` | function | `minigccg3.s:151` | `` |
| `function_has_return` | function | `minigccg3.s:95` | `` |
| `get_dir_from_path` | function | `minigccg3.s:3731` | `` |
| `global_emit_deferred` | function | `minigccg3.s:147` | `` |
| `handle_postfix` | function | `minigccg3.s:17208` | `` |
| `hash_init` | function | `minigccg3.s:4590` | `` |
| `hash_name` | function | `minigccg3.s:4532` | `` |
| `hash_table` | function | `minigccg3.s:71` | `` |
| `if_depth` | function | `minigccg3.s:251` | `` |
| `if_nest` | function | `minigccg3.s:247` | `` |
| `input_ptr` | function | `minigccg3.s:19` | `` |
| `intern_string` | function | `minigccg3.s:34276` | `` |
| `is_file_processed` | function | `minigccg3.s:3558` | `` |
| `label_counter` | function | `minigccg3.s:91` | `` |
| `lex_fail` | function | `minigccg3.s:5273` | `` |
| `lex_hex_val` | function | `minigccg3.s:6212` | `` |
| `lex_init_keywords` | function | `minigccg3.s:5540` | `` |
| `lex_is_int_suffix` | function | `minigccg3.s:6334` | `` |
| `lex_kw_add` | function | `minigccg3.s:5377` | `` |
| `lex_kw_blob` | function | `minigccg3.s:3` | `` |
| `lex_kw_count` | function | `minigccg3.s:11` | `` |
| `lex_kw_ids` | function | `minigccg3.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg3.s:6035` | `` |
| `lex_match_op` | function | `minigccg3.s:6129` | `` |
| `lex_number` | function | `minigccg3.s:6403` | `` |
| `lex_pass_top` | function | `minigccg3.s:15` | `` |
| `libc_global_name` | function | `minigccg3.s:13862` | `` |
| `line` | function | `minigccg3.s:35` | `` |
| `logical_and_expr` | function | `minigccg3.s:20832` | `` |
| `logical_or_expr` | function | `minigccg3.s:20995` | `` |
| `lvalue_address` | function | `minigccg3.s:16683` | `` |
| `macro_add` | function | `minigccg3.s:2182` | `` |
| `macro_bitand` | function | `minigccg3.s:2807` | `` |
| `macro_bitor` | function | `minigccg3.s:2958` | `` |
| `macro_bitxor` | function | `minigccg3.s:2893` | `` |
| `macro_cmp` | function | `minigccg3.s:2433` | `` |
| `macro_count` | function | `minigccg3.s:256` | `` |
| `macro_digit_val` | function | `minigccg3.s:932` | `` |
| `macro_eq` | function | `minigccg3.s:2654` | `` |
| `macro_fold` | function | `minigccg3.s:3238` | `` |
| `macro_hex_digit` | function | `minigccg3.s:834` | `` |
| `macro_logand` | function | `minigccg3.s:3044` | `` |
| `macro_mul` | function | `minigccg3.s:1979` | `` |
| `macro_ok` | function | `minigccg3.s:789` | `` |
| `macro_or_expr` | function | `minigccg3.s:3141` | `` |
| `macro_p` | function | `minigccg3.s:785` | `` |
| `macro_primary` | function | `minigccg3.s:1053` | `` |
| `macro_shift` | function | `minigccg3.s:2280` | `` |
| `macro_skipws` | function | `minigccg3.s:793` | `` |
| `macro_unary` | function | `minigccg3.s:1851` | `` |
| `macros` | function | `minigccg3.s:587` | `` |
| `main` | function | `minigccg3.s:37092` | `` |
| `mark_file_processed` | function | `minigccg3.s:3619` | `` |
| `match` | function | `minigccg3.s:12616` | `` |
| `max_func_stack` | function | `minigccg3.s:103` | `` |
| `multiplicative_expr` | function | `minigccg3.s:18255` | `` |
| `my_isalnum` | function | `minigccg3.s:5228` | `` |
| `my_isalpha` | function | `minigccg3.s:5119` | `` |
| `my_isdigit` | function | `minigccg3.s:5188` | `` |
| `my_isspace` | function | `minigccg3.s:5030` | `` |
| `next_token` | function | `minigccg3.s:7933` | `` |
| `no_postfix_deref` | function | `minigccg3.s:123` | `` |
| `output` | function | `minigccg3.s:39` | `` |
| `parse_asm_block` | function | `minigccg3.s:25107` | `` |
| `parse_const_int` | function | `minigccg3.s:34113` | `` |
| `parse_enum` | function | `minigccg3.s:32429` | `` |
| `parse_function` | function | `minigccg3.s:30964` | `` |
| `parse_program` | function | `minigccg3.s:35086` | `` |
| `pop_scope` | function | `minigccg3.s:4681` | `` |
| `processed_count` | function | `minigccg3.s:59` | `` |
| `processed_files` | function | `minigccg3.s:55` | `` |
| `ptr_init_count` | function | `minigccg3.s:219` | `` |
| `ptr_init_label` | function | `minigccg3.s:215` | `` |
| `ptr_init_name` | function | `minigccg3.s:211` | `` |
| `push_scope` | function | `minigccg3.s:4629` | `` |
| `read_include_file` | function | `minigccg3.s:4324` | `` |
| `relational_expr` | function | `minigccg3.s:19518` | `` |
| `resolve_local_include` | function | `minigccg3.s:3874` | `` |
| `restart` | function | `minigccg3.s:7937` | `` |
| `restart_int` | function | `minigccg3.s:29805` | `` |
| `restart_typedef` | function | `minigccg3.s:28773` | `` |
| `restore_parser_state` | function | `minigccg3.s:399` | `` |
| `safe_malloc` | function | `minigccg3.s:3311` | `` |
| `safe_strcpy` | function | `minigccg3.s:3366` | `` |
| `safe_strtoll` | function | `minigccg3.s:3443` | `` |
| `save_parser_state` | function | `minigccg3.s:260` | `` |
| `scope_depth` | function | `minigccg3.s:83` | `` |
| `scope_stack_stk` | function | `minigccg3.s:79` | `` |
| `scope_stack_sym` | function | `minigccg3.s:75` | `` |
| `shift_expr` | function | `minigccg3.s:19372` | `` |
| `skip_struct` | function | `minigccg3.s:32841` | `` |
| `skip_typedef` | function | `minigccg3.s:33427` | `` |
| `source_start` | function | `minigccg3.s:23` | `` |
| `stack_size` | function | `minigccg3.s:87` | `` |
| `statement` | function | `minigccg3.s:25254` | `` |
| `static_flag` | function | `minigccg3.s:131` | `` |
| `str_label_counter` | function | `minigccg3.s:199` | `` |
| `string_count` | function | `minigccg3.s:207` | `` |
| `string_pool` | function | `minigccg3.s:203` | `` |
| `struct_member_count` | function | `minigccg3.s:243` | `` |
| `struct_member_elem_sizes` | function | `minigccg3.s:239` | `` |
| `struct_member_names` | function | `minigccg3.s:227` | `` |
| `struct_member_offsets` | function | `minigccg3.s:231` | `` |
| `struct_member_sizes` | function | `minigccg3.s:235` | `` |
| `struct_total_size` | function | `minigccg3.s:223` | `` |
| `switch_case_count` | function | `minigccg3.s:171` | `` |
| `switch_case_labels` | function | `minigccg3.s:167` | `` |
| `switch_case_values` | function | `minigccg3.s:163` | `` |
| `switch_default_label` | function | `minigccg3.s:179` | `` |
| `switch_has_default` | function | `minigccg3.s:175` | `` |
| `symbol_count` | function | `minigccg3.s:67` | `` |
| `symbols` | function | `minigccg3.s:63` | `` |
| `tok` | function | `minigccg3.s:31` | `` |
| `token` | function | `minigccg3.s:27` | `` |
| `truncate_symbols` | function | `minigccg3.s:4877` | `` |
| `unary` | function | `minigccg3.s:13990` | `` |
| `unary_expr` | function | `minigccg3.s:18230` | `` |
| `unsigned_type` | function | `minigccg3.s:135` | `` |
| `_start` | function | `minigccg4.s:40790` | `` |
| `add_macro` | function | `minigccg4.s:655` | `` |
| `add_symbol` | function | `minigccg4.s:13412` | `` |
| `additive_expr` | function | `minigccg4.s:18877` | `` |
| `arg_reg` | function | `minigccg4.s:13786` | `` |
| `assign_size` | function | `minigccg4.s:107` | `` |
| `assignment_expr` | function | `minigccg4.s:21792` | `` |
| `bitwise_and_expr` | function | `minigccg4.s:20598` | `` |
| `bitwise_or_expr` | function | `minigccg4.s:20754` | `` |
| `bitwise_xor_expr` | function | `minigccg4.s:20676` | `` |
| `break_target` | function | `minigccg4.s:183` | `` |
| `break_target_valid` | function | `minigccg4.s:187` | `` |
| `conditional_expr` | function | `minigccg4.s:21158` | `` |
| `const_flag` | function | `minigccg4.s:139` | `` |
| `continue_target` | function | `minigccg4.s:191` | `` |
| `continue_target_valid` | function | `minigccg4.s:195` | `` |
| `ctx_stack` | function | `minigccg4.s:43` | `` |
| `ctx_top` | function | `minigccg4.s:47` | `` |
| `current_elem_size` | function | `minigccg4.s:115` | `` |
| `current_elem_size2` | function | `minigccg4.s:119` | `` |
| `current_file` | function | `minigccg4.s:51` | `` |
| `data_directive` | function | `minigccg4.s:33917` | `` |
| `emit` | function | `minigccg4.s:12654` | `` |
| `emit_asciz_body` | function | `minigccg4.s:12972` | `` |
| `emit_compound_op` | function | `minigccg4.s:21290` | `` |
| `emit_enabled` | function | `minigccg4.s:99` | `` |
| `emit_float_consts` | function | `minigccg4.s:36891` | `` |
| `emit_global_bss` | function | `minigccg4.s:33967` | `` |
| `emit_global_data_head` | function | `minigccg4.s:34058` | `` |
| `emit_global_initializer` | function | `minigccg4.s:34369` | `` |
| `emit_i` | function | `minigccg4.s:12768` | `` |
| `emit_is` | function | `minigccg4.s:12866` | `` |
| `emit_label` | function | `minigccg4.s:13296` | `` |
| `emit_s` | function | `minigccg4.s:12817` | `` |
| `emit_si` | function | `minigccg4.s:12919` | `` |
| `emit_string_pool` | function | `minigccg4.s:36990` | `` |
| `equality_expr` | function | `minigccg4.s:20120` | `` |
| `error` | function | `minigccg4.s:3259` | `` |
| `expr_pointed` | function | `minigccg4.s:111` | `` |
| `expr_type` | function | `minigccg4.s:127` | `` |
| `extern_flag` | function | `minigccg4.s:143` | `` |
| `find_macro` | function | `minigccg4.s:591` | `` |
| `find_symbol` | function | `minigccg4.s:13325` | `` |
| `float_const_count` | function | `minigccg4.s:159` | `` |
| `float_const_is_float` | function | `minigccg4.s:155` | `` |
| `float_const_str` | function | `minigccg4.s:151` | `` |
| `function_has_return` | function | `minigccg4.s:95` | `` |
| `get_dir_from_path` | function | `minigccg4.s:3731` | `` |
| `global_emit_deferred` | function | `minigccg4.s:147` | `` |
| `handle_postfix` | function | `minigccg4.s:17208` | `` |
| `hash_init` | function | `minigccg4.s:4590` | `` |
| `hash_name` | function | `minigccg4.s:4532` | `` |
| `hash_table` | function | `minigccg4.s:71` | `` |
| `if_depth` | function | `minigccg4.s:251` | `` |
| `if_nest` | function | `minigccg4.s:247` | `` |
| `input_ptr` | function | `minigccg4.s:19` | `` |
| `intern_string` | function | `minigccg4.s:34276` | `` |
| `is_file_processed` | function | `minigccg4.s:3558` | `` |
| `label_counter` | function | `minigccg4.s:91` | `` |
| `lex_fail` | function | `minigccg4.s:5273` | `` |
| `lex_hex_val` | function | `minigccg4.s:6212` | `` |
| `lex_init_keywords` | function | `minigccg4.s:5540` | `` |
| `lex_is_int_suffix` | function | `minigccg4.s:6334` | `` |
| `lex_kw_add` | function | `minigccg4.s:5377` | `` |
| `lex_kw_blob` | function | `minigccg4.s:3` | `` |
| `lex_kw_count` | function | `minigccg4.s:11` | `` |
| `lex_kw_ids` | function | `minigccg4.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg4.s:6035` | `` |
| `lex_match_op` | function | `minigccg4.s:6129` | `` |
| `lex_number` | function | `minigccg4.s:6403` | `` |
| `lex_pass_top` | function | `minigccg4.s:15` | `` |
| `libc_global_name` | function | `minigccg4.s:13862` | `` |
| `line` | function | `minigccg4.s:35` | `` |
| `logical_and_expr` | function | `minigccg4.s:20832` | `` |
| `logical_or_expr` | function | `minigccg4.s:20995` | `` |
| `lvalue_address` | function | `minigccg4.s:16683` | `` |
| `macro_add` | function | `minigccg4.s:2182` | `` |
| `macro_bitand` | function | `minigccg4.s:2807` | `` |
| `macro_bitor` | function | `minigccg4.s:2958` | `` |
| `macro_bitxor` | function | `minigccg4.s:2893` | `` |
| `macro_cmp` | function | `minigccg4.s:2433` | `` |
| `macro_count` | function | `minigccg4.s:256` | `` |
| `macro_digit_val` | function | `minigccg4.s:932` | `` |
| `macro_eq` | function | `minigccg4.s:2654` | `` |
| `macro_fold` | function | `minigccg4.s:3238` | `` |
| `macro_hex_digit` | function | `minigccg4.s:834` | `` |
| `macro_logand` | function | `minigccg4.s:3044` | `` |
| `macro_mul` | function | `minigccg4.s:1979` | `` |
| `macro_ok` | function | `minigccg4.s:789` | `` |
| `macro_or_expr` | function | `minigccg4.s:3141` | `` |
| `macro_p` | function | `minigccg4.s:785` | `` |
| `macro_primary` | function | `minigccg4.s:1053` | `` |
| `macro_shift` | function | `minigccg4.s:2280` | `` |
| `macro_skipws` | function | `minigccg4.s:793` | `` |
| `macro_unary` | function | `minigccg4.s:1851` | `` |
| `macros` | function | `minigccg4.s:587` | `` |
| `main` | function | `minigccg4.s:37092` | `` |
| `mark_file_processed` | function | `minigccg4.s:3619` | `` |
| `match` | function | `minigccg4.s:12616` | `` |
| `max_func_stack` | function | `minigccg4.s:103` | `` |
| `multiplicative_expr` | function | `minigccg4.s:18255` | `` |
| `my_isalnum` | function | `minigccg4.s:5228` | `` |
| `my_isalpha` | function | `minigccg4.s:5119` | `` |
| `my_isdigit` | function | `minigccg4.s:5188` | `` |
| `my_isspace` | function | `minigccg4.s:5030` | `` |
| `next_token` | function | `minigccg4.s:7933` | `` |
| `no_postfix_deref` | function | `minigccg4.s:123` | `` |
| `output` | function | `minigccg4.s:39` | `` |
| `parse_asm_block` | function | `minigccg4.s:25107` | `` |
| `parse_const_int` | function | `minigccg4.s:34113` | `` |
| `parse_enum` | function | `minigccg4.s:32429` | `` |
| `parse_function` | function | `minigccg4.s:30964` | `` |
| `parse_program` | function | `minigccg4.s:35086` | `` |
| `pop_scope` | function | `minigccg4.s:4681` | `` |
| `processed_count` | function | `minigccg4.s:59` | `` |
| `processed_files` | function | `minigccg4.s:55` | `` |
| `ptr_init_count` | function | `minigccg4.s:219` | `` |
| `ptr_init_label` | function | `minigccg4.s:215` | `` |
| `ptr_init_name` | function | `minigccg4.s:211` | `` |
| `push_scope` | function | `minigccg4.s:4629` | `` |
| `read_include_file` | function | `minigccg4.s:4324` | `` |
| `relational_expr` | function | `minigccg4.s:19518` | `` |
| `resolve_local_include` | function | `minigccg4.s:3874` | `` |
| `restart` | function | `minigccg4.s:7937` | `` |
| `restart_int` | function | `minigccg4.s:29805` | `` |
| `restart_typedef` | function | `minigccg4.s:28773` | `` |
| `restore_parser_state` | function | `minigccg4.s:399` | `` |
| `safe_malloc` | function | `minigccg4.s:3311` | `` |
| `safe_strcpy` | function | `minigccg4.s:3366` | `` |
| `safe_strtoll` | function | `minigccg4.s:3443` | `` |
| `save_parser_state` | function | `minigccg4.s:260` | `` |
| `scope_depth` | function | `minigccg4.s:83` | `` |
| `scope_stack_stk` | function | `minigccg4.s:79` | `` |
| `scope_stack_sym` | function | `minigccg4.s:75` | `` |
| `shift_expr` | function | `minigccg4.s:19372` | `` |
| `skip_struct` | function | `minigccg4.s:32841` | `` |
| `skip_typedef` | function | `minigccg4.s:33427` | `` |
| `source_start` | function | `minigccg4.s:23` | `` |
| `stack_size` | function | `minigccg4.s:87` | `` |
| `statement` | function | `minigccg4.s:25254` | `` |
| `static_flag` | function | `minigccg4.s:131` | `` |
| `str_label_counter` | function | `minigccg4.s:199` | `` |
| `string_count` | function | `minigccg4.s:207` | `` |
| `string_pool` | function | `minigccg4.s:203` | `` |
| `struct_member_count` | function | `minigccg4.s:243` | `` |
| `struct_member_elem_sizes` | function | `minigccg4.s:239` | `` |
| `struct_member_names` | function | `minigccg4.s:227` | `` |
| `struct_member_offsets` | function | `minigccg4.s:231` | `` |
| `struct_member_sizes` | function | `minigccg4.s:235` | `` |
| `struct_total_size` | function | `minigccg4.s:223` | `` |
| `switch_case_count` | function | `minigccg4.s:171` | `` |
| `switch_case_labels` | function | `minigccg4.s:167` | `` |
| `switch_case_values` | function | `minigccg4.s:163` | `` |
| `switch_default_label` | function | `minigccg4.s:179` | `` |
| `switch_has_default` | function | `minigccg4.s:175` | `` |
| `symbol_count` | function | `minigccg4.s:67` | `` |
| `symbols` | function | `minigccg4.s:63` | `` |
| `tok` | function | `minigccg4.s:31` | `` |
| `token` | function | `minigccg4.s:27` | `` |
| `truncate_symbols` | function | `minigccg4.s:4877` | `` |
| `unary` | function | `minigccg4.s:13990` | `` |
| `unary_expr` | function | `minigccg4.s:18230` | `` |
| `unsigned_type` | function | `minigccg4.s:135` | `` |
| `MY_LIBRARY_H` | macro | `my_library.h:2` | `#define MY_LIBRARY_H` |
| `greet` | function | `my_library.h:5` | `void greet(void);` |
| `main` | function | `test.c:1` | `int main(void)` |
| `fail` | function | `test_all.sh:25` | `` |
| `pass` | function | `test_all.sh:20` | `` |
| `run_neg` | function | `test_all.sh:101` | `` |
| `run_test` | function | `test_all.sh:37` | `` |
| `main` | function | `test_for.c:2` | `int main()` |
| `greet` | function | `test_include.c:9` | `void greet(void)` |
| `main` | function | `test_include.c:3` | `int main(void)` |
| `printf` | function | `test_include.c:5` | `printf("Compilation successful! The compiler includes files correctly.\n");` |
| `fail` | function | `test_ld_selfhost.sh:32` | `` |
| `pass` | function | `test_ld_selfhost.sh:27` | `` |
| `main` | function | `tests/neg_asm.c:1` | `int main(void)` |
| `volatile` | function | `tests/neg_asm.c:3` | `__asm__ volatile("mov %0, %%eax" : "=r"(x));` |
| `main` | function | `tests/neg_comment.c:1` | `int main(void)` |
| `main` | function | `tests/neg_float.c:1` | `int main(void)` |
| `main` | function | `tests/neg_hex.c:1` | `int main(void)` |
| `main` | function | `tests/neg_octal.c:1` | `int main(void)` |
| `main` | function | `tests/t_args.c:2` | `int main(int argc, char **argv)` |
| `printf` | function | `tests/t_args.c:4` | `printf("%d\n", argc);` |
| `main` | function | `tests/t_arith.c:2` | `int main(void)` |
| `printf` | function | `tests/t_arith.c:19` | `printf("%d %d %d\n", a, b, c);` |
| `main` | function | `tests/t_arrays.c:2` | `int main(void)` |
| `printf` | function | `tests/t_arrays.c:7` | `printf("%d %d %d\n", a[0], a[2], a[4]);` |
| `__asm` | function | `tests/t_asm.c:7` | `__asm("nop");` |
| `__asm__` | function | `tests/t_asm.c:8` | `__asm__("nop");` |
| `main` | function | `tests/t_asm.c:4` | `int main(void)` |
| `printf` | function | `tests/t_asm.c:11` | `printf("%d %d\n", probe, v);` |
| `volatile` | function | `tests/t_asm.c:6` | `__asm__ volatile("nop");` |
| `main` | function | `tests/t_compound.c:2` | `int main(void)` |
| `printf` | function | `tests/t_compound.c:8` | `printf("%d\n", m);` |
| `main` | function | `tests/t_dowhile.c:2` | `int main(void)` |
| `printf` | function | `tests/t_dowhile.c:10` | `printf("%d %d\n", sum, i);` |
| `Color` | enum | `tests/t_enum.c:3` | `` |
| `Single` | enum | `tests/t_enum.c:9` | `` |
| `main` | function | `tests/t_enum.c:12` | `int main(void)` |
| `printf` | function | `tests/t_enum.c:14` | `printf("%d %d %d\n", RED, GREEN, BLUE);` |
| `main` | function | `tests/t_float.c:2` | `int main(void)` |
| `printf` | function | `tests/t_float.c:6` | `printf("%d %d %d\n", a + b == 4.0, a * b == 3.75, b - a == 1.0);` |
| `main` | function | `tests/t_for.c:2` | `int main(void)` |
| `printf` | function | `tests/t_for.c:7` | `printf("%d\n", sum);` |
| `main` | function | `tests/t_globinit.c:7` | `int main(void)` |
| `printf` | function | `tests/t_globinit.c:9` | `printf("%d %d %d\n", gscalar, garr[0], garr[3]);` |
| `main` | function | `tests/t_goto.c:2` | `int main(void)` |
| `printf` | function | `tests/t_goto.c:13` | `end: printf("%d\n", i);` |
| `main` | function | `tests/t_hexoct.c:2` | `int main(void)` |
| `printf` | function | `tests/t_hexoct.c:11` | `printf("%d %d %d\n", h1, h2, h3);` |
| `grade` | function | `tests/t_if.c:2` | `int grade(int s)` |
| `main` | function | `tests/t_if.c:9` | `int main(void)` |
| `printf` | function | `tests/t_if.c:12` | `printf("%d %d %d\n", grade(95), grade(80), grade(60));` |
| `main` | function | `tests/t_include.c:4` | `int main(void)` |
| `printf` | function | `tests/t_include.c:6` | `printf("%d %d %d\n", INNER_VAL, OUTER_VAL, inner_add(40, 2));` |
| `icube` | function | `tests/t_inline.c:3` | `static inline int icube(int x)` |
| `idbl` | function | `tests/t_inline.c:7` | `__inline__ static int idbl(int x)` |
| `iinc` | function | `tests/t_inline.c:11` | `__inline static int iinc(int x)` |
| `main` | function | `tests/t_inline.c:15` | `int main(void)` |
| `printf` | function | `tests/t_inline.c:17` | `printf("%d %d %d\n", isq(6), icube(3), idbl(20));` |
| `T_INLINE_H` | macro | `tests/t_inline_h.h:2` | `#define T_INLINE_H` |
| `isq` | function | `tests/t_inline_h.h:3` | `static inline int isq(int x)` |
| `INNER_VAL` | macro | `tests/t_inner_h.h:3` | `#define INNER_VAL` |
| `T_INNER_H` | macro | `tests/t_inner_h.h:2` | `#define T_INNER_H` |
| `inner_add` | function | `tests/t_inner_h.h:5` | `static inline int inner_add(int a, int b)` |
| `main` | function | `tests/t_logic.c:2` | `int main(void)` |
| `printf` | function | `tests/t_logic.c:6` | `printf("%d %d %d\n", t && t, t && f, f \|\| f);` |
| `HEXED` | macro | `tests/t_macros.c:5` | `#define HEXED` |
| `KONST` | macro | `tests/t_macros.c:2` | `#define KONST` |
| `NEGD` | macro | `tests/t_macros.c:7` | `#define NEGD` |
| `SHIFTED` | macro | `tests/t_macros.c:4` | `#define SHIFTED` |
| `SUMMED` | macro | `tests/t_macros.c:6` | `#define SUMMED` |
| `SZ` | macro | `tests/t_macros.c:8` | `#define SZ` |
| `main` | function | `tests/t_macros.c:9` | `int main(void)` |
| `printf` | function | `tests/t_macros.c:11` | `printf("%d %d %d\n", KONST, SHIFTED, HEXED);` |
| `OUTER_VAL` | macro | `tests/t_outer_h.h:5` | `#define OUTER_VAL` |
| `T_OUTER_H` | macro | `tests/t_outer_h.h:2` | `#define T_OUTER_H` |
| `bump` | function | `tests/t_pointers.c:2` | `void bump(int *p)` |
| `main` | function | `tests/t_pointers.c:6` | `int main(void)` |
| `printf` | function | `tests/t_pointers.c:10` | `printf("%d %d\n", x, *p);` |
| `fact` | function | `tests/t_recursion.c:7` | `int fact(int n)` |
| `fib` | function | `tests/t_recursion.c:2` | `int fib(int n)` |
| `main` | function | `tests/t_recursion.c:12` | `int main(void)` |
| `printf` | function | `tests/t_recursion.c:14` | `printf("%d %d\n", fib(15), fact(7));` |
| `main` | function | `tests/t_scope.c:11` | `int main(void)` |
| `printf` | function | `tests/t_scope.c:13` | `printf("%d %d\n", g, K);` |
| `touch` | function | `tests/t_scope.c:6` | `void touch(void)` |
| `main` | function | `tests/t_sizeof.c:2` | `int main(void)` |
| `printf` | function | `tests/t_sizeof.c:4` | `printf("%d %d %d\n", sizeof(char), sizeof(float), sizeof(double));` |
| `main` | function | `tests/t_strings.c:2` | `int main(void)` |
| `printf` | function | `tests/t_strings.c:4` | `printf("hello\n");` |
| `Point` | struct | `tests/t_struct.c:3` | `` |
| `main` | function | `tests/t_struct.c:17` | `int main(void)` |
| `manhattan` | function | `tests/t_struct.c:9` | `int manhattan(Point *p)` |
| `printf` | function | `tests/t_struct.c:22` | `printf("%d %d\n", pp->x, pp->y);` |
| `classify` | function | `tests/t_switch.c:2` | `int classify(int v)` |
| `main` | function | `tests/t_switch.c:13` | `int main(void)` |
| `printf` | function | `tests/t_switch.c:15` | `printf("%d %d %d\n", classify(1), classify(2), classify(3));` |
| `Pair` | struct | `tests/t_typedef.c:9` | `` |
| `main` | function | `tests/t_typedef.c:15` | `int main(void)` |
| `myint` | type_alias | `tests/t_typedef.c:2` | `typedef int myint;` |
| `printf` | function | `tests/t_typedef.c:18` | `printf("%d\n", shared + 2);` |
| `main` | function | `tests/t_while.c:2` | `int main(void)` |
| `printf` | function | `tests/t_while.c:12` | `printf("%d %d\n", i, sum);` |
