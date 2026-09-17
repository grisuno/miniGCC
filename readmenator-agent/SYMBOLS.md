# Symbols

| Symbol | Kind | File:Line | Signature |
|--------|------|-----------|-----------|
| `ASM_MAX_OPS` | macro | `minigcc.c:3546` | `#define ASM_MAX_OPS` |
| `ASM_TMPL_SZ` | macro | `minigcc.c:3547` | `#define ASM_TMPL_SZ` |
| `ASM_TXT_SZ` | macro | `minigcc.c:3548` | `#define ASM_TXT_SZ` |
| `CONST_VAR_FLAG` | macro | `minigcc.c:220` | `#define CONST_VAR_FLAG` |
| `FileContext` | struct | `minigcc.c:96` | `` |
| `HASH_TABLE_SIZE` | macro | `minigcc.c:132` | `#define HASH_TABLE_SIZE` |
| `LEX_KW_BLOB` | macro | `minigcc.c:82` | `#define LEX_KW_BLOB` |
| `LEX_KW_CAP` | macro | `minigcc.c:81` | `#define LEX_KW_CAP` |
| `MAX_CASES_PER_SWITCH` | macro | `minigcc.c:172` | `#define MAX_CASES_PER_SWITCH` |
| `MAX_DEFINED_FUNCS` | macro | `minigcc.c:214` | `#define MAX_DEFINED_FUNCS` |
| `MAX_FLOAT_CONSTS` | macro | `minigcc.c:167` | `#define MAX_FLOAT_CONSTS` |
| `MAX_IDENT_LEN` | macro | `minigcc.c:17` | `#define MAX_IDENT_LEN` |
| `MAX_IF_NESTING` | macro | `minigcc.c:219` | `#define MAX_IF_NESTING` |
| `MAX_INCLUDE_DEPTH` | macro | `minigcc.c:19` | `#define MAX_INCLUDE_DEPTH` |
| `MAX_MACROS` | macro | `minigcc.c:227` | `#define MAX_MACROS` |
| `MAX_PROCESSED_FILES` | macro | `minigcc.c:20` | `#define MAX_PROCESSED_FILES` |
| `MAX_PTR_INITS` | macro | `minigcc.c:193` | `#define MAX_PTR_INITS` |
| `MAX_SCOPE_DEPTH` | macro | `minigcc.c:135` | `#define MAX_SCOPE_DEPTH` |
| `MAX_SOURCE_SIZE` | macro | `minigcc.c:18` | `#define MAX_SOURCE_SIZE` |
| `MAX_STRINGS` | macro | `minigcc.c:184` | `#define MAX_STRINGS` |
| `MAX_STRUCT_MEMBERS` | macro | `minigcc.c:203` | `#define MAX_STRUCT_MEMBERS` |
| `MAX_SYMBOLS` | macro | `minigcc.c:16` | `#define MAX_SYMBOLS` |
| `MAX_TOKEN_LEN` | macro | `minigcc.c:15` | `#define MAX_TOKEN_LEN` |
| `Macro` | struct | `minigcc.c:321` | `` |
| `ParserState` | struct | `minigcc.c:230` | `` |
| `STACK_ALIGN` | macro | `minigcc.c:21` | `#define STACK_ALIGN` |
| `Symbol` | struct | `minigcc.c:109` | `` |
| `add_macro` | function | `minigcc.c:337` | `static void add_macro(const char *name, int value)` |
| `add_symbol` | function | `minigcc.c:1664` | `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...` |
| `additive_expr` | function | `minigcc.c:2932` | `static void additive_expr(void)` |
| `arg_reg` | function | `minigcc.c:1745` | `static const char *arg_reg(int i)` |
| `asm_assign_homes` | function | `minigcc.c:3791` | `static void asm_assign_homes(void)` |
| `asm_emit_all` | function | `minigcc.c:3853` | `static void asm_emit_all(void)` |
| `asm_emit_ss` | function | `minigcc.c:3717` | `static void asm_emit_ss(const char *fmt, const char *a, const char *b)` |
| `asm_emit_template` | function | `minigcc.c:3632` | `static void asm_emit_template(void)` |
| `asm_fixed_home` | function | `minigcc.c:3622` | `static int asm_fixed_home(int c)` |
| `asm_home_text` | function | `minigcc.c:3570` | `static void asm_home_text(int home, char *buf)` |
| `asm_parse_mem` | function | `minigcc.c:3659` | `static void asm_parse_mem(int idx, int is_out)` |
| `asm_parse_one` | function | `minigcc.c:3723` | `static void asm_parse_one(int idx, int is_out)` |
| `asm_reg_sized` | function | `minigcc.c:3580` | `static void asm_reg_sized(int home, int size, char *buf)` |
| `asm_scratch` | function | `minigcc.c:3561` | `static const char *asm_scratch(int i)` |
| `assignment_expr` | function | `minigcc.c:3316` | `static void assignment_expr(void)` |
| `bitwise_and_expr` | function | `minigcc.c:3144` | `static void bitwise_and_expr(void)` |
| `bitwise_or_expr` | function | `minigcc.c:3180` | `static void bitwise_or_expr(void)` |
| `bitwise_xor_expr` | function | `minigcc.c:3162` | `static void bitwise_xor_expr(void)` |
| `conditional_expr` | function | `minigcc.c:3240` | `static void conditional_expr(void)` |
| `data_directive` | function | `minigcc.c:5338` | `static const char *data_directive(int size)` |
| `emit` | function | `minigcc.c:1587` | `static void emit(const char *s)` |
| `emit_asciz_body` | function | `minigcc.c:1628` | `static void emit_asciz_body(const char *s)` |
| `emit_compound_op` | function | `minigcc.c:3260` | `static void emit_compound_op(int op, int asize, int is_uns)` |
| `emit_float_consts` | function | `minigcc.c:5696` | `static void emit_float_consts(void)` |
| `emit_global_bss` | function | `minigcc.c:5346` | `static void emit_global_bss(const char *name, int is_static, int size)` |
| `emit_global_data_head` | function | `minigcc.c:5358` | `static void emit_global_data_head(const char *name, int is_static)` |
| `emit_global_initializer` | function | `minigcc.c:5411` | `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...` |
| `emit_i` | function | `minigcc.c:1601` | `static void emit_i(const char *fmt, int v)` |
| `emit_is` | function | `minigcc.c:1613` | `static void emit_is(const char *fmt, int v, const char *s)` |
| `emit_label` | function | `minigcc.c:1647` | `static void emit_label(int label)` |
| `emit_s` | function | `minigcc.c:1607` | `static void emit_s(const char *fmt, const char *s)` |
| `emit_si` | function | `minigcc.c:1619` | `static void emit_si(const char *fmt, const char *s, int v)` |
| `emit_spill_reverse` | function | `minigcc.c:1879` | `static void emit_spill_reverse(int argc)` |
| `emit_string_pool` | function | `minigcc.c:5706` | `static void emit_string_pool(void)` |
| `equality_expr` | function | `minigcc.c:3093` | `static void equality_expr(void)` |
| `error` | function | `minigcc.c:639` | `static void error(const char *msg)` |
| `find_macro` | function | `minigcc.c:329` | `static int find_macro(const char *name)` |
| `find_symbol` | function | `minigcc.c:1653` | `static int find_symbol(const char *name)` |
| `func_return_unsigned` | function | `minigcc.c:1780` | `static int func_return_unsigned(const char *name)` |
| `get_dir_from_path` | function | `minigcc.c:697` | `static void get_dir_from_path(const char *path, char *dir, int dir_sz)` |
| `handle_postfix` | function | `minigcc.c:2623` | `static void handle_postfix(int is_lvalue)` |
| `hash_init` | function | `minigcc.c:789` | `static void hash_init(void)` |
| `hash_name` | function | `minigcc.c:779` | `static int hash_name(const char *name)` |
| `intern_string` | function | `minigcc.c:5394` | `static int intern_string(const char *text)` |
| `is_defined_func` | function | `minigcc.c:1770` | `static int is_defined_func(const char *name)` |
| `is_file_processed` | function | `minigcc.c:676` | `static int is_file_processed(const char *path)` |
| `lex_fail` | function | `minigcc.c:877` | `static void lex_fail(const char *msg, char *start, char *end)` |
| `lex_hex_val` | function | `minigcc.c:964` | `static int lex_hex_val(int c)` |
| `lex_init_keywords` | function | `minigcc.c:900` | `static void lex_init_keywords(void)` |
| `lex_is_int_suffix` | function | `minigcc.c:971` | `static int lex_is_int_suffix(int c)` |
| `lex_kw_add` | function | `minigcc.c:887` | `static void lex_kw_add(const char *name, int id)` |
| `lex_kw_lookup` | function | `minigcc.c:940` | `static int lex_kw_lookup(void)` |
| `lex_match_op` | function | `minigcc.c:952` | `static int lex_match_op(const char *op, int id)` |
| `lex_number` | function | `minigcc.c:977` | `static void lex_number(void)` |
| `libc_global_name` | function | `minigcc.c:1931` | `static const char *libc_global_name(int i)` |
| `logical_and_expr` | function | `minigcc.c:3198` | `static void logical_and_expr(void)` |
| `logical_or_expr` | function | `minigcc.c:3219` | `static void logical_or_expr(void)` |
| `lvalue_address` | function | `minigcc.c:2566` | `static void lvalue_address(void)` |
| `macro_add` | function | `minigcc.c:490` | `static int macro_add(void)` |
| `macro_bitand` | function | `minigcc.c:564` | `static int macro_bitand(void)` |
| `macro_bitor` | function | `minigcc.c:592` | `static int macro_bitor(void)` |
| `macro_bitxor` | function | `minigcc.c:578` | `static int macro_bitxor(void)` |
| `macro_cmp` | function | `minigcc.c:524` | `static int macro_cmp(void)` |
| `macro_digit_val` | function | `minigcc.c:375` | `static int macro_digit_val(int c)` |
| `macro_eq` | function | `minigcc.c:547` | `static int macro_eq(void)` |
| `macro_fold` | function | `minigcc.c:634` | `static int macro_fold(void)` |
| `macro_hex_digit` | function | `minigcc.c:368` | `static int macro_hex_digit(int c)` |
| `macro_logand` | function | `minigcc.c:606` | `static int macro_logand(void)` |
| `macro_mul` | function | `minigcc.c:465` | `static int macro_mul(void)` |
| `macro_or_expr` | function | `minigcc.c:620` | `static int macro_or_expr(void)` |
| `macro_primary` | function | `minigcc.c:382` | `static int macro_primary(void)` |
| `macro_shift` | function | `minigcc.c:507` | `static int macro_shift(void)` |
| `macro_skipws` | function | `minigcc.c:364` | `static void macro_skipws(void)` |
| `macro_unary` | function | `minigcc.c:456` | `static int macro_unary(void)` |
| `main` | function | `minigcc.c:5716` | `int main(int argc, char **argv)` |
| `mark_file_processed` | function | `minigcc.c:685` | `static void mark_file_processed(const char *path)` |
| `match` | function | `minigcc.c:1582` | `static void match(int expected)` |
| `multiplicative_expr` | function | `minigcc.c:2844` | `static void multiplicative_expr(void)` |
| `my_isalnum` | function | `minigcc.c:871` | `static int my_isalnum(int c)` |
| `my_isalpha` | function | `minigcc.c:860` | `static int my_isalpha(int c)` |
| `my_isdigit` | function | `minigcc.c:866` | `static int my_isdigit(int c)` |
| `my_isspace` | function | `minigcc.c:850` | `static int my_isspace(int c)` |
| `next_token` | function | `minigcc.c:1095` | `static void next_token(void)` |
| `note_defined_func` | function | `minigcc.c:1754` | `static void note_defined_func(const char *name, int is_uns)` |
| `parse_asm_block` | function | `minigcc.c:3958` | `static void parse_asm_block(void)` |
| `parse_const_int` | function | `minigcc.c:5371` | `static int parse_const_int(long long *out)` |
| `parse_enum` | function | `minigcc.c:4980` | `static void parse_enum(void)` |
| `parse_fnptr_declarator` | function | `minigcc.c:1790` | `static int parse_fnptr_declarator(char *out_name, int *out_count)` |
| `parse_function` | function | `minigcc.c:4768` | `static void parse_function(const char *name, int ret_type)` |
| `parse_indirect_call` | function | `minigcc.c:1891` | `static void parse_indirect_call(void)` |
| `parse_program` | function | `minigcc.c:5476` | `static void parse_program(void)` |
| `parse_sync_call` | function | `minigcc.c:2430` | `static void parse_sync_call(const char *name)` |
| `parse_trailing_align` | function | `minigcc.c:3951` | `static void parse_trailing_align(void)` |
| `parse_va_arg` | function | `minigcc.c:2499` | `static void parse_va_arg(void)` |
| `parse_va_end` | function | `minigcc.c:2550` | `static void parse_va_end(void)` |
| `parse_va_start` | function | `minigcc.c:2465` | `static void parse_va_start(void)` |
| `peek_call_argc` | function | `minigcc.c:1841` | `static int peek_call_argc(void)` |
| `pop_scope` | function | `minigcc.c:802` | `static void pop_scope(void)` |
| `push_scope` | function | `minigcc.c:794` | `static void push_scope(void)` |
| `read_include_file` | function | `minigcc.c:755` | `static char *read_include_file(const char *path)` |
| `record_typedef_alias` | function | `minigcc.c:5159` | `static void record_typedef_alias(const char *name, int size, int uns, int fnptr)` |
| `relational_expr` | function | `minigcc.c:3028` | `static void relational_expr(void)` |
| `resolve_local_include` | function | `minigcc.c:716` | `static char *resolve_local_include(const char *target)` |
| `restore_parser_state` | function | `minigcc.c:288` | `static void restore_parser_state(ParserState *state)` |
| `safe_malloc` | function | `minigcc.c:645` | `static void *safe_malloc(size_t size)` |
| `safe_strcpy` | function | `minigcc.c:654` | `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)` |
| `safe_strtoll` | function | `minigcc.c:663` | `static long safe_strtoll(const char *s)` |
| `save_parser_state` | function | `minigcc.c:259` | `static void save_parser_state(ParserState *state)` |
| `shift_expr` | function | `minigcc.c:3001` | `static void shift_expr(void)` |
| `skip_gcc_attribute` | function | `minigcc.c:3901` | `static int skip_gcc_attribute(void)` |
| `skip_struct` | function | `minigcc.c:5090` | `static void skip_struct(void)` |
| `skip_struct_fields` | function | `minigcc.c:5031` | `static void skip_struct_fields(int fsize, int funs, int ffloat)` |
| `skip_typedef` | function | `minigcc.c:5190` | `static void skip_typedef(void)` |
| `statement` | function | `minigcc.c:4022` | `static void statement(void)` |
| `strcmp` | function | `minigcc.c:2030` | `strcmp(id_name, "__sync_lock_test_and_set") == 0 \|\|
                strcmp(id_name, "__sync_lock_...` |
