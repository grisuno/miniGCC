# Symbols

| Symbol | Kind | File:Line | Signature |
|--------|------|-----------|-----------|
| `ASM_MAX_OPS` | macro | `minigcc.c:3044` | `#define ASM_MAX_OPS` |
| `ASM_TMPL_SZ` | macro | `minigcc.c:3046` | `#define ASM_TMPL_SZ` |
| `ASM_TXT_SZ` | macro | `minigcc.c:3047` | `#define ASM_TXT_SZ` |
| `CONST_VAR_FLAG` | macro | `minigcc.c:210` | `#define CONST_VAR_FLAG` |
| `FileContext` | struct | `minigcc.c:96` | `` |
| `HASH_TABLE_SIZE` | macro | `minigcc.c:131` | `#define HASH_TABLE_SIZE` |
| `LEX_KW_BLOB` | macro | `minigcc.c:82` | `#define LEX_KW_BLOB` |
| `LEX_KW_CAP` | macro | `minigcc.c:80` | `#define LEX_KW_CAP` |
| `MAX_CASES_PER_SWITCH` | macro | `minigcc.c:167` | `#define MAX_CASES_PER_SWITCH` |
| `MAX_FLOAT_CONSTS` | macro | `minigcc.c:162` | `#define MAX_FLOAT_CONSTS` |
| `MAX_IDENT_LEN` | macro | `minigcc.c:17` | `#define MAX_IDENT_LEN` |
| `MAX_IF_NESTING` | macro | `minigcc.c:208` | `#define MAX_IF_NESTING` |
| `MAX_INCLUDE_DEPTH` | macro | `minigcc.c:19` | `#define MAX_INCLUDE_DEPTH` |
| `MAX_MACROS` | macro | `minigcc.c:216` | `#define MAX_MACROS` |
| `MAX_PROCESSED_FILES` | macro | `minigcc.c:20` | `#define MAX_PROCESSED_FILES` |
| `MAX_PTR_INITS` | macro | `minigcc.c:189` | `#define MAX_PTR_INITS` |
| `MAX_SCOPE_DEPTH` | macro | `minigcc.c:133` | `#define MAX_SCOPE_DEPTH` |
| `MAX_SOURCE_SIZE` | macro | `minigcc.c:18` | `#define MAX_SOURCE_SIZE` |
| `MAX_STRINGS` | macro | `minigcc.c:180` | `#define MAX_STRINGS` |
| `MAX_STRUCT_MEMBERS` | macro | `minigcc.c:199` | `#define MAX_STRUCT_MEMBERS` |
| `MAX_SYMBOLS` | macro | `minigcc.c:16` | `#define MAX_SYMBOLS` |
| `MAX_TOKEN_LEN` | macro | `minigcc.c:14` | `#define MAX_TOKEN_LEN` |
| `Macro` | struct | `minigcc.c:308` | `` |
| `ParserState` | struct | `minigcc.c:220` | `` |
| `STACK_ALIGN` | macro | `minigcc.c:21` | `#define STACK_ALIGN` |
| `Symbol` | struct | `minigcc.c:109` | `` |
| `add_macro` | function | `minigcc.c:323` | `static void add_macro(const char *name, int value)` |
| `add_symbol` | function | `minigcc.c:1592` | `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...` |
| `additive_expr` | function | `minigcc.c:2521` | `static void additive_expr(void)` |
| `arg_reg` | function | `minigcc.c:1666` | `static const char *arg_reg(int i)` |
| `asm_assign_homes` | function | `minigcc.c:3275` | `static void asm_assign_homes(void)` |
| `asm_emit_all` | function | `minigcc.c:3320` | `static void asm_emit_all(void)` |
| `asm_emit_ss` | function | `minigcc.c:3205` | `static void asm_emit_ss(const char *fmt, const char *a, const char *b)` |
| `asm_emit_template` | function | `minigcc.c:3120` | `static void asm_emit_template(void)` |
| `asm_fixed_home` | function | `minigcc.c:3112` | `static int asm_fixed_home(int c)` |
| `asm_home_text` | function | `minigcc.c:3068` | `static void asm_home_text(int home, char *buf)` |
| `asm_parse_mem` | function | `minigcc.c:3147` | `static void asm_parse_mem(int idx, int is_out)` |
| `asm_parse_one` | function | `minigcc.c:3211` | `static void asm_parse_one(int idx, int is_out)` |
| `asm_reg_sized` | function | `minigcc.c:3076` | `static void asm_reg_sized(int home, int size, char *buf)` |
| `asm_scratch` | function | `minigcc.c:3059` | `static const char *asm_scratch(int i)` |
| `assignment_expr` | function | `minigcc.c:2838` | `static void assignment_expr(void)` |
| `bitwise_and_expr` | function | `minigcc.c:2703` | `static void bitwise_and_expr(void)` |
| `bitwise_or_expr` | function | `minigcc.c:2727` | `static void bitwise_or_expr(void)` |
| `bitwise_xor_expr` | function | `minigcc.c:2715` | `static void bitwise_xor_expr(void)` |
| `conditional_expr` | function | `minigcc.c:2779` | `static void conditional_expr(void)` |
| `data_directive` | function | `minigcc.c:4562` | `static const char *data_directive(int size)` |
| `emit` | function | `minigcc.c:1515` | `static void emit(const char *s)` |
| `emit_asciz_body` | function | `minigcc.c:1557` | `static void emit_asciz_body(const char *s)` |
| `emit_compound_op` | function | `minigcc.c:2797` | `static void emit_compound_op(int op, int asize)` |
| `emit_float_consts` | function | `minigcc.c:4883` | `static void emit_float_consts(void)` |
| `emit_global_bss` | function | `minigcc.c:4570` | `static void emit_global_bss(const char *name, int is_static, int size)` |
| `emit_global_data_head` | function | `minigcc.c:4581` | `static void emit_global_data_head(const char *name, int is_static)` |
| `emit_global_initializer` | function | `minigcc.c:4635` | `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...` |
| `emit_i` | function | `minigcc.c:1529` | `static void emit_i(const char *fmt, int v)` |
| `emit_is` | function | `minigcc.c:1541` | `static void emit_is(const char *fmt, int v, const char *s)` |
| `emit_label` | function | `minigcc.c:1575` | `static void emit_label(int label)` |
| `emit_s` | function | `minigcc.c:1535` | `static void emit_s(const char *fmt, const char *s)` |
| `emit_si` | function | `minigcc.c:1547` | `static void emit_si(const char *fmt, const char *s, int v)` |
| `emit_string_pool` | function | `minigcc.c:4893` | `static void emit_string_pool(void)` |
| `equality_expr` | function | `minigcc.c:2654` | `static void equality_expr(void)` |
| `error` | function | `minigcc.c:625` | `static void error(const char *msg)` |
| `exit` | function | `minigcc.c:629` | `exit(EXIT_FAILURE);` |
| `fclose` | function | `minigcc.c:706` | `fclose(f);` |
| `find_macro` | function | `minigcc.c:314` | `static int find_macro(const char *name)` |
| `find_symbol` | function | `minigcc.c:1582` | `static int find_symbol(const char *name)` |
| `fprintf` | function | `minigcc.c:627` | `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);` |
| `fputc` | function | `minigcc.c:1520` | `fputc('%', output);` |
| `fputs` | function | `minigcc.c:3136` | `fputs(asm_text[oi], output);` |
| `free` | function | `minigcc.c:755` | `free(buf);` |
| `fseek` | function | `minigcc.c:745` | `fseek(f, 0, SEEK_END);` |
| `get_dir_from_path` | function | `minigcc.c:683` | `static void get_dir_from_path(const char *path, char *dir, int dir_sz)` |
| `handle_postfix` | function | `minigcc.c:2281` | `static void handle_postfix(int is_lvalue)` |
| `hash_init` | function | `minigcc.c:775` | `static void hash_init(void)` |
| `hash_name` | function | `minigcc.c:766` | `static int hash_name(const char *name)` |
| `intern_string` | function | `minigcc.c:4618` | `static int intern_string(const char *text)` |
| `is_file_processed` | function | `minigcc.c:662` | `static int is_file_processed(const char *path)` |
| `lex_fail` | function | `minigcc.c:863` | `static void lex_fail(const char *msg, char *start, char *end)` |
| `lex_hex_val` | function | `minigcc.c:950` | `static int lex_hex_val(int c)` |
| `lex_init_keywords` | function | `minigcc.c:886` | `static void lex_init_keywords(void)` |
| `lex_is_int_suffix` | function | `minigcc.c:957` | `static int lex_is_int_suffix(int c)` |
| `lex_kw_add` | function | `minigcc.c:873` | `static void lex_kw_add(const char *name, int id)` |
| `lex_kw_lookup` | function | `minigcc.c:926` | `static int lex_kw_lookup(void)` |
| `lex_match_op` | function | `minigcc.c:938` | `static int lex_match_op(const char *op, int id)` |
| `lex_number` | function | `minigcc.c:963` | `static void lex_number(void)` |
| `libc_global_name` | function | `minigcc.c:1676` | `static const char *libc_global_name(int i)` |
| `logical_and_expr` | function | `minigcc.c:2739` | `static void logical_and_expr(void)` |
| `logical_or_expr` | function | `minigcc.c:2759` | `static void logical_or_expr(void)` |
| `lvalue_address` | function | `minigcc.c:2224` | `static void lvalue_address(void)` |
| `macro_add` | function | `minigcc.c:476` | `static int macro_add(void)` |
| `macro_bitand` | function | `minigcc.c:550` | `static int macro_bitand(void)` |
| `macro_bitor` | function | `minigcc.c:578` | `static int macro_bitor(void)` |
| `macro_bitxor` | function | `minigcc.c:564` | `static int macro_bitxor(void)` |
| `macro_cmp` | function | `minigcc.c:510` | `static int macro_cmp(void)` |
| `macro_digit_val` | function | `minigcc.c:361` | `static int macro_digit_val(int c)` |
| `macro_eq` | function | `minigcc.c:533` | `static int macro_eq(void)` |
| `macro_fold` | function | `minigcc.c:620` | `static int macro_fold(void)` |
| `macro_hex_digit` | function | `minigcc.c:354` | `static int macro_hex_digit(int c)` |
| `macro_logand` | function | `minigcc.c:592` | `static int macro_logand(void)` |
| `macro_mul` | function | `minigcc.c:451` | `static int macro_mul(void)` |
| `macro_or_expr` | function | `minigcc.c:606` | `static int macro_or_expr(void)` |
| `macro_primary` | function | `minigcc.c:368` | `static int macro_primary(void)` |
| `macro_shift` | function | `minigcc.c:493` | `static int macro_shift(void)` |
| `macro_skipws` | function | `minigcc.c:350` | `static void macro_skipws(void)` |
| `macro_unary` | function | `minigcc.c:442` | `static int macro_unary(void)` |
| `main` | function | `minigcc.c:4903` | `int main(int argc, char **argv)` |
| `mark_file_processed` | function | `minigcc.c:671` | `static void mark_file_processed(const char *path)` |
| `match` | function | `minigcc.c:1510` | `static void match(int expected)` |
| `memcpy` | function | `minigcc.c:2135` | `memcpy(apname, token, nlen);` |
| `multiplicative_expr` | function | `minigcc.c:2457` | `static void multiplicative_expr(void)` |
| `my_isalnum` | function | `minigcc.c:857` | `static int my_isalnum(int c)` |
| `my_isalpha` | function | `minigcc.c:846` | `static int my_isalpha(int c)` |
| `my_isdigit` | function | `minigcc.c:852` | `static int my_isdigit(int c)` |
| `my_isspace` | function | `minigcc.c:836` | `static int my_isspace(int c)` |
| `next_token` | function | `minigcc.c:1082` | `static void next_token(void)` |
| `parse_asm_block` | function | `minigcc.c:3425` | `static void parse_asm_block(void)` |
| `parse_const_int` | function | `minigcc.c:4595` | `static int parse_const_int(long long *out)` |
| `parse_enum` | function | `minigcc.c:4355` | `static void parse_enum(void)` |
| `parse_function` | function | `minigcc.c:4179` | `static void parse_function(const char *name, int ret_type)` |
| `parse_program` | function | `minigcc.c:4699` | `static void parse_program(void)` |
| `parse_sync_call` | function | `minigcc.c:2092` | `static void parse_sync_call(const char *name)` |
| `parse_trailing_align` | function | `minigcc.c:3418` | `static void parse_trailing_align(void)` |
| `parse_va_arg` | function | `minigcc.c:2159` | `static void parse_va_arg(void)` |
| `parse_va_end` | function | `minigcc.c:2209` | `static void parse_va_end(void)` |
| `parse_va_start` | function | `minigcc.c:2126` | `static void parse_va_start(void)` |
| `pop_scope` | function | `minigcc.c:788` | `static void pop_scope(void)` |
| `push_scope` | function | `minigcc.c:780` | `static void push_scope(void)` |
| `read_include_file` | function | `minigcc.c:741` | `static char *read_include_file(const char *path)` |
| `relational_expr` | function | `minigcc.c:2601` | `static void relational_expr(void)` |
| `resolve_local_include` | function | `minigcc.c:702` | `static char *resolve_local_include(const char *target)` |
| `restore_parser_state` | function | `minigcc.c:275` | `static void restore_parser_state(ParserState *state)` |
| `rewind` | function | `minigcc.c:751` | `rewind(f);` |
| `safe_malloc` | function | `minigcc.c:631` | `static void *safe_malloc(size_t size)` |
| `safe_strcpy` | function | `minigcc.c:640` | `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)` |
| `safe_strtoll` | function | `minigcc.c:649` | `static long safe_strtoll(const char *s)` |
| `save_parser_state` | function | `minigcc.c:247` | `static void save_parser_state(ParserState *state)` |
| `shift_expr` | function | `minigcc.c:2582` | `static void shift_expr(void)` |
| `skip_gcc_attribute` | function | `minigcc.c:3368` | `static int skip_gcc_attribute(void)` |
| `skip_struct` | function | `minigcc.c:4440` | `static void skip_struct(void)` |
| `skip_struct_fields` | function | `minigcc.c:4405` | `static void skip_struct_fields(int fsize, int funs, int ffloat)` |
| `skip_typedef` | function | `minigcc.c:4503` | `static void skip_typedef(void)` |
| `snprintf` | function | `minigcc.c:978` | `snprintf(token, MAX_TOKEN_LEN, "%ld", v);` |
| `statement` | function | `minigcc.c:3489` | `static void statement(void)` |
| `strcmp` | function | `minigcc.c:1766` | `strcmp(id_name, "va_start") == 0)` |
| `strcmp` | function | `minigcc.c:1769` | `strcmp(id_name, "va_end") == 0)` |
| `strcmp` | function | `minigcc.c:1772` | `strcmp(id_name, "va_arg") == 0)` |
| `strcmp` | function | `minigcc.c:3389` | `strcmp(token, "returns_twice") == 0 \|\|
                       strcmp(token, "always_inline") == 0)` |
