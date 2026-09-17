# API

## minigcc.c

### save_parser_state (function) `static void save_parser_state(ParserState *state)`
- Defined: `minigcc.c:255`

### restore_parser_state (function) `static void restore_parser_state(ParserState *state)`
- Defined: `minigcc.c:283`

### find_macro (function) `static int find_macro(const char *name)`
- Defined: `minigcc.c:322`

### add_macro (function) `static void add_macro(const char *name, int value)`
- Defined: `minigcc.c:331`

### macro_skipws (function) `static void macro_skipws(void)`
- Defined: `minigcc.c:358`

### macro_hex_digit (function) `static int macro_hex_digit(int c)`
- Defined: `minigcc.c:362`

### macro_digit_val (function) `static int macro_digit_val(int c)`
- Defined: `minigcc.c:369`

### macro_primary (function) `static int macro_primary(void)`
- Defined: `minigcc.c:376`

### macro_unary (function) `static int macro_unary(void)`
- Defined: `minigcc.c:450`

### macro_mul (function) `static int macro_mul(void)`
- Defined: `minigcc.c:459`

### macro_add (function) `static int macro_add(void)`
- Defined: `minigcc.c:484`

### macro_shift (function) `static int macro_shift(void)`
- Defined: `minigcc.c:501`

### macro_cmp (function) `static int macro_cmp(void)`
- Defined: `minigcc.c:518`

### macro_eq (function) `static int macro_eq(void)`
- Defined: `minigcc.c:541`

### macro_bitand (function) `static int macro_bitand(void)`
- Defined: `minigcc.c:558`

### macro_bitxor (function) `static int macro_bitxor(void)`
- Defined: `minigcc.c:572`

### macro_bitor (function) `static int macro_bitor(void)`
- Defined: `minigcc.c:586`

### macro_logand (function) `static int macro_logand(void)`
- Defined: `minigcc.c:600`

### macro_or_expr (function) `static int macro_or_expr(void)`
- Defined: `minigcc.c:614`

### macro_fold (function) `static int macro_fold(void)`
- Defined: `minigcc.c:628`

### error (function) `static void error(const char *msg)`
- Defined: `minigcc.c:633`

### safe_malloc (function) `static void *safe_malloc(size_t size)`
- Defined: `minigcc.c:639`

### safe_strcpy (function) `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- Defined: `minigcc.c:648`

### safe_strtoll (function) `static long safe_strtoll(const char *s)`
- Defined: `minigcc.c:657`

### is_file_processed (function) `static int is_file_processed(const char *path)`
- Defined: `minigcc.c:670`

### mark_file_processed (function) `static void mark_file_processed(const char *path)`
- Defined: `minigcc.c:679`

### get_dir_from_path (function) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- Defined: `minigcc.c:691`

### resolve_local_include (function) `static char *resolve_local_include(const char *target)`
- Defined: `minigcc.c:710`

### read_include_file (function) `static char *read_include_file(const char *path)`
- Defined: `minigcc.c:749`

### hash_name (function) `static int hash_name(const char *name)`
- Defined: `minigcc.c:774`
- Doc: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multipli

### hash_init (function) `static void hash_init(void)`
- Defined: `minigcc.c:783`

### push_scope (function) `static void push_scope(void)`
- Defined: `minigcc.c:788`

### pop_scope (function) `static void pop_scope(void)`
- Defined: `minigcc.c:796`

