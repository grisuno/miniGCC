# Symbols

| Symbol | Kind | File:Line | Signature |
|--------|------|-----------|-----------|
| `ASM_MAX_OPS` | macro | `minigcc.c:3378` | `#define ASM_MAX_OPS` |
| `ASM_TMPL_SZ` | macro | `minigcc.c:3380` | `#define ASM_TMPL_SZ` |
| `ASM_TXT_SZ` | macro | `minigcc.c:3381` | `#define ASM_TXT_SZ` |
| `CONST_VAR_FLAG` | macro | `minigcc.c:218` | `#define CONST_VAR_FLAG` |
| `FileContext` | struct | `minigcc.c:96` | `` |
| `HASH_TABLE_SIZE` | macro | `minigcc.c:132` | `#define HASH_TABLE_SIZE` |
| `LEX_KW_BLOB` | macro | `minigcc.c:82` | `#define LEX_KW_BLOB` |
| `LEX_KW_CAP` | macro | `minigcc.c:80` | `#define LEX_KW_CAP` |
| `MAX_CASES_PER_SWITCH` | macro | `minigcc.c:170` | `#define MAX_CASES_PER_SWITCH` |
| `MAX_DEFINED_FUNCS` | macro | `minigcc.c:212` | `#define MAX_DEFINED_FUNCS` |
| `MAX_FLOAT_CONSTS` | macro | `minigcc.c:165` | `#define MAX_FLOAT_CONSTS` |
| `MAX_IDENT_LEN` | macro | `minigcc.c:17` | `#define MAX_IDENT_LEN` |
| `MAX_IF_NESTING` | macro | `minigcc.c:216` | `#define MAX_IF_NESTING` |
| `MAX_INCLUDE_DEPTH` | macro | `minigcc.c:19` | `#define MAX_INCLUDE_DEPTH` |
| `MAX_MACROS` | macro | `minigcc.c:224` | `#define MAX_MACROS` |
| `MAX_PROCESSED_FILES` | macro | `minigcc.c:20` | `#define MAX_PROCESSED_FILES` |
| `MAX_PTR_INITS` | macro | `minigcc.c:192` | `#define MAX_PTR_INITS` |
| `MAX_SCOPE_DEPTH` | macro | `minigcc.c:134` | `#define MAX_SCOPE_DEPTH` |
| `MAX_SOURCE_SIZE` | macro | `minigcc.c:18` | `#define MAX_SOURCE_SIZE` |
| `MAX_STRINGS` | macro | `minigcc.c:183` | `#define MAX_STRINGS` |
| `MAX_STRUCT_MEMBERS` | macro | `minigcc.c:202` | `#define MAX_STRUCT_MEMBERS` |
| `MAX_SYMBOLS` | macro | `minigcc.c:16` | `#define MAX_SYMBOLS` |
| `MAX_TOKEN_LEN` | macro | `minigcc.c:14` | `#define MAX_TOKEN_LEN` |
| `Macro` | struct | `minigcc.c:316` | `` |
| `ParserState` | struct | `minigcc.c:228` | `` |
| `STACK_ALIGN` | macro | `minigcc.c:21` | `#define STACK_ALIGN` |
| `Symbol` | struct | `minigcc.c:109` | `` |
| `add_macro` | function | `minigcc.c:331` | `static void add_macro(const char *name, int value)` |
| `add_symbol` | function | `minigcc.c:1658` | `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...` |
| `additive_expr` | function | `minigcc.c:2832` | `static void additive_expr(void)` |
| `arg_reg` | function | `minigcc.c:1739` | `static const char *arg_reg(int i)` |
| `asm_assign_homes` | function | `minigcc.c:3623` | `static void asm_assign_homes(void)` |
| `asm_emit_all` | function | `minigcc.c:3685` | `static void asm_emit_all(void)` |
| `asm_emit_ss` | function | `minigcc.c:3549` | `static void asm_emit_ss(const char *fmt, const char *a, const char *b)` |
| `asm_emit_template` | function | `minigcc.c:3464` | `static void asm_emit_template(void)` |
| `asm_fixed_home` | function | `minigcc.c:3454` | `static int asm_fixed_home(int c)` |
| `asm_home_text` | function | `minigcc.c:3402` | `static void asm_home_text(int home, char *buf)` |
| `asm_parse_mem` | function | `minigcc.c:3491` | `static void asm_parse_mem(int idx, int is_out)` |
| `asm_parse_one` | function | `minigcc.c:3555` | `static void asm_parse_one(int idx, int is_out)` |
| `asm_reg_sized` | function | `minigcc.c:3412` | `static void asm_reg_sized(int home, int size, char *buf)` |
| `asm_scratch` | function | `minigcc.c:3393` | `static const char *asm_scratch(int i)` |
| `assignment_expr` | function | `minigcc.c:3172` | `static void assignment_expr(void)` |
| `bitwise_and_expr` | function | `minigcc.c:3024` | `static void bitwise_and_expr(void)` |
| `bitwise_or_expr` | function | `minigcc.c:3056` | `static void bitwise_or_expr(void)` |
| `bitwise_xor_expr` | function | `minigcc.c:3040` | `static void bitwise_xor_expr(void)` |
| `conditional_expr` | function | `minigcc.c:3112` | `static void conditional_expr(void)` |
| `data_directive` | function | `minigcc.c:5170` | `static const char *data_directive(int size)` |
| `emit` | function | `minigcc.c:1581` | `static void emit(const char *s)` |
| `emit_asciz_body` | function | `minigcc.c:1623` | `static void emit_asciz_body(const char *s)` |
| `emit_compound_op` | function | `minigcc.c:3131` | `static void emit_compound_op(int op, int asize)` |
| `emit_float_consts` | function | `minigcc.c:5527` | `static void emit_float_consts(void)` |
| `emit_global_bss` | function | `minigcc.c:5178` | `static void emit_global_bss(const char *name, int is_static, int size)` |
| `emit_global_data_head` | function | `minigcc.c:5189` | `static void emit_global_data_head(const char *name, int is_static)` |
| `emit_global_initializer` | function | `minigcc.c:5243` | `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...` |
| `emit_i` | function | `minigcc.c:1595` | `static void emit_i(const char *fmt, int v)` |
| `emit_is` | function | `minigcc.c:1607` | `static void emit_is(const char *fmt, int v, const char *s)` |
| `emit_label` | function | `minigcc.c:1641` | `static void emit_label(int label)` |
| `emit_s` | function | `minigcc.c:1601` | `static void emit_s(const char *fmt, const char *s)` |
| `emit_si` | function | `minigcc.c:1613` | `static void emit_si(const char *fmt, const char *s, int v)` |
| `emit_spill_reverse` | function | `minigcc.c:1859` | `static void emit_spill_reverse(int argc)` |
| `emit_string_pool` | function | `minigcc.c:5537` | `static void emit_string_pool(void)` |
| `equality_expr` | function | `minigcc.c:2974` | `static void equality_expr(void)` |
| `error` | function | `minigcc.c:633` | `static void error(const char *msg)` |
| `exit` | function | `minigcc.c:637` | `exit(EXIT_FAILURE);` |
| `fclose` | function | `minigcc.c:714` | `fclose(f);` |
| `find_macro` | function | `minigcc.c:322` | `static int find_macro(const char *name)` |
| `find_symbol` | function | `minigcc.c:1648` | `static int find_symbol(const char *name)` |
| `fprintf` | function | `minigcc.c:635` | `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);` |
| `fputc` | function | `minigcc.c:1586` | `fputc('%', output);` |
| `fputs` | function | `minigcc.c:3480` | `fputs(asm_text[oi], output);` |
| `free` | function | `minigcc.c:763` | `free(buf);` |
| `fseek` | function | `minigcc.c:753` | `fseek(f, 0, SEEK_END);` |
| `get_dir_from_path` | function | `minigcc.c:691` | `static void get_dir_from_path(const char *path, char *dir, int dir_sz)` |
| `handle_postfix` | function | `minigcc.c:2563` | `static void handle_postfix(int is_lvalue)` |
| `hash_init` | function | `minigcc.c:783` | `static void hash_init(void)` |
| `hash_name` | function | `minigcc.c:774` | `static int hash_name(const char *name)` |
| `intern_string` | function | `minigcc.c:5226` | `static int intern_string(const char *text)` |
| `is_defined_func` | function | `minigcc.c:1760` | `static int is_defined_func(const char *name)` |
| `is_file_processed` | function | `minigcc.c:670` | `static int is_file_processed(const char *path)` |
| `lex_fail` | function | `minigcc.c:871` | `static void lex_fail(const char *msg, char *start, char *end)` |
| `lex_hex_val` | function | `minigcc.c:958` | `static int lex_hex_val(int c)` |
| `lex_init_keywords` | function | `minigcc.c:894` | `static void lex_init_keywords(void)` |
| `lex_is_int_suffix` | function | `minigcc.c:965` | `static int lex_is_int_suffix(int c)` |
| `lex_kw_add` | function | `minigcc.c:881` | `static void lex_kw_add(const char *name, int id)` |
| `lex_kw_lookup` | function | `minigcc.c:934` | `static int lex_kw_lookup(void)` |
| `lex_match_op` | function | `minigcc.c:946` | `static int lex_match_op(const char *op, int id)` |
| `lex_number` | function | `minigcc.c:971` | `static void lex_number(void)` |
| `libc_global_name` | function | `minigcc.c:1911` | `static const char *libc_global_name(int i)` |
| `logical_and_expr` | function | `minigcc.c:3072` | `static void logical_and_expr(void)` |
| `logical_or_expr` | function | `minigcc.c:3092` | `static void logical_or_expr(void)` |
| `lvalue_address` | function | `minigcc.c:2506` | `static void lvalue_address(void)` |
| `macro_add` | function | `minigcc.c:484` | `static int macro_add(void)` |
| `macro_bitand` | function | `minigcc.c:558` | `static int macro_bitand(void)` |
| `macro_bitor` | function | `minigcc.c:586` | `static int macro_bitor(void)` |
| `macro_bitxor` | function | `minigcc.c:572` | `static int macro_bitxor(void)` |
| `macro_cmp` | function | `minigcc.c:518` | `static int macro_cmp(void)` |
| `macro_digit_val` | function | `minigcc.c:369` | `static int macro_digit_val(int c)` |
| `macro_eq` | function | `minigcc.c:541` | `static int macro_eq(void)` |
| `macro_fold` | function | `minigcc.c:628` | `static int macro_fold(void)` |
| `macro_hex_digit` | function | `minigcc.c:362` | `static int macro_hex_digit(int c)` |
| `macro_logand` | function | `minigcc.c:600` | `static int macro_logand(void)` |
| `macro_mul` | function | `minigcc.c:459` | `static int macro_mul(void)` |
| `macro_or_expr` | function | `minigcc.c:614` | `static int macro_or_expr(void)` |
| `macro_primary` | function | `minigcc.c:376` | `static int macro_primary(void)` |
| `macro_shift` | function | `minigcc.c:501` | `static int macro_shift(void)` |
| `macro_skipws` | function | `minigcc.c:358` | `static void macro_skipws(void)` |
| `macro_unary` | function | `minigcc.c:450` | `static int macro_unary(void)` |
| `main` | function | `minigcc.c:5547` | `int main(int argc, char **argv)` |
| `mark_file_processed` | function | `minigcc.c:679` | `static void mark_file_processed(const char *path)` |
| `match` | function | `minigcc.c:1576` | `static void match(int expected)` |
| `memcpy` | function | `minigcc.c:1783` | `memcpy(out_name, token, nlen);` |
| `multiplicative_expr` | function | `minigcc.c:2764` | `static void multiplicative_expr(void)` |
| `my_isalnum` | function | `minigcc.c:865` | `static int my_isalnum(int c)` |
| `my_isalpha` | function | `minigcc.c:854` | `static int my_isalpha(int c)` |
| `my_isdigit` | function | `minigcc.c:860` | `static int my_isdigit(int c)` |
| `my_isspace` | function | `minigcc.c:844` | `static int my_isspace(int c)` |
| `next_token` | function | `minigcc.c:1090` | `static void next_token(void)` |
| `note_defined_func` | function | `minigcc.c:1747` | `static void note_defined_func(const char *name)` |
| `parse_asm_block` | function | `minigcc.c:3790` | `static void parse_asm_block(void)` |
| `parse_const_int` | function | `minigcc.c:5203` | `static int parse_const_int(long long *out)` |
| `parse_enum` | function | `minigcc.c:4811` | `static void parse_enum(void)` |
| `parse_fnptr_declarator` | function | `minigcc.c:1770` | `static int parse_fnptr_declarator(char *out_name, int *out_count)` |
| `parse_function` | function | `minigcc.c:4600` | `static void parse_function(const char *name, int ret_type)` |
| `parse_indirect_call` | function | `minigcc.c:1871` | `static void parse_indirect_call(void)` |
| `parse_program` | function | `minigcc.c:5307` | `static void parse_program(void)` |
| `parse_sync_call` | function | `minigcc.c:2374` | `static void parse_sync_call(const char *name)` |
| `parse_trailing_align` | function | `minigcc.c:3783` | `static void parse_trailing_align(void)` |
| `parse_va_arg` | function | `minigcc.c:2441` | `static void parse_va_arg(void)` |
| `parse_va_end` | function | `minigcc.c:2491` | `static void parse_va_end(void)` |
| `parse_va_start` | function | `minigcc.c:2408` | `static void parse_va_start(void)` |
| `peek_call_argc` | function | `minigcc.c:1821` | `static int peek_call_argc(void)` |
| `pointer` | function | `minigcc.c:4676` | `subscript yields another pointer (stride 8) whose pointee is still the base type, so char** keeps char as the pointee an` |
| `pop_scope` | function | `minigcc.c:796` | `static void pop_scope(void)` |
| `push_scope` | function | `minigcc.c:788` | `static void push_scope(void)` |
| `read_include_file` | function | `minigcc.c:749` | `static char *read_include_file(const char *path)` |
| `record_typedef_alias` | function | `minigcc.c:4990` | `static void record_typedef_alias(const char *name, int size, int uns, int fnptr)` |
| `relational_expr` | function | `minigcc.c:2920` | `static void relational_expr(void)` |
| `resolve_local_include` | function | `minigcc.c:710` | `static char *resolve_local_include(const char *target)` |
| `restore_parser_state` | function | `minigcc.c:283` | `static void restore_parser_state(ParserState *state)` |
| `rewind` | function | `minigcc.c:759` | `rewind(f);` |
| `safe_malloc` | function | `minigcc.c:639` | `static void *safe_malloc(size_t size)` |
| `safe_strcpy` | function | `minigcc.c:648` | `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)` |
| `safe_strtoll` | function | `minigcc.c:657` | `static long safe_strtoll(const char *s)` |
| `save_parser_state` | function | `minigcc.c:255` | `static void save_parser_state(ParserState *state)` |
| `shift_expr` | function | `minigcc.c:2897` | `static void shift_expr(void)` |
| `skip_gcc_attribute` | function | `minigcc.c:3733` | `static int skip_gcc_attribute(void)` |
| `skip_struct` | function | `minigcc.c:4921` | `static void skip_struct(void)` |
| `skip_struct_fields` | function | `minigcc.c:4862` | `static void skip_struct_fields(int fsize, int funs, int ffloat)` |
| `skip_typedef` | function | `minigcc.c:5021` | `static void skip_typedef(void)` |
| `snprintf` | function | `minigcc.c:986` | `snprintf(token, MAX_TOKEN_LEN, "%ld", v);` |
| `statement` | function | `minigcc.c:3854` | `static void statement(void)` |
| `strcmp` | function | `minigcc.c:2008` | `strcmp(id_name, "__sync_lock_test_and_set") == 0 \|\|
                strcmp(id_name, "__sync_lock_...` |