| `strcpy` | function | `minigcc.c:2843` | `strcpy(saved_token, token);` |
| `strncpy` | function | `minigcc.c:1598` | `strncpy(d, name, MAX_IDENT_LEN - 1);` |
| `truncate_symbols` | function | `minigcc.c:818` | `static void truncate_symbols(int start_idx)` |
| `typedef_name` | function | `minigcc.c:1688` | `static const char *typedef_name(int i)` |
| `typedef_size` | function | `minigcc.c:1704` | `static int typedef_size(int i)` |
| `typedef_uns` | function | `minigcc.c:1720` | `static int typedef_uns(int i)` |
| `unary` | function | `minigcc.c:1729` | `static void unary(void)` |
| `unary_expr` | function | `minigcc.c:2442` | `static void unary_expr(void)` |
| `_start` | function | `minigccg2.s:51933` | `` |
| `add_macro` | function | `minigccg2.s:730` | `` |
| `add_symbol` | function | `minigccg2.s:13515` | `` |
| `additive_expr` | function | `minigccg2.s:22168` | `` |
| `arg_reg` | function | `minigccg2.s:13922` | `` |
| `asm_assign_homes` | function | `minigccg2.s:31700` | `` |
| `asm_emit_all` | function | `minigccg2.s:32145` | `` |
| `asm_emit_ss` | function | `minigccg2.s:30676` | `` |
| `asm_emit_template` | function | `minigccg2.s:29875` | `` |
| `asm_fixed_home` | function | `minigccg2.s:29811` | `` |
| `asm_home` | function | `minigccg2.s:28747` | `` |
| `asm_home_text` | function | `minigccg2.s:28847` | `` |
| `asm_is_out` | function | `minigccg2.s:28743` | `` |
| `asm_mem` | function | `minigccg2.s:28739` | `` |
| `asm_nops` | function | `minigccg2.s:28759` | `` |
| `asm_nslots` | function | `minigccg2.s:28763` | `` |
| `asm_parse_mem` | function | `minigccg2.s:30115` | `` |
| `asm_parse_one` | function | `minigccg2.s:30729` | `` |
| `asm_reg_sized` | function | `minigccg2.s:29004` | `` |
| `asm_scratch` | function | `minigccg2.s:28771` | `` |
| `asm_size` | function | `minigccg2.s:28755` | `` |
| `asm_slot` | function | `minigccg2.s:28751` | `` |
| `asm_text` | function | `minigccg2.s:28735` | `` |
| `asm_tmpl` | function | `minigccg2.s:28731` | `` |
| `asm_unique` | function | `minigccg2.s:28767` | `` |
| `assign_size` | function | `minigccg2.s:107` | `` |
| `assignment_expr` | function | `minigccg2.s:25101` | `` |
| `bitwise_and_expr` | function | `minigccg2.s:23907` | `` |
| `bitwise_or_expr` | function | `minigccg2.s:24063` | `` |
| `bitwise_xor_expr` | function | `minigccg2.s:23985` | `` |
| `break_target` | function | `minigccg2.s:211` | `` |
| `break_target_valid` | function | `minigccg2.s:215` | `` |
| `conditional_expr` | function | `minigccg2.s:24467` | `` |
| `const_flag` | function | `minigccg2.s:151` | `` |
| `continue_target` | function | `minigccg2.s:219` | `` |
| `continue_target_valid` | function | `minigccg2.s:223` | `` |
| `ctx_stack` | function | `minigccg2.s:43` | `` |
| `ctx_top` | function | `minigccg2.s:47` | `` |
| `current_elem_size` | function | `minigccg2.s:115` | `` |
| `current_elem_size2` | function | `minigccg2.s:119` | `` |
| `current_elem_unsigned` | function | `minigccg2.s:123` | `` |
| `current_file` | function | `minigccg2.s:51` | `` |
| `data_directive` | function | `minigccg2.s:43613` | `` |
| `deref_u` | function | `minigccg2.s:131` | `` |
| `deref_w` | function | `minigccg2.s:127` | `` |
| `emit` | function | `minigccg2.s:12757` | `` |
| `emit_asciz_body` | function | `minigccg2.s:13075` | `` |
| `emit_compound_op` | function | `minigccg2.s:24599` | `` |
| `emit_enabled` | function | `minigccg2.s:99` | `` |
| `emit_float_consts` | function | `minigccg2.s:46884` | `` |
| `emit_global_bss` | function | `minigccg2.s:43663` | `` |
| `emit_global_data_head` | function | `minigccg2.s:43777` | `` |
| `emit_global_initializer` | function | `minigccg2.s:44111` | `` |
| `emit_i` | function | `minigccg2.s:12871` | `` |
| `emit_is` | function | `minigccg2.s:12969` | `` |
| `emit_label` | function | `minigccg2.s:13399` | `` |
| `emit_s` | function | `minigccg2.s:12920` | `` |
| `emit_si` | function | `minigccg2.s:13022` | `` |
| `emit_string_pool` | function | `minigccg2.s:46983` | `` |
| `equality_expr` | function | `minigccg2.s:23429` | `` |
| `error` | function | `minigccg2.s:3334` | `` |
| `expr_pointed` | function | `minigccg2.s:111` | `` |
| `expr_type` | function | `minigccg2.s:139` | `` |
| `extern_flag` | function | `minigccg2.s:155` | `` |
| `find_macro` | function | `minigccg2.s:666` | `` |
| `find_symbol` | function | `minigccg2.s:13428` | `` |
| `float_const_count` | function | `minigccg2.s:187` | `` |
| `float_const_is_float` | function | `minigccg2.s:183` | `` |
| `float_const_str` | function | `minigccg2.s:179` | `` |
| `func_is_variadic` | function | `minigccg2.s:167` | `` |
| `function_has_return` | function | `minigccg2.s:95` | `` |
| `get_dir_from_path` | function | `minigccg2.s:3806` | `` |
| `global_emit_deferred` | function | `minigccg2.s:159` | `` |
| `handle_postfix` | function | `minigccg2.s:20155` | `` |
| `hash_init` | function | `minigccg2.s:4665` | `` |
| `hash_name` | function | `minigccg2.s:4607` | `` |
| `hash_table` | function | `minigccg2.s:71` | `` |
| `if_depth` | function | `minigccg2.s:287` | `` |
| `if_nest` | function | `minigccg2.s:283` | `` |
| `input_ptr` | function | `minigccg2.s:19` | `` |
| `intern_string` | function | `minigccg2.s:44018` | `` |
| `is_file_processed` | function | `minigccg2.s:3633` | `` |
| `label_counter` | function | `minigccg2.s:91` | `` |
| `lex_fail` | function | `minigccg2.s:5348` | `` |
| `lex_hex_val` | function | `minigccg2.s:6315` | `` |
| `lex_init_keywords` | function | `minigccg2.s:5615` | `` |
| `lex_is_int_suffix` | function | `minigccg2.s:6437` | `` |
| `lex_kw_add` | function | `minigccg2.s:5452` | `` |
| `lex_kw_blob` | function | `minigccg2.s:3` | `` |
| `lex_kw_count` | function | `minigccg2.s:11` | `` |
| `lex_kw_ids` | function | `minigccg2.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg2.s:6138` | `` |
| `lex_match_op` | function | `minigccg2.s:6232` | `` |
| `lex_number` | function | `minigccg2.s:6506` | `` |
| `lex_pass_top` | function | `minigccg2.s:15` | `` |
| `libc_global_name` | function | `minigccg2.s:13998` | `` |
| `line` | function | `minigccg2.s:35` | `` |
| `logical_and_expr` | function | `minigccg2.s:24141` | `` |
| `logical_or_expr` | function | `minigccg2.s:24304` | `` |
| `lvalue_address` | function | `minigccg2.s:19594` | `` |
| `macro_add` | function | `minigccg2.s:2257` | `` |
| `macro_bitand` | function | `minigccg2.s:2882` | `` |
| `macro_bitor` | function | `minigccg2.s:3033` | `` |
| `macro_bitxor` | function | `minigccg2.s:2968` | `` |
| `macro_cmp` | function | `minigccg2.s:2508` | `` |
| `macro_count` | function | `minigccg2.s:292` | `` |
| `macro_digit_val` | function | `minigccg2.s:1007` | `` |
| `macro_eq` | function | `minigccg2.s:2729` | `` |
| `macro_fold` | function | `minigccg2.s:3313` | `` |
| `macro_hex_digit` | function | `minigccg2.s:909` | `` |
| `macro_logand` | function | `minigccg2.s:3119` | `` |
| `macro_mul` | function | `minigccg2.s:2054` | `` |
| `macro_ok` | function | `minigccg2.s:864` | `` |
| `macro_or_expr` | function | `minigccg2.s:3216` | `` |
| `macro_p` | function | `minigccg2.s:860` | `` |
| `macro_primary` | function | `minigccg2.s:1128` | `` |
| `macro_shift` | function | `minigccg2.s:2355` | `` |
| `macro_skipws` | function | `minigccg2.s:868` | `` |
| `macro_unary` | function | `minigccg2.s:1926` | `` |
| `macros` | function | `minigccg2.s:662` | `` |
| `main` | function | `minigccg2.s:47085` | `` |
| `mark_file_processed` | function | `minigccg2.s:3694` | `` |
| `match` | function | `minigccg2.s:12719` | `` |
| `max_func_stack` | function | `minigccg2.s:103` | `` |
| `multiplicative_expr` | function | `minigccg2.s:21546` | `` |
| `my_isalnum` | function | `minigccg2.s:5303` | `` |
| `my_isalpha` | function | `minigccg2.s:5194` | `` |
| `my_isdigit` | function | `minigccg2.s:5263` | `` |
| `my_isspace` | function | `minigccg2.s:5105` | `` |
| `next_token` | function | `minigccg2.s:8036` | `` |
| `no_postfix_deref` | function | `minigccg2.s:135` | `` |
| `output` | function | `minigccg2.s:39` | `` |
| `parse_asm_block` | function | `minigccg2.s:33249` | `` |
| `parse_const_int` | function | `minigccg2.s:43855` | `` |
| `parse_enum` | function | `minigccg2.s:41636` | `` |
| `parse_function` | function | `minigccg2.s:39837` | `` |
| `parse_program` | function | `minigccg2.s:44828` | `` |
| `parse_sync_call` | function | `minigccg2.s:18291` | `` |
| `parse_trailing_align` | function | `minigccg2.s:33207` | `` |
| `parse_va_arg` | function | `minigccg2.s:18953` | `` |
| `parse_va_end` | function | `minigccg2.s:19488` | `` |
| `parse_va_start` | function | `minigccg2.s:18611` | `` |
| `pending_align` | function | `minigccg2.s:163` | `` |
| `pop_scope` | function | `minigccg2.s:4756` | `` |
| `processed_count` | function | `minigccg2.s:59` | `` |
| `processed_files` | function | `minigccg2.s:55` | `` |
| `ptr_init_count` | function | `minigccg2.s:247` | `` |
| `ptr_init_label` | function | `minigccg2.s:243` | `` |
| `ptr_init_name` | function | `minigccg2.s:239` | `` |
| `push_scope` | function | `minigccg2.s:4704` | `` |
| `read_include_file` | function | `minigccg2.s:4399` | `` |
| `relational_expr` | function | `minigccg2.s:22827` | `` |
| `resolve_local_include` | function | `minigccg2.s:3949` | `` |
| `restart` | function | `minigccg2.s:8040` | `` |
| `restart_int` | function | `minigccg2.s:38567` | `` |
| `restart_typedef` | function | `minigccg2.s:37448` | `` |
| `restore_parser_state` | function | `minigccg2.s:453` | `` |
| `safe_malloc` | function | `minigccg2.s:3386` | `` |
| `safe_strcpy` | function | `minigccg2.s:3441` | `` |
| `safe_strtoll` | function | `minigccg2.s:3518` | `` |
| `save_parser_state` | function | `minigccg2.s:296` | `` |
| `scope_depth` | function | `minigccg2.s:83` | `` |
| `scope_stack_stk` | function | `minigccg2.s:79` | `` |
| `scope_stack_sym` | function | `minigccg2.s:75` | `` |
| `shift_expr` | function | `minigccg2.s:22681` | `` |
| `skip_gcc_attribute` | function | `minigccg2.s:32727` | `` |
| `skip_struct` | function | `minigccg2.s:42405` | `` |
| `skip_struct_fields` | function | `minigccg2.s:42067` | `` |
| `skip_typedef` | function | `minigccg2.s:43059` | `` |
| `source_start` | function | `minigccg2.s:23` | `` |
| `stack_size` | function | `minigccg2.s:87` | `` |
| `statement` | function | `minigccg2.s:33818` | `` |
| `static_flag` | function | `minigccg2.s:143` | `` |
| `str_label_counter` | function | `minigccg2.s:227` | `` |
| `string_count` | function | `minigccg2.s:235` | `` |
| `string_pool` | function | `minigccg2.s:231` | `` |
| `struct_member_count` | function | `minigccg2.s:279` | `` |
| `struct_member_elem_sizes` | function | `minigccg2.s:267` | `` |
| `struct_member_is_float` | function | `minigccg2.s:275` | `` |
| `struct_member_names` | function | `minigccg2.s:255` | `` |
| `struct_member_offsets` | function | `minigccg2.s:259` | `` |
| `struct_member_sizes` | function | `minigccg2.s:263` | `` |
| `struct_member_unsigned` | function | `minigccg2.s:271` | `` |
| `struct_total_size` | function | `minigccg2.s:251` | `` |
| `switch_case_count` | function | `minigccg2.s:199` | `` |
| `switch_case_labels` | function | `minigccg2.s:195` | `` |
| `switch_case_values` | function | `minigccg2.s:191` | `` |
| `switch_default_label` | function | `minigccg2.s:207` | `` |
| `switch_has_default` | function | `minigccg2.s:203` | `` |
| `symbol_count` | function | `minigccg2.s:67` | `` |
| `symbols` | function | `minigccg2.s:63` | `` |
| `tok` | function | `minigccg2.s:31` | `` |
| `token` | function | `minigccg2.s:27` | `` |
| `truncate_symbols` | function | `minigccg2.s:4952` | `` |
| `typedef_name` | function | `minigccg2.s:14126` | `` |
| `typedef_size` | function | `minigccg2.s:14293` | `` |
| `typedef_uns` | function | `minigccg2.s:14460` | `` |
| `unary` | function | `minigccg2.s:14536` | `` |
| `unary_expr` | function | `minigccg2.s:21521` | `` |
| `unsigned_type` | function | `minigccg2.s:147` | `` |
| `vararg_nfixed` | function | `minigccg2.s:171` | `` |
| `vararg_save_off` | function | `minigccg2.s:175` | `` |
| `_start` | function | `minigccg3.s:51933` | `` |
| `add_macro` | function | `minigccg3.s:730` | `` |
| `add_symbol` | function | `minigccg3.s:13515` | `` |
| `additive_expr` | function | `minigccg3.s:22168` | `` |
| `arg_reg` | function | `minigccg3.s:13922` | `` |
| `asm_assign_homes` | function | `minigccg3.s:31700` | `` |
| `asm_emit_all` | function | `minigccg3.s:32145` | `` |
| `asm_emit_ss` | function | `minigccg3.s:30676` | `` |
| `asm_emit_template` | function | `minigccg3.s:29875` | `` |
| `asm_fixed_home` | function | `minigccg3.s:29811` | `` |
| `asm_home` | function | `minigccg3.s:28747` | `` |
| `asm_home_text` | function | `minigccg3.s:28847` | `` |
| `asm_is_out` | function | `minigccg3.s:28743` | `` |
| `asm_mem` | function | `minigccg3.s:28739` | `` |
| `asm_nops` | function | `minigccg3.s:28759` | `` |
| `asm_nslots` | function | `minigccg3.s:28763` | `` |
| `asm_parse_mem` | function | `minigccg3.s:30115` | `` |
| `asm_parse_one` | function | `minigccg3.s:30729` | `` |
| `asm_reg_sized` | function | `minigccg3.s:29004` | `` |
| `asm_scratch` | function | `minigccg3.s:28771` | `` |
| `asm_size` | function | `minigccg3.s:28755` | `` |
| `asm_slot` | function | `minigccg3.s:28751` | `` |
| `asm_text` | function | `minigccg3.s:28735` | `` |
| `asm_tmpl` | function | `minigccg3.s:28731` | `` |
| `asm_unique` | function | `minigccg3.s:28767` | `` |
| `assign_size` | function | `minigccg3.s:107` | `` |
| `assignment_expr` | function | `minigccg3.s:25101` | `` |
| `bitwise_and_expr` | function | `minigccg3.s:23907` | `` |
| `bitwise_or_expr` | function | `minigccg3.s:24063` | `` |
| `bitwise_xor_expr` | function | `minigccg3.s:23985` | `` |
| `break_target` | function | `minigccg3.s:211` | `` |
| `break_target_valid` | function | `minigccg3.s:215` | `` |
| `conditional_expr` | function | `minigccg3.s:24467` | `` |
| `const_flag` | function | `minigccg3.s:151` | `` |
| `continue_target` | function | `minigccg3.s:219` | `` |
| `continue_target_valid` | function | `minigccg3.s:223` | `` |
| `ctx_stack` | function | `minigccg3.s:43` | `` |
| `ctx_top` | function | `minigccg3.s:47` | `` |
| `current_elem_size` | function | `minigccg3.s:115` | `` |
| `current_elem_size2` | function | `minigccg3.s:119` | `` |
| `current_elem_unsigned` | function | `minigccg3.s:123` | `` |
| `current_file` | function | `minigccg3.s:51` | `` |
| `data_directive` | function | `minigccg3.s:43613` | `` |
| `deref_u` | function | `minigccg3.s:131` | `` |
| `deref_w` | function | `minigccg3.s:127` | `` |
| `emit` | function | `minigccg3.s:12757` | `` |
| `emit_asciz_body` | function | `minigccg3.s:13075` | `` |
| `emit_compound_op` | function | `minigccg3.s:24599` | `` |
| `emit_enabled` | function | `minigccg3.s:99` | `` |
| `emit_float_consts` | function | `minigccg3.s:46884` | `` |
| `emit_global_bss` | function | `minigccg3.s:43663` | `` |
| `emit_global_data_head` | function | `minigccg3.s:43777` | `` |
| `emit_global_initializer` | function | `minigccg3.s:44111` | `` |
| `emit_i` | function | `minigccg3.s:12871` | `` |
| `emit_is` | function | `minigccg3.s:12969` | `` |
| `emit_label` | function | `minigccg3.s:13399` | `` |
| `emit_s` | function | `minigccg3.s:12920` | `` |
| `emit_si` | function | `minigccg3.s:13022` | `` |
| `emit_string_pool` | function | `minigccg3.s:46983` | `` |
| `equality_expr` | function | `minigccg3.s:23429` | `` |
| `error` | function | `minigccg3.s:3334` | `` |
| `expr_pointed` | function | `minigccg3.s:111` | `` |
| `expr_type` | function | `minigccg3.s:139` | `` |
| `extern_flag` | function | `minigccg3.s:155` | `` |
| `find_macro` | function | `minigccg3.s:666` | `` |
| `find_symbol` | function | `minigccg3.s:13428` | `` |
| `float_const_count` | function | `minigccg3.s:187` | `` |
| `float_const_is_float` | function | `minigccg3.s:183` | `` |
| `float_const_str` | function | `minigccg3.s:179` | `` |
| `func_is_variadic` | function | `minigccg3.s:167` | `` |
| `function_has_return` | function | `minigccg3.s:95` | `` |
| `get_dir_from_path` | function | `minigccg3.s:3806` | `` |
| `global_emit_deferred` | function | `minigccg3.s:159` | `` |
| `handle_postfix` | function | `minigccg3.s:20155` | `` |
| `hash_init` | function | `minigccg3.s:4665` | `` |
| `hash_name` | function | `minigccg3.s:4607` | `` |
| `hash_table` | function | `minigccg3.s:71` | `` |
| `if_depth` | function | `minigccg3.s:287` | `` |
| `if_nest` | function | `minigccg3.s:283` | `` |
| `input_ptr` | function | `minigccg3.s:19` | `` |
| `intern_string` | function | `minigccg3.s:44018` | `` |
| `is_file_processed` | function | `minigccg3.s:3633` | `` |
| `label_counter` | function | `minigccg3.s:91` | `` |
| `lex_fail` | function | `minigccg3.s:5348` | `` |
| `lex_hex_val` | function | `minigccg3.s:6315` | `` |
| `lex_init_keywords` | function | `minigccg3.s:5615` | `` |
| `lex_is_int_suffix` | function | `minigccg3.s:6437` | `` |
| `lex_kw_add` | function | `minigccg3.s:5452` | `` |
| `lex_kw_blob` | function | `minigccg3.s:3` | `` |
| `lex_kw_count` | function | `minigccg3.s:11` | `` |
| `lex_kw_ids` | function | `minigccg3.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg3.s:6138` | `` |
| `lex_match_op` | function | `minigccg3.s:6232` | `` |
| `lex_number` | function | `minigccg3.s:6506` | `` |
| `lex_pass_top` | function | `minigccg3.s:15` | `` |
| `libc_global_name` | function | `minigccg3.s:13998` | `` |
| `line` | function | `minigccg3.s:35` | `` |
| `logical_and_expr` | function | `minigccg3.s:24141` | `` |
| `logical_or_expr` | function | `minigccg3.s:24304` | `` |
| `lvalue_address` | function | `minigccg3.s:19594` | `` |
| `macro_add` | function | `minigccg3.s:2257` | `` |
| `macro_bitand` | function | `minigccg3.s:2882` | `` |
| `macro_bitor` | function | `minigccg3.s:3033` | `` |
| `macro_bitxor` | function | `minigccg3.s:2968` | `` |
| `macro_cmp` | function | `minigccg3.s:2508` | `` |
| `macro_count` | function | `minigccg3.s:292` | `` |
| `macro_digit_val` | function | `minigccg3.s:1007` | `` |
| `macro_eq` | function | `minigccg3.s:2729` | `` |
| `macro_fold` | function | `minigccg3.s:3313` | `` |
| `macro_hex_digit` | function | `minigccg3.s:909` | `` |
| `macro_logand` | function | `minigccg3.s:3119` | `` |
| `macro_mul` | function | `minigccg3.s:2054` | `` |
| `macro_ok` | function | `minigccg3.s:864` | `` |
| `macro_or_expr` | function | `minigccg3.s:3216` | `` |
| `macro_p` | function | `minigccg3.s:860` | `` |
| `macro_primary` | function | `minigccg3.s:1128` | `` |
| `macro_shift` | function | `minigccg3.s:2355` | `` |
| `macro_skipws` | function | `minigccg3.s:868` | `` |
| `macro_unary` | function | `minigccg3.s:1926` | `` |
| `macros` | function | `minigccg3.s:662` | `` |
| `main` | function | `minigccg3.s:47085` | `` |
| `mark_file_processed` | function | `minigccg3.s:3694` | `` |
| `match` | function | `minigccg3.s:12719` | `` |
| `max_func_stack` | function | `minigccg3.s:103` | `` |
| `multiplicative_expr` | function | `minigccg3.s:21546` | `` |
| `my_isalnum` | function | `minigccg3.s:5303` | `` |
| `my_isalpha` | function | `minigccg3.s:5194` | `` |
| `my_isdigit` | function | `minigccg3.s:5263` | `` |
| `my_isspace` | function | `minigccg3.s:5105` | `` |
| `next_token` | function | `minigccg3.s:8036` | `` |
| `no_postfix_deref` | function | `minigccg3.s:135` | `` |
| `output` | function | `minigccg3.s:39` | `` |
| `parse_asm_block` | function | `minigccg3.s:33249` | `` |
| `parse_const_int` | function | `minigccg3.s:43855` | `` |
| `parse_enum` | function | `minigccg3.s:41636` | `` |
| `parse_function` | function | `minigccg3.s:39837` | `` |
| `parse_program` | function | `minigccg3.s:44828` | `` |
| `parse_sync_call` | function | `minigccg3.s:18291` | `` |
| `parse_trailing_align` | function | `minigccg3.s:33207` | `` |
| `parse_va_arg` | function | `minigccg3.s:18953` | `` |
| `parse_va_end` | function | `minigccg3.s:19488` | `` |
| `parse_va_start` | function | `minigccg3.s:18611` | `` |
| `pending_align` | function | `minigccg3.s:163` | `` |
| `pop_scope` | function | `minigccg3.s:4756` | `` |
| `processed_count` | function | `minigccg3.s:59` | `` |
| `processed_files` | function | `minigccg3.s:55` | `` |
| `ptr_init_count` | function | `minigccg3.s:247` | `` |
| `ptr_init_label` | function | `minigccg3.s:243` | `` |
| `ptr_init_name` | function | `minigccg3.s:239` | `` |
| `push_scope` | function | `minigccg3.s:4704` | `` |
| `read_include_file` | function | `minigccg3.s:4399` | `` |
| `relational_expr` | function | `minigccg3.s:22827` | `` |
| `resolve_local_include` | function | `minigccg3.s:3949` | `` |
| `restart` | function | `minigccg3.s:8040` | `` |
| `restart_int` | function | `minigccg3.s:38567` | `` |
| `restart_typedef` | function | `minigccg3.s:37448` | `` |
| `restore_parser_state` | function | `minigccg3.s:453` | `` |
| `safe_malloc` | function | `minigccg3.s:3386` | `` |
| `safe_strcpy` | function | `minigccg3.s:3441` | `` |
| `safe_strtoll` | function | `minigccg3.s:3518` | `` |
| `save_parser_state` | function | `minigccg3.s:296` | `` |
| `scope_depth` | function | `minigccg3.s:83` | `` |
| `scope_stack_stk` | function | `minigccg3.s:79` | `` |
| `scope_stack_sym` | function | `minigccg3.s:75` | `` |
| `shift_expr` | function | `minigccg3.s:22681` | `` |
| `skip_gcc_attribute` | function | `minigccg3.s:32727` | `` |
| `skip_struct` | function | `minigccg3.s:42405` | `` |
| `skip_struct_fields` | function | `minigccg3.s:42067` | `` |
| `skip_typedef` | function | `minigccg3.s:43059` | `` |
| `source_start` | function | `minigccg3.s:23` | `` |
| `stack_size` | function | `minigccg3.s:87` | `` |
| `statement` | function | `minigccg3.s:33818` | `` |
| `static_flag` | function | `minigccg3.s:143` | `` |
| `str_label_counter` | function | `minigccg3.s:227` | `` |
| `string_count` | function | `minigccg3.s:235` | `` |
| `string_pool` | function | `minigccg3.s:231` | `` |
| `struct_member_count` | function | `minigccg3.s:279` | `` |
| `struct_member_elem_sizes` | function | `minigccg3.s:267` | `` |
| `struct_member_is_float` | function | `minigccg3.s:275` | `` |
| `struct_member_names` | function | `minigccg3.s:255` | `` |
| `struct_member_offsets` | function | `minigccg3.s:259` | `` |
| `struct_member_sizes` | function | `minigccg3.s:263` | `` |
| `struct_member_unsigned` | function | `minigccg3.s:271` | `` |
| `struct_total_size` | function | `minigccg3.s:251` | `` |
| `switch_case_count` | function | `minigccg3.s:199` | `` |
| `switch_case_labels` | function | `minigccg3.s:195` | `` |
| `switch_case_values` | function | `minigccg3.s:191` | `` |
| `switch_default_label` | function | `minigccg3.s:207` | `` |
| `switch_has_default` | function | `minigccg3.s:203` | `` |
| `symbol_count` | function | `minigccg3.s:67` | `` |
| `symbols` | function | `minigccg3.s:63` | `` |
| `tok` | function | `minigccg3.s:31` | `` |
| `token` | function | `minigccg3.s:27` | `` |
| `truncate_symbols` | function | `minigccg3.s:4952` | `` |
| `typedef_name` | function | `minigccg3.s:14126` | `` |
| `typedef_size` | function | `minigccg3.s:14293` | `` |
| `typedef_uns` | function | `minigccg3.s:14460` | `` |
| `unary` | function | `minigccg3.s:14536` | `` |
| `unary_expr` | function | `minigccg3.s:21521` | `` |
| `unsigned_type` | function | `minigccg3.s:147` | `` |
| `vararg_nfixed` | function | `minigccg3.s:171` | `` |
| `vararg_save_off` | function | `minigccg3.s:175` | `` |
| `_start` | function | `minigccg4.s:51933` | `` |
| `add_macro` | function | `minigccg4.s:730` | `` |
| `add_symbol` | function | `minigccg4.s:13515` | `` |
| `additive_expr` | function | `minigccg4.s:22168` | `` |
| `arg_reg` | function | `minigccg4.s:13922` | `` |
| `asm_assign_homes` | function | `minigccg4.s:31700` | `` |
| `asm_emit_all` | function | `minigccg4.s:32145` | `` |
| `asm_emit_ss` | function | `minigccg4.s:30676` | `` |
| `asm_emit_template` | function | `minigccg4.s:29875` | `` |
| `asm_fixed_home` | function | `minigccg4.s:29811` | `` |
| `asm_home` | function | `minigccg4.s:28747` | `` |
| `asm_home_text` | function | `minigccg4.s:28847` | `` |
| `asm_is_out` | function | `minigccg4.s:28743` | `` |
| `asm_mem` | function | `minigccg4.s:28739` | `` |
| `asm_nops` | function | `minigccg4.s:28759` | `` |
| `asm_nslots` | function | `minigccg4.s:28763` | `` |
| `asm_parse_mem` | function | `minigccg4.s:30115` | `` |
| `asm_parse_one` | function | `minigccg4.s:30729` | `` |
| `asm_reg_sized` | function | `minigccg4.s:29004` | `` |
| `asm_scratch` | function | `minigccg4.s:28771` | `` |
| `asm_size` | function | `minigccg4.s:28755` | `` |
| `asm_slot` | function | `minigccg4.s:28751` | `` |
| `asm_text` | function | `minigccg4.s:28735` | `` |
| `asm_tmpl` | function | `minigccg4.s:28731` | `` |
| `asm_unique` | function | `minigccg4.s:28767` | `` |
| `assign_size` | function | `minigccg4.s:107` | `` |
| `assignment_expr` | function | `minigccg4.s:25101` | `` |
| `bitwise_and_expr` | function | `minigccg4.s:23907` | `` |
| `bitwise_or_expr` | function | `minigccg4.s:24063` | `` |
| `bitwise_xor_expr` | function | `minigccg4.s:23985` | `` |
| `break_target` | function | `minigccg4.s:211` | `` |
| `break_target_valid` | function | `minigccg4.s:215` | `` |
| `conditional_expr` | function | `minigccg4.s:24467` | `` |
| `const_flag` | function | `minigccg4.s:151` | `` |
| `continue_target` | function | `minigccg4.s:219` | `` |
| `continue_target_valid` | function | `minigccg4.s:223` | `` |
| `ctx_stack` | function | `minigccg4.s:43` | `` |
| `ctx_top` | function | `minigccg4.s:47` | `` |
| `current_elem_size` | function | `minigccg4.s:115` | `` |
| `current_elem_size2` | function | `minigccg4.s:119` | `` |
| `current_elem_unsigned` | function | `minigccg4.s:123` | `` |
| `current_file` | function | `minigccg4.s:51` | `` |
| `data_directive` | function | `minigccg4.s:43613` | `` |
| `deref_u` | function | `minigccg4.s:131` | `` |
| `deref_w` | function | `minigccg4.s:127` | `` |
| `emit` | function | `minigccg4.s:12757` | `` |
| `emit_asciz_body` | function | `minigccg4.s:13075` | `` |
| `emit_compound_op` | function | `minigccg4.s:24599` | `` |
| `emit_enabled` | function | `minigccg4.s:99` | `` |
| `emit_float_consts` | function | `minigccg4.s:46884` | `` |
| `emit_global_bss` | function | `minigccg4.s:43663` | `` |
| `emit_global_data_head` | function | `minigccg4.s:43777` | `` |
| `emit_global_initializer` | function | `minigccg4.s:44111` | `` |
| `emit_i` | function | `minigccg4.s:12871` | `` |
| `emit_is` | function | `minigccg4.s:12969` | `` |
| `emit_label` | function | `minigccg4.s:13399` | `` |
| `emit_s` | function | `minigccg4.s:12920` | `` |
| `emit_si` | function | `minigccg4.s:13022` | `` |
| `emit_string_pool` | function | `minigccg4.s:46983` | `` |
| `equality_expr` | function | `minigccg4.s:23429` | `` |
| `error` | function | `minigccg4.s:3334` | `` |
| `expr_pointed` | function | `minigccg4.s:111` | `` |
| `expr_type` | function | `minigccg4.s:139` | `` |
| `extern_flag` | function | `minigccg4.s:155` | `` |
| `find_macro` | function | `minigccg4.s:666` | `` |
| `find_symbol` | function | `minigccg4.s:13428` | `` |
| `float_const_count` | function | `minigccg4.s:187` | `` |
| `float_const_is_float` | function | `minigccg4.s:183` | `` |
| `float_const_str` | function | `minigccg4.s:179` | `` |
| `func_is_variadic` | function | `minigccg4.s:167` | `` |
| `function_has_return` | function | `minigccg4.s:95` | `` |
| `get_dir_from_path` | function | `minigccg4.s:3806` | `` |
| `global_emit_deferred` | function | `minigccg4.s:159` | `` |
| `handle_postfix` | function | `minigccg4.s:20155` | `` |
| `hash_init` | function | `minigccg4.s:4665` | `` |
| `hash_name` | function | `minigccg4.s:4607` | `` |
| `hash_table` | function | `minigccg4.s:71` | `` |
| `if_depth` | function | `minigccg4.s:287` | `` |
| `if_nest` | function | `minigccg4.s:283` | `` |
| `input_ptr` | function | `minigccg4.s:19` | `` |
| `intern_string` | function | `minigccg4.s:44018` | `` |
| `is_file_processed` | function | `minigccg4.s:3633` | `` |
| `label_counter` | function | `minigccg4.s:91` | `` |
| `lex_fail` | function | `minigccg4.s:5348` | `` |
| `lex_hex_val` | function | `minigccg4.s:6315` | `` |
| `lex_init_keywords` | function | `minigccg4.s:5615` | `` |
| `lex_is_int_suffix` | function | `minigccg4.s:6437` | `` |
| `lex_kw_add` | function | `minigccg4.s:5452` | `` |
| `lex_kw_blob` | function | `minigccg4.s:3` | `` |
| `lex_kw_count` | function | `minigccg4.s:11` | `` |
| `lex_kw_ids` | function | `minigccg4.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg4.s:6138` | `` |
| `lex_match_op` | function | `minigccg4.s:6232` | `` |
| `lex_number` | function | `minigccg4.s:6506` | `` |
| `lex_pass_top` | function | `minigccg4.s:15` | `` |
| `libc_global_name` | function | `minigccg4.s:13998` | `` |
| `line` | function | `minigccg4.s:35` | `` |
| `logical_and_expr` | function | `minigccg4.s:24141` | `` |
| `logical_or_expr` | function | `minigccg4.s:24304` | `` |
| `lvalue_address` | function | `minigccg4.s:19594` | `` |
| `macro_add` | function | `minigccg4.s:2257` | `` |
| `macro_bitand` | function | `minigccg4.s:2882` | `` |
| `macro_bitor` | function | `minigccg4.s:3033` | `` |
| `macro_bitxor` | function | `minigccg4.s:2968` | `` |
| `macro_cmp` | function | `minigccg4.s:2508` | `` |
| `macro_count` | function | `minigccg4.s:292` | `` |
| `macro_digit_val` | function | `minigccg4.s:1007` | `` |
| `macro_eq` | function | `minigccg4.s:2729` | `` |
| `macro_fold` | function | `minigccg4.s:3313` | `` |
| `macro_hex_digit` | function | `minigccg4.s:909` | `` |
| `macro_logand` | function | `minigccg4.s:3119` | `` |
| `macro_mul` | function | `minigccg4.s:2054` | `` |
| `macro_ok` | function | `minigccg4.s:864` | `` |
| `macro_or_expr` | function | `minigccg4.s:3216` | `` |
| `macro_p` | function | `minigccg4.s:860` | `` |
| `macro_primary` | function | `minigccg4.s:1128` | `` |
| `macro_shift` | function | `minigccg4.s:2355` | `` |
| `macro_skipws` | function | `minigccg4.s:868` | `` |
| `macro_unary` | function | `minigccg4.s:1926` | `` |
| `macros` | function | `minigccg4.s:662` | `` |
| `main` | function | `minigccg4.s:47085` | `` |
| `mark_file_processed` | function | `minigccg4.s:3694` | `` |
| `match` | function | `minigccg4.s:12719` | `` |
| `max_func_stack` | function | `minigccg4.s:103` | `` |
| `multiplicative_expr` | function | `minigccg4.s:21546` | `` |
| `my_isalnum` | function | `minigccg4.s:5303` | `` |
| `my_isalpha` | function | `minigccg4.s:5194` | `` |
| `my_isdigit` | function | `minigccg4.s:5263` | `` |
| `my_isspace` | function | `minigccg4.s:5105` | `` |
| `next_token` | function | `minigccg4.s:8036` | `` |
| `no_postfix_deref` | function | `minigccg4.s:135` | `` |
| `output` | function | `minigccg4.s:39` | `` |
| `parse_asm_block` | function | `minigccg4.s:33249` | `` |
| `parse_const_int` | function | `minigccg4.s:43855` | `` |
| `parse_enum` | function | `minigccg4.s:41636` | `` |
| `parse_function` | function | `minigccg4.s:39837` | `` |
| `parse_program` | function | `minigccg4.s:44828` | `` |
| `parse_sync_call` | function | `minigccg4.s:18291` | `` |
| `parse_trailing_align` | function | `minigccg4.s:33207` | `` |
| `parse_va_arg` | function | `minigccg4.s:18953` | `` |
| `parse_va_end` | function | `minigccg4.s:19488` | `` |
| `parse_va_start` | function | `minigccg4.s:18611` | `` |
| `pending_align` | function | `minigccg4.s:163` | `` |
| `pop_scope` | function | `minigccg4.s:4756` | `` |
| `processed_count` | function | `minigccg4.s:59` | `` |
| `processed_files` | function | `minigccg4.s:55` | `` |
| `ptr_init_count` | function | `minigccg4.s:247` | `` |
| `ptr_init_label` | function | `minigccg4.s:243` | `` |
| `ptr_init_name` | function | `minigccg4.s:239` | `` |
| `push_scope` | function | `minigccg4.s:4704` | `` |
| `read_include_file` | function | `minigccg4.s:4399` | `` |
| `relational_expr` | function | `minigccg4.s:22827` | `` |
| `resolve_local_include` | function | `minigccg4.s:3949` | `` |
| `restart` | function | `minigccg4.s:8040` | `` |
| `restart_int` | function | `minigccg4.s:38567` | `` |
| `restart_typedef` | function | `minigccg4.s:37448` | `` |
| `restore_parser_state` | function | `minigccg4.s:453` | `` |
| `safe_malloc` | function | `minigccg4.s:3386` | `` |
| `safe_strcpy` | function | `minigccg4.s:3441` | `` |
| `safe_strtoll` | function | `minigccg4.s:3518` | `` |
| `save_parser_state` | function | `minigccg4.s:296` | `` |
| `scope_depth` | function | `minigccg4.s:83` | `` |
| `scope_stack_stk` | function | `minigccg4.s:79` | `` |
| `scope_stack_sym` | function | `minigccg4.s:75` | `` |
| `shift_expr` | function | `minigccg4.s:22681` | `` |
| `skip_gcc_attribute` | function | `minigccg4.s:32727` | `` |
| `skip_struct` | function | `minigccg4.s:42405` | `` |
| `skip_struct_fields` | function | `minigccg4.s:42067` | `` |
| `skip_typedef` | function | `minigccg4.s:43059` | `` |
| `source_start` | function | `minigccg4.s:23` | `` |
| `stack_size` | function | `minigccg4.s:87` | `` |
| `statement` | function | `minigccg4.s:33818` | `` |
| `static_flag` | function | `minigccg4.s:143` | `` |
| `str_label_counter` | function | `minigccg4.s:227` | `` |
| `string_count` | function | `minigccg4.s:235` | `` |
| `string_pool` | function | `minigccg4.s:231` | `` |
| `struct_member_count` | function | `minigccg4.s:279` | `` |
| `struct_member_elem_sizes` | function | `minigccg4.s:267` | `` |
| `struct_member_is_float` | function | `minigccg4.s:275` | `` |
| `struct_member_names` | function | `minigccg4.s:255` | `` |
| `struct_member_offsets` | function | `minigccg4.s:259` | `` |
| `struct_member_sizes` | function | `minigccg4.s:263` | `` |
| `struct_member_unsigned` | function | `minigccg4.s:271` | `` |
| `struct_total_size` | function | `minigccg4.s:251` | `` |
| `switch_case_count` | function | `minigccg4.s:199` | `` |
| `switch_case_labels` | function | `minigccg4.s:195` | `` |
| `switch_case_values` | function | `minigccg4.s:191` | `` |
| `switch_default_label` | function | `minigccg4.s:207` | `` |
| `switch_has_default` | function | `minigccg4.s:203` | `` |
| `symbol_count` | function | `minigccg4.s:67` | `` |
| `symbols` | function | `minigccg4.s:63` | `` |
| `tok` | function | `minigccg4.s:31` | `` |
| `token` | function | `minigccg4.s:27` | `` |
| `truncate_symbols` | function | `minigccg4.s:4952` | `` |
| `typedef_name` | function | `minigccg4.s:14126` | `` |
| `typedef_size` | function | `minigccg4.s:14293` | `` |
| `typedef_uns` | function | `minigccg4.s:14460` | `` |
| `unary` | function | `minigccg4.s:14536` | `` |
| `unary_expr` | function | `minigccg4.s:21521` | `` |
| `unsigned_type` | function | `minigccg4.s:147` | `` |
| `vararg_nfixed` | function | `minigccg4.s:171` | `` |
| `vararg_save_off` | function | `minigccg4.s:175` | `` |
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
| `volatile` | function | `tests/neg_asm.c:3` | `__asm__ volatile("mov %0, %%rax" : "=z"(x));` |
| `main` | function | `tests/neg_asm2.c:1` | `int main(void)` |
| `volatile` | function | `tests/neg_asm2.c:4` | `__asm__ volatile("nop" : "=a"(a), "=a"(b));` |
| `main` | function | `tests/neg_asm3.c:1` | `int main(void)` |
| `volatile` | function | `tests/neg_asm3.c:3` | `__asm__ volatile("nop" : "+r"(a));` |
| `main` | function | `tests/neg_attr.c:2` | `int main(void)` |
| `main` | function | `tests/neg_comment.c:1` | `int main(void)` |
| `main` | function | `tests/neg_float.c:1` | `int main(void)` |
| `main` | function | `tests/neg_hex.c:1` | `int main(void)` |
| `main` | function | `tests/neg_octal.c:1` | `int main(void)` |
| `__builtin_va_end` | function | `tests/neg_va.c:4` | `__builtin_va_end(ap);` |
| `__builtin_va_start` | function | `tests/neg_va.c:3` | `__builtin_va_start(ap, ap);` |
| `main` | function | `tests/neg_va.c:1` | `int main(void)` |
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
| `main` | function | `tests/t_asm3.c:5` | `int main(void)` |
| `printf` | function | `tests/t_asm3.c:10` | `printf("%d\n", (lo == 0 && hi == 0) ? 0 : 1);` |
| `volatile` | function | `tests/t_asm3.c:9` | `__asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi));` |
| `__attribute__` | function | `tests/t_attr.c:3` | `typedef struct __attribute__((packed))` |
| `__attribute__` | function | `tests/t_attr.c:11` | `__attribute__((always_inline)) static inline int sq(int x)` |
| `knoreturn` | function | `tests/t_attr.c:22` | `void knoreturn(void)` |
| `ksetjmp` | function | `tests/t_attr.c:17` | `int ksetjmp(long buf)` |
| `limit` | type_alias | `tests/t_attr.c:3` | `typedef struct __attribute__((packed)) { uint16_t limit;` |
| `main` | function | `tests/t_attr.c:24` | `int main(void)` |
| `printf` | function | `tests/t_attr.c:31` | `printf("%d %d %d %d %d\n", id.limit, id.base == 200, arr[0], g, sq(6));` |
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
| `add_shorts` | function | `tests/t_stdint.c:33` | `short add_shorts(short a, short b)` |
| `idtr_t` | struct | `tests/t_stdint.c:4` | `` |
| `loads_s16` | function | `tests/t_stdint.c:25` | `int16_t loads_s16(int16_t v)` |
| `loads_u32` | function | `tests/t_stdint.c:29` | `uint32_t loads_u32(uint32_t v)` |
| `loads_u8` | function | `tests/t_stdint.c:21` | `uint8_t loads_u8(uint8_t v)` |
| `main` | function | `tests/t_stdint.c:37` | `int main(void)` |
| `printf` | function | `tests/t_stdint.c:49` | `printf("%d %d %d\n", gu8, gi8, gu16);` |
| `main` | function | `tests/t_strings.c:2` | `int main(void)` |
| `printf` | function | `tests/t_strings.c:4` | `printf("hello\n");` |
| `Point` | struct | `tests/t_struct.c:3` | `` |
| `main` | function | `tests/t_struct.c:17` | `int main(void)` |
| `manhattan` | function | `tests/t_struct.c:9` | `int manhattan(Point *p)` |
| `printf` | function | `tests/t_struct.c:22` | `printf("%d %d\n", pp->x, pp->y);` |
| `classify` | function | `tests/t_switch.c:2` | `int classify(int v)` |
| `main` | function | `tests/t_switch.c:13` | `int main(void)` |
| `printf` | function | `tests/t_switch.c:15` | `printf("%d %d %d\n", classify(1), classify(2), classify(3));` |
| `__sync_lock_release` | function | `tests/t_sync.c:16` | `__sync_lock_release(&flag);` |
| `__sync_synchronize` | function | `tests/t_sync.c:27` | `__sync_synchronize();` |
| `main` | function | `tests/t_sync.c:5` | `int main(void)` |
| `printf` | function | `tests/t_sync.c:11` | `printf("%d %d %d\n", a, b, ctr);` |
| `Pair` | struct | `tests/t_typedef.c:9` | `` |
| `main` | function | `tests/t_typedef.c:15` | `int main(void)` |
| `myint` | type_alias | `tests/t_typedef.c:2` | `typedef int myint;` |
| `printf` | function | `tests/t_typedef.c:18` | `printf("%d\n", shared + 2);` |
| `__builtin_va_end` | function | `tests/t_variadic.c:43` | `__builtin_va_end(ap);` |
| `__builtin_va_start` | function | `tests/t_variadic.c:14` | `__builtin_va_start(ap, fmt);` |
| `main` | function | `tests/t_variadic.c:58` | `int main(void)` |
| `mini_kprintf` | function | `tests/t_variadic.c:11` | `void mini_kprintf(const char *fmt, ...)` |
| `mini_puts` | function | `tests/t_variadic.c:4` | `void mini_puts(const char *s)` |
| `printf` | function | `tests/t_variadic.c:68` | `printf("%d %d\n", vsum(3, 10L, 20L, 30L), vsum(1, 99L));` |
| `putchar` | function | `tests/t_variadic.c:2` | `int putchar(int c);` |
| `vsum` | function | `tests/t_variadic.c:45` | `long vsum(int n, ...)` |
| `main` | function | `tests/t_while.c:2` | `int main(void)` |
| `printf` | function | `tests/t_while.c:12` | `printf("%d %d\n", i, sum);` |