### truncate_symbols (function) `static void truncate_symbols(int start_idx)`
- Defined: `minigcc.c:826`
- Doc: Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (

### my_isspace (function) `static int my_isspace(int c)`
- Defined: `minigcc.c:844`

### my_isalpha (function) `static int my_isalpha(int c)`
- Defined: `minigcc.c:854`

### my_isdigit (function) `static int my_isdigit(int c)`
- Defined: `minigcc.c:860`

### my_isalnum (function) `static int my_isalnum(int c)`
- Defined: `minigcc.c:865`

### lex_fail (function) `static void lex_fail(const char *msg, char *start, char *end)`
- Defined: `minigcc.c:871`

### lex_kw_add (function) `static void lex_kw_add(const char *name, int id)`
- Defined: `minigcc.c:881`

### lex_init_keywords (function) `static void lex_init_keywords(void)`
- Defined: `minigcc.c:894`

### lex_kw_lookup (function) `static int lex_kw_lookup(void)`
- Defined: `minigcc.c:934`

### lex_match_op (function) `static int lex_match_op(const char *op, int id)`
- Defined: `minigcc.c:946`

### lex_hex_val (function) `static int lex_hex_val(int c)`
- Defined: `minigcc.c:958`

### lex_is_int_suffix (function) `static int lex_is_int_suffix(int c)`
- Defined: `minigcc.c:965`

### lex_number (function) `static void lex_number(void)`
- Defined: `minigcc.c:971`

### next_token (function) `static void next_token(void)`
- Defined: `minigcc.c:1090`
- Doc: float_const_is_float[float_const_count] = (sfx == 'f' || sfx == 'F') ? 1 : 0; safe_strcpy(float_const_str[float_const_co

### match (function) `static void match(int expected)`
- Defined: `minigcc.c:1576`

### emit (function) `static void emit(const char *s)`
- Defined: `minigcc.c:1581`

### emit_i (function) `static void emit_i(const char *fmt, int v)`
- Defined: `minigcc.c:1595`

### emit_s (function) `static void emit_s(const char *fmt, const char *s)`
- Defined: `minigcc.c:1601`

### emit_is (function) `static void emit_is(const char *fmt, int v, const char *s)`
- Defined: `minigcc.c:1607`

### emit_si (function) `static void emit_si(const char *fmt, const char *s, int v)`
- Defined: `minigcc.c:1613`

### emit_asciz_body (function) `static void emit_asciz_body(const char *s)`
- Defined: `minigcc.c:1623`
- Doc: Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by t

### emit_label (function) `static void emit_label(int label)`
- Defined: `minigcc.c:1641`

### find_symbol (function) `static int find_symbol(const char *name)`
- Defined: `minigcc.c:1648`
- Doc: else if (c == '\a') fprintf(output, "\\a"); else if (c == '\b') fprintf(output, "\\b"); else if (c >= 32 && c <= 126) fp

### add_symbol (function) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- Defined: `minigcc.c:1658`

### arg_reg (function) `static const char *arg_reg(int i)`
- Defined: `minigcc.c:1739`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### note_defined_func (function) `static void note_defined_func(const char *name)`
- Defined: `minigcc.c:1747`

### is_defined_func (function) `static int is_defined_func(const char *name)`
- Defined: `minigcc.c:1760`

### parse_fnptr_declarator (function) `static int parse_fnptr_declarator(char *out_name, int *out_count)`
- Defined: `minigcc.c:1770`

### peek_call_argc (function) `static int peek_call_argc(void)`
- Defined: `minigcc.c:1821`

### emit_spill_reverse (function) `static void emit_spill_reverse(int argc)`
- Defined: `minigcc.c:1859`

### parse_indirect_call (function) `static void parse_indirect_call(void)`
- Defined: `minigcc.c:1871`

### libc_global_name (function) `static const char *libc_global_name(int i)`
- Defined: `minigcc.c:1911`
- Doc: emit_spill_reverse(argc); emit("    movq 8(%%r12), %%r10"); emit("    xorl %%eax, %%eax"); emit("    call *%%r10"); emit

### typedef_name (function) `static const char *typedef_name(int i)`
- Defined: `minigcc.c:1923`

### typedef_size (function) `static int typedef_size(int i)`
- Defined: `minigcc.c:1939`

### typedef_uns (function) `static int typedef_uns(int i)`
- Defined: `minigcc.c:1955`

### unary (function) `static void unary(void)`
- Defined: `minigcc.c:1964`

### strcmp (function) `strcmp(id_name, "__sync_lock_test_and_set") == 0 ||
                strcmp(id_name, "__sync_lock_...`
- Defined: `minigcc.c:2008`

### strcmp (function) `strcmp(id_name, "va_start") == 0)`
- Defined: `minigcc.c:2013`

### strcmp (function) `strcmp(id_name, "va_end") == 0)`
- Defined: `minigcc.c:2016`

### strcmp (function) `strcmp(id_name, "va_arg") == 0)`
- Defined: `minigcc.c:2019`

### parse_sync_call (function) `static void parse_sync_call(const char *name)`
- Defined: `minigcc.c:2374`

### parse_va_start (function) `static void parse_va_start(void)`
- Defined: `minigcc.c:2408`

### parse_va_arg (function) `static void parse_va_arg(void)`
- Defined: `minigcc.c:2441`

### parse_va_end (function) `static void parse_va_end(void)`
- Defined: `minigcc.c:2491`

### lvalue_address (function) `static void lvalue_address(void)`
- Defined: `minigcc.c:2506`

### handle_postfix (function) `static void handle_postfix(int is_lvalue)`
- Defined: `minigcc.c:2563`

### unary_expr (function) `static void unary_expr(void)`
- Defined: `minigcc.c:2749`

### multiplicative_expr (function) `static void multiplicative_expr(void)`
- Defined: `minigcc.c:2764`

### additive_expr (function) `static void additive_expr(void)`
- Defined: `minigcc.c:2832`

### shift_expr (function) `static void shift_expr(void)`
- Defined: `minigcc.c:2897`

### relational_expr (function) `static void relational_expr(void)`
- Defined: `minigcc.c:2920`

### equality_expr (function) `static void equality_expr(void)`
- Defined: `minigcc.c:2974`

### bitwise_and_expr (function) `static void bitwise_and_expr(void)`
- Defined: `minigcc.c:3024`

### bitwise_xor_expr (function) `static void bitwise_xor_expr(void)`
- Defined: `minigcc.c:3040`

### bitwise_or_expr (function) `static void bitwise_or_expr(void)`
- Defined: `minigcc.c:3056`

### logical_and_expr (function) `static void logical_and_expr(void)`
- Defined: `minigcc.c:3072`

### logical_or_expr (function) `static void logical_or_expr(void)`
- Defined: `minigcc.c:3092`

### conditional_expr (function) `static void conditional_expr(void)`
- Defined: `minigcc.c:3112`

### emit_compound_op (function) `static void emit_compound_op(int op, int asize)`
- Defined: `minigcc.c:3131`

### assignment_expr (function) `static void assignment_expr(void)`
- Defined: `minigcc.c:3172`

### asm_scratch (function) `static const char *asm_scratch(int i)`
- Defined: `minigcc.c:3393`

### asm_home_text (function) `static void asm_home_text(int home, char *buf)`
- Defined: `minigcc.c:3402`

### asm_reg_sized (function) `static void asm_reg_sized(int home, int size, char *buf)`
- Defined: `minigcc.c:3412`

### asm_fixed_home (function) `static int asm_fixed_home(int c)`
- Defined: `minigcc.c:3454`

### asm_emit_template (function) `static void asm_emit_template(void)`
- Defined: `minigcc.c:3464`

### asm_parse_mem (function) `static void asm_parse_mem(int idx, int is_out)`
- Defined: `minigcc.c:3491`

### asm_emit_ss (function) `static void asm_emit_ss(const char *fmt, const char *a, const char *b)`
- Defined: `minigcc.c:3549`

### asm_parse_one (function) `static void asm_parse_one(int idx, int is_out)`
- Defined: `minigcc.c:3555`

### asm_assign_homes (function) `static void asm_assign_homes(void)`
- Defined: `minigcc.c:3623`

### asm_emit_all (function) `static void asm_emit_all(void)`
- Defined: `minigcc.c:3685`

### skip_gcc_attribute (function) `static int skip_gcc_attribute(void)`
- Defined: `minigcc.c:3733`

### strcmp (function) `strcmp(token, "returns_twice") == 0 ||
                       strcmp(token, "always_inline") == 0)`
- Defined: `minigcc.c:3754`

### parse_trailing_align (function) `static void parse_trailing_align(void)`
- Defined: `minigcc.c:3783`

### parse_asm_block (function) `static void parse_asm_block(void)`
- Defined: `minigcc.c:3790`

### statement (function) `static void statement(void)`
- Defined: `minigcc.c:3854`

### parse_function (function) `static void parse_function(const char *name, int ret_type)`
- Defined: `minigcc.c:4600`

### parse_enum (function) `static void parse_enum(void)`
- Defined: `minigcc.c:4811`

### skip_struct_fields (function) `static void skip_struct_fields(int fsize, int funs, int ffloat)`
- Defined: `minigcc.c:4862`

### skip_struct (function) `static void skip_struct(void)`
- Defined: `minigcc.c:4921`

### record_typedef_alias (function) `static void record_typedef_alias(const char *name, int size, int uns, int fnptr)`
- Defined: `minigcc.c:4990`

### skip_typedef (function) `static void skip_typedef(void)`
- Defined: `minigcc.c:5021`

### data_directive (function) `static const char *data_directive(int size)`
- Defined: `minigcc.c:5170`
- Doc: if (struct_total_size > 0) s->const_value = struct_total_size; { int h = hash_name(last_name); s->next_hash = hash_table

### emit_global_bss (function) `static void emit_global_bss(const char *name, int is_static, int size)`
- Defined: `minigcc.c:5178`
- Doc: } td_stash_valid = 0; match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(

### emit_global_data_head (function) `static void emit_global_data_head(const char *name, int is_static)`
- Defined: `minigcc.c:5189`

### parse_const_int (function) `static int parse_const_int(long long *out)`
- Defined: `minigcc.c:5203`
- Doc: Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro 

### intern_string (function) `static int intern_string(const char *text)`
- Defined: `minigcc.c:5226`
- Doc: } if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg 

### emit_global_initializer (function) `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...`
- Defined: `minigcc.c:5243`
- Doc: Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is 

### parse_program (function) `static void parse_program(void)`
- Defined: `minigcc.c:5307`

### emit_float_consts (function) `static void emit_float_consts(void)`
- Defined: `minigcc.c:5527`

### emit_string_pool (function) `static void emit_string_pool(void)`
- Defined: `minigcc.c:5537`

### main (function) `int main(int argc, char **argv)`
- Defined: `minigcc.c:5547`

## minigccg2.s

### lex_kw_blob (function)
- Defined: `minigccg2.s:3`

### lex_kw_ids (function)
- Defined: `minigccg2.s:7`

### lex_kw_count (function)
- Defined: `minigccg2.s:11`

### lex_pass_top (function)
- Defined: `minigccg2.s:15`

### input_ptr (function)
- Defined: `minigccg2.s:19`

### source_start (function)
- Defined: `minigccg2.s:23`

### token (function)
- Defined: `minigccg2.s:27`

### tok (function)
- Defined: `minigccg2.s:31`

### line (function)
- Defined: `minigccg2.s:35`

### output (function)
- Defined: `minigccg2.s:39`

### ctx_stack (function)
- Defined: `minigccg2.s:43`

### ctx_top (function)
- Defined: `minigccg2.s:47`

### current_file (function)
- Defined: `minigccg2.s:51`

### processed_files (function)
- Defined: `minigccg2.s:55`

### processed_count (function)
- Defined: `minigccg2.s:59`

### symbols (function)
- Defined: `minigccg2.s:63`

### symbol_count (function)
- Defined: `minigccg2.s:67`

### hash_table (function)
- Defined: `minigccg2.s:71`

### scope_stack_sym (function)
- Defined: `minigccg2.s:75`

### scope_stack_stk (function)
- Defined: `minigccg2.s:79`

### scope_depth (function)
- Defined: `minigccg2.s:83`

### stack_size (function)
- Defined: `minigccg2.s:87`

### label_counter (function)
- Defined: `minigccg2.s:91`

### function_has_return (function)
- Defined: `minigccg2.s:95`

### emit_enabled (function)
- Defined: `minigccg2.s:99`

### max_func_stack (function)
- Defined: `minigccg2.s:103`

### assign_size (function)
- Defined: `minigccg2.s:107`

### expr_pointed (function)
- Defined: `minigccg2.s:111`

### expr_fnptr (function)
- Defined: `minigccg2.s:115`

### subscript_base_fnptr (function)
- Defined: `minigccg2.s:119`

### current_elem_size (function)
- Defined: `minigccg2.s:123`

### current_elem_size2 (function)
- Defined: `minigccg2.s:127`

### current_elem_unsigned (function)
- Defined: `minigccg2.s:131`

### deref_w (function)
- Defined: `minigccg2.s:135`

### deref_u (function)
- Defined: `minigccg2.s:139`

### no_postfix_deref (function)
- Defined: `minigccg2.s:143`

### expr_type (function)
- Defined: `minigccg2.s:147`

### static_flag (function)
- Defined: `minigccg2.s:151`

### unsigned_type (function)
- Defined: `minigccg2.s:155`

### const_flag (function)
- Defined: `minigccg2.s:159`

### extern_flag (function)
- Defined: `minigccg2.s:163`

### global_emit_deferred (function)
- Defined: `minigccg2.s:167`

### pending_align (function)
- Defined: `minigccg2.s:171`

### func_is_variadic (function)
- Defined: `minigccg2.s:175`

### vararg_nfixed (function)
- Defined: `minigccg2.s:179`

### vararg_save_off (function)
- Defined: `minigccg2.s:183`

### float_const_str (function)
- Defined: `minigccg2.s:187`

### float_const_is_float (function)
- Defined: `minigccg2.s:191`

### float_const_count (function)
- Defined: `minigccg2.s:195`

### switch_case_values (function)
- Defined: `minigccg2.s:199`

### switch_case_labels (function)
- Defined: `minigccg2.s:203`

### switch_case_count (function)
- Defined: `minigccg2.s:207`

### switch_has_default (function)
- Defined: `minigccg2.s:211`

### switch_default_label (function)
- Defined: `minigccg2.s:215`

### break_target (function)
- Defined: `minigccg2.s:219`

### break_target_valid (function)
- Defined: `minigccg2.s:223`

### continue_target (function)
- Defined: `minigccg2.s:227`

### continue_target_valid (function)
- Defined: `minigccg2.s:231`

### str_label_counter (function)
- Defined: `minigccg2.s:235`

### string_pool (function)
- Defined: `minigccg2.s:239`

### string_count (function)
- Defined: `minigccg2.s:243`

### ptr_init_name (function)
- Defined: `minigccg2.s:247`

### ptr_init_label (function)
- Defined: `minigccg2.s:251`

### ptr_init_count (function)
- Defined: `minigccg2.s:255`

### struct_total_size (function)
- Defined: `minigccg2.s:259`

### struct_member_names (function)
- Defined: `minigccg2.s:263`

### struct_member_offsets (function)
- Defined: `minigccg2.s:267`

### struct_member_sizes (function)
- Defined: `minigccg2.s:271`

### struct_member_elem_sizes (function)
- Defined: `minigccg2.s:275`

### struct_member_unsigned (function)
- Defined: `minigccg2.s:279`

### struct_member_is_float (function)
- Defined: `minigccg2.s:283`

### struct_member_is_fnptr (function)
- Defined: `minigccg2.s:287`

### struct_member_count (function)
- Defined: `minigccg2.s:291`

### defined_func_names (function)
- Defined: `minigccg2.s:295`

### defined_func_count (function)
- Defined: `minigccg2.s:299`

### if_nest (function)
- Defined: `minigccg2.s:303`

### if_depth (function)
- Defined: `minigccg2.s:307`

### macro_count (function)
- Defined: `minigccg2.s:312`

### save_parser_state (function)
- Defined: `minigccg2.s:316`

### restore_parser_state (function)
- Defined: `minigccg2.s:473`

### macros (function)
- Defined: `minigccg2.s:682`

### find_macro (function)
- Defined: `minigccg2.s:686`

### add_macro (function)
- Defined: `minigccg2.s:749`

### macro_p (function)
- Defined: `minigccg2.s:879`

### macro_ok (function)
- Defined: `minigccg2.s:883`

### macro_skipws (function)
- Defined: `minigccg2.s:887`

### macro_hex_digit (function)
- Defined: `minigccg2.s:928`

### macro_digit_val (function)
- Defined: `minigccg2.s:1026`

### macro_primary (function)
- Defined: `minigccg2.s:1147`

### macro_unary (function)
- Defined: `minigccg2.s:1945`

### macro_mul (function)
- Defined: `minigccg2.s:2073`

### macro_add (function)
- Defined: `minigccg2.s:2276`

### macro_shift (function)
- Defined: `minigccg2.s:2374`

### macro_cmp (function)
- Defined: `minigccg2.s:2527`

### macro_eq (function)
- Defined: `minigccg2.s:2748`

### macro_bitand (function)
- Defined: `minigccg2.s:2901`

### macro_bitxor (function)
- Defined: `minigccg2.s:2987`

### macro_bitor (function)
- Defined: `minigccg2.s:3052`

### macro_logand (function)
- Defined: `minigccg2.s:3138`

### macro_or_expr (function)
- Defined: `minigccg2.s:3235`

### macro_fold (function)
- Defined: `minigccg2.s:3332`

### error (function)
- Defined: `minigccg2.s:3353`

### safe_malloc (function)
- Defined: `minigccg2.s:3404`

### safe_strcpy (function)
- Defined: `minigccg2.s:3458`

### safe_strtoll (function)
- Defined: `minigccg2.s:3535`

### is_file_processed (function)
- Defined: `minigccg2.s:3650`

### mark_file_processed (function)
- Defined: `minigccg2.s:3710`

### get_dir_from_path (function)
- Defined: `minigccg2.s:3821`

### resolve_local_include (function)
- Defined: `minigccg2.s:3964`

### read_include_file (function)
- Defined: `minigccg2.s:4412`

### hash_name (function)
- Defined: `minigccg2.s:4618`

### hash_init (function)
- Defined: `minigccg2.s:4676`

### push_scope (function)
- Defined: `minigccg2.s:4715`

### pop_scope (function)
- Defined: `minigccg2.s:4767`

### truncate_symbols (function)
- Defined: `minigccg2.s:4963`

### my_isspace (function)
- Defined: `minigccg2.s:5116`

### my_isalpha (function)
- Defined: `minigccg2.s:5205`

### my_isdigit (function)
- Defined: `minigccg2.s:5274`

### my_isalnum (function)
- Defined: `minigccg2.s:5314`

### lex_fail (function)
- Defined: `minigccg2.s:5359`

### lex_kw_add (function)
- Defined: `minigccg2.s:5463`

### lex_init_keywords (function)
- Defined: `minigccg2.s:5626`

### lex_kw_lookup (function)
- Defined: `minigccg2.s:6113`

### lex_match_op (function)
- Defined: `minigccg2.s:6206`

### lex_hex_val (function)
- Defined: `minigccg2.s:6289`

### lex_is_int_suffix (function)
- Defined: `minigccg2.s:6411`

### lex_number (function)
- Defined: `minigccg2.s:6480`

### next_token (function)
- Defined: `minigccg2.s:8007`

### restart (function)
- Defined: `minigccg2.s:8011`

### match (function)
- Defined: `minigccg2.s:13413`

### emit (function)
- Defined: `minigccg2.s:13451`

### emit_i (function)
- Defined: `minigccg2.s:13562`

### emit_s (function)
- Defined: `minigccg2.s:13610`

### emit_is (function)
- Defined: `minigccg2.s:13658`

### emit_si (function)
- Defined: `minigccg2.s:13709`

### emit_asciz_body (function)
- Defined: `minigccg2.s:13760`

### emit_label (function)
- Defined: `minigccg2.s:14074`

### find_symbol (function)
- Defined: `minigccg2.s:14103`

### add_symbol (function)
- Defined: `minigccg2.s:14189`

### arg_reg (function)
- Defined: `minigccg2.s:14598`

### note_defined_func (function)
- Defined: `minigccg2.s:14674`

### is_defined_func (function)
- Defined: `minigccg2.s:14776`

### parse_fnptr_declarator (function)
- Defined: `minigccg2.s:14835`

### peek_call_argc (function)
- Defined: `minigccg2.s:15254`

### emit_spill_reverse (function)
- Defined: `minigccg2.s:15545`

### parse_indirect_call (function)
- Defined: `minigccg2.s:15682`

### libc_global_name (function)
- Defined: `minigccg2.s:16025`

### typedef_name (function)
- Defined: `minigccg2.s:16153`

### typedef_size (function)
- Defined: `minigccg2.s:16320`

### typedef_uns (function)
- Defined: `minigccg2.s:16487`

### unary (function)
- Defined: `minigccg2.s:16563`

### parse_sync_call (function)
- Defined: `minigccg2.s:20615`

### parse_va_start (function)
- Defined: `minigccg2.s:20932`

### parse_va_arg (function)
- Defined: `minigccg2.s:21271`

### parse_va_end (function)
- Defined: `minigccg2.s:21802`

### lvalue_address (function)
- Defined: `minigccg2.s:21908`

### handle_postfix (function)
- Defined: `minigccg2.s:22465`

### unary_expr (function)
- Defined: `minigccg2.s:23966`

### multiplicative_expr (function)
- Defined: `minigccg2.s:23991`

### additive_expr (function)
- Defined: `minigccg2.s:24645`

### shift_expr (function)
- Defined: `minigccg2.s:25190`

### relational_expr (function)
- Defined: `minigccg2.s:25368`

### equality_expr (function)
- Defined: `minigccg2.s:25975`

### bitwise_and_expr (function)
- Defined: `minigccg2.s:26458`

### bitwise_xor_expr (function)
- Defined: `minigccg2.s:26568`

### bitwise_or_expr (function)
- Defined: `minigccg2.s:26678`

### logical_and_expr (function)
- Defined: `minigccg2.s:26788`

### logical_or_expr (function)
- Defined: `minigccg2.s:26948`

### conditional_expr (function)
- Defined: `minigccg2.s:27108`

### emit_compound_op (function)
- Defined: `minigccg2.s:27243`

### assignment_expr (function)
- Defined: `minigccg2.s:27745`

### asm_tmpl (function)
- Defined: `minigccg2.s:31362`

### asm_text (function)
- Defined: `minigccg2.s:31366`

### asm_mem (function)
- Defined: `minigccg2.s:31370`

### asm_is_out (function)
- Defined: `minigccg2.s:31374`

### asm_home (function)
- Defined: `minigccg2.s:31378`

### asm_slot (function)
- Defined: `minigccg2.s:31382`

### asm_size (function)
- Defined: `minigccg2.s:31386`

### asm_nops (function)
- Defined: `minigccg2.s:31390`

### asm_nslots (function)
- Defined: `minigccg2.s:31394`

### asm_unique (function)
- Defined: `minigccg2.s:31398`

### asm_scratch (function)
- Defined: `minigccg2.s:31402`

### asm_home_text (function)
- Defined: `minigccg2.s:31478`

### asm_reg_sized (function)
- Defined: `minigccg2.s:31693`

### asm_fixed_home (function)
- Defined: `minigccg2.s:32673`

### asm_emit_template (function)
- Defined: `minigccg2.s:32763`

### asm_parse_mem (function)
- Defined: `minigccg2.s:32999`

### asm_emit_ss (function)
- Defined: `minigccg2.s:33554`

### asm_parse_one (function)
- Defined: `minigccg2.s:33605`

### asm_assign_homes (function)
- Defined: `minigccg2.s:34676`

### asm_emit_all (function)
- Defined: `minigccg2.s:35302`

### skip_gcc_attribute (function)
- Defined: `minigccg2.s:35878`

### parse_trailing_align (function)
- Defined: `minigccg2.s:36353`

### parse_asm_block (function)
- Defined: `minigccg2.s:36395`

### statement (function)
- Defined: `minigccg2.s:36960`

### restart_typedef (function)
- Defined: `minigccg2.s:40681`

### restart_int (function)
- Defined: `minigccg2.s:41931`

### parse_function (function)
- Defined: `minigccg2.s:43300`

### parse_enum (function)
- Defined: `minigccg2.s:45381`

### skip_struct_fields (function)
- Defined: `minigccg2.s:45818`

### skip_struct (function)
- Defined: `minigccg2.s:46385`

### td_stash_valid (function)
- Defined: `minigccg2.s:47079`

### td_stash_size (function)
- Defined: `minigccg2.s:47083`

### td_stash_uns (function)
- Defined: `minigccg2.s:47087`

### td_stash_fnptr (function)
- Defined: `minigccg2.s:47091`

### record_typedef_alias (function)
- Defined: `minigccg2.s:47095`

### skip_typedef (function)
- Defined: `minigccg2.s:47337`

### data_directive (function)
- Defined: `minigccg2.s:48572`

### emit_global_bss (function)
- Defined: `minigccg2.s:48622`

### emit_global_data_head (function)
- Defined: `minigccg2.s:48732`

### parse_const_int (function)
- Defined: `minigccg2.s:48807`

### intern_string (function)
- Defined: `minigccg2.s:48970`

### emit_global_initializer (function)
- Defined: `minigccg2.s:49063`

### parse_program (function)
- Defined: `minigccg2.s:49770`

### emit_float_consts (function)
- Defined: `minigccg2.s:52138`

### emit_string_pool (function)
- Defined: `minigccg2.s:52235`

### main (function)
- Defined: `minigccg2.s:52336`

### _start (function)
- Defined: `minigccg2.s:57432`

## minigccg3.s

### lex_kw_blob (function)
- Defined: `minigccg3.s:3`

### lex_kw_ids (function)
- Defined: `minigccg3.s:7`

### lex_kw_count (function)
- Defined: `minigccg3.s:11`

### lex_pass_top (function)
- Defined: `minigccg3.s:15`

### input_ptr (function)
- Defined: `minigccg3.s:19`

### source_start (function)
- Defined: `minigccg3.s:23`

### token (function)
- Defined: `minigccg3.s:27`

### tok (function)
- Defined: `minigccg3.s:31`

### line (function)
- Defined: `minigccg3.s:35`

### output (function)
- Defined: `minigccg3.s:39`

### ctx_stack (function)
- Defined: `minigccg3.s:43`

### ctx_top (function)
- Defined: `minigccg3.s:47`

### current_file (function)
- Defined: `minigccg3.s:51`

### processed_files (function)
- Defined: `minigccg3.s:55`

### processed_count (function)
- Defined: `minigccg3.s:59`

### symbols (function)
- Defined: `minigccg3.s:63`

### symbol_count (function)
- Defined: `minigccg3.s:67`

### hash_table (function)
- Defined: `minigccg3.s:71`

### scope_stack_sym (function)
- Defined: `minigccg3.s:75`

### scope_stack_stk (function)
- Defined: `minigccg3.s:79`

### scope_depth (function)
- Defined: `minigccg3.s:83`

### stack_size (function)
- Defined: `minigccg3.s:87`

### label_counter (function)
- Defined: `minigccg3.s:91`

### function_has_return (function)
- Defined: `minigccg3.s:95`

### emit_enabled (function)
- Defined: `minigccg3.s:99`

### max_func_stack (function)
- Defined: `minigccg3.s:103`

### assign_size (function)
- Defined: `minigccg3.s:107`

### expr_pointed (function)
- Defined: `minigccg3.s:111`

### expr_fnptr (function)
- Defined: `minigccg3.s:115`

### subscript_base_fnptr (function)
- Defined: `minigccg3.s:119`

### current_elem_size (function)
- Defined: `minigccg3.s:123`

### current_elem_size2 (function)
- Defined: `minigccg3.s:127`

### current_elem_unsigned (function)
- Defined: `minigccg3.s:131`

### deref_w (function)
- Defined: `minigccg3.s:135`

### deref_u (function)
- Defined: `minigccg3.s:139`

### no_postfix_deref (function)
- Defined: `minigccg3.s:143`

### expr_type (function)
- Defined: `minigccg3.s:147`

### static_flag (function)
- Defined: `minigccg3.s:151`

### unsigned_type (function)
- Defined: `minigccg3.s:155`

### const_flag (function)
- Defined: `minigccg3.s:159`

### extern_flag (function)
- Defined: `minigccg3.s:163`

### global_emit_deferred (function)
- Defined: `minigccg3.s:167`

### pending_align (function)
- Defined: `minigccg3.s:171`

### func_is_variadic (function)
- Defined: `minigccg3.s:175`

### vararg_nfixed (function)
- Defined: `minigccg3.s:179`

### vararg_save_off (function)
- Defined: `minigccg3.s:183`

### float_const_str (function)
- Defined: `minigccg3.s:187`

### float_const_is_float (function)
- Defined: `minigccg3.s:191`

### float_const_count (function)
- Defined: `minigccg3.s:195`

### switch_case_values (function)
- Defined: `minigccg3.s:199`

### switch_case_labels (function)
- Defined: `minigccg3.s:203`

### switch_case_count (function)
- Defined: `minigccg3.s:207`

### switch_has_default (function)
- Defined: `minigccg3.s:211`

### switch_default_label (function)
- Defined: `minigccg3.s:215`

### break_target (function)
- Defined: `minigccg3.s:219`

### break_target_valid (function)
- Defined: `minigccg3.s:223`

### continue_target (function)
- Defined: `minigccg3.s:227`

### continue_target_valid (function)
- Defined: `minigccg3.s:231`

### str_label_counter (function)
- Defined: `minigccg3.s:235`

### string_pool (function)
- Defined: `minigccg3.s:239`

### string_count (function)
- Defined: `minigccg3.s:243`

### ptr_init_name (function)
- Defined: `minigccg3.s:247`

### ptr_init_label (function)
- Defined: `minigccg3.s:251`

### ptr_init_count (function)
- Defined: `minigccg3.s:255`

### struct_total_size (function)
- Defined: `minigccg3.s:259`

### struct_member_names (function)
- Defined: `minigccg3.s:263`

### struct_member_offsets (function)
- Defined: `minigccg3.s:267`

### struct_member_sizes (function)
- Defined: `minigccg3.s:271`

### struct_member_elem_sizes (function)
- Defined: `minigccg3.s:275`

### struct_member_unsigned (function)
- Defined: `minigccg3.s:279`

### struct_member_is_float (function)
- Defined: `minigccg3.s:283`

### struct_member_is_fnptr (function)
- Defined: `minigccg3.s:287`

### struct_member_count (function)
- Defined: `minigccg3.s:291`

### defined_func_names (function)
- Defined: `minigccg3.s:295`

### defined_func_count (function)
- Defined: `minigccg3.s:299`

### if_nest (function)
- Defined: `minigccg3.s:303`

### if_depth (function)
- Defined: `minigccg3.s:307`

### macro_count (function)
- Defined: `minigccg3.s:312`

### save_parser_state (function)
- Defined: `minigccg3.s:316`

### restore_parser_state (function)
- Defined: `minigccg3.s:473`

### macros (function)
- Defined: `minigccg3.s:682`

### find_macro (function)
- Defined: `minigccg3.s:686`

### add_macro (function)
- Defined: `minigccg3.s:749`

### macro_p (function)
- Defined: `minigccg3.s:879`

### macro_ok (function)
- Defined: `minigccg3.s:883`

### macro_skipws (function)
- Defined: `minigccg3.s:887`

### macro_hex_digit (function)
- Defined: `minigccg3.s:928`

### macro_digit_val (function)
- Defined: `minigccg3.s:1026`

### macro_primary (function)
- Defined: `minigccg3.s:1147`

### macro_unary (function)
- Defined: `minigccg3.s:1945`

### macro_mul (function)
- Defined: `minigccg3.s:2073`

### macro_add (function)
- Defined: `minigccg3.s:2276`

### macro_shift (function)
- Defined: `minigccg3.s:2374`

### macro_cmp (function)
- Defined: `minigccg3.s:2527`

### macro_eq (function)
- Defined: `minigccg3.s:2748`

### macro_bitand (function)
- Defined: `minigccg3.s:2901`

### macro_bitxor (function)
- Defined: `minigccg3.s:2987`

### macro_bitor (function)
- Defined: `minigccg3.s:3052`

### macro_logand (function)
- Defined: `minigccg3.s:3138`

### macro_or_expr (function)
- Defined: `minigccg3.s:3235`

### macro_fold (function)
- Defined: `minigccg3.s:3332`

### error (function)
- Defined: `minigccg3.s:3353`

### safe_malloc (function)
- Defined: `minigccg3.s:3404`

### safe_strcpy (function)
- Defined: `minigccg3.s:3458`

### safe_strtoll (function)
- Defined: `minigccg3.s:3535`

### is_file_processed (function)
- Defined: `minigccg3.s:3650`

### mark_file_processed (function)
- Defined: `minigccg3.s:3710`

### get_dir_from_path (function)
- Defined: `minigccg3.s:3821`

### resolve_local_include (function)
- Defined: `minigccg3.s:3964`

### read_include_file (function)
- Defined: `minigccg3.s:4412`

### hash_name (function)
- Defined: `minigccg3.s:4618`

### hash_init (function)
- Defined: `minigccg3.s:4676`

### push_scope (function)
- Defined: `minigccg3.s:4715`

### pop_scope (function)
- Defined: `minigccg3.s:4767`

### truncate_symbols (function)
- Defined: `minigccg3.s:4963`

### my_isspace (function)
- Defined: `minigccg3.s:5116`

### my_isalpha (function)
- Defined: `minigccg3.s:5205`

### my_isdigit (function)
- Defined: `minigccg3.s:5274`

### my_isalnum (function)
- Defined: `minigccg3.s:5314`

### lex_fail (function)
- Defined: `minigccg3.s:5359`

### lex_kw_add (function)
- Defined: `minigccg3.s:5463`

### lex_init_keywords (function)
- Defined: `minigccg3.s:5626`

### lex_kw_lookup (function)
- Defined: `minigccg3.s:6113`

### lex_match_op (function)
- Defined: `minigccg3.s:6206`

### lex_hex_val (function)
- Defined: `minigccg3.s:6289`

### lex_is_int_suffix (function)
- Defined: `minigccg3.s:6411`

### lex_number (function)
- Defined: `minigccg3.s:6480`

### next_token (function)
- Defined: `minigccg3.s:8007`

### restart (function)
- Defined: `minigccg3.s:8011`

### match (function)
- Defined: `minigccg3.s:13413`

### emit (function)
- Defined: `minigccg3.s:13451`

### emit_i (function)
- Defined: `minigccg3.s:13562`

### emit_s (function)
- Defined: `minigccg3.s:13610`

### emit_is (function)
- Defined: `minigccg3.s:13658`

### emit_si (function)
- Defined: `minigccg3.s:13709`

### emit_asciz_body (function)
- Defined: `minigccg3.s:13760`

### emit_label (function)
- Defined: `minigccg3.s:14074`

### find_symbol (function)
- Defined: `minigccg3.s:14103`

### add_symbol (function)
- Defined: `minigccg3.s:14189`

### arg_reg (function)
- Defined: `minigccg3.s:14598`

### note_defined_func (function)
- Defined: `minigccg3.s:14674`

### is_defined_func (function)
- Defined: `minigccg3.s:14776`

### parse_fnptr_declarator (function)
- Defined: `minigccg3.s:14835`

### peek_call_argc (function)
- Defined: `minigccg3.s:15254`

### emit_spill_reverse (function)
- Defined: `minigccg3.s:15545`

### parse_indirect_call (function)
- Defined: `minigccg3.s:15682`

### libc_global_name (function)
- Defined: `minigccg3.s:16025`

### typedef_name (function)
- Defined: `minigccg3.s:16153`

### typedef_size (function)
- Defined: `minigccg3.s:16320`

### typedef_uns (function)
- Defined: `minigccg3.s:16487`

### unary (function)
- Defined: `minigccg3.s:16563`

### parse_sync_call (function)
- Defined: `minigccg3.s:20615`

### parse_va_start (function)
- Defined: `minigccg3.s:20932`

### parse_va_arg (function)
- Defined: `minigccg3.s:21271`

### parse_va_end (function)
- Defined: `minigccg3.s:21802`

### lvalue_address (function)
- Defined: `minigccg3.s:21908`

### handle_postfix (function)
- Defined: `minigccg3.s:22465`

### unary_expr (function)
- Defined: `minigccg3.s:23966`

### multiplicative_expr (function)
- Defined: `minigccg3.s:23991`

### additive_expr (function)
- Defined: `minigccg3.s:24645`

### shift_expr (function)
- Defined: `minigccg3.s:25190`

### relational_expr (function)
- Defined: `minigccg3.s:25368`

### equality_expr (function)
- Defined: `minigccg3.s:25975`

### bitwise_and_expr (function)
- Defined: `minigccg3.s:26458`

### bitwise_xor_expr (function)
- Defined: `minigccg3.s:26568`

### bitwise_or_expr (function)
- Defined: `minigccg3.s:26678`

### logical_and_expr (function)
- Defined: `minigccg3.s:26788`

### logical_or_expr (function)
- Defined: `minigccg3.s:26948`

### conditional_expr (function)
- Defined: `minigccg3.s:27108`

### emit_compound_op (function)
- Defined: `minigccg3.s:27243`

### assignment_expr (function)
- Defined: `minigccg3.s:27745`

### asm_tmpl (function)
- Defined: `minigccg3.s:31362`

### asm_text (function)
- Defined: `minigccg3.s:31366`

### asm_mem (function)
- Defined: `minigccg3.s:31370`

### asm_is_out (function)
- Defined: `minigccg3.s:31374`

### asm_home (function)
- Defined: `minigccg3.s:31378`

### asm_slot (function)
- Defined: `minigccg3.s:31382`

### asm_size (function)
- Defined: `minigccg3.s:31386`

### asm_nops (function)
- Defined: `minigccg3.s:31390`

### asm_nslots (function)
- Defined: `minigccg3.s:31394`

### asm_unique (function)
- Defined: `minigccg3.s:31398`

### asm_scratch (function)
- Defined: `minigccg3.s:31402`

### asm_home_text (function)
- Defined: `minigccg3.s:31478`

### asm_reg_sized (function)
- Defined: `minigccg3.s:31693`

### asm_fixed_home (function)
- Defined: `minigccg3.s:32673`

### asm_emit_template (function)
- Defined: `minigccg3.s:32763`

### asm_parse_mem (function)
- Defined: `minigccg3.s:32999`

### asm_emit_ss (function)
- Defined: `minigccg3.s:33554`

### asm_parse_one (function)
- Defined: `minigccg3.s:33605`

### asm_assign_homes (function)
- Defined: `minigccg3.s:34676`

### asm_emit_all (function)
- Defined: `minigccg3.s:35302`

### skip_gcc_attribute (function)
- Defined: `minigccg3.s:35878`

### parse_trailing_align (function)
- Defined: `minigccg3.s:36353`

### parse_asm_block (function)
- Defined: `minigccg3.s:36395`

### statement (function)
- Defined: `minigccg3.s:36960`

### restart_typedef (function)
- Defined: `minigccg3.s:40681`

### restart_int (function)
- Defined: `minigccg3.s:41931`

### parse_function (function)
- Defined: `minigccg3.s:43300`

### parse_enum (function)
- Defined: `minigccg3.s:45381`

### skip_struct_fields (function)
- Defined: `minigccg3.s:45818`

### skip_struct (function)
- Defined: `minigccg3.s:46385`

### td_stash_valid (function)
- Defined: `minigccg3.s:47079`

### td_stash_size (function)
- Defined: `minigccg3.s:47083`

### td_stash_uns (function)
- Defined: `minigccg3.s:47087`

### td_stash_fnptr (function)
- Defined: `minigccg3.s:47091`

### record_typedef_alias (function)
- Defined: `minigccg3.s:47095`

### skip_typedef (function)
- Defined: `minigccg3.s:47337`

### data_directive (function)
- Defined: `minigccg3.s:48572`

### emit_global_bss (function)
- Defined: `minigccg3.s:48622`

### emit_global_data_head (function)
- Defined: `minigccg3.s:48732`

### parse_const_int (function)
- Defined: `minigccg3.s:48807`

### intern_string (function)
- Defined: `minigccg3.s:48970`

### emit_global_initializer (function)
- Defined: `minigccg3.s:49063`

### parse_program (function)
- Defined: `minigccg3.s:49770`

### emit_float_consts (function)
- Defined: `minigccg3.s:52138`

### emit_string_pool (function)
- Defined: `minigccg3.s:52235`

### main (function)
- Defined: `minigccg3.s:52336`

### _start (function)
- Defined: `minigccg3.s:57432`

## minigccg4.s

### lex_kw_blob (function)
- Defined: `minigccg4.s:3`

### lex_kw_ids (function)
- Defined: `minigccg4.s:7`

### lex_kw_count (function)
- Defined: `minigccg4.s:11`

### lex_pass_top (function)
- Defined: `minigccg4.s:15`

### input_ptr (function)
- Defined: `minigccg4.s:19`

### source_start (function)
- Defined: `minigccg4.s:23`

### token (function)
- Defined: `minigccg4.s:27`

### tok (function)
- Defined: `minigccg4.s:31`

### line (function)
- Defined: `minigccg4.s:35`

### output (function)
- Defined: `minigccg4.s:39`

### ctx_stack (function)
- Defined: `minigccg4.s:43`

### ctx_top (function)
- Defined: `minigccg4.s:47`

### current_file (function)
- Defined: `minigccg4.s:51`

### processed_files (function)
- Defined: `minigccg4.s:55`

### processed_count (function)
- Defined: `minigccg4.s:59`

### symbols (function)
- Defined: `minigccg4.s:63`

### symbol_count (function)
- Defined: `minigccg4.s:67`

### hash_table (function)
- Defined: `minigccg4.s:71`

### scope_stack_sym (function)
- Defined: `minigccg4.s:75`

### scope_stack_stk (function)
- Defined: `minigccg4.s:79`

### scope_depth (function)
- Defined: `minigccg4.s:83`

### stack_size (function)
- Defined: `minigccg4.s:87`

### label_counter (function)
- Defined: `minigccg4.s:91`

### function_has_return (function)
- Defined: `minigccg4.s:95`

### emit_enabled (function)
- Defined: `minigccg4.s:99`

### max_func_stack (function)
- Defined: `minigccg4.s:103`

### assign_size (function)
- Defined: `minigccg4.s:107`

### expr_pointed (function)
- Defined: `minigccg4.s:111`

### expr_fnptr (function)
- Defined: `minigccg4.s:115`

### subscript_base_fnptr (function)
- Defined: `minigccg4.s:119`

### current_elem_size (function)
- Defined: `minigccg4.s:123`

### current_elem_size2 (function)
- Defined: `minigccg4.s:127`

### current_elem_unsigned (function)
- Defined: `minigccg4.s:131`

### deref_w (function)
- Defined: `minigccg4.s:135`

### deref_u (function)
- Defined: `minigccg4.s:139`

### no_postfix_deref (function)
- Defined: `minigccg4.s:143`

### expr_type (function)
- Defined: `minigccg4.s:147`

### static_flag (function)
- Defined: `minigccg4.s:151`

### unsigned_type (function)
- Defined: `minigccg4.s:155`

### const_flag (function)
- Defined: `minigccg4.s:159`

### extern_flag (function)
- Defined: `minigccg4.s:163`

### global_emit_deferred (function)
- Defined: `minigccg4.s:167`

### pending_align (function)
- Defined: `minigccg4.s:171`

### func_is_variadic (function)
- Defined: `minigccg4.s:175`

### vararg_nfixed (function)
- Defined: `minigccg4.s:179`

### vararg_save_off (function)
- Defined: `minigccg4.s:183`

### float_const_str (function)
- Defined: `minigccg4.s:187`

### float_const_is_float (function)
- Defined: `minigccg4.s:191`

### float_const_count (function)
- Defined: `minigccg4.s:195`

### switch_case_values (function)
- Defined: `minigccg4.s:199`

### switch_case_labels (function)
- Defined: `minigccg4.s:203`

### switch_case_count (function)
- Defined: `minigccg4.s:207`

### switch_has_default (function)
- Defined: `minigccg4.s:211`

### switch_default_label (function)
- Defined: `minigccg4.s:215`

### break_target (function)
- Defined: `minigccg4.s:219`

### break_target_valid (function)
- Defined: `minigccg4.s:223`

### continue_target (function)
- Defined: `minigccg4.s:227`

### continue_target_valid (function)
- Defined: `minigccg4.s:231`

### str_label_counter (function)
- Defined: `minigccg4.s:235`

### string_pool (function)
- Defined: `minigccg4.s:239`

### string_count (function)
- Defined: `minigccg4.s:243`

### ptr_init_name (function)
- Defined: `minigccg4.s:247`

### ptr_init_label (function)
- Defined: `minigccg4.s:251`

### ptr_init_count (function)
- Defined: `minigccg4.s:255`

### struct_total_size (function)
- Defined: `minigccg4.s:259`

### struct_member_names (function)
- Defined: `minigccg4.s:263`

### struct_member_offsets (function)
- Defined: `minigccg4.s:267`

### struct_member_sizes (function)
- Defined: `minigccg4.s:271`

### struct_member_elem_sizes (function)
- Defined: `minigccg4.s:275`

### struct_member_unsigned (function)
- Defined: `minigccg4.s:279`

### struct_member_is_float (function)
- Defined: `minigccg4.s:283`

### struct_member_is_fnptr (function)
- Defined: `minigccg4.s:287`

### struct_member_count (function)
- Defined: `minigccg4.s:291`

### defined_func_names (function)
- Defined: `minigccg4.s:295`

### defined_func_count (function)
- Defined: `minigccg4.s:299`

### if_nest (function)
- Defined: `minigccg4.s:303`

### if_depth (function)
- Defined: `minigccg4.s:307`

### macro_count (function)
- Defined: `minigccg4.s:312`

### save_parser_state (function)
- Defined: `minigccg4.s:316`

### restore_parser_state (function)
- Defined: `minigccg4.s:473`

### macros (function)
- Defined: `minigccg4.s:682`

### find_macro (function)
- Defined: `minigccg4.s:686`

### add_macro (function)
- Defined: `minigccg4.s:749`

### macro_p (function)
- Defined: `minigccg4.s:879`

### macro_ok (function)
- Defined: `minigccg4.s:883`

### macro_skipws (function)
- Defined: `minigccg4.s:887`

### macro_hex_digit (function)
- Defined: `minigccg4.s:928`

### macro_digit_val (function)
- Defined: `minigccg4.s:1026`

### macro_primary (function)
- Defined: `minigccg4.s:1147`

### macro_unary (function)
- Defined: `minigccg4.s:1945`

### macro_mul (function)
- Defined: `minigccg4.s:2073`

### macro_add (function)
- Defined: `minigccg4.s:2276`

### macro_shift (function)
- Defined: `minigccg4.s:2374`

### macro_cmp (function)
- Defined: `minigccg4.s:2527`

### macro_eq (function)
- Defined: `minigccg4.s:2748`

### macro_bitand (function)
- Defined: `minigccg4.s:2901`

### macro_bitxor (function)
- Defined: `minigccg4.s:2987`

### macro_bitor (function)
- Defined: `minigccg4.s:3052`

### macro_logand (function)
- Defined: `minigccg4.s:3138`

### macro_or_expr (function)
- Defined: `minigccg4.s:3235`

### macro_fold (function)
- Defined: `minigccg4.s:3332`

### error (function)
- Defined: `minigccg4.s:3353`

### safe_malloc (function)
- Defined: `minigccg4.s:3404`

### safe_strcpy (function)
- Defined: `minigccg4.s:3458`

### safe_strtoll (function)
- Defined: `minigccg4.s:3535`

### is_file_processed (function)
- Defined: `minigccg4.s:3650`

### mark_file_processed (function)
- Defined: `minigccg4.s:3710`

### get_dir_from_path (function)
- Defined: `minigccg4.s:3821`

### resolve_local_include (function)
- Defined: `minigccg4.s:3964`

### read_include_file (function)
- Defined: `minigccg4.s:4412`

### hash_name (function)
- Defined: `minigccg4.s:4618`

### hash_init (function)
- Defined: `minigccg4.s:4676`

### push_scope (function)
- Defined: `minigccg4.s:4715`

### pop_scope (function)
- Defined: `minigccg4.s:4767`

### truncate_symbols (function)
- Defined: `minigccg4.s:4963`

### my_isspace (function)
- Defined: `minigccg4.s:5116`

### my_isalpha (function)
- Defined: `minigccg4.s:5205`

### my_isdigit (function)
- Defined: `minigccg4.s:5274`

### my_isalnum (function)
- Defined: `minigccg4.s:5314`

### lex_fail (function)
- Defined: `minigccg4.s:5359`

### lex_kw_add (function)
- Defined: `minigccg4.s:5463`

### lex_init_keywords (function)
- Defined: `minigccg4.s:5626`

### lex_kw_lookup (function)
- Defined: `minigccg4.s:6113`

### lex_match_op (function)
- Defined: `minigccg4.s:6206`

### lex_hex_val (function)
- Defined: `minigccg4.s:6289`

### lex_is_int_suffix (function)
- Defined: `minigccg4.s:6411`

### lex_number (function)
- Defined: `minigccg4.s:6480`

### next_token (function)
- Defined: `minigccg4.s:8007`

### restart (function)
- Defined: `minigccg4.s:8011`

### match (function)
- Defined: `minigccg4.s:13413`

### emit (function)
- Defined: `minigccg4.s:13451`

### emit_i (function)
- Defined: `minigccg4.s:13562`

### emit_s (function)
- Defined: `minigccg4.s:13610`

### emit_is (function)
- Defined: `minigccg4.s:13658`

### emit_si (function)
- Defined: `minigccg4.s:13709`

### emit_asciz_body (function)
- Defined: `minigccg4.s:13760`

### emit_label (function)
- Defined: `minigccg4.s:14074`

### find_symbol (function)
- Defined: `minigccg4.s:14103`

### add_symbol (function)
- Defined: `minigccg4.s:14189`

### arg_reg (function)
- Defined: `minigccg4.s:14598`

### note_defined_func (function)
- Defined: `minigccg4.s:14674`

### is_defined_func (function)
- Defined: `minigccg4.s:14776`

### parse_fnptr_declarator (function)
- Defined: `minigccg4.s:14835`

### peek_call_argc (function)
- Defined: `minigccg4.s:15254`

### emit_spill_reverse (function)
- Defined: `minigccg4.s:15545`

### parse_indirect_call (function)
- Defined: `minigccg4.s:15682`

### libc_global_name (function)
- Defined: `minigccg4.s:16025`

### typedef_name (function)
- Defined: `minigccg4.s:16153`

### typedef_size (function)
- Defined: `minigccg4.s:16320`

### typedef_uns (function)
- Defined: `minigccg4.s:16487`

### unary (function)
- Defined: `minigccg4.s:16563`

### parse_sync_call (function)
- Defined: `minigccg4.s:20615`

### parse_va_start (function)
- Defined: `minigccg4.s:20932`

### parse_va_arg (function)
- Defined: `minigccg4.s:21271`

### parse_va_end (function)
- Defined: `minigccg4.s:21802`

### lvalue_address (function)
- Defined: `minigccg4.s:21908`

### handle_postfix (function)
- Defined: `minigccg4.s:22465`

### unary_expr (function)
- Defined: `minigccg4.s:23966`

### multiplicative_expr (function)
- Defined: `minigccg4.s:23991`

### additive_expr (function)
- Defined: `minigccg4.s:24645`

### shift_expr (function)
- Defined: `minigccg4.s:25190`

### relational_expr (function)
- Defined: `minigccg4.s:25368`

### equality_expr (function)
- Defined: `minigccg4.s:25975`

### bitwise_and_expr (function)
- Defined: `minigccg4.s:26458`

### bitwise_xor_expr (function)
- Defined: `minigccg4.s:26568`

### bitwise_or_expr (function)
- Defined: `minigccg4.s:26678`

### logical_and_expr (function)
- Defined: `minigccg4.s:26788`

### logical_or_expr (function)
- Defined: `minigccg4.s:26948`

### conditional_expr (function)
- Defined: `minigccg4.s:27108`

### emit_compound_op (function)
- Defined: `minigccg4.s:27243`

### assignment_expr (function)
- Defined: `minigccg4.s:27745`

### asm_tmpl (function)
- Defined: `minigccg4.s:31362`

### asm_text (function)
- Defined: `minigccg4.s:31366`

### asm_mem (function)
- Defined: `minigccg4.s:31370`

### asm_is_out (function)
- Defined: `minigccg4.s:31374`

### asm_home (function)
- Defined: `minigccg4.s:31378`

### asm_slot (function)
- Defined: `minigccg4.s:31382`

### asm_size (function)
- Defined: `minigccg4.s:31386`

### asm_nops (function)
- Defined: `minigccg4.s:31390`

### asm_nslots (function)
- Defined: `minigccg4.s:31394`

### asm_unique (function)
- Defined: `minigccg4.s:31398`

### asm_scratch (function)
- Defined: `minigccg4.s:31402`

### asm_home_text (function)
- Defined: `minigccg4.s:31478`

### asm_reg_sized (function)
- Defined: `minigccg4.s:31693`

### asm_fixed_home (function)
- Defined: `minigccg4.s:32673`

### asm_emit_template (function)
- Defined: `minigccg4.s:32763`

### asm_parse_mem (function)
- Defined: `minigccg4.s:32999`

### asm_emit_ss (function)
- Defined: `minigccg4.s:33554`

### asm_parse_one (function)
- Defined: `minigccg4.s:33605`

### asm_assign_homes (function)
- Defined: `minigccg4.s:34676`

### asm_emit_all (function)
- Defined: `minigccg4.s:35302`

### skip_gcc_attribute (function)
- Defined: `minigccg4.s:35878`

### parse_trailing_align (function)
- Defined: `minigccg4.s:36353`

### parse_asm_block (function)
- Defined: `minigccg4.s:36395`

### statement (function)
- Defined: `minigccg4.s:36960`

### restart_typedef (function)
- Defined: `minigccg4.s:40681`

### restart_int (function)
- Defined: `minigccg4.s:41931`

### parse_function (function)
- Defined: `minigccg4.s:43300`

### parse_enum (function)
- Defined: `minigccg4.s:45381`

### skip_struct_fields (function)
- Defined: `minigccg4.s:45818`

### skip_struct (function)
- Defined: `minigccg4.s:46385`

### td_stash_valid (function)
- Defined: `minigccg4.s:47079`

### td_stash_size (function)
- Defined: `minigccg4.s:47083`

### td_stash_uns (function)
- Defined: `minigccg4.s:47087`

### td_stash_fnptr (function)
- Defined: `minigccg4.s:47091`

### record_typedef_alias (function)
- Defined: `minigccg4.s:47095`

### skip_typedef (function)
- Defined: `minigccg4.s:47337`

### data_directive (function)
- Defined: `minigccg4.s:48572`

### emit_global_bss (function)
- Defined: `minigccg4.s:48622`

### emit_global_data_head (function)
- Defined: `minigccg4.s:48732`

### parse_const_int (function)
- Defined: `minigccg4.s:48807`

### intern_string (function)
- Defined: `minigccg4.s:48970`

### emit_global_initializer (function)
- Defined: `minigccg4.s:49063`

### parse_program (function)
- Defined: `minigccg4.s:49770`

### emit_float_consts (function)
- Defined: `minigccg4.s:52138`

### emit_string_pool (function)
- Defined: `minigccg4.s:52235`

### main (function)
- Defined: `minigccg4.s:52336`

### _start (function)
- Defined: `minigccg4.s:57432`

## my_library.h

### greet (function) `void greet(void);`
- Defined: `my_library.h:5`
- Doc: Test function to verify that inclusion works correctly
- Imported by: `test_include.c`

## test.c

### main (function) `int main(void)`
- Defined: `test.c:1`

## test_all.sh

### pass (function)
- Defined: `test_all.sh:20`

### fail (function)
- Defined: `test_all.sh:25`

### run_test (function)
- Defined: `test_all.sh:37`

### run_neg (function)
- Defined: `test_all.sh:101`

## test_for.c

### main (function) `int main()`
- Defined: `test_for.c:2`
- Doc: include <stdio.h>

## test_include.c

### main (function) `int main(void)`
- Defined: `test_include.c:3`
- Doc: include <stdio.h> include "my_library.h"
- Depends on: `my_library.h`

### greet (function) `void greet(void)`
- Defined: `test_include.c:9`
- Depends on: `my_library.h`

## test_ld_selfhost.sh

### pass (function)
- Defined: `test_ld_selfhost.sh:27`

### fail (function)
- Defined: `test_ld_selfhost.sh:32`

## tests/neg_asm.c

### main (function) `int main(void)`
- Defined: `tests/neg_asm.c:1`

## tests/neg_asm2.c

### main (function) `int main(void)`
- Defined: `tests/neg_asm2.c:1`

## tests/neg_asm3.c

### main (function) `int main(void)`
- Defined: `tests/neg_asm3.c:1`

## tests/neg_asm_ds.c

### sum_d5 (function) `long sum_d5(long d, long a, long b, long c, long e, long f)`
- Defined: `tests/neg_asm_ds.c:1`

### main (function) `int main(void)`
- Defined: `tests/neg_asm_ds.c:7`

## tests/neg_attr.c

### main (function) `int main(void)`
- Defined: `tests/neg_attr.c:2`

## tests/neg_comment.c

### main (function) `int main(void)`
- Defined: `tests/neg_comment.c:1`

## tests/neg_float.c

### main (function) `int main(void)`
- Defined: `tests/neg_float.c:1`

## tests/neg_fnptr.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr.c:6`

## tests/neg_fnptr_call.c

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_call.c:2`
- Doc: include <stdio.h>

## tests/neg_fnptr_cmp.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr_cmp.c:2`
- Doc: include <stdio.h>

### mul2 (function) `long mul2(long a, long b)`
- Defined: `tests/neg_fnptr_cmp.c:6`

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_cmp.c:10`

## tests/neg_fnptr_cmp0.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr_cmp0.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_cmp0.c:6`

## tests/neg_fnptr_globalinit.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr_globalinit.c:1`

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_globalinit.c:6`

## tests/neg_fnptr_tern.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr_tern.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_tern.c:6`

## tests/neg_hex.c

### main (function) `int main(void)`
- Defined: `tests/neg_hex.c:1`

## tests/neg_octal.c

### main (function) `int main(void)`
- Defined: `tests/neg_octal.c:1`

## tests/neg_typedef_arrcont.c

### main (function) `int main(void)`
- Defined: `tests/neg_typedef_arrcont.c:2`

## tests/neg_va.c

### main (function) `int main(void)`
- Defined: `tests/neg_va.c:1`

## tests/t_args.c

### main (function) `int main(int argc, char **argv)`
- Defined: `tests/t_args.c:2`
- Doc: include <stdio.h>

## tests/t_args7.c

### sum7 (function) `long sum7(long a, long b, long c, long d, long e, long f, long g)`
- Defined: `tests/t_args7.c:2`
- Doc: include <stdio.h>

### sum8 (function) `long sum8(long a, long b, long c, long d, long e, long f, long g, long h)`
- Defined: `tests/t_args7.c:6`

### mix8 (function) `long mix8(long a, long b, long c, long d, long e, long f, long g, long h)`
- Defined: `tests/t_args7.c:10`

### main (function) `int main(void)`
- Defined: `tests/t_args7.c:15`

## tests/t_arith.c

### main (function) `int main(void)`
- Defined: `tests/t_arith.c:2`
- Doc: include <stdio.h>

## tests/t_arrays.c

### main (function) `int main(void)`
- Defined: `tests/t_arrays.c:2`
- Doc: include <stdio.h>

## tests/t_asm.c

### main (function) `int main(void)`
- Defined: `tests/t_asm.c:4`

## tests/t_asm3.c

### main (function) `int main(void)`
- Defined: `tests/t_asm3.c:5`

## tests/t_asm_ds.c

### via_d (function) `long via_d(long x)`
- Defined: `tests/t_asm_ds.c:3`
- Doc: include <stdio.h> include <stdint.h>

### via_s (function) `long via_s(long x)`
- Defined: `tests/t_asm_ds.c:9`

### add_ds (function) `long add_ds(long a, long b)`
- Defined: `tests/t_asm_ds.c:15`

### ret_d (function) `long ret_d(long x)`
- Defined: `tests/t_asm_ds.c:21`

### ret_s (function) `long ret_s(long x)`
- Defined: `tests/t_asm_ds.c:27`

### ret_di (function) `int ret_di(void)`
- Defined: `tests/t_asm_ds.c:33`

### ret_dc (function) `char ret_dc(void)`
- Defined: `tests/t_asm_ds.c:39`

### ret_ds (function) `int16_t ret_ds(void)`
- Defined: `tests/t_asm_ds.c:45`

### ret_dw (function) `int32_t ret_dw(void)`
- Defined: `tests/t_asm_ds.c:51`

### main (function) `int main(void)`
- Defined: `tests/t_asm_ds.c:57`

## tests/t_attr.c

### __attribute__ (function) `typedef struct __attribute__((packed))`
- Defined: `tests/t_attr.c:3`
- Doc: include <stdio.h> include <stdint.h>

### __attribute__ (function) `__attribute__((always_inline)) static inline int sq(int x)`
- Defined: `tests/t_attr.c:11`

### ksetjmp (function) `int ksetjmp(long buf)`
- Defined: `tests/t_attr.c:17`

### knoreturn (function) `void knoreturn(void)`
- Defined: `tests/t_attr.c:22`

### main (function) `int main(void)`
- Defined: `tests/t_attr.c:24`

## tests/t_compound.c

### main (function) `int main(void)`
- Defined: `tests/t_compound.c:2`
- Doc: include <stdio.h>

## tests/t_dowhile.c

### main (function) `int main(void)`
- Defined: `tests/t_dowhile.c:2`
- Doc: include <stdio.h>

## tests/t_enum.c

### main (function) `int main(void)`
- Defined: `tests/t_enum.c:12`

## tests/t_float.c

### main (function) `int main(void)`
- Defined: `tests/t_float.c:2`
- Doc: include <stdio.h>

## tests/t_fnptr.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/t_fnptr.c:2`
- Doc: include <stdio.h>

### mul2 (function) `long mul2(long a, long b)`
- Defined: `tests/t_fnptr.c:6`

### apply2 (function) `long apply2(long (*f)(long, long), long x, long y)`
- Defined: `tests/t_fnptr.c:10`

### run_op (function) `long run_op(ops_t *o, long x, long y)`
- Defined: `tests/t_fnptr.c:21`

### main (function) `int main(void)`
- Defined: `tests/t_fnptr.c:25`

## tests/t_for.c

### main (function) `int main(void)`
- Defined: `tests/t_for.c:2`
- Doc: include <stdio.h>

## tests/t_globinit.c

### main (function) `int main(void)`
- Defined: `tests/t_globinit.c:7`

## tests/t_goto.c

### main (function) `int main(void)`
- Defined: `tests/t_goto.c:2`
- Doc: include <stdio.h>

## tests/t_hexoct.c

### main (function) `int main(void)`
- Defined: `tests/t_hexoct.c:2`
- Doc: include <stdio.h>

## tests/t_if.c

### grade (function) `int grade(int s)`
- Defined: `tests/t_if.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/t_if.c:9`

## tests/t_include.c

### main (function) `int main(void)`
- Defined: `tests/t_include.c:4`
- Doc: include <stdio.h> include "t_outer_h.h" include "t_outer_h.h"
- Depends on: `tests/t_outer_h.h`

## tests/t_inline.c

### icube (function) `static inline int icube(int x)`
- Defined: `tests/t_inline.c:3`
- Doc: include <stdio.h> include "t_inline_h.h"
- Depends on: `tests/t_inline_h.h`

### idbl (function) `__inline__ static int idbl(int x)`
- Defined: `tests/t_inline.c:7`
- Depends on: `tests/t_inline_h.h`

### iinc (function) `__inline static int iinc(int x)`
- Defined: `tests/t_inline.c:11`
- Depends on: `tests/t_inline_h.h`

### main (function) `int main(void)`
- Defined: `tests/t_inline.c:15`
- Depends on: `tests/t_inline_h.h`

## tests/t_inline_h.h

### isq (function) `static inline int isq(int x)`
- Defined: `tests/t_inline_h.h:3`
- Doc: ifndef T_INLINE_H define T_INLINE_H
- Imported by: `tests/t_inline.c`

## tests/t_inner_h.h

### inner_add (function) `static inline int inner_add(int a, int b)`
- Defined: `tests/t_inner_h.h:5`
- Doc: define INNER_VAL 111
- Imported by: `tests/t_outer_h.h`

## tests/t_logic.c

### main (function) `int main(void)`
- Defined: `tests/t_logic.c:2`
- Doc: include <stdio.h>

## tests/t_longlong.c

### bump (function) `u64 bump(u64 x)`
- Defined: `tests/t_longlong.c:5`

### negate (function) `s64 negate(s64 x)`
- Defined: `tests/t_longlong.c:9`

### add64 (function) `unsigned long long add64(unsigned long long a, unsigned long long b)`
- Defined: `tests/t_longlong.c:13`

### main (function) `int main(void)`
- Defined: `tests/t_longlong.c:19`

## tests/t_macros.c

### main (function) `int main(void)`
- Defined: `tests/t_macros.c:9`
- Doc: define KONST 40 define SHIFTED (1 << 4) define HEXED 0x10 define SUMMED (KONST + 2) define NEGD (0 - 3) define SZ 4

## tests/t_pointers.c

### bump (function) `void bump(int *p)`
- Defined: `tests/t_pointers.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/t_pointers.c:6`

## tests/t_recursion.c

### fib (function) `int fib(int n)`
- Defined: `tests/t_recursion.c:2`
- Doc: include <stdio.h>

### fact (function) `int fact(int n)`
- Defined: `tests/t_recursion.c:7`

### main (function) `int main(void)`
- Defined: `tests/t_recursion.c:12`

## tests/t_scope.c

### touch (function) `void touch(void)`
- Defined: `tests/t_scope.c:6`

### main (function) `int main(void)`
- Defined: `tests/t_scope.c:11`

## tests/t_sizeof.c

### main (function) `int main(void)`
- Defined: `tests/t_sizeof.c:2`
- Doc: include <stdio.h>

## tests/t_stdint.c

### loads_u8 (function) `uint8_t loads_u8(uint8_t v)`
- Defined: `tests/t_stdint.c:21`

### loads_s16 (function) `int16_t loads_s16(int16_t v)`
- Defined: `tests/t_stdint.c:25`

### loads_u32 (function) `uint32_t loads_u32(uint32_t v)`
- Defined: `tests/t_stdint.c:29`

### add_shorts (function) `short add_shorts(short a, short b)`
- Defined: `tests/t_stdint.c:33`

### main (function) `int main(void)`
- Defined: `tests/t_stdint.c:37`

## tests/t_strings.c

### main (function) `int main(void)`
- Defined: `tests/t_strings.c:2`
- Doc: include <stdio.h>

## tests/t_struct.c

### manhattan (function) `int manhattan(Point *p)`
- Defined: `tests/t_struct.c:9`

### main (function) `int main(void)`
- Defined: `tests/t_struct.c:17`

## tests/t_struct_ul.c

### main (function) `int main(void)`
- Defined: `tests/t_struct_ul.c:12`

## tests/t_switch.c

### classify (function) `int classify(int v)`
- Defined: `tests/t_switch.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/t_switch.c:13`

## tests/t_sync.c

### main (function) `int main(void)`
- Defined: `tests/t_sync.c:5`

## tests/t_typedef.c

### main (function) `int main(void)`
- Defined: `tests/t_typedef.c:15`

## tests/t_unsigned.c

### bump (function) `unsigned long bump(unsigned long x)`
- Defined: `tests/t_unsigned.c:8`

### narrow (function) `unsigned int narrow(unsigned int x)`
- Defined: `tests/t_unsigned.c:12`

### reg_base (function) `unsigned long reg_base(ureg_t *r)`
- Defined: `tests/t_unsigned.c:22`

### main (function) `int main(void)`
- Defined: `tests/t_unsigned.c:26`

## tests/t_variadic.c

### mini_puts (function) `void mini_puts(const char *s)`
- Defined: `tests/t_variadic.c:4`

### mini_kprintf (function) `void mini_kprintf(const char *fmt, ...)`
- Defined: `tests/t_variadic.c:11`

### vsum (function) `long vsum(int n, ...)`
- Defined: `tests/t_variadic.c:45`

### main (function) `int main(void)`
- Defined: `tests/t_variadic.c:58`

### putchar (function) `int putchar(int c);`
- Defined: `tests/t_variadic.c:2`
- Doc: include <stdio.h>

## tests/t_while.c

### main (function) `int main(void)`
- Defined: `tests/t_while.c:2`
- Doc: include <stdio.h>