| `strcmp` | function | `minigcc.c:2035` | `strcmp(id_name, "va_start") == 0)` |
| `strcmp` | function | `minigcc.c:2038` | `strcmp(id_name, "va_end") == 0)` |
| `strcmp` | function | `minigcc.c:2041` | `strcmp(id_name, "va_arg") == 0)` |
| `strcmp` | function | `minigcc.c:3921` | `strcmp(token, "returns_twice") == 0 \|\|
                       strcmp(token, "always_inline") == 0)` |
| `truncate_symbols` | function | `minigcc.c:831` | `static void truncate_symbols(int start_idx)` |
| `typedef_name` | function | `minigcc.c:1944` | `static const char *typedef_name(int i)` |
| `typedef_size` | function | `minigcc.c:1960` | `static int typedef_size(int i)` |
| `typedef_uns` | function | `minigcc.c:1976` | `static int typedef_uns(int i)` |
| `unary` | function | `minigcc.c:1985` | `static void unary(void)` |
| `unary_expr` | function | `minigcc.c:2829` | `static void unary_expr(void)` |
| `_start` | function | `minigccg2.s:58569` | `` |
| `add_macro` | function | `minigccg2.s:770` | `` |
| `add_symbol` | function | `minigccg2.s:14210` | `` |
| `additive_expr` | function | `minigccg2.s:25263` | `` |
| `arg_reg` | function | `minigccg2.s:14619` | `` |
| `asm_assign_homes` | function | `minigccg2.s:35749` | `` |
| `asm_emit_all` | function | `minigccg2.s:36375` | `` |
| `asm_emit_ss` | function | `minigccg2.s:34627` | `` |
| `asm_emit_template` | function | `minigccg2.s:33836` | `` |
| `asm_fixed_home` | function | `minigccg2.s:33746` | `` |
| `asm_home` | function | `minigccg2.s:32451` | `` |
| `asm_home_text` | function | `minigccg2.s:32551` | `` |
| `asm_is_out` | function | `minigccg2.s:32447` | `` |
| `asm_mem` | function | `minigccg2.s:32443` | `` |
| `asm_nops` | function | `minigccg2.s:32463` | `` |
| `asm_nslots` | function | `minigccg2.s:32467` | `` |
| `asm_parse_mem` | function | `minigccg2.s:34072` | `` |
| `asm_parse_one` | function | `minigccg2.s:34678` | `` |
| `asm_reg_sized` | function | `minigccg2.s:32766` | `` |
| `asm_scratch` | function | `minigccg2.s:32475` | `` |
| `asm_size` | function | `minigccg2.s:32459` | `` |
| `asm_slot` | function | `minigccg2.s:32455` | `` |
| `asm_text` | function | `minigccg2.s:32439` | `` |
| `asm_tmpl` | function | `minigccg2.s:32435` | `` |
| `asm_unique` | function | `minigccg2.s:32471` | `` |
| `assign_size` | function | `minigccg2.s:107` | `` |
| `assignment_expr` | function | `minigccg2.s:28680` | `` |
| `bitwise_and_expr` | function | `minigccg2.s:27236` | `` |
| `bitwise_or_expr` | function | `minigccg2.s:27490` | `` |
| `bitwise_xor_expr` | function | `minigccg2.s:27363` | `` |
| `break_target` | function | `minigccg2.s:223` | `` |
| `break_target_valid` | function | `minigccg2.s:227` | `` |
| `conditional_expr` | function | `minigccg2.s:27947` | `` |
| `const_flag` | function | `minigccg2.s:163` | `` |
| `continue_target` | function | `minigccg2.s:231` | `` |
| `continue_target_valid` | function | `minigccg2.s:235` | `` |
| `ctx_stack` | function | `minigccg2.s:43` | `` |
| `ctx_top` | function | `minigccg2.s:47` | `` |
| `current_elem_size` | function | `minigccg2.s:123` | `` |
| `current_elem_size2` | function | `minigccg2.s:127` | `` |
| `current_elem_unsigned` | function | `minigccg2.s:131` | `` |
| `current_file` | function | `minigccg2.s:51` | `` |
| `data_directive` | function | `minigccg2.s:49649` | `` |
| `defined_func_count` | function | `minigccg2.s:307` | `` |
| `defined_func_names` | function | `minigccg2.s:299` | `` |
| `defined_func_unsigned` | function | `minigccg2.s:303` | `` |
| `deref_u` | function | `minigccg2.s:139` | `` |
| `deref_w` | function | `minigccg2.s:135` | `` |
| `emit` | function | `minigccg2.s:13472` | `` |
| `emit_asciz_body` | function | `minigccg2.s:13781` | `` |
| `emit_compound_op` | function | `minigccg2.s:28087` | `` |
| `emit_enabled` | function | `minigccg2.s:99` | `` |
| `emit_float_consts` | function | `minigccg2.s:53215` | `` |
| `emit_global_bss` | function | `minigccg2.s:49699` | `` |
| `emit_global_data_head` | function | `minigccg2.s:49809` | `` |
| `emit_global_initializer` | function | `minigccg2.s:50140` | `` |
| `emit_i` | function | `minigccg2.s:13583` | `` |
| `emit_is` | function | `minigccg2.s:13679` | `` |
| `emit_label` | function | `minigccg2.s:14095` | `` |
| `emit_s` | function | `minigccg2.s:13631` | `` |
| `emit_si` | function | `minigccg2.s:13730` | `` |
| `emit_spill_reverse` | function | `minigccg2.s:15652` | `` |
| `emit_string_pool` | function | `minigccg2.s:53312` | `` |
| `equality_expr` | function | `minigccg2.s:26748` | `` |
| `error` | function | `minigccg2.s:3374` | `` |
| `expr_fnptr` | function | `minigccg2.s:115` | `` |
| `expr_pointed` | function | `minigccg2.s:111` | `` |
| `expr_type` | function | `minigccg2.s:147` | `` |
| `expr_unsigned` | function | `minigccg2.s:151` | `` |
| `extern_flag` | function | `minigccg2.s:167` | `` |
| `find_macro` | function | `minigccg2.s:707` | `` |
| `find_symbol` | function | `minigccg2.s:14124` | `` |
| `float_const_count` | function | `minigccg2.s:199` | `` |
| `float_const_is_float` | function | `minigccg2.s:195` | `` |
| `float_const_str` | function | `minigccg2.s:191` | `` |
| `func_is_variadic` | function | `minigccg2.s:179` | `` |
| `func_return_unsigned` | function | `minigccg2.s:14877` | `` |
| `function_has_return` | function | `minigccg2.s:95` | `` |
| `get_dir_from_path` | function | `minigccg2.s:3842` | `` |
| `global_emit_deferred` | function | `minigccg2.s:171` | `` |
| `handle_postfix` | function | `minigccg2.s:22845` | `` |
| `hash_init` | function | `minigccg2.s:4697` | `` |
| `hash_name` | function | `minigccg2.s:4639` | `` |
| `hash_table` | function | `minigccg2.s:71` | `` |
| `if_depth` | function | `minigccg2.s:315` | `` |
| `if_nest` | function | `minigccg2.s:311` | `` |
| `input_ptr` | function | `minigccg2.s:19` | `` |
| `intern_string` | function | `minigccg2.s:50047` | `` |
| `is_defined_func` | function | `minigccg2.s:14818` | `` |
| `is_file_processed` | function | `minigccg2.s:3671` | `` |
| `label_counter` | function | `minigccg2.s:91` | `` |
| `lex_fail` | function | `minigccg2.s:5380` | `` |
| `lex_hex_val` | function | `minigccg2.s:6310` | `` |
| `lex_init_keywords` | function | `minigccg2.s:5647` | `` |
| `lex_is_int_suffix` | function | `minigccg2.s:6432` | `` |
| `lex_kw_add` | function | `minigccg2.s:5484` | `` |
| `lex_kw_blob` | function | `minigccg2.s:3` | `` |
| `lex_kw_count` | function | `minigccg2.s:11` | `` |
| `lex_kw_ids` | function | `minigccg2.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg2.s:6134` | `` |
| `lex_match_op` | function | `minigccg2.s:6227` | `` |
| `lex_number` | function | `minigccg2.s:6501` | `` |
| `lex_pass_top` | function | `minigccg2.s:15` | `` |
| `libc_global_name` | function | `minigccg2.s:16137` | `` |
| `line` | function | `minigccg2.s:35` | `` |
| `logical_and_expr` | function | `minigccg2.s:27617` | `` |
| `logical_or_expr` | function | `minigccg2.s:27782` | `` |
| `lvalue_address` | function | `minigccg2.s:22286` | `` |
| `macro_add` | function | `minigccg2.s:2297` | `` |
| `macro_bitand` | function | `minigccg2.s:2922` | `` |
| `macro_bitor` | function | `minigccg2.s:3073` | `` |
| `macro_bitxor` | function | `minigccg2.s:3008` | `` |
| `macro_cmp` | function | `minigccg2.s:2548` | `` |
| `macro_count` | function | `minigccg2.s:320` | `` |
| `macro_digit_val` | function | `minigccg2.s:1047` | `` |
| `macro_eq` | function | `minigccg2.s:2769` | `` |
| `macro_fold` | function | `minigccg2.s:3353` | `` |
| `macro_hex_digit` | function | `minigccg2.s:949` | `` |
| `macro_logand` | function | `minigccg2.s:3159` | `` |
| `macro_mul` | function | `minigccg2.s:2094` | `` |
| `macro_ok` | function | `minigccg2.s:904` | `` |
| `macro_or_expr` | function | `minigccg2.s:3256` | `` |
| `macro_p` | function | `minigccg2.s:900` | `` |
| `macro_primary` | function | `minigccg2.s:1168` | `` |
| `macro_shift` | function | `minigccg2.s:2395` | `` |
| `macro_skipws` | function | `minigccg2.s:908` | `` |
| `macro_unary` | function | `minigccg2.s:1966` | `` |
| `macros` | function | `minigccg2.s:703` | `` |
| `main` | function | `minigccg2.s:53413` | `` |
| `mark_file_processed` | function | `minigccg2.s:3731` | `` |
| `match` | function | `minigccg2.s:13434` | `` |
| `max_func_stack` | function | `minigccg2.s:103` | `` |
| `multiplicative_expr` | function | `minigccg2.s:24477` | `` |
| `my_isalnum` | function | `minigccg2.s:5335` | `` |
| `my_isalpha` | function | `minigccg2.s:5226` | `` |
| `my_isdigit` | function | `minigccg2.s:5295` | `` |
| `my_isspace` | function | `minigccg2.s:5137` | `` |
| `next_token` | function | `minigccg2.s:8028` | `` |
| `no_postfix_deref` | function | `minigccg2.s:143` | `` |
| `note_defined_func` | function | `minigccg2.s:14695` | `` |
| `output` | function | `minigccg2.s:39` | `` |
| `parse_asm_block` | function | `minigccg2.s:37468` | `` |
| `parse_const_int` | function | `minigccg2.s:49884` | `` |
| `parse_enum` | function | `minigccg2.s:46458` | `` |
| `parse_fnptr_declarator` | function | `minigccg2.s:14942` | `` |
| `parse_function` | function | `minigccg2.s:44373` | `` |
| `parse_indirect_call` | function | `minigccg2.s:15789` | `` |
| `parse_program` | function | `minigccg2.s:50847` | `` |
| `parse_sync_call` | function | `minigccg2.s:20973` | `` |
| `parse_trailing_align` | function | `minigccg2.s:37426` | `` |
| `parse_va_arg` | function | `minigccg2.s:21639` | `` |
| `parse_va_end` | function | `minigccg2.s:22175` | `` |
| `parse_va_start` | function | `minigccg2.s:21295` | `` |
| `peek_call_argc` | function | `minigccg2.s:15361` | `` |
| `pending_align` | function | `minigccg2.s:175` | `` |
| `pop_scope` | function | `minigccg2.s:4788` | `` |
| `processed_count` | function | `minigccg2.s:59` | `` |
| `processed_files` | function | `minigccg2.s:55` | `` |
| `ptr_init_count` | function | `minigccg2.s:259` | `` |
| `ptr_init_label` | function | `minigccg2.s:255` | `` |
| `ptr_init_name` | function | `minigccg2.s:251` | `` |
| `push_scope` | function | `minigccg2.s:4736` | `` |
| `read_include_file` | function | `minigccg2.s:4433` | `` |
| `record_typedef_alias` | function | `minigccg2.s:48172` | `` |
| `relational_expr` | function | `minigccg2.s:26034` | `` |
| `resolve_local_include` | function | `minigccg2.s:3985` | `` |
| `restart` | function | `minigccg2.s:8032` | `` |
| `restart_int` | function | `minigccg2.s:43004` | `` |
| `restart_typedef` | function | `minigccg2.s:41754` | `` |
| `restore_parser_state` | function | `minigccg2.s:487` | `` |
| `safe_malloc` | function | `minigccg2.s:3425` | `` |
| `safe_strcpy` | function | `minigccg2.s:3479` | `` |
| `safe_strtoll` | function | `minigccg2.s:3556` | `` |
| `save_parser_state` | function | `minigccg2.s:324` | `` |
| `scope_depth` | function | `minigccg2.s:83` | `` |
| `scope_stack_stk` | function | `minigccg2.s:79` | `` |
| `scope_stack_sym` | function | `minigccg2.s:75` | `` |
| `shift_expr` | function | `minigccg2.s:25832` | `` |
| `skip_gcc_attribute` | function | `minigccg2.s:36951` | `` |
| `skip_struct` | function | `minigccg2.s:47462` | `` |
| `skip_struct_fields` | function | `minigccg2.s:46895` | `` |
| `skip_typedef` | function | `minigccg2.s:48414` | `` |
| `source_start` | function | `minigccg2.s:23` | `` |
| `stack_size` | function | `minigccg2.s:87` | `` |
| `statement` | function | `minigccg2.s:38033` | `` |
| `static_flag` | function | `minigccg2.s:155` | `` |
| `str_label_counter` | function | `minigccg2.s:239` | `` |
| `string_count` | function | `minigccg2.s:247` | `` |
| `string_pool` | function | `minigccg2.s:243` | `` |
| `struct_member_count` | function | `minigccg2.s:295` | `` |
| `struct_member_elem_sizes` | function | `minigccg2.s:279` | `` |
| `struct_member_is_float` | function | `minigccg2.s:287` | `` |
| `struct_member_is_fnptr` | function | `minigccg2.s:291` | `` |
| `struct_member_names` | function | `minigccg2.s:267` | `` |
| `struct_member_offsets` | function | `minigccg2.s:271` | `` |
| `struct_member_sizes` | function | `minigccg2.s:275` | `` |
| `struct_member_unsigned` | function | `minigccg2.s:283` | `` |
| `struct_total_size` | function | `minigccg2.s:263` | `` |
| `subscript_base_fnptr` | function | `minigccg2.s:119` | `` |
| `switch_case_count` | function | `minigccg2.s:211` | `` |
| `switch_case_labels` | function | `minigccg2.s:207` | `` |
| `switch_case_values` | function | `minigccg2.s:203` | `` |
| `switch_default_label` | function | `minigccg2.s:219` | `` |
| `switch_has_default` | function | `minigccg2.s:215` | `` |
| `symbol_count` | function | `minigccg2.s:67` | `` |
| `symbols` | function | `minigccg2.s:63` | `` |
| `td_stash_fnptr` | function | `minigccg2.s:48168` | `` |
| `td_stash_size` | function | `minigccg2.s:48160` | `` |
| `td_stash_uns` | function | `minigccg2.s:48164` | `` |
| `td_stash_valid` | function | `minigccg2.s:48156` | `` |
| `tok` | function | `minigccg2.s:31` | `` |
| `token` | function | `minigccg2.s:27` | `` |
| `truncate_symbols` | function | `minigccg2.s:4984` | `` |
| `typedef_name` | function | `minigccg2.s:16265` | `` |
| `typedef_size` | function | `minigccg2.s:16432` | `` |
| `typedef_uns` | function | `minigccg2.s:16599` | `` |
| `unary` | function | `minigccg2.s:16675` | `` |
| `unary_expr` | function | `minigccg2.s:24452` | `` |
| `unsigned_type` | function | `minigccg2.s:159` | `` |
| `vararg_nfixed` | function | `minigccg2.s:183` | `` |
| `vararg_save_off` | function | `minigccg2.s:187` | `` |
| `_start` | function | `minigccg3.s:58569` | `` |
| `add_macro` | function | `minigccg3.s:770` | `` |
| `add_symbol` | function | `minigccg3.s:14210` | `` |
| `additive_expr` | function | `minigccg3.s:25263` | `` |
| `arg_reg` | function | `minigccg3.s:14619` | `` |
| `asm_assign_homes` | function | `minigccg3.s:35749` | `` |
| `asm_emit_all` | function | `minigccg3.s:36375` | `` |
| `asm_emit_ss` | function | `minigccg3.s:34627` | `` |
| `asm_emit_template` | function | `minigccg3.s:33836` | `` |
| `asm_fixed_home` | function | `minigccg3.s:33746` | `` |
| `asm_home` | function | `minigccg3.s:32451` | `` |
| `asm_home_text` | function | `minigccg3.s:32551` | `` |
| `asm_is_out` | function | `minigccg3.s:32447` | `` |
| `asm_mem` | function | `minigccg3.s:32443` | `` |
| `asm_nops` | function | `minigccg3.s:32463` | `` |
| `asm_nslots` | function | `minigccg3.s:32467` | `` |
| `asm_parse_mem` | function | `minigccg3.s:34072` | `` |
| `asm_parse_one` | function | `minigccg3.s:34678` | `` |
| `asm_reg_sized` | function | `minigccg3.s:32766` | `` |
| `asm_scratch` | function | `minigccg3.s:32475` | `` |
| `asm_size` | function | `minigccg3.s:32459` | `` |
| `asm_slot` | function | `minigccg3.s:32455` | `` |
| `asm_text` | function | `minigccg3.s:32439` | `` |
| `asm_tmpl` | function | `minigccg3.s:32435` | `` |
| `asm_unique` | function | `minigccg3.s:32471` | `` |
| `assign_size` | function | `minigccg3.s:107` | `` |
| `assignment_expr` | function | `minigccg3.s:28680` | `` |
| `bitwise_and_expr` | function | `minigccg3.s:27236` | `` |
| `bitwise_or_expr` | function | `minigccg3.s:27490` | `` |
| `bitwise_xor_expr` | function | `minigccg3.s:27363` | `` |
| `break_target` | function | `minigccg3.s:223` | `` |
| `break_target_valid` | function | `minigccg3.s:227` | `` |
| `conditional_expr` | function | `minigccg3.s:27947` | `` |
| `const_flag` | function | `minigccg3.s:163` | `` |
| `continue_target` | function | `minigccg3.s:231` | `` |
| `continue_target_valid` | function | `minigccg3.s:235` | `` |
| `ctx_stack` | function | `minigccg3.s:43` | `` |
| `ctx_top` | function | `minigccg3.s:47` | `` |
| `current_elem_size` | function | `minigccg3.s:123` | `` |
| `current_elem_size2` | function | `minigccg3.s:127` | `` |
| `current_elem_unsigned` | function | `minigccg3.s:131` | `` |
| `current_file` | function | `minigccg3.s:51` | `` |
| `data_directive` | function | `minigccg3.s:49649` | `` |
| `defined_func_count` | function | `minigccg3.s:307` | `` |
| `defined_func_names` | function | `minigccg3.s:299` | `` |
| `defined_func_unsigned` | function | `minigccg3.s:303` | `` |
| `deref_u` | function | `minigccg3.s:139` | `` |
| `deref_w` | function | `minigccg3.s:135` | `` |
| `emit` | function | `minigccg3.s:13472` | `` |
| `emit_asciz_body` | function | `minigccg3.s:13781` | `` |
| `emit_compound_op` | function | `minigccg3.s:28087` | `` |
| `emit_enabled` | function | `minigccg3.s:99` | `` |
| `emit_float_consts` | function | `minigccg3.s:53215` | `` |
| `emit_global_bss` | function | `minigccg3.s:49699` | `` |
| `emit_global_data_head` | function | `minigccg3.s:49809` | `` |
| `emit_global_initializer` | function | `minigccg3.s:50140` | `` |
| `emit_i` | function | `minigccg3.s:13583` | `` |
| `emit_is` | function | `minigccg3.s:13679` | `` |
| `emit_label` | function | `minigccg3.s:14095` | `` |
| `emit_s` | function | `minigccg3.s:13631` | `` |
| `emit_si` | function | `minigccg3.s:13730` | `` |
| `emit_spill_reverse` | function | `minigccg3.s:15652` | `` |
| `emit_string_pool` | function | `minigccg3.s:53312` | `` |
| `equality_expr` | function | `minigccg3.s:26748` | `` |
| `error` | function | `minigccg3.s:3374` | `` |
| `expr_fnptr` | function | `minigccg3.s:115` | `` |
| `expr_pointed` | function | `minigccg3.s:111` | `` |
| `expr_type` | function | `minigccg3.s:147` | `` |
| `expr_unsigned` | function | `minigccg3.s:151` | `` |
| `extern_flag` | function | `minigccg3.s:167` | `` |
| `find_macro` | function | `minigccg3.s:707` | `` |
| `find_symbol` | function | `minigccg3.s:14124` | `` |
| `float_const_count` | function | `minigccg3.s:199` | `` |
| `float_const_is_float` | function | `minigccg3.s:195` | `` |
| `float_const_str` | function | `minigccg3.s:191` | `` |
| `func_is_variadic` | function | `minigccg3.s:179` | `` |
| `func_return_unsigned` | function | `minigccg3.s:14877` | `` |
| `function_has_return` | function | `minigccg3.s:95` | `` |
| `get_dir_from_path` | function | `minigccg3.s:3842` | `` |
| `global_emit_deferred` | function | `minigccg3.s:171` | `` |
| `handle_postfix` | function | `minigccg3.s:22845` | `` |
| `hash_init` | function | `minigccg3.s:4697` | `` |
| `hash_name` | function | `minigccg3.s:4639` | `` |
| `hash_table` | function | `minigccg3.s:71` | `` |
| `if_depth` | function | `minigccg3.s:315` | `` |
| `if_nest` | function | `minigccg3.s:311` | `` |
| `input_ptr` | function | `minigccg3.s:19` | `` |
| `intern_string` | function | `minigccg3.s:50047` | `` |
| `is_defined_func` | function | `minigccg3.s:14818` | `` |
| `is_file_processed` | function | `minigccg3.s:3671` | `` |
| `label_counter` | function | `minigccg3.s:91` | `` |
| `lex_fail` | function | `minigccg3.s:5380` | `` |
| `lex_hex_val` | function | `minigccg3.s:6310` | `` |
| `lex_init_keywords` | function | `minigccg3.s:5647` | `` |
| `lex_is_int_suffix` | function | `minigccg3.s:6432` | `` |
| `lex_kw_add` | function | `minigccg3.s:5484` | `` |
| `lex_kw_blob` | function | `minigccg3.s:3` | `` |
| `lex_kw_count` | function | `minigccg3.s:11` | `` |
| `lex_kw_ids` | function | `minigccg3.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg3.s:6134` | `` |
| `lex_match_op` | function | `minigccg3.s:6227` | `` |
| `lex_number` | function | `minigccg3.s:6501` | `` |
| `lex_pass_top` | function | `minigccg3.s:15` | `` |
| `libc_global_name` | function | `minigccg3.s:16137` | `` |
| `line` | function | `minigccg3.s:35` | `` |
| `logical_and_expr` | function | `minigccg3.s:27617` | `` |
| `logical_or_expr` | function | `minigccg3.s:27782` | `` |
| `lvalue_address` | function | `minigccg3.s:22286` | `` |
| `macro_add` | function | `minigccg3.s:2297` | `` |
| `macro_bitand` | function | `minigccg3.s:2922` | `` |
| `macro_bitor` | function | `minigccg3.s:3073` | `` |
| `macro_bitxor` | function | `minigccg3.s:3008` | `` |
| `macro_cmp` | function | `minigccg3.s:2548` | `` |
| `macro_count` | function | `minigccg3.s:320` | `` |
| `macro_digit_val` | function | `minigccg3.s:1047` | `` |
| `macro_eq` | function | `minigccg3.s:2769` | `` |
| `macro_fold` | function | `minigccg3.s:3353` | `` |
| `macro_hex_digit` | function | `minigccg3.s:949` | `` |
| `macro_logand` | function | `minigccg3.s:3159` | `` |
| `macro_mul` | function | `minigccg3.s:2094` | `` |
| `macro_ok` | function | `minigccg3.s:904` | `` |
| `macro_or_expr` | function | `minigccg3.s:3256` | `` |
| `macro_p` | function | `minigccg3.s:900` | `` |
| `macro_primary` | function | `minigccg3.s:1168` | `` |
| `macro_shift` | function | `minigccg3.s:2395` | `` |
| `macro_skipws` | function | `minigccg3.s:908` | `` |
| `macro_unary` | function | `minigccg3.s:1966` | `` |
| `macros` | function | `minigccg3.s:703` | `` |
| `main` | function | `minigccg3.s:53413` | `` |
| `mark_file_processed` | function | `minigccg3.s:3731` | `` |
| `match` | function | `minigccg3.s:13434` | `` |
| `max_func_stack` | function | `minigccg3.s:103` | `` |
| `multiplicative_expr` | function | `minigccg3.s:24477` | `` |
| `my_isalnum` | function | `minigccg3.s:5335` | `` |
| `my_isalpha` | function | `minigccg3.s:5226` | `` |
| `my_isdigit` | function | `minigccg3.s:5295` | `` |
| `my_isspace` | function | `minigccg3.s:5137` | `` |
| `next_token` | function | `minigccg3.s:8028` | `` |
| `no_postfix_deref` | function | `minigccg3.s:143` | `` |
| `note_defined_func` | function | `minigccg3.s:14695` | `` |
| `output` | function | `minigccg3.s:39` | `` |
| `parse_asm_block` | function | `minigccg3.s:37468` | `` |
| `parse_const_int` | function | `minigccg3.s:49884` | `` |
| `parse_enum` | function | `minigccg3.s:46458` | `` |
| `parse_fnptr_declarator` | function | `minigccg3.s:14942` | `` |
| `parse_function` | function | `minigccg3.s:44373` | `` |
| `parse_indirect_call` | function | `minigccg3.s:15789` | `` |
| `parse_program` | function | `minigccg3.s:50847` | `` |
| `parse_sync_call` | function | `minigccg3.s:20973` | `` |
| `parse_trailing_align` | function | `minigccg3.s:37426` | `` |
| `parse_va_arg` | function | `minigccg3.s:21639` | `` |
| `parse_va_end` | function | `minigccg3.s:22175` | `` |
| `parse_va_start` | function | `minigccg3.s:21295` | `` |
| `peek_call_argc` | function | `minigccg3.s:15361` | `` |
| `pending_align` | function | `minigccg3.s:175` | `` |
| `pop_scope` | function | `minigccg3.s:4788` | `` |
| `processed_count` | function | `minigccg3.s:59` | `` |
| `processed_files` | function | `minigccg3.s:55` | `` |
| `ptr_init_count` | function | `minigccg3.s:259` | `` |
| `ptr_init_label` | function | `minigccg3.s:255` | `` |
| `ptr_init_name` | function | `minigccg3.s:251` | `` |
| `push_scope` | function | `minigccg3.s:4736` | `` |
| `read_include_file` | function | `minigccg3.s:4433` | `` |
| `record_typedef_alias` | function | `minigccg3.s:48172` | `` |
| `relational_expr` | function | `minigccg3.s:26034` | `` |
| `resolve_local_include` | function | `minigccg3.s:3985` | `` |
| `restart` | function | `minigccg3.s:8032` | `` |
| `restart_int` | function | `minigccg3.s:43004` | `` |
| `restart_typedef` | function | `minigccg3.s:41754` | `` |
| `restore_parser_state` | function | `minigccg3.s:487` | `` |
| `safe_malloc` | function | `minigccg3.s:3425` | `` |
| `safe_strcpy` | function | `minigccg3.s:3479` | `` |
| `safe_strtoll` | function | `minigccg3.s:3556` | `` |
| `save_parser_state` | function | `minigccg3.s:324` | `` |
| `scope_depth` | function | `minigccg3.s:83` | `` |
| `scope_stack_stk` | function | `minigccg3.s:79` | `` |
| `scope_stack_sym` | function | `minigccg3.s:75` | `` |
| `shift_expr` | function | `minigccg3.s:25832` | `` |
| `skip_gcc_attribute` | function | `minigccg3.s:36951` | `` |
| `skip_struct` | function | `minigccg3.s:47462` | `` |
| `skip_struct_fields` | function | `minigccg3.s:46895` | `` |
| `skip_typedef` | function | `minigccg3.s:48414` | `` |
| `source_start` | function | `minigccg3.s:23` | `` |
| `stack_size` | function | `minigccg3.s:87` | `` |
| `statement` | function | `minigccg3.s:38033` | `` |
| `static_flag` | function | `minigccg3.s:155` | `` |
| `str_label_counter` | function | `minigccg3.s:239` | `` |
| `string_count` | function | `minigccg3.s:247` | `` |
| `string_pool` | function | `minigccg3.s:243` | `` |
| `struct_member_count` | function | `minigccg3.s:295` | `` |
| `struct_member_elem_sizes` | function | `minigccg3.s:279` | `` |
| `struct_member_is_float` | function | `minigccg3.s:287` | `` |
| `struct_member_is_fnptr` | function | `minigccg3.s:291` | `` |
| `struct_member_names` | function | `minigccg3.s:267` | `` |
| `struct_member_offsets` | function | `minigccg3.s:271` | `` |
| `struct_member_sizes` | function | `minigccg3.s:275` | `` |
| `struct_member_unsigned` | function | `minigccg3.s:283` | `` |
| `struct_total_size` | function | `minigccg3.s:263` | `` |
| `subscript_base_fnptr` | function | `minigccg3.s:119` | `` |
| `switch_case_count` | function | `minigccg3.s:211` | `` |
| `switch_case_labels` | function | `minigccg3.s:207` | `` |
| `switch_case_values` | function | `minigccg3.s:203` | `` |
| `switch_default_label` | function | `minigccg3.s:219` | `` |
| `switch_has_default` | function | `minigccg3.s:215` | `` |
| `symbol_count` | function | `minigccg3.s:67` | `` |
| `symbols` | function | `minigccg3.s:63` | `` |
| `td_stash_fnptr` | function | `minigccg3.s:48168` | `` |
| `td_stash_size` | function | `minigccg3.s:48160` | `` |
| `td_stash_uns` | function | `minigccg3.s:48164` | `` |
| `td_stash_valid` | function | `minigccg3.s:48156` | `` |
| `tok` | function | `minigccg3.s:31` | `` |
| `token` | function | `minigccg3.s:27` | `` |
| `truncate_symbols` | function | `minigccg3.s:4984` | `` |
| `typedef_name` | function | `minigccg3.s:16265` | `` |
| `typedef_size` | function | `minigccg3.s:16432` | `` |
| `typedef_uns` | function | `minigccg3.s:16599` | `` |
| `unary` | function | `minigccg3.s:16675` | `` |
| `unary_expr` | function | `minigccg3.s:24452` | `` |
| `unsigned_type` | function | `minigccg3.s:159` | `` |
| `vararg_nfixed` | function | `minigccg3.s:183` | `` |
| `vararg_save_off` | function | `minigccg3.s:187` | `` |
| `_start` | function | `minigccg4.s:58569` | `` |
| `add_macro` | function | `minigccg4.s:770` | `` |
| `add_symbol` | function | `minigccg4.s:14210` | `` |
| `additive_expr` | function | `minigccg4.s:25263` | `` |
| `arg_reg` | function | `minigccg4.s:14619` | `` |
| `asm_assign_homes` | function | `minigccg4.s:35749` | `` |
| `asm_emit_all` | function | `minigccg4.s:36375` | `` |
| `asm_emit_ss` | function | `minigccg4.s:34627` | `` |
| `asm_emit_template` | function | `minigccg4.s:33836` | `` |
| `asm_fixed_home` | function | `minigccg4.s:33746` | `` |
| `asm_home` | function | `minigccg4.s:32451` | `` |
| `asm_home_text` | function | `minigccg4.s:32551` | `` |
| `asm_is_out` | function | `minigccg4.s:32447` | `` |
| `asm_mem` | function | `minigccg4.s:32443` | `` |
| `asm_nops` | function | `minigccg4.s:32463` | `` |
| `asm_nslots` | function | `minigccg4.s:32467` | `` |
| `asm_parse_mem` | function | `minigccg4.s:34072` | `` |
| `asm_parse_one` | function | `minigccg4.s:34678` | `` |
| `asm_reg_sized` | function | `minigccg4.s:32766` | `` |
| `asm_scratch` | function | `minigccg4.s:32475` | `` |
| `asm_size` | function | `minigccg4.s:32459` | `` |
| `asm_slot` | function | `minigccg4.s:32455` | `` |
| `asm_text` | function | `minigccg4.s:32439` | `` |
| `asm_tmpl` | function | `minigccg4.s:32435` | `` |
| `asm_unique` | function | `minigccg4.s:32471` | `` |
| `assign_size` | function | `minigccg4.s:107` | `` |
| `assignment_expr` | function | `minigccg4.s:28680` | `` |
| `bitwise_and_expr` | function | `minigccg4.s:27236` | `` |
| `bitwise_or_expr` | function | `minigccg4.s:27490` | `` |
| `bitwise_xor_expr` | function | `minigccg4.s:27363` | `` |
| `break_target` | function | `minigccg4.s:223` | `` |
| `break_target_valid` | function | `minigccg4.s:227` | `` |
| `conditional_expr` | function | `minigccg4.s:27947` | `` |
| `const_flag` | function | `minigccg4.s:163` | `` |
| `continue_target` | function | `minigccg4.s:231` | `` |
| `continue_target_valid` | function | `minigccg4.s:235` | `` |
| `ctx_stack` | function | `minigccg4.s:43` | `` |
| `ctx_top` | function | `minigccg4.s:47` | `` |
| `current_elem_size` | function | `minigccg4.s:123` | `` |
| `current_elem_size2` | function | `minigccg4.s:127` | `` |
| `current_elem_unsigned` | function | `minigccg4.s:131` | `` |
| `current_file` | function | `minigccg4.s:51` | `` |
| `data_directive` | function | `minigccg4.s:49649` | `` |
| `defined_func_count` | function | `minigccg4.s:307` | `` |
| `defined_func_names` | function | `minigccg4.s:299` | `` |
| `defined_func_unsigned` | function | `minigccg4.s:303` | `` |
| `deref_u` | function | `minigccg4.s:139` | `` |
| `deref_w` | function | `minigccg4.s:135` | `` |
| `emit` | function | `minigccg4.s:13472` | `` |
| `emit_asciz_body` | function | `minigccg4.s:13781` | `` |
| `emit_compound_op` | function | `minigccg4.s:28087` | `` |
| `emit_enabled` | function | `minigccg4.s:99` | `` |
| `emit_float_consts` | function | `minigccg4.s:53215` | `` |
| `emit_global_bss` | function | `minigccg4.s:49699` | `` |
| `emit_global_data_head` | function | `minigccg4.s:49809` | `` |
| `emit_global_initializer` | function | `minigccg4.s:50140` | `` |
| `emit_i` | function | `minigccg4.s:13583` | `` |
| `emit_is` | function | `minigccg4.s:13679` | `` |
| `emit_label` | function | `minigccg4.s:14095` | `` |
| `emit_s` | function | `minigccg4.s:13631` | `` |
| `emit_si` | function | `minigccg4.s:13730` | `` |
| `emit_spill_reverse` | function | `minigccg4.s:15652` | `` |
| `emit_string_pool` | function | `minigccg4.s:53312` | `` |
| `equality_expr` | function | `minigccg4.s:26748` | `` |
| `error` | function | `minigccg4.s:3374` | `` |
| `expr_fnptr` | function | `minigccg4.s:115` | `` |
| `expr_pointed` | function | `minigccg4.s:111` | `` |
| `expr_type` | function | `minigccg4.s:147` | `` |
| `expr_unsigned` | function | `minigccg4.s:151` | `` |
| `extern_flag` | function | `minigccg4.s:167` | `` |
| `find_macro` | function | `minigccg4.s:707` | `` |
| `find_symbol` | function | `minigccg4.s:14124` | `` |
| `float_const_count` | function | `minigccg4.s:199` | `` |
| `float_const_is_float` | function | `minigccg4.s:195` | `` |
| `float_const_str` | function | `minigccg4.s:191` | `` |
| `func_is_variadic` | function | `minigccg4.s:179` | `` |
| `func_return_unsigned` | function | `minigccg4.s:14877` | `` |
| `function_has_return` | function | `minigccg4.s:95` | `` |
| `get_dir_from_path` | function | `minigccg4.s:3842` | `` |
| `global_emit_deferred` | function | `minigccg4.s:171` | `` |
| `handle_postfix` | function | `minigccg4.s:22845` | `` |
| `hash_init` | function | `minigccg4.s:4697` | `` |
| `hash_name` | function | `minigccg4.s:4639` | `` |
| `hash_table` | function | `minigccg4.s:71` | `` |
| `if_depth` | function | `minigccg4.s:315` | `` |
| `if_nest` | function | `minigccg4.s:311` | `` |
| `input_ptr` | function | `minigccg4.s:19` | `` |
| `intern_string` | function | `minigccg4.s:50047` | `` |
| `is_defined_func` | function | `minigccg4.s:14818` | `` |
| `is_file_processed` | function | `minigccg4.s:3671` | `` |
| `label_counter` | function | `minigccg4.s:91` | `` |
| `lex_fail` | function | `minigccg4.s:5380` | `` |
| `lex_hex_val` | function | `minigccg4.s:6310` | `` |
| `lex_init_keywords` | function | `minigccg4.s:5647` | `` |
| `lex_is_int_suffix` | function | `minigccg4.s:6432` | `` |
| `lex_kw_add` | function | `minigccg4.s:5484` | `` |
| `lex_kw_blob` | function | `minigccg4.s:3` | `` |
| `lex_kw_count` | function | `minigccg4.s:11` | `` |
| `lex_kw_ids` | function | `minigccg4.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg4.s:6134` | `` |
| `lex_match_op` | function | `minigccg4.s:6227` | `` |
| `lex_number` | function | `minigccg4.s:6501` | `` |
| `lex_pass_top` | function | `minigccg4.s:15` | `` |
| `libc_global_name` | function | `minigccg4.s:16137` | `` |
| `line` | function | `minigccg4.s:35` | `` |
| `logical_and_expr` | function | `minigccg4.s:27617` | `` |
| `logical_or_expr` | function | `minigccg4.s:27782` | `` |
| `lvalue_address` | function | `minigccg4.s:22286` | `` |
| `macro_add` | function | `minigccg4.s:2297` | `` |
| `macro_bitand` | function | `minigccg4.s:2922` | `` |
| `macro_bitor` | function | `minigccg4.s:3073` | `` |
| `macro_bitxor` | function | `minigccg4.s:3008` | `` |
| `macro_cmp` | function | `minigccg4.s:2548` | `` |
| `macro_count` | function | `minigccg4.s:320` | `` |
| `macro_digit_val` | function | `minigccg4.s:1047` | `` |
| `macro_eq` | function | `minigccg4.s:2769` | `` |
| `macro_fold` | function | `minigccg4.s:3353` | `` |
| `macro_hex_digit` | function | `minigccg4.s:949` | `` |
| `macro_logand` | function | `minigccg4.s:3159` | `` |
| `macro_mul` | function | `minigccg4.s:2094` | `` |
| `macro_ok` | function | `minigccg4.s:904` | `` |
| `macro_or_expr` | function | `minigccg4.s:3256` | `` |
| `macro_p` | function | `minigccg4.s:900` | `` |
| `macro_primary` | function | `minigccg4.s:1168` | `` |
| `macro_shift` | function | `minigccg4.s:2395` | `` |
| `macro_skipws` | function | `minigccg4.s:908` | `` |
| `macro_unary` | function | `minigccg4.s:1966` | `` |
| `macros` | function | `minigccg4.s:703` | `` |
| `main` | function | `minigccg4.s:53413` | `` |
| `mark_file_processed` | function | `minigccg4.s:3731` | `` |
| `match` | function | `minigccg4.s:13434` | `` |
| `max_func_stack` | function | `minigccg4.s:103` | `` |
| `multiplicative_expr` | function | `minigccg4.s:24477` | `` |
| `my_isalnum` | function | `minigccg4.s:5335` | `` |
| `my_isalpha` | function | `minigccg4.s:5226` | `` |
| `my_isdigit` | function | `minigccg4.s:5295` | `` |
| `my_isspace` | function | `minigccg4.s:5137` | `` |
| `next_token` | function | `minigccg4.s:8028` | `` |
| `no_postfix_deref` | function | `minigccg4.s:143` | `` |
| `note_defined_func` | function | `minigccg4.s:14695` | `` |
| `output` | function | `minigccg4.s:39` | `` |
| `parse_asm_block` | function | `minigccg4.s:37468` | `` |
| `parse_const_int` | function | `minigccg4.s:49884` | `` |
| `parse_enum` | function | `minigccg4.s:46458` | `` |
| `parse_fnptr_declarator` | function | `minigccg4.s:14942` | `` |
| `parse_function` | function | `minigccg4.s:44373` | `` |
| `parse_indirect_call` | function | `minigccg4.s:15789` | `` |
| `parse_program` | function | `minigccg4.s:50847` | `` |
| `parse_sync_call` | function | `minigccg4.s:20973` | `` |
| `parse_trailing_align` | function | `minigccg4.s:37426` | `` |
| `parse_va_arg` | function | `minigccg4.s:21639` | `` |
| `parse_va_end` | function | `minigccg4.s:22175` | `` |
| `parse_va_start` | function | `minigccg4.s:21295` | `` |
| `peek_call_argc` | function | `minigccg4.s:15361` | `` |
| `pending_align` | function | `minigccg4.s:175` | `` |
| `pop_scope` | function | `minigccg4.s:4788` | `` |
| `processed_count` | function | `minigccg4.s:59` | `` |
| `processed_files` | function | `minigccg4.s:55` | `` |
| `ptr_init_count` | function | `minigccg4.s:259` | `` |
| `ptr_init_label` | function | `minigccg4.s:255` | `` |
| `ptr_init_name` | function | `minigccg4.s:251` | `` |
| `push_scope` | function | `minigccg4.s:4736` | `` |
| `read_include_file` | function | `minigccg4.s:4433` | `` |
| `record_typedef_alias` | function | `minigccg4.s:48172` | `` |
| `relational_expr` | function | `minigccg4.s:26034` | `` |
| `resolve_local_include` | function | `minigccg4.s:3985` | `` |
| `restart` | function | `minigccg4.s:8032` | `` |
| `restart_int` | function | `minigccg4.s:43004` | `` |
| `restart_typedef` | function | `minigccg4.s:41754` | `` |
| `restore_parser_state` | function | `minigccg4.s:487` | `` |
| `safe_malloc` | function | `minigccg4.s:3425` | `` |
| `safe_strcpy` | function | `minigccg4.s:3479` | `` |
| `safe_strtoll` | function | `minigccg4.s:3556` | `` |
| `save_parser_state` | function | `minigccg4.s:324` | `` |
| `scope_depth` | function | `minigccg4.s:83` | `` |
| `scope_stack_stk` | function | `minigccg4.s:79` | `` |
| `scope_stack_sym` | function | `minigccg4.s:75` | `` |
| `shift_expr` | function | `minigccg4.s:25832` | `` |
| `skip_gcc_attribute` | function | `minigccg4.s:36951` | `` |
| `skip_struct` | function | `minigccg4.s:47462` | `` |
| `skip_struct_fields` | function | `minigccg4.s:46895` | `` |
| `skip_typedef` | function | `minigccg4.s:48414` | `` |
| `source_start` | function | `minigccg4.s:23` | `` |
| `stack_size` | function | `minigccg4.s:87` | `` |
| `statement` | function | `minigccg4.s:38033` | `` |
| `static_flag` | function | `minigccg4.s:155` | `` |
| `str_label_counter` | function | `minigccg4.s:239` | `` |
| `string_count` | function | `minigccg4.s:247` | `` |
| `string_pool` | function | `minigccg4.s:243` | `` |
| `struct_member_count` | function | `minigccg4.s:295` | `` |
| `struct_member_elem_sizes` | function | `minigccg4.s:279` | `` |
| `struct_member_is_float` | function | `minigccg4.s:287` | `` |
| `struct_member_is_fnptr` | function | `minigccg4.s:291` | `` |
| `struct_member_names` | function | `minigccg4.s:267` | `` |
| `struct_member_offsets` | function | `minigccg4.s:271` | `` |
| `struct_member_sizes` | function | `minigccg4.s:275` | `` |
| `struct_member_unsigned` | function | `minigccg4.s:283` | `` |
| `struct_total_size` | function | `minigccg4.s:263` | `` |
| `subscript_base_fnptr` | function | `minigccg4.s:119` | `` |
| `switch_case_count` | function | `minigccg4.s:211` | `` |
| `switch_case_labels` | function | `minigccg4.s:207` | `` |
| `switch_case_values` | function | `minigccg4.s:203` | `` |
| `switch_default_label` | function | `minigccg4.s:219` | `` |
| `switch_has_default` | function | `minigccg4.s:215` | `` |
| `symbol_count` | function | `minigccg4.s:67` | `` |
| `symbols` | function | `minigccg4.s:63` | `` |
| `td_stash_fnptr` | function | `minigccg4.s:48168` | `` |
| `td_stash_size` | function | `minigccg4.s:48160` | `` |
| `td_stash_uns` | function | `minigccg4.s:48164` | `` |
| `td_stash_valid` | function | `minigccg4.s:48156` | `` |
| `tok` | function | `minigccg4.s:31` | `` |
| `token` | function | `minigccg4.s:27` | `` |
| `truncate_symbols` | function | `minigccg4.s:4984` | `` |
| `typedef_name` | function | `minigccg4.s:16265` | `` |
| `typedef_size` | function | `minigccg4.s:16432` | `` |
| `typedef_uns` | function | `minigccg4.s:16599` | `` |
| `unary` | function | `minigccg4.s:16675` | `` |
| `unary_expr` | function | `minigccg4.s:24452` | `` |
| `unsigned_type` | function | `minigccg4.s:159` | `` |
| `vararg_nfixed` | function | `minigccg4.s:183` | `` |
| `vararg_save_off` | function | `minigccg4.s:187` | `` |
| `MY_LIBRARY_H` | macro | `my_library.h:2` | `#define MY_LIBRARY_H` |
| `greet` | function | `my_library.h:5` | `void greet(void);` |
| `main` | function | `test.c:1` | `int main(void)` |
| `fail` | function | `test_all.sh:25` | `` |
| `pass` | function | `test_all.sh:20` | `` |
| `run_neg` | function | `test_all.sh:101` | `` |
| `run_test` | function | `test_all.sh:37` | `` |
| `main` | function | `test_for.c:3` | `int main()` |
| `greet` | function | `test_include.c:10` | `void greet(void)` |
| `main` | function | `test_include.c:4` | `int main(void)` |
| `fail` | function | `test_ld_selfhost.sh:32` | `` |
| `pass` | function | `test_ld_selfhost.sh:27` | `` |
| `main` | function | `tests/neg_asm.c:1` | `int main(void)` |
| `main` | function | `tests/neg_asm2.c:1` | `int main(void)` |
| `main` | function | `tests/neg_asm3.c:1` | `int main(void)` |
| `main` | function | `tests/neg_asm_ds.c:8` | `int main(void)` |
| `sum_d5` | function | `tests/neg_asm_ds.c:1` | `long sum_d5(long d, long a, long b, long c, long e, long f)` |
| `main` | function | `tests/neg_attr.c:3` | `int main(void)` |
| `main` | function | `tests/neg_comment.c:1` | `int main(void)` |
| `main` | function | `tests/neg_float.c:1` | `int main(void)` |
| `add2` | function | `tests/neg_fnptr.c:3` | `long add2(long a, long b)` |
| `main` | function | `tests/neg_fnptr.c:7` | `int main(void)` |
| `main` | function | `tests/neg_fnptr_call.c:3` | `int main(void)` |
| `add2` | function | `tests/neg_fnptr_cmp.c:3` | `long add2(long a, long b)` |
| `main` | function | `tests/neg_fnptr_cmp.c:11` | `int main(void)` |
| `mul2` | function | `tests/neg_fnptr_cmp.c:7` | `long mul2(long a, long b)` |
| `add2` | function | `tests/neg_fnptr_cmp0.c:3` | `long add2(long a, long b)` |
| `main` | function | `tests/neg_fnptr_cmp0.c:7` | `int main(void)` |
| `add2` | function | `tests/neg_fnptr_globalinit.c:1` | `long add2(long a, long b)` |
| `main` | function | `tests/neg_fnptr_globalinit.c:7` | `int main(void)` |
| `add2` | function | `tests/neg_fnptr_tern.c:3` | `long add2(long a, long b)` |
| `main` | function | `tests/neg_fnptr_tern.c:7` | `int main(void)` |
| `main` | function | `tests/neg_hex.c:1` | `int main(void)` |
| `main` | function | `tests/neg_octal.c:1` | `int main(void)` |
| `c` | type_alias | `tests/neg_typedef_arrcont.c:1` | `typedef int b, c[4];` |
| `main` | function | `tests/neg_typedef_arrcont.c:3` | `int main(void)` |
| `main` | function | `tests/neg_va.c:1` | `int main(void)` |
| `main` | function | `tests/t_args.c:3` | `int main(int argc, char **argv)` |
| `main` | function | `tests/t_args7.c:16` | `int main(void)` |
| `mix8` | function | `tests/t_args7.c:11` | `long mix8(long a, long b, long c, long d, long e, long f, long g, long h)` |
| `sum7` | function | `tests/t_args7.c:3` | `long sum7(long a, long b, long c, long d, long e, long f, long g)` |
| `sum8` | function | `tests/t_args7.c:7` | `long sum8(long a, long b, long c, long d, long e, long f, long g, long h)` |
| `main` | function | `tests/t_arith.c:3` | `int main(void)` |
| `main` | function | `tests/t_arrays.c:3` | `int main(void)` |
| `main` | function | `tests/t_asm.c:5` | `int main(void)` |
| `main` | function | `tests/t_asm3.c:6` | `int main(void)` |
| `add_ds` | function | `tests/t_asm_ds.c:16` | `long add_ds(long a, long b)` |
| `main` | function | `tests/t_asm_ds.c:58` | `int main(void)` |
| `ret_d` | function | `tests/t_asm_ds.c:22` | `long ret_d(long x)` |
| `ret_dc` | function | `tests/t_asm_ds.c:40` | `char ret_dc(void)` |
| `ret_di` | function | `tests/t_asm_ds.c:34` | `int ret_di(void)` |
| `ret_ds` | function | `tests/t_asm_ds.c:46` | `int16_t ret_ds(void)` |
| `ret_dw` | function | `tests/t_asm_ds.c:52` | `int32_t ret_dw(void)` |
| `ret_s` | function | `tests/t_asm_ds.c:28` | `long ret_s(long x)` |
| `via_d` | function | `tests/t_asm_ds.c:4` | `long via_d(long x)` |
| `via_s` | function | `tests/t_asm_ds.c:10` | `long via_s(long x)` |
| `__attribute__` | function | `tests/t_attr.c:4` | `typedef struct __attribute__((packed))` |
| `__attribute__` | function | `tests/t_attr.c:12` | `__attribute__((always_inline)) static inline int sq(int x)` |
| `knoreturn` | function | `tests/t_attr.c:22` | `void knoreturn(void)` |
| `ksetjmp` | function | `tests/t_attr.c:17` | `int ksetjmp(long buf)` |
| `limit` | type_alias | `tests/t_attr.c:3` | `typedef struct __attribute__((packed)) { uint16_t limit;` |
| `main` | function | `tests/t_attr.c:25` | `int main(void)` |
| `main` | function | `tests/t_compound.c:3` | `int main(void)` |
| `main` | function | `tests/t_dowhile.c:3` | `int main(void)` |
| `Color` | enum | `tests/t_enum.c:3` | `` |
| `Single` | enum | `tests/t_enum.c:9` | `` |
| `main` | function | `tests/t_enum.c:13` | `int main(void)` |
| `main` | function | `tests/t_float.c:3` | `int main(void)` |
| `add2` | function | `tests/t_fnptr.c:3` | `long add2(long a, long b)` |
| `apply2` | function | `tests/t_fnptr.c:11` | `long apply2(long (*f)(long, long), long x, long y)` |
| `main` | function | `tests/t_fnptr.c:26` | `int main(void)` |
| `mul2` | function | `tests/t_fnptr.c:7` | `long mul2(long a, long b)` |
| `ops_t` | struct | `tests/t_fnptr.c:15` | `` |
| `run_op` | function | `tests/t_fnptr.c:22` | `long run_op(ops_t *o, long x, long y)` |
| `main` | function | `tests/t_for.c:3` | `int main(void)` |
| `main` | function | `tests/t_globinit.c:8` | `int main(void)` |
| `main` | function | `tests/t_goto.c:3` | `int main(void)` |
| `main` | function | `tests/t_hexoct.c:3` | `int main(void)` |
| `grade` | function | `tests/t_if.c:3` | `int grade(int s)` |
| `main` | function | `tests/t_if.c:10` | `int main(void)` |
| `main` | function | `tests/t_include.c:5` | `int main(void)` |
| `icube` | function | `tests/t_inline.c:4` | `static inline int icube(int x)` |
| `idbl` | function | `tests/t_inline.c:8` | `__inline__ static int idbl(int x)` |
| `iinc` | function | `tests/t_inline.c:12` | `__inline static int iinc(int x)` |
| `main` | function | `tests/t_inline.c:16` | `int main(void)` |
| `T_INLINE_H` | macro | `tests/t_inline_h.h:2` | `#define T_INLINE_H` |
| `isq` | function | `tests/t_inline_h.h:4` | `static inline int isq(int x)` |
| `INNER_VAL` | macro | `tests/t_inner_h.h:4` | `#define INNER_VAL` |
| `T_INNER_H` | macro | `tests/t_inner_h.h:2` | `#define T_INNER_H` |
| `inner_add` | function | `tests/t_inner_h.h:6` | `static inline int inner_add(int a, int b)` |
| `main` | function | `tests/t_logic.c:3` | `int main(void)` |
| `add64` | function | `tests/t_longlong.c:14` | `unsigned long long add64(unsigned long long a, unsigned long long b)` |
| `bump` | function | `tests/t_longlong.c:6` | `u64 bump(u64 x)` |
| `main` | function | `tests/t_longlong.c:20` | `int main(void)` |
| `negate` | function | `tests/t_longlong.c:10` | `s64 negate(s64 x)` |
| `s64` | type_alias | `tests/t_longlong.c:4` | `typedef long long s64;` |
| `u64` | type_alias | `tests/t_longlong.c:2` | `typedef unsigned long long u64;` |
| `HEXED` | macro | `tests/t_macros.c:5` | `#define HEXED` |
| `KONST` | macro | `tests/t_macros.c:3` | `#define KONST` |
| `NEGD` | macro | `tests/t_macros.c:7` | `#define NEGD` |
| `SHIFTED` | macro | `tests/t_macros.c:4` | `#define SHIFTED` |
| `SUMMED` | macro | `tests/t_macros.c:6` | `#define SUMMED` |
| `SZ` | macro | `tests/t_macros.c:8` | `#define SZ` |
| `main` | function | `tests/t_macros.c:10` | `int main(void)` |
| `OUTER_VAL` | macro | `tests/t_outer_h.h:6` | `#define OUTER_VAL` |
| `T_OUTER_H` | macro | `tests/t_outer_h.h:2` | `#define T_OUTER_H` |
| `bump` | function | `tests/t_pointers.c:3` | `void bump(int *p)` |
| `main` | function | `tests/t_pointers.c:7` | `int main(void)` |
| `fact` | function | `tests/t_recursion.c:8` | `int fact(int n)` |
| `fib` | function | `tests/t_recursion.c:3` | `int fib(int n)` |
| `main` | function | `tests/t_recursion.c:13` | `int main(void)` |
| `main` | function | `tests/t_scope.c:12` | `int main(void)` |
| `touch` | function | `tests/t_scope.c:7` | `void touch(void)` |
| `main` | function | `tests/t_sizeof.c:3` | `int main(void)` |
| `add_shorts` | function | `tests/t_stdint.c:34` | `short add_shorts(short a, short b)` |
| `idtr_t` | struct | `tests/t_stdint.c:4` | `` |
| `loads_s16` | function | `tests/t_stdint.c:26` | `int16_t loads_s16(int16_t v)` |
| `loads_u32` | function | `tests/t_stdint.c:30` | `uint32_t loads_u32(uint32_t v)` |
| `loads_u8` | function | `tests/t_stdint.c:22` | `uint8_t loads_u8(uint8_t v)` |
| `main` | function | `tests/t_stdint.c:38` | `int main(void)` |
| `main` | function | `tests/t_strings.c:3` | `int main(void)` |
| `Point` | struct | `tests/t_struct.c:3` | `` |
| `main` | function | `tests/t_struct.c:18` | `int main(void)` |
| `manhattan` | function | `tests/t_struct.c:10` | `int manhattan(Point *p)` |
| `R` | struct | `tests/t_struct_ul.c:3` | `` |
| `main` | function | `tests/t_struct_ul.c:13` | `int main(void)` |
| `classify` | function | `tests/t_switch.c:3` | `int classify(int v)` |
| `main` | function | `tests/t_switch.c:14` | `int main(void)` |
| `main` | function | `tests/t_sync.c:6` | `int main(void)` |
| `Pair` | struct | `tests/t_typedef.c:9` | `` |
| `main` | function | `tests/t_typedef.c:16` | `int main(void)` |
| `myint` | type_alias | `tests/t_typedef.c:2` | `typedef int myint;` |
| `bump` | function | `tests/t_unsigned.c:9` | `unsigned long bump(unsigned long x)` |
| `main` | function | `tests/t_unsigned.c:27` | `int main(void)` |
| `narrow` | function | `tests/t_unsigned.c:13` | `unsigned int narrow(unsigned int x)` |
| `reg_base` | function | `tests/t_unsigned.c:23` | `unsigned long reg_base(ureg_t *r)` |
| `u32` | type_alias | `tests/t_unsigned.c:4` | `typedef unsigned int u32;` |
| `u64` | type_alias | `tests/t_unsigned.c:2` | `typedef unsigned long u64;` |
| `u8` | type_alias | `tests/t_unsigned.c:94` | `typedef unsigned char u8;` |
| `u8b` | type_alias | `tests/t_unsigned.c:96` | `typedef u8 u8b;` |
| `ureg2` | type_alias | `tests/t_unsigned.c:114` | `typedef ureg_t ureg2;` |
| `ureg_t` | struct | `tests/t_unsigned.c:17` | `` |
| `uword` | type_alias | `tests/t_unsigned.c:108` | `typedef u32 uword;` |
| `main` | function | `tests/t_variadic.c:59` | `int main(void)` |
| `mini_kprintf` | function | `tests/t_variadic.c:12` | `void mini_kprintf(const char *fmt, ...)` |
| `mini_puts` | function | `tests/t_variadic.c:5` | `void mini_puts(const char *s)` |
| `putchar` | function | `tests/t_variadic.c:3` | `int putchar(int c);` |
| `vsum` | function | `tests/t_variadic.c:46` | `long vsum(int n, ...)` |
| `main` | function | `tests/t_while.c:3` | `int main(void)` |