| `strcmp` | function | `minigcc.c:2013` | `strcmp(id_name, "va_start") == 0)` |
| `strcmp` | function | `minigcc.c:2016` | `strcmp(id_name, "va_end") == 0)` |
| `strcmp` | function | `minigcc.c:2019` | `strcmp(id_name, "va_arg") == 0)` |
| `strcmp` | function | `minigcc.c:3754` | `strcmp(token, "returns_twice") == 0 \|\|
                       strcmp(token, "always_inline") == 0)` |
| `strcpy` | function | `minigcc.c:1831` | `strcpy(save_token, token);` |
| `strncpy` | function | `minigcc.c:1664` | `strncpy(d, name, MAX_IDENT_LEN - 1);` |
| `truncate_symbols` | function | `minigcc.c:826` | `static void truncate_symbols(int start_idx)` |
| `typedef_name` | function | `minigcc.c:1923` | `static const char *typedef_name(int i)` |
| `typedef_size` | function | `minigcc.c:1939` | `static int typedef_size(int i)` |
| `typedef_uns` | function | `minigcc.c:1955` | `static int typedef_uns(int i)` |
| `unary` | function | `minigcc.c:1964` | `static void unary(void)` |
| `unary_expr` | function | `minigcc.c:2749` | `static void unary_expr(void)` |
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
| `main` | function | `tests/neg_asm_ds.c:7` | `int main(void)` |
| `printf` | function | `tests/neg_asm_ds.c:9` | `printf("%ld\n", sum_d5(1, 2, 3, 4, 5, 6));` |
| `sum_d5` | function | `tests/neg_asm_ds.c:1` | `long sum_d5(long d, long a, long b, long c, long e, long f)` |
| `main` | function | `tests/neg_attr.c:2` | `int main(void)` |
| `main` | function | `tests/neg_comment.c:1` | `int main(void)` |
| `main` | function | `tests/neg_float.c:1` | `int main(void)` |
| `add2` | function | `tests/neg_fnptr.c:2` | `long add2(long a, long b)` |
| `long` | function | `tests/neg_fnptr.c:8` | `long (*f)(long, long);` |
| `main` | function | `tests/neg_fnptr.c:6` | `int main(void)` |
| `printf` | function | `tests/neg_fnptr.c:12` | `printf("%ld\n", x);` |
| `main` | function | `tests/neg_fnptr_call.c:2` | `int main(void)` |
| `printf` | function | `tests/neg_fnptr_call.c:8` | `printf("%ld\n", y);` |
| `add2` | function | `tests/neg_fnptr_cmp.c:2` | `long add2(long a, long b)` |
| `long` | function | `tests/neg_fnptr_cmp.c:12` | `long (*f)(long, long);` |
| `main` | function | `tests/neg_fnptr_cmp.c:10` | `int main(void)` |
| `mul2` | function | `tests/neg_fnptr_cmp.c:6` | `long mul2(long a, long b)` |
| `printf` | function | `tests/neg_fnptr_cmp.c:18` | `printf("%ld\n", r);` |
| `add2` | function | `tests/neg_fnptr_cmp0.c:2` | `long add2(long a, long b)` |
| `long` | function | `tests/neg_fnptr_cmp0.c:8` | `long (*f)(long, long);` |
| `main` | function | `tests/neg_fnptr_cmp0.c:6` | `int main(void)` |
| `printf` | function | `tests/neg_fnptr_cmp0.c:12` | `printf("%ld\n", r);` |
| `add2` | function | `tests/neg_fnptr_globalinit.c:1` | `long add2(long a, long b)` |
| `main` | function | `tests/neg_fnptr_globalinit.c:6` | `int main(void)` |
| `add2` | function | `tests/neg_fnptr_tern.c:2` | `long add2(long a, long b)` |
| `long` | function | `tests/neg_fnptr_tern.c:8` | `long (*f)(long, long);` |
| `main` | function | `tests/neg_fnptr_tern.c:6` | `int main(void)` |
| `printf` | function | `tests/neg_fnptr_tern.c:14` | `printf("%ld\n", r);` |
| `main` | function | `tests/neg_hex.c:1` | `int main(void)` |
| `main` | function | `tests/neg_octal.c:1` | `int main(void)` |
| `c` | type_alias | `tests/neg_typedef_arrcont.c:1` | `typedef int b, c[4];` |
| `main` | function | `tests/neg_typedef_arrcont.c:2` | `int main(void)` |
| `__builtin_va_end` | function | `tests/neg_va.c:4` | `__builtin_va_end(ap);` |
| `__builtin_va_start` | function | `tests/neg_va.c:3` | `__builtin_va_start(ap, ap);` |
| `main` | function | `tests/neg_va.c:1` | `int main(void)` |
| `main` | function | `tests/t_args.c:2` | `int main(int argc, char **argv)` |
| `printf` | function | `tests/t_args.c:4` | `printf("%d\n", argc);` |
| `long` | function | `tests/t_args7.c:17` | `long (*fp)(long, long, long, long, long, long, long);` |
| `main` | function | `tests/t_args7.c:15` | `int main(void)` |
| `mix8` | function | `tests/t_args7.c:10` | `long mix8(long a, long b, long c, long d, long e, long f, long g, long h)` |
| `printf` | function | `tests/t_args7.c:18` | `printf("%ld\n", sum7(1, 2, 3, 4, 5, 6, 7));` |
| `sum7` | function | `tests/t_args7.c:2` | `long sum7(long a, long b, long c, long d, long e, long f, long g)` |
| `sum8` | function | `tests/t_args7.c:6` | `long sum8(long a, long b, long c, long d, long e, long f, long g, long h)` |
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
| `add_ds` | function | `tests/t_asm_ds.c:15` | `long add_ds(long a, long b)` |
| `main` | function | `tests/t_asm_ds.c:57` | `int main(void)` |
| `printf` | function | `tests/t_asm_ds.c:59` | `printf("%ld\n", via_d(41));` |
| `ret_d` | function | `tests/t_asm_ds.c:21` | `long ret_d(long x)` |
| `ret_dc` | function | `tests/t_asm_ds.c:39` | `char ret_dc(void)` |
| `ret_di` | function | `tests/t_asm_ds.c:33` | `int ret_di(void)` |
| `ret_ds` | function | `tests/t_asm_ds.c:45` | `int16_t ret_ds(void)` |
| `ret_dw` | function | `tests/t_asm_ds.c:51` | `int32_t ret_dw(void)` |
| `ret_s` | function | `tests/t_asm_ds.c:27` | `long ret_s(long x)` |
| `via_d` | function | `tests/t_asm_ds.c:3` | `long via_d(long x)` |
| `via_s` | function | `tests/t_asm_ds.c:9` | `long via_s(long x)` |
| `volatile` | function | `tests/t_asm_ds.c:6` | `__asm__ volatile("movq %1, %0" : "=r"(r) : "D"(x));` |
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
| `add2` | function | `tests/t_fnptr.c:2` | `long add2(long a, long b)` |
| `apply2` | function | `tests/t_fnptr.c:10` | `long apply2(long (*f)(long, long), long x, long y)` |
| `f` | function | `tests/t_fnptr.c:12` | `return f(x, y);` |
| `long` | function | `tests/t_fnptr.c:16` | `long (*op)(long, long);` |
| `main` | function | `tests/t_fnptr.c:25` | `int main(void)` |
| `mul2` | function | `tests/t_fnptr.c:6` | `long mul2(long a, long b)` |
| `ops_t` | struct | `tests/t_fnptr.c:15` | `` |
| `printf` | function | `tests/t_fnptr.c:31` | `printf("%ld\n", f(10, 20));` |
| `run_op` | function | `tests/t_fnptr.c:21` | `long run_op(ops_t *o, long x, long y)` |
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
| `add64` | function | `tests/t_longlong.c:13` | `unsigned long long add64(unsigned long long a, unsigned long long b)` |
| `bump` | function | `tests/t_longlong.c:5` | `u64 bump(u64 x)` |
| `main` | function | `tests/t_longlong.c:19` | `int main(void)` |
| `negate` | function | `tests/t_longlong.c:9` | `s64 negate(s64 x)` |
| `printf` | function | `tests/t_longlong.c:26` | `printf("%llu\n", a + b);` |
| `s64` | type_alias | `tests/t_longlong.c:4` | `typedef long long s64;` |
| `u64` | type_alias | `tests/t_longlong.c:2` | `typedef unsigned long long u64;` |
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
| `R` | struct | `tests/t_struct_ul.c:3` | `` |
| `main` | function | `tests/t_struct_ul.c:12` | `int main(void)` |
| `printf` | function | `tests/t_struct_ul.c:22` | `printf("%lu\n", r.base);` |
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
| `bump` | function | `tests/t_unsigned.c:8` | `unsigned long bump(unsigned long x)` |
| `main` | function | `tests/t_unsigned.c:26` | `int main(void)` |
| `narrow` | function | `tests/t_unsigned.c:12` | `unsigned int narrow(unsigned int x)` |
| `printf` | function | `tests/t_unsigned.c:39` | `printf("%lu\n", c);` |
| `reg_base` | function | `tests/t_unsigned.c:22` | `unsigned long reg_base(ureg_t *r)` |
| `u32` | type_alias | `tests/t_unsigned.c:4` | `typedef unsigned int u32;` |
| `u64` | type_alias | `tests/t_unsigned.c:2` | `typedef unsigned long u64;` |
| `u8` | type_alias | `tests/t_unsigned.c:94` | `typedef unsigned char u8;` |
| `u8b` | type_alias | `tests/t_unsigned.c:96` | `typedef u8 u8b;` |
| `ureg2` | type_alias | `tests/t_unsigned.c:114` | `typedef ureg_t ureg2;` |
| `ureg_t` | struct | `tests/t_unsigned.c:17` | `` |
| `uword` | type_alias | `tests/t_unsigned.c:108` | `typedef u32 uword;` |
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
