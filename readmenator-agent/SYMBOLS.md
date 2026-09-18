# Symbols

| Symbol | Kind | File:Line | Signature |
|--------|------|-----------|-----------|
| `ASM_MAX_OPS` | macro | `minigcc.c:3697` | `#define ASM_MAX_OPS` |
| `ASM_TMPL_SZ` | macro | `minigcc.c:3698` | `#define ASM_TMPL_SZ` |
| `ASM_TXT_SZ` | macro | `minigcc.c:3699` | `#define ASM_TXT_SZ` |
| `CONST_VAR_FLAG` | macro | `minigcc.c:260` | `#define CONST_VAR_FLAG` |
| `FileContext` | struct | `minigcc.c:98` | `` |
| `HASH_TABLE_SIZE` | macro | `minigcc.c:163` | `#define HASH_TABLE_SIZE` |
| `LEX_KW_BLOB` | macro | `minigcc.c:84` | `#define LEX_KW_BLOB` |
| `LEX_KW_CAP` | macro | `minigcc.c:83` | `#define LEX_KW_CAP` |
| `MAX_CASES_PER_SWITCH` | macro | `minigcc.c:203` | `#define MAX_CASES_PER_SWITCH` |
| `MAX_DEFINED_FUNCS` | macro | `minigcc.c:254` | `#define MAX_DEFINED_FUNCS` |
| `MAX_FLOAT_CONSTS` | macro | `minigcc.c:198` | `#define MAX_FLOAT_CONSTS` |
| `MAX_IDENT_LEN` | macro | `minigcc.c:17` | `#define MAX_IDENT_LEN` |
| `MAX_IF_NESTING` | macro | `minigcc.c:259` | `#define MAX_IF_NESTING` |
| `MAX_INCLUDE_DEPTH` | macro | `minigcc.c:19` | `#define MAX_INCLUDE_DEPTH` |
| `MAX_MACROS` | macro | `minigcc.c:269` | `#define MAX_MACROS` |
| `MAX_PROCESSED_FILES` | macro | `minigcc.c:20` | `#define MAX_PROCESSED_FILES` |
| `MAX_PTR_INITS` | macro | `minigcc.c:224` | `#define MAX_PTR_INITS` |
| `MAX_SCOPE_DEPTH` | macro | `minigcc.c:166` | `#define MAX_SCOPE_DEPTH` |
| `MAX_SOURCE_SIZE` | macro | `minigcc.c:18` | `#define MAX_SOURCE_SIZE` |
| `MAX_STRINGS` | macro | `minigcc.c:215` | `#define MAX_STRINGS` |
| `MAX_STRUCT_MEMBERS` | macro | `minigcc.c:234` | `#define MAX_STRUCT_MEMBERS` |
| `MAX_STRUCT_TYPEDEFS` | macro | `minigcc.c:250` | `#define MAX_STRUCT_TYPEDEFS` |
| `MAX_SYMBOLS` | macro | `minigcc.c:16` | `#define MAX_SYMBOLS` |
| `MAX_TOKEN_LEN` | macro | `minigcc.c:15` | `#define MAX_TOKEN_LEN` |
| `Macro` | struct | `minigcc.c:363` | `` |
| `ParserState` | struct | `minigcc.c:272` | `` |
| `STACK_ALIGN` | macro | `minigcc.c:21` | `#define STACK_ALIGN` |
| `Symbol` | struct | `minigcc.c:111` | `` |
| `add_macro` | function | `minigcc.c:379` | `static void add_macro(const char *name, int value)` |
| `add_symbol` | function | `minigcc.c:1817` | `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...` |
| `additive_expr` | function | `minigcc.c:3075` | `static void additive_expr(void)` |
| `arg_reg` | function | `minigcc.c:1903` | `static const char *arg_reg(int i)` |
| `asm_assign_homes` | function | `minigcc.c:3942` | `static void asm_assign_homes(void)` |
| `asm_emit_all` | function | `minigcc.c:4004` | `static void asm_emit_all(void)` |
| `asm_emit_ss` | function | `minigcc.c:3868` | `static void asm_emit_ss(const char *fmt, const char *a, const char *b)` |
| `asm_emit_template` | function | `minigcc.c:3783` | `static void asm_emit_template(void)` |
| `asm_fixed_home` | function | `minigcc.c:3773` | `static int asm_fixed_home(int c)` |
| `asm_home_text` | function | `minigcc.c:3721` | `static void asm_home_text(int home, char *buf)` |
| `asm_parse_mem` | function | `minigcc.c:3810` | `static void asm_parse_mem(int idx, int is_out)` |
| `asm_parse_one` | function | `minigcc.c:3874` | `static void asm_parse_one(int idx, int is_out)` |
| `asm_reg_sized` | function | `minigcc.c:3731` | `static void asm_reg_sized(int home, int size, char *buf)` |
| `asm_scratch` | function | `minigcc.c:3712` | `static const char *asm_scratch(int i)` |
| `assignment_expr` | function | `minigcc.c:3459` | `static void assignment_expr(void)` |
| `bitwise_and_expr` | function | `minigcc.c:3287` | `static void bitwise_and_expr(void)` |
| `bitwise_or_expr` | function | `minigcc.c:3323` | `static void bitwise_or_expr(void)` |
| `bitwise_xor_expr` | function | `minigcc.c:3305` | `static void bitwise_xor_expr(void)` |
| `build_static_label` | function | `minigcc.c:139` | `static void build_static_label(char *dst)` |
| `comma_expr` | function | `minigcc.c:3689` | `static void comma_expr(void)` |
| `conditional_expr` | function | `minigcc.c:3383` | `static void conditional_expr(void)` |
| `data_directive` | function | `minigcc.c:5569` | `static const char *data_directive(int size)` |
| `emit` | function | `minigcc.c:1740` | `static void emit(const char *s)` |
| `emit_asciz_body` | function | `minigcc.c:1781` | `static void emit_asciz_body(const char *s)` |
| `emit_compound_op` | function | `minigcc.c:3403` | `static void emit_compound_op(int op, int asize, int is_uns)` |
| `emit_float_consts` | function | `minigcc.c:5938` | `static void emit_float_consts(void)` |
| `emit_global_bss` | function | `minigcc.c:5577` | `static void emit_global_bss(const char *name, int is_static, int size)` |
| `emit_global_data_head` | function | `minigcc.c:5589` | `static void emit_global_data_head(const char *name, int is_static)` |
| `emit_global_initializer` | function | `minigcc.c:5642` | `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...` |
| `emit_i` | function | `minigcc.c:1754` | `static void emit_i(const char *fmt, int v)` |
| `emit_is` | function | `minigcc.c:1766` | `static void emit_is(const char *fmt, int v, const char *s)` |
| `emit_label` | function | `minigcc.c:1800` | `static void emit_label(int label)` |
| `emit_s` | function | `minigcc.c:1760` | `static void emit_s(const char *fmt, const char *s)` |
| `emit_si` | function | `minigcc.c:1772` | `static void emit_si(const char *fmt, const char *s, int v)` |
| `emit_spill_reverse` | function | `minigcc.c:2032` | `static void emit_spill_reverse(int argc)` |
| `emit_string_pool` | function | `minigcc.c:5948` | `static void emit_string_pool(void)` |
| `equality_expr` | function | `minigcc.c:3236` | `static void equality_expr(void)` |
| `error` | function | `minigcc.c:707` | `static void error(const char *msg)` |
| `find_macro` | function | `minigcc.c:371` | `static int find_macro(const char *name)` |
| `find_symbol` | function | `minigcc.c:1806` | `static int find_symbol(const char *name)` |
| `func_return_unsigned` | function | `minigcc.c:1938` | `static int func_return_unsigned(const char *name)` |
| `get_dir_from_path` | function | `minigcc.c:803` | `static void get_dir_from_path(const char *path, char *dir, int dir_sz)` |
| `handle_postfix` | function | `minigcc.c:2865` | `static void handle_postfix(int is_lvalue)` |
| `hash_init` | function | `minigcc.c:895` | `static void hash_init(void)` |
| `hash_name` | function | `minigcc.c:885` | `static int hash_name(const char *name)` |
| `ident_copy` | function | `minigcc.c:744` | `static void ident_copy(char *dst, const char *src)` |
| `intern_string` | function | `minigcc.c:5625` | `static int intern_string(const char *text)` |
| `is_defined_func` | function | `minigcc.c:1928` | `static int is_defined_func(const char *name)` |
| `is_file_processed` | function | `minigcc.c:782` | `static int is_file_processed(const char *path)` |
| `is_struct_typedef` | function | `minigcc.c:752` | `static int is_struct_typedef(const char *name)` |
| `lex_fail` | function | `minigcc.c:983` | `static void lex_fail(const char *msg, char *start, char *end)` |
| `lex_hex_val` | function | `minigcc.c:1072` | `static int lex_hex_val(int c)` |
| `lex_init_keywords` | function | `minigcc.c:1006` | `static void lex_init_keywords(void)` |
| `lex_is_int_suffix` | function | `minigcc.c:1079` | `static int lex_is_int_suffix(int c)` |
| `lex_kw_add` | function | `minigcc.c:993` | `static void lex_kw_add(const char *name, int id)` |
| `lex_kw_lookup` | function | `minigcc.c:1048` | `static int lex_kw_lookup(void)` |
| `lex_match_op` | function | `minigcc.c:1060` | `static int lex_match_op(const char *op, int id)` |
| `lex_number` | function | `minigcc.c:1085` | `static void lex_number(void)` |
| `libc_global_name` | function | `minigcc.c:2084` | `static const char *libc_global_name(int i)` |
| `logical_and_expr` | function | `minigcc.c:3341` | `static void logical_and_expr(void)` |
| `logical_or_expr` | function | `minigcc.c:3362` | `static void logical_or_expr(void)` |
| `lvalue_address` | function | `minigcc.c:2744` | `static void lvalue_address(void)` |
| `macro_add` | function | `minigcc.c:557` | `static int macro_add(void)` |
| `macro_bitand` | function | `minigcc.c:631` | `static int macro_bitand(void)` |
| `macro_bitor` | function | `minigcc.c:659` | `static int macro_bitor(void)` |
| `macro_bitxor` | function | `minigcc.c:645` | `static int macro_bitxor(void)` |
| `macro_cmp` | function | `minigcc.c:591` | `static int macro_cmp(void)` |
| `macro_digit_val` | function | `minigcc.c:414` | `static int macro_digit_val(int c)` |
| `macro_eq` | function | `minigcc.c:614` | `static int macro_eq(void)` |
| `macro_fold` | function | `minigcc.c:701` | `static int macro_fold(void)` |
| `macro_hex_digit` | function | `minigcc.c:407` | `static int macro_hex_digit(int c)` |
| `macro_logand` | function | `minigcc.c:673` | `static int macro_logand(void)` |
| `macro_mul` | function | `minigcc.c:532` | `static int macro_mul(void)` |
| `macro_or_expr` | function | `minigcc.c:687` | `static int macro_or_expr(void)` |
| `macro_primary` | function | `minigcc.c:421` | `static int macro_primary(void)` |
| `macro_shift` | function | `minigcc.c:574` | `static int macro_shift(void)` |
| `macro_skipws` | function | `minigcc.c:403` | `static void macro_skipws(void)` |
| `macro_unary` | function | `minigcc.c:523` | `static int macro_unary(void)` |
| `main` | function | `minigcc.c:5958` | `int main(int argc, char **argv)` |
| `mark_file_processed` | function | `minigcc.c:791` | `static void mark_file_processed(const char *path)` |
| `match` | function | `minigcc.c:1735` | `static void match(int expected)` |
| `multiplicative_expr` | function | `minigcc.c:2987` | `static void multiplicative_expr(void)` |
| `my_isalnum` | function | `minigcc.c:977` | `static int my_isalnum(int c)` |
| `my_isalpha` | function | `minigcc.c:966` | `static int my_isalpha(int c)` |
| `my_isdigit` | function | `minigcc.c:972` | `static int my_isdigit(int c)` |
| `my_isspace` | function | `minigcc.c:956` | `static int my_isspace(int c)` |
| `next_token` | function | `minigcc.c:1203` | `static void next_token(void)` |
| `note_defined_func` | function | `minigcc.c:1912` | `static void note_defined_func(const char *name, int is_uns)` |
| `parse_asm_block` | function | `minigcc.c:4109` | `static void parse_asm_block(void)` |
| `parse_const_int` | function | `minigcc.c:5602` | `static int parse_const_int(long long *out)` |
| `parse_enum` | function | `minigcc.c:5168` | `static int parse_enum(void)` |
| `parse_fnptr_declarator` | function | `minigcc.c:1948` | `static int parse_fnptr_declarator(char *out_name, int *out_count)` |
| `parse_function` | function | `minigcc.c:4951` | `static void parse_function(const char *name, int ret_type)` |
| `parse_indirect_call` | function | `minigcc.c:2044` | `static void parse_indirect_call(void)` |
| `parse_program` | function | `minigcc.c:5709` | `static void parse_program(void)` |
| `parse_sync_call` | function | `minigcc.c:2616` | `static void parse_sync_call(const char *name)` |
| `parse_trailing_align` | function | `minigcc.c:4102` | `static void parse_trailing_align(void)` |
| `parse_va_arg` | function | `minigcc.c:2681` | `static void parse_va_arg(void)` |
| `parse_va_end` | function | `minigcc.c:2728` | `static void parse_va_end(void)` |
| `parse_va_start` | function | `minigcc.c:2651` | `static void parse_va_start(void)` |
| `peek_call_argc` | function | `minigcc.c:1994` | `static int peek_call_argc(void)` |
| `pop_scope` | function | `minigcc.c:908` | `static void pop_scope(void)` |
| `postfix_member` | function | `minigcc.c:2801` | `static void postfix_member(int is_lvalue)` |
| `pp_eval` | function | `minigcc.c:713` | `static int pp_eval(char *p)` |
| `push_scope` | function | `minigcc.c:900` | `static void push_scope(void)` |
| `read_include_file` | function | `minigcc.c:861` | `static char *read_include_file(const char *path)` |
| `record_struct_typedef` | function | `minigcc.c:762` | `static void record_struct_typedef(const char *name)` |
| `record_typedef_alias` | function | `minigcc.c:5394` | `static void record_typedef_alias(const char *name, int size, int uns, int fnptr)` |
| `relational_expr` | function | `minigcc.c:3171` | `static void relational_expr(void)` |
| `resolve_local_include` | function | `minigcc.c:822` | `static char *resolve_local_include(const char *target)` |
| `restore_parser_state` | function | `minigcc.c:330` | `static void restore_parser_state(ParserState *state)` |
| `safe_malloc` | function | `minigcc.c:726` | `static void *safe_malloc(size_t size)` |
| `safe_strcpy` | function | `minigcc.c:735` | `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)` |
| `safe_strtoll` | function | `minigcc.c:769` | `static long safe_strtoll(const char *s)` |
| `save_parser_state` | function | `minigcc.c:301` | `static void save_parser_state(ParserState *state)` |
| `shift_expr` | function | `minigcc.c:3144` | `static void shift_expr(void)` |
| `skip_gcc_attribute` | function | `minigcc.c:4052` | `static int skip_gcc_attribute(void)` |
| `skip_struct` | function | `minigcc.c:5305` | `static void skip_struct(int is_union)` |
| `skip_struct_fields` | function | `minigcc.c:5238` | `static void skip_struct_fields(int fsize, int funs, int ffloat, int fstruct, int isunion)` |
| `skip_typedef` | function | `minigcc.c:5421` | `static void skip_typedef(void)` |
| `statement` | function | `minigcc.c:4173` | `static void statement(void)` |
| `strcmp` | function | `minigcc.c:2183` | `strcmp(id_name, "__sync_lock_test_and_set") == 0 \|\|
                strcmp(id_name, "__sync_lock_...` |
| `strcmp` | function | `minigcc.c:2188` | `strcmp(id_name, "va_start") == 0)` |
| `strcmp` | function | `minigcc.c:2191` | `strcmp(id_name, "va_end") == 0)` |
| `strcmp` | function | `minigcc.c:2194` | `strcmp(id_name, "va_arg") == 0)` |
| `strcmp` | function | `minigcc.c:4072` | `strcmp(token, "returns_twice") == 0 \|\|
                       strcmp(token, "always_inline") == 0)` |
| `sym_label` | function | `minigcc.c:135` | `static const char *sym_label(Symbol *s)` |
| `truncate_symbols` | function | `minigcc.c:937` | `static void truncate_symbols(int start_idx)` |
| `typedef_name` | function | `minigcc.c:2097` | `static const char *typedef_name(int i)` |
| `typedef_size` | function | `minigcc.c:2113` | `static int typedef_size(int i)` |
| `typedef_uns` | function | `minigcc.c:2129` | `static int typedef_uns(int i)` |
| `unary` | function | `minigcc.c:2138` | `static void unary(void)` |
| `unary_expr` | function | `minigcc.c:2972` | `static void unary_expr(void)` |
| `_start` | function | `minigccg2.s:61452` | `` |
| `add_macro` | function | `minigccg2.s:1035` | `` |
| `add_symbol` | function | `minigccg2.s:15943` | `` |
| `additive_expr` | function | `minigccg2.s:27045` | `` |
| `arg_reg` | function | `minigccg2.s:16343` | `` |
| `asm_assign_homes` | function | `minigccg2.s:37653` | `` |
| `asm_emit_all` | function | `minigccg2.s:38279` | `` |
| `asm_emit_ss` | function | `minigccg2.s:36531` | `` |
| `asm_emit_template` | function | `minigccg2.s:35702` | `` |
| `asm_fixed_home` | function | `minigccg2.s:35612` | `` |
| `asm_home` | function | `minigccg2.s:34317` | `` |
| `asm_home_text` | function | `minigccg2.s:34417` | `` |
| `asm_is_out` | function | `minigccg2.s:34313` | `` |
| `asm_mem` | function | `minigccg2.s:34309` | `` |
| `asm_nops` | function | `minigccg2.s:34329` | `` |
| `asm_nslots` | function | `minigccg2.s:34333` | `` |
| `asm_parse_mem` | function | `minigccg2.s:35938` | `` |
| `asm_parse_one` | function | `minigccg2.s:36582` | `` |
| `asm_reg_sized` | function | `minigccg2.s:34632` | `` |
| `asm_scratch` | function | `minigccg2.s:34341` | `` |
| `asm_size` | function | `minigccg2.s:34325` | `` |
| `asm_slot` | function | `minigccg2.s:34321` | `` |
| `asm_text` | function | `minigccg2.s:34305` | `` |
| `asm_tmpl` | function | `minigccg2.s:34301` | `` |
| `asm_unique` | function | `minigccg2.s:34337` | `` |
| `assign_size` | function | `minigccg2.s:356` | `` |
| `assignment_expr` | function | `minigccg2.s:30462` | `` |
| `bitwise_and_expr` | function | `minigccg2.s:29018` | `` |
| `bitwise_or_expr` | function | `minigccg2.s:29272` | `` |
| `bitwise_xor_expr` | function | `minigccg2.s:29145` | `` |
| `break_target` | function | `minigccg2.s:472` | `` |
| `break_target_valid` | function | `minigccg2.s:476` | `` |
| `build_static_label` | function | `minigccg2.s:100` | `` |
| `comma_expr` | function | `minigccg2.s:34261` | `` |
| `conditional_expr` | function | `minigccg2.s:29729` | `` |
| `const_flag` | function | `minigccg2.s:412` | `` |
| `continue_target` | function | `minigccg2.s:480` | `` |
| `continue_target_valid` | function | `minigccg2.s:484` | `` |
| `ctx_stack` | function | `minigccg2.s:43` | `` |
| `ctx_top` | function | `minigccg2.s:47` | `` |
| `current_elem_size` | function | `minigccg2.s:372` | `` |
| `current_elem_size2` | function | `minigccg2.s:376` | `` |
| `current_elem_unsigned` | function | `minigccg2.s:380` | `` |
| `current_file` | function | `minigccg2.s:51` | `` |
| `data_directive` | function | `minigccg2.s:52331` | `` |
| `defined_func_count` | function | `minigccg2.s:568` | `` |
| `defined_func_names` | function | `minigccg2.s:560` | `` |
| `defined_func_unsigned` | function | `minigccg2.s:564` | `` |
| `deref_u` | function | `minigccg2.s:388` | `` |
| `deref_w` | function | `minigccg2.s:384` | `` |
| `emit` | function | `minigccg2.s:15205` | `` |
| `emit_asciz_body` | function | `minigccg2.s:15514` | `` |
| `emit_compound_op` | function | `minigccg2.s:29869` | `` |
| `emit_enabled` | function | `minigccg2.s:348` | `` |
| `emit_float_consts` | function | `minigccg2.s:56071` | `` |
| `emit_global_bss` | function | `minigccg2.s:52381` | `` |
| `emit_global_data_head` | function | `minigccg2.s:52491` | `` |
| `emit_global_initializer` | function | `minigccg2.s:52822` | `` |
| `emit_i` | function | `minigccg2.s:15316` | `` |
| `emit_is` | function | `minigccg2.s:15412` | `` |
| `emit_label` | function | `minigccg2.s:15828` | `` |
| `emit_s` | function | `minigccg2.s:15364` | `` |
| `emit_si` | function | `minigccg2.s:15463` | `` |
| `emit_spill_reverse` | function | `minigccg2.s:17340` | `` |
| `emit_string_pool` | function | `minigccg2.s:56168` | `` |
| `equality_expr` | function | `minigccg2.s:28530` | `` |
| `error` | function | `minigccg2.s:3993` | `` |
| `expr_fnptr` | function | `minigccg2.s:364` | `` |
| `expr_pointed` | function | `minigccg2.s:360` | `` |
| `expr_type` | function | `minigccg2.s:396` | `` |
| `expr_unsigned` | function | `minigccg2.s:400` | `` |
| `extern_flag` | function | `minigccg2.s:416` | `` |
| `find_macro` | function | `minigccg2.s:972` | `` |
| `find_symbol` | function | `minigccg2.s:15857` | `` |
| `float_const_count` | function | `minigccg2.s:448` | `` |
| `float_const_is_float` | function | `minigccg2.s:444` | `` |
| `float_const_str` | function | `minigccg2.s:440` | `` |
| `func_is_variadic` | function | `minigccg2.s:428` | `` |
| `func_return_unsigned` | function | `minigccg2.s:16601` | `` |
| `function_has_return` | function | `minigccg2.s:344` | `` |
| `get_dir_from_path` | function | `minigccg2.s:4861` | `` |
| `global_emit_deferred` | function | `minigccg2.s:420` | `` |
| `handle_postfix` | function | `minigccg2.s:25589` | `` |
| `hash_init` | function | `minigccg2.s:5716` | `` |
| `hash_name` | function | `minigccg2.s:5658` | `` |
| `hash_table` | function | `minigccg2.s:320` | `` |
| `ident_copy` | function | `minigccg2.s:4308` | `` |
| `if_depth` | function | `minigccg2.s:580` | `` |
| `if_nest` | function | `minigccg2.s:572` | `` |
| `if_taken` | function | `minigccg2.s:576` | `` |
| `input_ptr` | function | `minigccg2.s:19` | `` |
| `intern_string` | function | `minigccg2.s:52729` | `` |
| `is_defined_func` | function | `minigccg2.s:16542` | `` |
| `is_file_processed` | function | `minigccg2.s:4690` | `` |
| `is_struct_typedef` | function | `minigccg2.s:4390` | `` |
| `label_counter` | function | `minigccg2.s:340` | `` |
| `lex_fail` | function | `minigccg2.s:6399` | `` |
| `lex_hex_val` | function | `minigccg2.s:7355` | `` |
| `lex_init_keywords` | function | `minigccg2.s:6666` | `` |
| `lex_is_int_suffix` | function | `minigccg2.s:7477` | `` |
| `lex_kw_add` | function | `minigccg2.s:6503` | `` |
| `lex_kw_blob` | function | `minigccg2.s:3` | `` |
| `lex_kw_count` | function | `minigccg2.s:11` | `` |
| `lex_kw_ids` | function | `minigccg2.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg2.s:7179` | `` |
| `lex_match_op` | function | `minigccg2.s:7272` | `` |
| `lex_number` | function | `minigccg2.s:7546` | `` |
| `lex_pass_top` | function | `minigccg2.s:15` | `` |
| `libc_global_name` | function | `minigccg2.s:17825` | `` |
| `line` | function | `minigccg2.s:35` | `` |
| `logical_and_expr` | function | `minigccg2.s:29399` | `` |
| `logical_or_expr` | function | `minigccg2.s:29564` | `` |
| `lvalue_address` | function | `minigccg2.s:24393` | `` |
| `macro_add` | function | `minigccg2.s:2911` | `` |
| `macro_bitand` | function | `minigccg2.s:3536` | `` |
| `macro_bitor` | function | `minigccg2.s:3687` | `` |
| `macro_bitxor` | function | `minigccg2.s:3622` | `` |
| `macro_cmp` | function | `minigccg2.s:3162` | `` |
| `macro_count` | function | `minigccg2.s:585` | `` |
| `macro_digit_val` | function | `minigccg2.s:1256` | `` |
| `macro_eq` | function | `minigccg2.s:3383` | `` |
| `macro_fold` | function | `minigccg2.s:3967` | `` |
| `macro_hex_digit` | function | `minigccg2.s:1158` | `` |
| `macro_logand` | function | `minigccg2.s:3773` | `` |
| `macro_mul` | function | `minigccg2.s:2708` | `` |
| `macro_ok` | function | `minigccg2.s:1109` | `` |
| `macro_or_expr` | function | `minigccg2.s:3870` | `` |
| `macro_p` | function | `minigccg2.s:1105` | `` |
| `macro_primary` | function | `minigccg2.s:1377` | `` |
| `macro_shift` | function | `minigccg2.s:3009` | `` |
| `macro_skipws` | function | `minigccg2.s:1117` | `` |
| `macro_unary` | function | `minigccg2.s:2580` | `` |
| `macro_undef_zero` | function | `minigccg2.s:1113` | `` |
| `macros` | function | `minigccg2.s:968` | `` |
| `main` | function | `minigccg2.s:56269` | `` |
| `mark_file_processed` | function | `minigccg2.s:4750` | `` |
| `match` | function | `minigccg2.s:15167` | `` |
| `max_func_stack` | function | `minigccg2.s:352` | `` |
| `multiplicative_expr` | function | `minigccg2.s:26259` | `` |
| `my_isalnum` | function | `minigccg2.s:6354` | `` |
| `my_isalpha` | function | `minigccg2.s:6245` | `` |
| `my_isdigit` | function | `minigccg2.s:6314` | `` |
| `my_isspace` | function | `minigccg2.s:6156` | `` |
| `next_token` | function | `minigccg2.s:9073` | `` |
| `no_postfix_deref` | function | `minigccg2.s:392` | `` |
| `note_defined_func` | function | `minigccg2.s:16419` | `` |
| `output` | function | `minigccg2.s:39` | `` |
| `parse_asm_block` | function | `minigccg2.s:39372` | `` |
| `parse_const_int` | function | `minigccg2.s:52566` | `` |
| `parse_enum` | function | `minigccg2.s:48821` | `` |
| `parse_fnptr_declarator` | function | `minigccg2.s:16666` | `` |
| `parse_function` | function | `minigccg2.s:46662` | `` |
| `parse_indirect_call` | function | `minigccg2.s:17477` | `` |
| `parse_program` | function | `minigccg2.s:53533` | `` |
| `parse_sync_call` | function | `minigccg2.s:23176` | `` |
| `parse_trailing_align` | function | `minigccg2.s:39330` | `` |
| `parse_va_arg` | function | `minigccg2.s:23794` | `` |
| `parse_va_end` | function | `minigccg2.s:24282` | `` |
| `parse_va_start` | function | `minigccg2.s:23498` | `` |
| `peek_call_argc` | function | `minigccg2.s:17037` | `` |
| `pending_align` | function | `minigccg2.s:424` | `` |
| `pop_scope` | function | `minigccg2.s:5807` | `` |
| `postfix_member` | function | `minigccg2.s:24972` | `` |
| `pp_eval` | function | `minigccg2.s:4044` | `` |
| `processed_count` | function | `minigccg2.s:59` | `` |
| `processed_files` | function | `minigccg2.s:55` | `` |
| `ptr_init_count` | function | `minigccg2.s:508` | `` |
| `ptr_init_label` | function | `minigccg2.s:504` | `` |
| `ptr_init_name` | function | `minigccg2.s:500` | `` |
| `push_scope` | function | `minigccg2.s:5755` | `` |
| `read_include_file` | function | `minigccg2.s:5452` | `` |
| `record_struct_typedef` | function | `minigccg2.s:4477` | `` |
| `record_typedef_alias` | function | `minigccg2.s:50946` | `` |
| `relational_expr` | function | `minigccg2.s:27816` | `` |
| `resolve_local_include` | function | `minigccg2.s:5004` | `` |
| `restart` | function | `minigccg2.s:9077` | `` |
| `restart_int` | function | `minigccg2.s:45108` | `` |
| `restart_typedef` | function | `minigccg2.s:43883` | `` |
| `restore_parser_state` | function | `minigccg2.s:752` | `` |
| `safe_malloc` | function | `minigccg2.s:4177` | `` |
| `safe_strcpy` | function | `minigccg2.s:4231` | `` |
| `safe_strtoll` | function | `minigccg2.s:4575` | `` |
| `save_parser_state` | function | `minigccg2.s:589` | `` |
| `scope_depth` | function | `minigccg2.s:332` | `` |
| `scope_stack_stk` | function | `minigccg2.s:328` | `` |
| `scope_stack_sym` | function | `minigccg2.s:324` | `` |
| `shift_expr` | function | `minigccg2.s:27614` | `` |
| `skip_gcc_attribute` | function | `minigccg2.s:38855` | `` |
| `skip_struct` | function | `minigccg2.s:49995` | `` |
| `skip_struct_fields` | function | `minigccg2.s:49409` | `` |
| `skip_typedef` | function | `minigccg2.s:51143` | `` |
| `source_start` | function | `minigccg2.s:23` | `` |
| `stack_size` | function | `minigccg2.s:336` | `` |
| `statement` | function | `minigccg2.s:39937` | `` |
| `static_flag` | function | `minigccg2.s:404` | `` |
| `static_local_count` | function | `minigccg2.s:71` | `` |
| `str_label_counter` | function | `minigccg2.s:488` | `` |
| `string_count` | function | `minigccg2.s:496` | `` |
| `string_pool` | function | `minigccg2.s:492` | `` |
| `struct_member_count` | function | `minigccg2.s:548` | `` |
| `struct_member_elem_sizes` | function | `minigccg2.s:528` | `` |
| `struct_member_is_float` | function | `minigccg2.s:536` | `` |
| `struct_member_is_fnptr` | function | `minigccg2.s:540` | `` |
| `struct_member_is_struct` | function | `minigccg2.s:544` | `` |
| `struct_member_names` | function | `minigccg2.s:516` | `` |
| `struct_member_offsets` | function | `minigccg2.s:520` | `` |
| `struct_member_sizes` | function | `minigccg2.s:524` | `` |
| `struct_member_unsigned` | function | `minigccg2.s:532` | `` |
| `struct_total_size` | function | `minigccg2.s:512` | `` |
| `struct_typedef_count` | function | `minigccg2.s:556` | `` |
| `struct_typedef_names` | function | `minigccg2.s:552` | `` |
| `subscript_base_fnptr` | function | `minigccg2.s:368` | `` |
| `switch_case_count` | function | `minigccg2.s:460` | `` |
| `switch_case_labels` | function | `minigccg2.s:456` | `` |
| `switch_case_values` | function | `minigccg2.s:452` | `` |
| `switch_default_label` | function | `minigccg2.s:468` | `` |
| `switch_has_default` | function | `minigccg2.s:464` | `` |
| `sym_label` | function | `minigccg2.s:75` | `` |
| `symbol_count` | function | `minigccg2.s:67` | `` |
| `symbols` | function | `minigccg2.s:63` | `` |
| `td_stash_fnptr` | function | `minigccg2.s:50942` | `` |
| `td_stash_size` | function | `minigccg2.s:50934` | `` |
| `td_stash_uns` | function | `minigccg2.s:50938` | `` |
| `td_stash_valid` | function | `minigccg2.s:50930` | `` |
| `tok` | function | `minigccg2.s:31` | `` |
| `token` | function | `minigccg2.s:27` | `` |
| `truncate_symbols` | function | `minigccg2.s:6003` | `` |
| `typedef_name` | function | `minigccg2.s:17953` | `` |
| `typedef_size` | function | `minigccg2.s:18120` | `` |
| `typedef_uns` | function | `minigccg2.s:18287` | `` |
| `unary` | function | `minigccg2.s:18363` | `` |
| `unary_expr` | function | `minigccg2.s:26234` | `` |
| `unsigned_type` | function | `minigccg2.s:408` | `` |
| `vararg_nfixed` | function | `minigccg2.s:432` | `` |
| `vararg_save_off` | function | `minigccg2.s:436` | `` |
| `_start` | function | `minigccg3.s:61452` | `` |
| `add_macro` | function | `minigccg3.s:1035` | `` |
| `add_symbol` | function | `minigccg3.s:15943` | `` |
| `additive_expr` | function | `minigccg3.s:27045` | `` |
| `arg_reg` | function | `minigccg3.s:16343` | `` |
| `asm_assign_homes` | function | `minigccg3.s:37653` | `` |
| `asm_emit_all` | function | `minigccg3.s:38279` | `` |
| `asm_emit_ss` | function | `minigccg3.s:36531` | `` |
| `asm_emit_template` | function | `minigccg3.s:35702` | `` |
| `asm_fixed_home` | function | `minigccg3.s:35612` | `` |
| `asm_home` | function | `minigccg3.s:34317` | `` |
| `asm_home_text` | function | `minigccg3.s:34417` | `` |
| `asm_is_out` | function | `minigccg3.s:34313` | `` |
| `asm_mem` | function | `minigccg3.s:34309` | `` |
| `asm_nops` | function | `minigccg3.s:34329` | `` |
| `asm_nslots` | function | `minigccg3.s:34333` | `` |
| `asm_parse_mem` | function | `minigccg3.s:35938` | `` |
| `asm_parse_one` | function | `minigccg3.s:36582` | `` |
| `asm_reg_sized` | function | `minigccg3.s:34632` | `` |
| `asm_scratch` | function | `minigccg3.s:34341` | `` |
| `asm_size` | function | `minigccg3.s:34325` | `` |
| `asm_slot` | function | `minigccg3.s:34321` | `` |
| `asm_text` | function | `minigccg3.s:34305` | `` |
| `asm_tmpl` | function | `minigccg3.s:34301` | `` |
| `asm_unique` | function | `minigccg3.s:34337` | `` |
| `assign_size` | function | `minigccg3.s:356` | `` |
| `assignment_expr` | function | `minigccg3.s:30462` | `` |
| `bitwise_and_expr` | function | `minigccg3.s:29018` | `` |
| `bitwise_or_expr` | function | `minigccg3.s:29272` | `` |
| `bitwise_xor_expr` | function | `minigccg3.s:29145` | `` |
| `break_target` | function | `minigccg3.s:472` | `` |
| `break_target_valid` | function | `minigccg3.s:476` | `` |
| `build_static_label` | function | `minigccg3.s:100` | `` |
| `comma_expr` | function | `minigccg3.s:34261` | `` |
| `conditional_expr` | function | `minigccg3.s:29729` | `` |
| `const_flag` | function | `minigccg3.s:412` | `` |
| `continue_target` | function | `minigccg3.s:480` | `` |
| `continue_target_valid` | function | `minigccg3.s:484` | `` |
| `ctx_stack` | function | `minigccg3.s:43` | `` |
| `ctx_top` | function | `minigccg3.s:47` | `` |
| `current_elem_size` | function | `minigccg3.s:372` | `` |
| `current_elem_size2` | function | `minigccg3.s:376` | `` |
| `current_elem_unsigned` | function | `minigccg3.s:380` | `` |
| `current_file` | function | `minigccg3.s:51` | `` |
| `data_directive` | function | `minigccg3.s:52331` | `` |
| `defined_func_count` | function | `minigccg3.s:568` | `` |
| `defined_func_names` | function | `minigccg3.s:560` | `` |
| `defined_func_unsigned` | function | `minigccg3.s:564` | `` |
| `deref_u` | function | `minigccg3.s:388` | `` |
| `deref_w` | function | `minigccg3.s:384` | `` |
| `emit` | function | `minigccg3.s:15205` | `` |
| `emit_asciz_body` | function | `minigccg3.s:15514` | `` |
| `emit_compound_op` | function | `minigccg3.s:29869` | `` |
| `emit_enabled` | function | `minigccg3.s:348` | `` |
| `emit_float_consts` | function | `minigccg3.s:56071` | `` |
| `emit_global_bss` | function | `minigccg3.s:52381` | `` |
| `emit_global_data_head` | function | `minigccg3.s:52491` | `` |
| `emit_global_initializer` | function | `minigccg3.s:52822` | `` |
| `emit_i` | function | `minigccg3.s:15316` | `` |
| `emit_is` | function | `minigccg3.s:15412` | `` |
| `emit_label` | function | `minigccg3.s:15828` | `` |
| `emit_s` | function | `minigccg3.s:15364` | `` |
| `emit_si` | function | `minigccg3.s:15463` | `` |
| `emit_spill_reverse` | function | `minigccg3.s:17340` | `` |
| `emit_string_pool` | function | `minigccg3.s:56168` | `` |
| `equality_expr` | function | `minigccg3.s:28530` | `` |
| `error` | function | `minigccg3.s:3993` | `` |
| `expr_fnptr` | function | `minigccg3.s:364` | `` |
| `expr_pointed` | function | `minigccg3.s:360` | `` |
| `expr_type` | function | `minigccg3.s:396` | `` |
| `expr_unsigned` | function | `minigccg3.s:400` | `` |
| `extern_flag` | function | `minigccg3.s:416` | `` |
| `find_macro` | function | `minigccg3.s:972` | `` |
| `find_symbol` | function | `minigccg3.s:15857` | `` |
| `float_const_count` | function | `minigccg3.s:448` | `` |
| `float_const_is_float` | function | `minigccg3.s:444` | `` |
| `float_const_str` | function | `minigccg3.s:440` | `` |
| `func_is_variadic` | function | `minigccg3.s:428` | `` |
| `func_return_unsigned` | function | `minigccg3.s:16601` | `` |
| `function_has_return` | function | `minigccg3.s:344` | `` |
| `get_dir_from_path` | function | `minigccg3.s:4861` | `` |
| `global_emit_deferred` | function | `minigccg3.s:420` | `` |
| `handle_postfix` | function | `minigccg3.s:25589` | `` |
| `hash_init` | function | `minigccg3.s:5716` | `` |
| `hash_name` | function | `minigccg3.s:5658` | `` |
| `hash_table` | function | `minigccg3.s:320` | `` |
| `ident_copy` | function | `minigccg3.s:4308` | `` |
| `if_depth` | function | `minigccg3.s:580` | `` |
| `if_nest` | function | `minigccg3.s:572` | `` |
| `if_taken` | function | `minigccg3.s:576` | `` |
| `input_ptr` | function | `minigccg3.s:19` | `` |
| `intern_string` | function | `minigccg3.s:52729` | `` |
| `is_defined_func` | function | `minigccg3.s:16542` | `` |
| `is_file_processed` | function | `minigccg3.s:4690` | `` |
| `is_struct_typedef` | function | `minigccg3.s:4390` | `` |
| `label_counter` | function | `minigccg3.s:340` | `` |
| `lex_fail` | function | `minigccg3.s:6399` | `` |
| `lex_hex_val` | function | `minigccg3.s:7355` | `` |
| `lex_init_keywords` | function | `minigccg3.s:6666` | `` |
| `lex_is_int_suffix` | function | `minigccg3.s:7477` | `` |
| `lex_kw_add` | function | `minigccg3.s:6503` | `` |
| `lex_kw_blob` | function | `minigccg3.s:3` | `` |
| `lex_kw_count` | function | `minigccg3.s:11` | `` |
| `lex_kw_ids` | function | `minigccg3.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg3.s:7179` | `` |
| `lex_match_op` | function | `minigccg3.s:7272` | `` |
| `lex_number` | function | `minigccg3.s:7546` | `` |
| `lex_pass_top` | function | `minigccg3.s:15` | `` |
| `libc_global_name` | function | `minigccg3.s:17825` | `` |
| `line` | function | `minigccg3.s:35` | `` |
| `logical_and_expr` | function | `minigccg3.s:29399` | `` |
| `logical_or_expr` | function | `minigccg3.s:29564` | `` |
| `lvalue_address` | function | `minigccg3.s:24393` | `` |
| `macro_add` | function | `minigccg3.s:2911` | `` |
| `macro_bitand` | function | `minigccg3.s:3536` | `` |
| `macro_bitor` | function | `minigccg3.s:3687` | `` |
| `macro_bitxor` | function | `minigccg3.s:3622` | `` |
| `macro_cmp` | function | `minigccg3.s:3162` | `` |
| `macro_count` | function | `minigccg3.s:585` | `` |
| `macro_digit_val` | function | `minigccg3.s:1256` | `` |
| `macro_eq` | function | `minigccg3.s:3383` | `` |
| `macro_fold` | function | `minigccg3.s:3967` | `` |
| `macro_hex_digit` | function | `minigccg3.s:1158` | `` |
| `macro_logand` | function | `minigccg3.s:3773` | `` |
| `macro_mul` | function | `minigccg3.s:2708` | `` |
| `macro_ok` | function | `minigccg3.s:1109` | `` |
| `macro_or_expr` | function | `minigccg3.s:3870` | `` |
| `macro_p` | function | `minigccg3.s:1105` | `` |
| `macro_primary` | function | `minigccg3.s:1377` | `` |
| `macro_shift` | function | `minigccg3.s:3009` | `` |
| `macro_skipws` | function | `minigccg3.s:1117` | `` |
| `macro_unary` | function | `minigccg3.s:2580` | `` |
| `macro_undef_zero` | function | `minigccg3.s:1113` | `` |
| `macros` | function | `minigccg3.s:968` | `` |
| `main` | function | `minigccg3.s:56269` | `` |
| `mark_file_processed` | function | `minigccg3.s:4750` | `` |
| `match` | function | `minigccg3.s:15167` | `` |
| `max_func_stack` | function | `minigccg3.s:352` | `` |
| `multiplicative_expr` | function | `minigccg3.s:26259` | `` |
| `my_isalnum` | function | `minigccg3.s:6354` | `` |
| `my_isalpha` | function | `minigccg3.s:6245` | `` |
| `my_isdigit` | function | `minigccg3.s:6314` | `` |
| `my_isspace` | function | `minigccg3.s:6156` | `` |
| `next_token` | function | `minigccg3.s:9073` | `` |
| `no_postfix_deref` | function | `minigccg3.s:392` | `` |
| `note_defined_func` | function | `minigccg3.s:16419` | `` |
| `output` | function | `minigccg3.s:39` | `` |
| `parse_asm_block` | function | `minigccg3.s:39372` | `` |
| `parse_const_int` | function | `minigccg3.s:52566` | `` |
| `parse_enum` | function | `minigccg3.s:48821` | `` |
| `parse_fnptr_declarator` | function | `minigccg3.s:16666` | `` |
| `parse_function` | function | `minigccg3.s:46662` | `` |
| `parse_indirect_call` | function | `minigccg3.s:17477` | `` |
| `parse_program` | function | `minigccg3.s:53533` | `` |
| `parse_sync_call` | function | `minigccg3.s:23176` | `` |
| `parse_trailing_align` | function | `minigccg3.s:39330` | `` |
| `parse_va_arg` | function | `minigccg3.s:23794` | `` |
| `parse_va_end` | function | `minigccg3.s:24282` | `` |
| `parse_va_start` | function | `minigccg3.s:23498` | `` |
| `peek_call_argc` | function | `minigccg3.s:17037` | `` |
| `pending_align` | function | `minigccg3.s:424` | `` |
| `pop_scope` | function | `minigccg3.s:5807` | `` |
| `postfix_member` | function | `minigccg3.s:24972` | `` |
| `pp_eval` | function | `minigccg3.s:4044` | `` |
| `processed_count` | function | `minigccg3.s:59` | `` |
| `processed_files` | function | `minigccg3.s:55` | `` |
| `ptr_init_count` | function | `minigccg3.s:508` | `` |
| `ptr_init_label` | function | `minigccg3.s:504` | `` |
| `ptr_init_name` | function | `minigccg3.s:500` | `` |
| `push_scope` | function | `minigccg3.s:5755` | `` |
| `read_include_file` | function | `minigccg3.s:5452` | `` |
| `record_struct_typedef` | function | `minigccg3.s:4477` | `` |
| `record_typedef_alias` | function | `minigccg3.s:50946` | `` |
| `relational_expr` | function | `minigccg3.s:27816` | `` |
| `resolve_local_include` | function | `minigccg3.s:5004` | `` |
| `restart` | function | `minigccg3.s:9077` | `` |
| `restart_int` | function | `minigccg3.s:45108` | `` |
| `restart_typedef` | function | `minigccg3.s:43883` | `` |
| `restore_parser_state` | function | `minigccg3.s:752` | `` |
| `safe_malloc` | function | `minigccg3.s:4177` | `` |
| `safe_strcpy` | function | `minigccg3.s:4231` | `` |
| `safe_strtoll` | function | `minigccg3.s:4575` | `` |
| `save_parser_state` | function | `minigccg3.s:589` | `` |
| `scope_depth` | function | `minigccg3.s:332` | `` |
| `scope_stack_stk` | function | `minigccg3.s:328` | `` |
| `scope_stack_sym` | function | `minigccg3.s:324` | `` |
| `shift_expr` | function | `minigccg3.s:27614` | `` |
| `skip_gcc_attribute` | function | `minigccg3.s:38855` | `` |
| `skip_struct` | function | `minigccg3.s:49995` | `` |
| `skip_struct_fields` | function | `minigccg3.s:49409` | `` |
| `skip_typedef` | function | `minigccg3.s:51143` | `` |
| `source_start` | function | `minigccg3.s:23` | `` |
| `stack_size` | function | `minigccg3.s:336` | `` |
| `statement` | function | `minigccg3.s:39937` | `` |
| `static_flag` | function | `minigccg3.s:404` | `` |
| `static_local_count` | function | `minigccg3.s:71` | `` |
| `str_label_counter` | function | `minigccg3.s:488` | `` |
| `string_count` | function | `minigccg3.s:496` | `` |
| `string_pool` | function | `minigccg3.s:492` | `` |
| `struct_member_count` | function | `minigccg3.s:548` | `` |
| `struct_member_elem_sizes` | function | `minigccg3.s:528` | `` |
| `struct_member_is_float` | function | `minigccg3.s:536` | `` |
| `struct_member_is_fnptr` | function | `minigccg3.s:540` | `` |
| `struct_member_is_struct` | function | `minigccg3.s:544` | `` |
| `struct_member_names` | function | `minigccg3.s:516` | `` |
| `struct_member_offsets` | function | `minigccg3.s:520` | `` |
| `struct_member_sizes` | function | `minigccg3.s:524` | `` |
| `struct_member_unsigned` | function | `minigccg3.s:532` | `` |
| `struct_total_size` | function | `minigccg3.s:512` | `` |
| `struct_typedef_count` | function | `minigccg3.s:556` | `` |
| `struct_typedef_names` | function | `minigccg3.s:552` | `` |
| `subscript_base_fnptr` | function | `minigccg3.s:368` | `` |
| `switch_case_count` | function | `minigccg3.s:460` | `` |
| `switch_case_labels` | function | `minigccg3.s:456` | `` |
| `switch_case_values` | function | `minigccg3.s:452` | `` |
| `switch_default_label` | function | `minigccg3.s:468` | `` |
| `switch_has_default` | function | `minigccg3.s:464` | `` |
| `sym_label` | function | `minigccg3.s:75` | `` |
| `symbol_count` | function | `minigccg3.s:67` | `` |
| `symbols` | function | `minigccg3.s:63` | `` |
| `td_stash_fnptr` | function | `minigccg3.s:50942` | `` |
| `td_stash_size` | function | `minigccg3.s:50934` | `` |
| `td_stash_uns` | function | `minigccg3.s:50938` | `` |
| `td_stash_valid` | function | `minigccg3.s:50930` | `` |
| `tok` | function | `minigccg3.s:31` | `` |
| `token` | function | `minigccg3.s:27` | `` |
| `truncate_symbols` | function | `minigccg3.s:6003` | `` |
| `typedef_name` | function | `minigccg3.s:17953` | `` |
| `typedef_size` | function | `minigccg3.s:18120` | `` |
| `typedef_uns` | function | `minigccg3.s:18287` | `` |
| `unary` | function | `minigccg3.s:18363` | `` |
| `unary_expr` | function | `minigccg3.s:26234` | `` |
| `unsigned_type` | function | `minigccg3.s:408` | `` |
| `vararg_nfixed` | function | `minigccg3.s:432` | `` |
| `vararg_save_off` | function | `minigccg3.s:436` | `` |
| `_start` | function | `minigccg4.s:61452` | `` |
| `add_macro` | function | `minigccg4.s:1035` | `` |
| `add_symbol` | function | `minigccg4.s:15943` | `` |
| `additive_expr` | function | `minigccg4.s:27045` | `` |
| `arg_reg` | function | `minigccg4.s:16343` | `` |
| `asm_assign_homes` | function | `minigccg4.s:37653` | `` |
| `asm_emit_all` | function | `minigccg4.s:38279` | `` |
| `asm_emit_ss` | function | `minigccg4.s:36531` | `` |
| `asm_emit_template` | function | `minigccg4.s:35702` | `` |
| `asm_fixed_home` | function | `minigccg4.s:35612` | `` |
| `asm_home` | function | `minigccg4.s:34317` | `` |
| `asm_home_text` | function | `minigccg4.s:34417` | `` |
| `asm_is_out` | function | `minigccg4.s:34313` | `` |
| `asm_mem` | function | `minigccg4.s:34309` | `` |
| `asm_nops` | function | `minigccg4.s:34329` | `` |
| `asm_nslots` | function | `minigccg4.s:34333` | `` |
| `asm_parse_mem` | function | `minigccg4.s:35938` | `` |
| `asm_parse_one` | function | `minigccg4.s:36582` | `` |
| `asm_reg_sized` | function | `minigccg4.s:34632` | `` |
| `asm_scratch` | function | `minigccg4.s:34341` | `` |
| `asm_size` | function | `minigccg4.s:34325` | `` |
| `asm_slot` | function | `minigccg4.s:34321` | `` |
| `asm_text` | function | `minigccg4.s:34305` | `` |
| `asm_tmpl` | function | `minigccg4.s:34301` | `` |
| `asm_unique` | function | `minigccg4.s:34337` | `` |
| `assign_size` | function | `minigccg4.s:356` | `` |
| `assignment_expr` | function | `minigccg4.s:30462` | `` |
| `bitwise_and_expr` | function | `minigccg4.s:29018` | `` |
| `bitwise_or_expr` | function | `minigccg4.s:29272` | `` |
| `bitwise_xor_expr` | function | `minigccg4.s:29145` | `` |
| `break_target` | function | `minigccg4.s:472` | `` |
| `break_target_valid` | function | `minigccg4.s:476` | `` |
| `build_static_label` | function | `minigccg4.s:100` | `` |
| `comma_expr` | function | `minigccg4.s:34261` | `` |
| `conditional_expr` | function | `minigccg4.s:29729` | `` |
| `const_flag` | function | `minigccg4.s:412` | `` |
| `continue_target` | function | `minigccg4.s:480` | `` |
| `continue_target_valid` | function | `minigccg4.s:484` | `` |
| `ctx_stack` | function | `minigccg4.s:43` | `` |
| `ctx_top` | function | `minigccg4.s:47` | `` |
| `current_elem_size` | function | `minigccg4.s:372` | `` |
| `current_elem_size2` | function | `minigccg4.s:376` | `` |
| `current_elem_unsigned` | function | `minigccg4.s:380` | `` |
| `current_file` | function | `minigccg4.s:51` | `` |
| `data_directive` | function | `minigccg4.s:52331` | `` |
| `defined_func_count` | function | `minigccg4.s:568` | `` |
| `defined_func_names` | function | `minigccg4.s:560` | `` |
| `defined_func_unsigned` | function | `minigccg4.s:564` | `` |
| `deref_u` | function | `minigccg4.s:388` | `` |
| `deref_w` | function | `minigccg4.s:384` | `` |
| `emit` | function | `minigccg4.s:15205` | `` |
| `emit_asciz_body` | function | `minigccg4.s:15514` | `` |
| `emit_compound_op` | function | `minigccg4.s:29869` | `` |
| `emit_enabled` | function | `minigccg4.s:348` | `` |
| `emit_float_consts` | function | `minigccg4.s:56071` | `` |
| `emit_global_bss` | function | `minigccg4.s:52381` | `` |
| `emit_global_data_head` | function | `minigccg4.s:52491` | `` |
| `emit_global_initializer` | function | `minigccg4.s:52822` | `` |
| `emit_i` | function | `minigccg4.s:15316` | `` |
| `emit_is` | function | `minigccg4.s:15412` | `` |
| `emit_label` | function | `minigccg4.s:15828` | `` |
| `emit_s` | function | `minigccg4.s:15364` | `` |
| `emit_si` | function | `minigccg4.s:15463` | `` |
| `emit_spill_reverse` | function | `minigccg4.s:17340` | `` |
| `emit_string_pool` | function | `minigccg4.s:56168` | `` |
| `equality_expr` | function | `minigccg4.s:28530` | `` |
| `error` | function | `minigccg4.s:3993` | `` |
| `expr_fnptr` | function | `minigccg4.s:364` | `` |
| `expr_pointed` | function | `minigccg4.s:360` | `` |
| `expr_type` | function | `minigccg4.s:396` | `` |
| `expr_unsigned` | function | `minigccg4.s:400` | `` |
| `extern_flag` | function | `minigccg4.s:416` | `` |
| `find_macro` | function | `minigccg4.s:972` | `` |
| `find_symbol` | function | `minigccg4.s:15857` | `` |
| `float_const_count` | function | `minigccg4.s:448` | `` |
| `float_const_is_float` | function | `minigccg4.s:444` | `` |
| `float_const_str` | function | `minigccg4.s:440` | `` |
| `func_is_variadic` | function | `minigccg4.s:428` | `` |
| `func_return_unsigned` | function | `minigccg4.s:16601` | `` |
| `function_has_return` | function | `minigccg4.s:344` | `` |
| `get_dir_from_path` | function | `minigccg4.s:4861` | `` |
| `global_emit_deferred` | function | `minigccg4.s:420` | `` |
| `handle_postfix` | function | `minigccg4.s:25589` | `` |
| `hash_init` | function | `minigccg4.s:5716` | `` |
| `hash_name` | function | `minigccg4.s:5658` | `` |
| `hash_table` | function | `minigccg4.s:320` | `` |
| `ident_copy` | function | `minigccg4.s:4308` | `` |
| `if_depth` | function | `minigccg4.s:580` | `` |
| `if_nest` | function | `minigccg4.s:572` | `` |
| `if_taken` | function | `minigccg4.s:576` | `` |
| `input_ptr` | function | `minigccg4.s:19` | `` |
| `intern_string` | function | `minigccg4.s:52729` | `` |
| `is_defined_func` | function | `minigccg4.s:16542` | `` |
| `is_file_processed` | function | `minigccg4.s:4690` | `` |
| `is_struct_typedef` | function | `minigccg4.s:4390` | `` |
| `label_counter` | function | `minigccg4.s:340` | `` |
| `lex_fail` | function | `minigccg4.s:6399` | `` |
| `lex_hex_val` | function | `minigccg4.s:7355` | `` |
| `lex_init_keywords` | function | `minigccg4.s:6666` | `` |
| `lex_is_int_suffix` | function | `minigccg4.s:7477` | `` |
| `lex_kw_add` | function | `minigccg4.s:6503` | `` |
| `lex_kw_blob` | function | `minigccg4.s:3` | `` |
| `lex_kw_count` | function | `minigccg4.s:11` | `` |
| `lex_kw_ids` | function | `minigccg4.s:7` | `` |
| `lex_kw_lookup` | function | `minigccg4.s:7179` | `` |
| `lex_match_op` | function | `minigccg4.s:7272` | `` |
| `lex_number` | function | `minigccg4.s:7546` | `` |
| `lex_pass_top` | function | `minigccg4.s:15` | `` |
| `libc_global_name` | function | `minigccg4.s:17825` | `` |
| `line` | function | `minigccg4.s:35` | `` |
| `logical_and_expr` | function | `minigccg4.s:29399` | `` |
| `logical_or_expr` | function | `minigccg4.s:29564` | `` |
| `lvalue_address` | function | `minigccg4.s:24393` | `` |
| `macro_add` | function | `minigccg4.s:2911` | `` |
| `macro_bitand` | function | `minigccg4.s:3536` | `` |
| `macro_bitor` | function | `minigccg4.s:3687` | `` |
| `macro_bitxor` | function | `minigccg4.s:3622` | `` |
| `macro_cmp` | function | `minigccg4.s:3162` | `` |
| `macro_count` | function | `minigccg4.s:585` | `` |
| `macro_digit_val` | function | `minigccg4.s:1256` | `` |
| `macro_eq` | function | `minigccg4.s:3383` | `` |
| `macro_fold` | function | `minigccg4.s:3967` | `` |
| `macro_hex_digit` | function | `minigccg4.s:1158` | `` |
| `macro_logand` | function | `minigccg4.s:3773` | `` |
| `macro_mul` | function | `minigccg4.s:2708` | `` |
| `macro_ok` | function | `minigccg4.s:1109` | `` |
| `macro_or_expr` | function | `minigccg4.s:3870` | `` |
| `macro_p` | function | `minigccg4.s:1105` | `` |
| `macro_primary` | function | `minigccg4.s:1377` | `` |
| `macro_shift` | function | `minigccg4.s:3009` | `` |
| `macro_skipws` | function | `minigccg4.s:1117` | `` |
| `macro_unary` | function | `minigccg4.s:2580` | `` |
| `macro_undef_zero` | function | `minigccg4.s:1113` | `` |
| `macros` | function | `minigccg4.s:968` | `` |
| `main` | function | `minigccg4.s:56269` | `` |
| `mark_file_processed` | function | `minigccg4.s:4750` | `` |
| `match` | function | `minigccg4.s:15167` | `` |
| `max_func_stack` | function | `minigccg4.s:352` | `` |
| `multiplicative_expr` | function | `minigccg4.s:26259` | `` |
| `my_isalnum` | function | `minigccg4.s:6354` | `` |
| `my_isalpha` | function | `minigccg4.s:6245` | `` |
| `my_isdigit` | function | `minigccg4.s:6314` | `` |
| `my_isspace` | function | `minigccg4.s:6156` | `` |
| `next_token` | function | `minigccg4.s:9073` | `` |
| `no_postfix_deref` | function | `minigccg4.s:392` | `` |
| `note_defined_func` | function | `minigccg4.s:16419` | `` |
| `output` | function | `minigccg4.s:39` | `` |
| `parse_asm_block` | function | `minigccg4.s:39372` | `` |
| `parse_const_int` | function | `minigccg4.s:52566` | `` |
| `parse_enum` | function | `minigccg4.s:48821` | `` |
| `parse_fnptr_declarator` | function | `minigccg4.s:16666` | `` |
| `parse_function` | function | `minigccg4.s:46662` | `` |
| `parse_indirect_call` | function | `minigccg4.s:17477` | `` |
| `parse_program` | function | `minigccg4.s:53533` | `` |
| `parse_sync_call` | function | `minigccg4.s:23176` | `` |
| `parse_trailing_align` | function | `minigccg4.s:39330` | `` |
| `parse_va_arg` | function | `minigccg4.s:23794` | `` |
| `parse_va_end` | function | `minigccg4.s:24282` | `` |
| `parse_va_start` | function | `minigccg4.s:23498` | `` |
| `peek_call_argc` | function | `minigccg4.s:17037` | `` |
| `pending_align` | function | `minigccg4.s:424` | `` |
| `pop_scope` | function | `minigccg4.s:5807` | `` |
| `postfix_member` | function | `minigccg4.s:24972` | `` |
| `pp_eval` | function | `minigccg4.s:4044` | `` |
| `processed_count` | function | `minigccg4.s:59` | `` |
| `processed_files` | function | `minigccg4.s:55` | `` |
| `ptr_init_count` | function | `minigccg4.s:508` | `` |
| `ptr_init_label` | function | `minigccg4.s:504` | `` |
| `ptr_init_name` | function | `minigccg4.s:500` | `` |
| `push_scope` | function | `minigccg4.s:5755` | `` |
| `read_include_file` | function | `minigccg4.s:5452` | `` |
| `record_struct_typedef` | function | `minigccg4.s:4477` | `` |
| `record_typedef_alias` | function | `minigccg4.s:50946` | `` |
| `relational_expr` | function | `minigccg4.s:27816` | `` |
| `resolve_local_include` | function | `minigccg4.s:5004` | `` |
| `restart` | function | `minigccg4.s:9077` | `` |
| `restart_int` | function | `minigccg4.s:45108` | `` |
| `restart_typedef` | function | `minigccg4.s:43883` | `` |
| `restore_parser_state` | function | `minigccg4.s:752` | `` |
| `safe_malloc` | function | `minigccg4.s:4177` | `` |
| `safe_strcpy` | function | `minigccg4.s:4231` | `` |
| `safe_strtoll` | function | `minigccg4.s:4575` | `` |
| `save_parser_state` | function | `minigccg4.s:589` | `` |
| `scope_depth` | function | `minigccg4.s:332` | `` |
| `scope_stack_stk` | function | `minigccg4.s:328` | `` |
| `scope_stack_sym` | function | `minigccg4.s:324` | `` |
| `shift_expr` | function | `minigccg4.s:27614` | `` |
| `skip_gcc_attribute` | function | `minigccg4.s:38855` | `` |
| `skip_struct` | function | `minigccg4.s:49995` | `` |
| `skip_struct_fields` | function | `minigccg4.s:49409` | `` |
| `skip_typedef` | function | `minigccg4.s:51143` | `` |
| `source_start` | function | `minigccg4.s:23` | `` |
| `stack_size` | function | `minigccg4.s:336` | `` |
| `statement` | function | `minigccg4.s:39937` | `` |
| `static_flag` | function | `minigccg4.s:404` | `` |
| `static_local_count` | function | `minigccg4.s:71` | `` |
| `str_label_counter` | function | `minigccg4.s:488` | `` |
| `string_count` | function | `minigccg4.s:496` | `` |
| `string_pool` | function | `minigccg4.s:492` | `` |
| `struct_member_count` | function | `minigccg4.s:548` | `` |
| `struct_member_elem_sizes` | function | `minigccg4.s:528` | `` |
| `struct_member_is_float` | function | `minigccg4.s:536` | `` |
| `struct_member_is_fnptr` | function | `minigccg4.s:540` | `` |
| `struct_member_is_struct` | function | `minigccg4.s:544` | `` |
| `struct_member_names` | function | `minigccg4.s:516` | `` |
| `struct_member_offsets` | function | `minigccg4.s:520` | `` |
| `struct_member_sizes` | function | `minigccg4.s:524` | `` |
| `struct_member_unsigned` | function | `minigccg4.s:532` | `` |
| `struct_total_size` | function | `minigccg4.s:512` | `` |
| `struct_typedef_count` | function | `minigccg4.s:556` | `` |
| `struct_typedef_names` | function | `minigccg4.s:552` | `` |
| `subscript_base_fnptr` | function | `minigccg4.s:368` | `` |
| `switch_case_count` | function | `minigccg4.s:460` | `` |
| `switch_case_labels` | function | `minigccg4.s:456` | `` |
| `switch_case_values` | function | `minigccg4.s:452` | `` |
| `switch_default_label` | function | `minigccg4.s:468` | `` |
| `switch_has_default` | function | `minigccg4.s:464` | `` |
| `sym_label` | function | `minigccg4.s:75` | `` |
| `symbol_count` | function | `minigccg4.s:67` | `` |
| `symbols` | function | `minigccg4.s:63` | `` |
| `td_stash_fnptr` | function | `minigccg4.s:50942` | `` |
| `td_stash_size` | function | `minigccg4.s:50934` | `` |
| `td_stash_uns` | function | `minigccg4.s:50938` | `` |
| `td_stash_valid` | function | `minigccg4.s:50930` | `` |
| `tok` | function | `minigccg4.s:31` | `` |
| `token` | function | `minigccg4.s:27` | `` |
| `truncate_symbols` | function | `minigccg4.s:6003` | `` |
| `typedef_name` | function | `minigccg4.s:17953` | `` |
| `typedef_size` | function | `minigccg4.s:18120` | `` |
| `typedef_uns` | function | `minigccg4.s:18287` | `` |
| `unary` | function | `minigccg4.s:18363` | `` |
| `unary_expr` | function | `minigccg4.s:26234` | `` |
| `unsigned_type` | function | `minigccg4.s:408` | `` |
| `vararg_nfixed` | function | `minigccg4.s:432` | `` |
| `vararg_save_off` | function | `minigccg4.s:436` | `` |
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
| `main` | function | `tests/neg_error.c:2` | `int main(void)` |
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
| `ADD` | macro | `tests/neg_funmacro.c:2` | `#define ADD(a, b)` |
| `main` | function | `tests/neg_funmacro.c:3` | `int main(void)` |
| `main` | function | `tests/neg_hex.c:1` | `int main(void)` |
| `A` | struct | `tests/neg_member.c:1` | `` |
| `main` | function | `tests/neg_member.c:5` | `int main(void)` |
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
| `A` | struct | `tests/t_chained.c:3` | `` |
| `B` | struct | `tests/t_chained.c:7` | `` |
| `C` | struct | `tests/t_chained.c:12` | `` |
| `main` | function | `tests/t_chained.c:17` | `int main(void)` |
| `add` | function | `tests/t_comma.c:3` | `int add(int a, int b)` |
| `main` | function | `tests/t_comma.c:5` | `int main(void)` |
| `main` | function | `tests/t_compound.c:3` | `int main(void)` |
| `main` | function | `tests/t_dowhile.c:3` | `int main(void)` |
| `V` | macro | `tests/t_elif.c:3` | `#define V` |
| `main` | function | `tests/t_elif.c:49` | `int main(void)` |
| `Color` | enum | `tests/t_enum.c:3` | `` |
| `Single` | enum | `tests/t_enum.c:9` | `` |
| `main` | function | `tests/t_enum.c:13` | `int main(void)` |
| `E` | enum | `tests/t_enumtype.c:3` | `` |
| `main` | function | `tests/t_enumtype.c:7` | `int main(void)` |
| `pick` | function | `tests/t_enumtype.c:5` | `enum E pick(enum E e)` |
| `main` | function | `tests/t_fcast.c:3` | `int main(void)` |
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
| `main` | function | `tests/t_octesc.c:3` | `int main(void)` |
| `OUTER_VAL` | macro | `tests/t_outer_h.h:6` | `#define OUTER_VAL` |
| `T_OUTER_H` | macro | `tests/t_outer_h.h:2` | `#define T_OUTER_H` |
| `bump` | function | `tests/t_pointers.c:3` | `void bump(int *p)` |
| `main` | function | `tests/t_pointers.c:7` | `int main(void)` |
| `fact` | function | `tests/t_recursion.c:8` | `int fact(int n)` |
| `fib` | function | `tests/t_recursion.c:3` | `int fib(int n)` |
| `main` | function | `tests/t_recursion.c:13` | `int main(void)` |
| `main` | function | `tests/t_regauto.c:3` | `int main(void)` |
| `main` | function | `tests/t_scope.c:12` | `int main(void)` |
| `touch` | function | `tests/t_scope.c:7` | `void touch(void)` |
| `main` | function | `tests/t_sizeof.c:3` | `int main(void)` |
| `adder` | function | `tests/t_static.c:9` | `int adder(int v)` |
| `counter` | function | `tests/t_static.c:3` | `int counter(void)` |
| `main` | function | `tests/t_static.c:21` | `int main(void)` |
| `same_name` | function | `tests/t_static.c:15` | `int same_name(void)` |
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
| `P` | struct | `tests/t_tagstruct.c:3` | `` |
| `dist` | function | `tests/t_tagstruct.c:10` | `int dist(struct P *p)` |
| `main` | function | `tests/t_tagstruct.c:12` | `int main(void)` |
| `Pair` | struct | `tests/t_typedef.c:9` | `` |
| `main` | function | `tests/t_typedef.c:16` | `int main(void)` |
| `myint` | type_alias | `tests/t_typedef.c:2` | `typedef int myint;` |
| `In` | struct | `tests/t_union.c:13` | `` |
| `Out` | struct | `tests/t_union.c:18` | `` |
| `U` | union | `tests/t_union.c:3` | `` |
| `main` | function | `tests/t_union.c:23` | `int main(void)` |
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
