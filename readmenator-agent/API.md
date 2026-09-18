# API

## minigcc.c

### sym_label (function) `static const char *sym_label(Symbol *s)`
- Defined: `minigcc.c:135`

### build_static_label (function) `static void build_static_label(char *dst)`
- Defined: `minigcc.c:139`

### save_parser_state (function) `static void save_parser_state(ParserState *state)`
- Defined: `minigcc.c:301`

### restore_parser_state (function) `static void restore_parser_state(ParserState *state)`
- Defined: `minigcc.c:330`

### find_macro (function) `static int find_macro(const char *name)`
- Defined: `minigcc.c:371`

### add_macro (function) `static void add_macro(const char *name, int value)`
- Defined: `minigcc.c:379`

### macro_skipws (function) `static void macro_skipws(void)`
- Defined: `minigcc.c:403`

### macro_hex_digit (function) `static int macro_hex_digit(int c)`
- Defined: `minigcc.c:407`

### macro_digit_val (function) `static int macro_digit_val(int c)`
- Defined: `minigcc.c:414`

### macro_primary (function) `static int macro_primary(void)`
- Defined: `minigcc.c:421`

### macro_unary (function) `static int macro_unary(void)`
- Defined: `minigcc.c:523`

### macro_mul (function) `static int macro_mul(void)`
- Defined: `minigcc.c:532`

### macro_add (function) `static int macro_add(void)`
- Defined: `minigcc.c:557`

### macro_shift (function) `static int macro_shift(void)`
- Defined: `minigcc.c:574`

### macro_cmp (function) `static int macro_cmp(void)`
- Defined: `minigcc.c:591`

### macro_eq (function) `static int macro_eq(void)`
- Defined: `minigcc.c:614`

### macro_bitand (function) `static int macro_bitand(void)`
- Defined: `minigcc.c:631`

### macro_bitxor (function) `static int macro_bitxor(void)`
- Defined: `minigcc.c:645`

### macro_bitor (function) `static int macro_bitor(void)`
- Defined: `minigcc.c:659`

### macro_logand (function) `static int macro_logand(void)`
- Defined: `minigcc.c:673`

### macro_or_expr (function) `static int macro_or_expr(void)`
- Defined: `minigcc.c:687`

### macro_fold (function) `static int macro_fold(void)`
- Defined: `minigcc.c:701`

### error (function) `static void error(const char *msg)`
- Defined: `minigcc.c:707`

### pp_eval (function) `static int pp_eval(char *p)`
- Defined: `minigcc.c:713`

### safe_malloc (function) `static void *safe_malloc(size_t size)`
- Defined: `minigcc.c:726`

### safe_strcpy (function) `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- Defined: `minigcc.c:735`

### ident_copy (function) `static void ident_copy(char *dst, const char *src)`
- Defined: `minigcc.c:744`

### is_struct_typedef (function) `static int is_struct_typedef(const char *name)`
- Defined: `minigcc.c:752`

### record_struct_typedef (function) `static void record_struct_typedef(const char *name)`
- Defined: `minigcc.c:762`

### safe_strtoll (function) `static long safe_strtoll(const char *s)`
- Defined: `minigcc.c:769`

### is_file_processed (function) `static int is_file_processed(const char *path)`
- Defined: `minigcc.c:782`

### mark_file_processed (function) `static void mark_file_processed(const char *path)`
- Defined: `minigcc.c:791`

### get_dir_from_path (function) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- Defined: `minigcc.c:803`

### resolve_local_include (function) `static char *resolve_local_include(const char *target)`
- Defined: `minigcc.c:822`

### read_include_file (function) `static char *read_include_file(const char *path)`
- Defined: `minigcc.c:861`

### hash_name (function) `static int hash_name(const char *name)`
- Defined: `minigcc.c:885`
- Doc: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multipli

### hash_init (function) `static void hash_init(void)`
- Defined: `minigcc.c:895`

### push_scope (function) `static void push_scope(void)`
- Defined: `minigcc.c:900`

### pop_scope (function) `static void pop_scope(void)`
- Defined: `minigcc.c:908`

### truncate_symbols (function) `static void truncate_symbols(int start_idx)`
- Defined: `minigcc.c:937`
- Doc: Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (

### my_isspace (function) `static int my_isspace(int c)`
- Defined: `minigcc.c:956`

### my_isalpha (function) `static int my_isalpha(int c)`
- Defined: `minigcc.c:966`

### my_isdigit (function) `static int my_isdigit(int c)`
- Defined: `minigcc.c:972`

### my_isalnum (function) `static int my_isalnum(int c)`
- Defined: `minigcc.c:977`

### lex_fail (function) `static void lex_fail(const char *msg, char *start, char *end)`
- Defined: `minigcc.c:983`

### lex_kw_add (function) `static void lex_kw_add(const char *name, int id)`
- Defined: `minigcc.c:993`

### lex_init_keywords (function) `static void lex_init_keywords(void)`
- Defined: `minigcc.c:1006`

### lex_kw_lookup (function) `static int lex_kw_lookup(void)`
- Defined: `minigcc.c:1048`

### lex_match_op (function) `static int lex_match_op(const char *op, int id)`
- Defined: `minigcc.c:1060`

### lex_hex_val (function) `static int lex_hex_val(int c)`
- Defined: `minigcc.c:1072`

### lex_is_int_suffix (function) `static int lex_is_int_suffix(int c)`
- Defined: `minigcc.c:1079`

### lex_number (function) `static void lex_number(void)`
- Defined: `minigcc.c:1085`

### next_token (function) `static void next_token(void)`
- Defined: `minigcc.c:1203`
- Doc: float_const_is_float[float_const_count] = (sfx == 'f' || sfx == 'F') ? 1 : 0; safe_strcpy(float_const_str[float_const_co

### match (function) `static void match(int expected)`
- Defined: `minigcc.c:1735`

### emit (function) `static void emit(const char *s)`
- Defined: `minigcc.c:1740`

### emit_i (function) `static void emit_i(const char *fmt, int v)`
- Defined: `minigcc.c:1754`

### emit_s (function) `static void emit_s(const char *fmt, const char *s)`
- Defined: `minigcc.c:1760`

### emit_is (function) `static void emit_is(const char *fmt, int v, const char *s)`
- Defined: `minigcc.c:1766`

### emit_si (function) `static void emit_si(const char *fmt, const char *s, int v)`
- Defined: `minigcc.c:1772`

### emit_asciz_body (function) `static void emit_asciz_body(const char *s)`
- Defined: `minigcc.c:1781`
- Doc: Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by t

### emit_label (function) `static void emit_label(int label)`
- Defined: `minigcc.c:1800`

### find_symbol (function) `static int find_symbol(const char *name)`
- Defined: `minigcc.c:1806`
- Doc: else if (c == '\a') fprintf(output, "\\a"); else if (c == '\b') fprintf(output, "\\b"); else if (c >= 32 && c <= 126) fp

### add_symbol (function) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- Defined: `minigcc.c:1817`

### arg_reg (function) `static const char *arg_reg(int i)`
- Defined: `minigcc.c:1903`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### note_defined_func (function) `static void note_defined_func(const char *name, int is_uns)`
- Defined: `minigcc.c:1912`

### is_defined_func (function) `static int is_defined_func(const char *name)`
- Defined: `minigcc.c:1928`

### func_return_unsigned (function) `static int func_return_unsigned(const char *name)`
- Defined: `minigcc.c:1938`

### parse_fnptr_declarator (function) `static int parse_fnptr_declarator(char *out_name, int *out_count)`
- Defined: `minigcc.c:1948`

### peek_call_argc (function) `static int peek_call_argc(void)`
- Defined: `minigcc.c:1994`

### emit_spill_reverse (function) `static void emit_spill_reverse(int argc)`
- Defined: `minigcc.c:2032`

### parse_indirect_call (function) `static void parse_indirect_call(void)`
- Defined: `minigcc.c:2044`

### libc_global_name (function) `static const char *libc_global_name(int i)`
- Defined: `minigcc.c:2084`
- Doc: emit("    movq 8(%%r12), %%r10"); emit("    xorl %%eax, %%eax"); emit("    call *%%r10"); emit("    movq %%r12, %%rsp");

### typedef_name (function) `static const char *typedef_name(int i)`
- Defined: `minigcc.c:2097`

### typedef_size (function) `static int typedef_size(int i)`
- Defined: `minigcc.c:2113`

### typedef_uns (function) `static int typedef_uns(int i)`
- Defined: `minigcc.c:2129`

### unary (function) `static void unary(void)`
- Defined: `minigcc.c:2138`

### strcmp (function) `strcmp(id_name, "__sync_lock_test_and_set") == 0 ||
                strcmp(id_name, "__sync_lock_...`
- Defined: `minigcc.c:2183`

### strcmp (function) `strcmp(id_name, "va_start") == 0)`
- Defined: `minigcc.c:2188`

### strcmp (function) `strcmp(id_name, "va_end") == 0)`
- Defined: `minigcc.c:2191`

### strcmp (function) `strcmp(id_name, "va_arg") == 0)`
- Defined: `minigcc.c:2194`

### parse_sync_call (function) `static void parse_sync_call(const char *name)`
- Defined: `minigcc.c:2616`

### parse_va_start (function) `static void parse_va_start(void)`
- Defined: `minigcc.c:2651`

### parse_va_arg (function) `static void parse_va_arg(void)`
- Defined: `minigcc.c:2681`

### parse_va_end (function) `static void parse_va_end(void)`
- Defined: `minigcc.c:2728`

### lvalue_address (function) `static void lvalue_address(void)`
- Defined: `minigcc.c:2744`

### postfix_member (function) `static void postfix_member(int is_lvalue)`
- Defined: `minigcc.c:2801`

### handle_postfix (function) `static void handle_postfix(int is_lvalue)`
- Defined: `minigcc.c:2865`

### unary_expr (function) `static void unary_expr(void)`
- Defined: `minigcc.c:2972`

### multiplicative_expr (function) `static void multiplicative_expr(void)`
- Defined: `minigcc.c:2987`

### additive_expr (function) `static void additive_expr(void)`
- Defined: `minigcc.c:3075`

### shift_expr (function) `static void shift_expr(void)`
- Defined: `minigcc.c:3144`

### relational_expr (function) `static void relational_expr(void)`
- Defined: `minigcc.c:3171`

### equality_expr (function) `static void equality_expr(void)`
- Defined: `minigcc.c:3236`

### bitwise_and_expr (function) `static void bitwise_and_expr(void)`
- Defined: `minigcc.c:3287`

### bitwise_xor_expr (function) `static void bitwise_xor_expr(void)`
- Defined: `minigcc.c:3305`

### bitwise_or_expr (function) `static void bitwise_or_expr(void)`
- Defined: `minigcc.c:3323`

### logical_and_expr (function) `static void logical_and_expr(void)`
- Defined: `minigcc.c:3341`

### logical_or_expr (function) `static void logical_or_expr(void)`
- Defined: `minigcc.c:3362`

### conditional_expr (function) `static void conditional_expr(void)`
- Defined: `minigcc.c:3383`

### emit_compound_op (function) `static void emit_compound_op(int op, int asize, int is_uns)`
- Defined: `minigcc.c:3403`

### assignment_expr (function) `static void assignment_expr(void)`
- Defined: `minigcc.c:3459`

### comma_expr (function) `static void comma_expr(void)`
- Defined: `minigcc.c:3689`

### asm_scratch (function) `static const char *asm_scratch(int i)`
- Defined: `minigcc.c:3712`

### asm_home_text (function) `static void asm_home_text(int home, char *buf)`
- Defined: `minigcc.c:3721`

### asm_reg_sized (function) `static void asm_reg_sized(int home, int size, char *buf)`
- Defined: `minigcc.c:3731`

### asm_fixed_home (function) `static int asm_fixed_home(int c)`
- Defined: `minigcc.c:3773`

### asm_emit_template (function) `static void asm_emit_template(void)`
- Defined: `minigcc.c:3783`

### asm_parse_mem (function) `static void asm_parse_mem(int idx, int is_out)`
- Defined: `minigcc.c:3810`

### asm_emit_ss (function) `static void asm_emit_ss(const char *fmt, const char *a, const char *b)`
- Defined: `minigcc.c:3868`

### asm_parse_one (function) `static void asm_parse_one(int idx, int is_out)`
- Defined: `minigcc.c:3874`

### asm_assign_homes (function) `static void asm_assign_homes(void)`
- Defined: `minigcc.c:3942`

### asm_emit_all (function) `static void asm_emit_all(void)`
- Defined: `minigcc.c:4004`

### skip_gcc_attribute (function) `static int skip_gcc_attribute(void)`
- Defined: `minigcc.c:4052`

### strcmp (function) `strcmp(token, "returns_twice") == 0 ||
                       strcmp(token, "always_inline") == 0)`
- Defined: `minigcc.c:4072`

### parse_trailing_align (function) `static void parse_trailing_align(void)`
- Defined: `minigcc.c:4102`

### parse_asm_block (function) `static void parse_asm_block(void)`
- Defined: `minigcc.c:4109`

### statement (function) `static void statement(void)`
- Defined: `minigcc.c:4173`

### parse_function (function) `static void parse_function(const char *name, int ret_type)`
- Defined: `minigcc.c:4951`

### parse_enum (function) `static int parse_enum(void)`
- Defined: `minigcc.c:5168`

### skip_struct_fields (function) `static void skip_struct_fields(int fsize, int funs, int ffloat, int fstruct, int isunion)`
- Defined: `minigcc.c:5238`

### skip_struct (function) `static void skip_struct(int is_union)`
- Defined: `minigcc.c:5305`

### record_typedef_alias (function) `static void record_typedef_alias(const char *name, int size, int uns, int fnptr)`
- Defined: `minigcc.c:5394`

### skip_typedef (function) `static void skip_typedef(void)`
- Defined: `minigcc.c:5421`

### data_directive (function) `static const char *data_directive(int size)`
- Defined: `minigcc.c:5569`
- Doc: record_struct_typedef(last_name); } { int h = hash_name(last_name); s->next_hash = hash_table[h]; hash_table[h] = symbol

### emit_global_bss (function) `static void emit_global_bss(const char *name, int is_static, int size)`
- Defined: `minigcc.c:5577`
- Doc: } td_stash_valid = 0; match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(

### emit_global_data_head (function) `static void emit_global_data_head(const char *name, int is_static)`
- Defined: `minigcc.c:5589`

### parse_const_int (function) `static int parse_const_int(long long *out)`
- Defined: `minigcc.c:5602`
- Doc: Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro 

### intern_string (function) `static int intern_string(const char *text)`
- Defined: `minigcc.c:5625`
- Doc: } if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg 

### emit_global_initializer (function) `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...`
- Defined: `minigcc.c:5642`
- Doc: Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is 

### parse_program (function) `static void parse_program(void)`
- Defined: `minigcc.c:5709`

### emit_float_consts (function) `static void emit_float_consts(void)`
- Defined: `minigcc.c:5938`

### emit_string_pool (function) `static void emit_string_pool(void)`
- Defined: `minigcc.c:5948`

### main (function) `int main(int argc, char **argv)`
- Defined: `minigcc.c:5958`

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

### static_local_count (function)
- Defined: `minigccg2.s:71`

### sym_label (function)
- Defined: `minigccg2.s:75`

### build_static_label (function)
- Defined: `minigccg2.s:100`

### hash_table (function)
- Defined: `minigccg2.s:320`

### scope_stack_sym (function)
- Defined: `minigccg2.s:324`

### scope_stack_stk (function)
- Defined: `minigccg2.s:328`

### scope_depth (function)
- Defined: `minigccg2.s:332`

### stack_size (function)
- Defined: `minigccg2.s:336`

### label_counter (function)
- Defined: `minigccg2.s:340`

### function_has_return (function)
- Defined: `minigccg2.s:344`

### emit_enabled (function)
- Defined: `minigccg2.s:348`

### max_func_stack (function)
- Defined: `minigccg2.s:352`

### assign_size (function)
- Defined: `minigccg2.s:356`

### expr_pointed (function)
- Defined: `minigccg2.s:360`

### expr_fnptr (function)
- Defined: `minigccg2.s:364`

### subscript_base_fnptr (function)
- Defined: `minigccg2.s:368`

### current_elem_size (function)
- Defined: `minigccg2.s:372`

### current_elem_size2 (function)
- Defined: `minigccg2.s:376`

### current_elem_unsigned (function)
- Defined: `minigccg2.s:380`

### deref_w (function)
- Defined: `minigccg2.s:384`

### deref_u (function)
- Defined: `minigccg2.s:388`

### no_postfix_deref (function)
- Defined: `minigccg2.s:392`

### expr_type (function)
- Defined: `minigccg2.s:396`

### expr_unsigned (function)
- Defined: `minigccg2.s:400`

### static_flag (function)
- Defined: `minigccg2.s:404`

### unsigned_type (function)
- Defined: `minigccg2.s:408`

### const_flag (function)
- Defined: `minigccg2.s:412`

### extern_flag (function)
- Defined: `minigccg2.s:416`

### global_emit_deferred (function)
- Defined: `minigccg2.s:420`

### pending_align (function)
- Defined: `minigccg2.s:424`

### func_is_variadic (function)
- Defined: `minigccg2.s:428`

### vararg_nfixed (function)
- Defined: `minigccg2.s:432`

### vararg_save_off (function)
- Defined: `minigccg2.s:436`

### float_const_str (function)
- Defined: `minigccg2.s:440`

### float_const_is_float (function)
- Defined: `minigccg2.s:444`

### float_const_count (function)
- Defined: `minigccg2.s:448`

### switch_case_values (function)
- Defined: `minigccg2.s:452`

### switch_case_labels (function)
- Defined: `minigccg2.s:456`

### switch_case_count (function)
- Defined: `minigccg2.s:460`

### switch_has_default (function)
- Defined: `minigccg2.s:464`

### switch_default_label (function)
- Defined: `minigccg2.s:468`

### break_target (function)
- Defined: `minigccg2.s:472`

### break_target_valid (function)
- Defined: `minigccg2.s:476`

### continue_target (function)
- Defined: `minigccg2.s:480`

### continue_target_valid (function)
- Defined: `minigccg2.s:484`

### str_label_counter (function)
- Defined: `minigccg2.s:488`

### string_pool (function)
- Defined: `minigccg2.s:492`

### string_count (function)
- Defined: `minigccg2.s:496`

### ptr_init_name (function)
- Defined: `minigccg2.s:500`

### ptr_init_label (function)
- Defined: `minigccg2.s:504`

### ptr_init_count (function)
- Defined: `minigccg2.s:508`

### struct_total_size (function)
- Defined: `minigccg2.s:512`

### struct_member_names (function)
- Defined: `minigccg2.s:516`

### struct_member_offsets (function)
- Defined: `minigccg2.s:520`

### struct_member_sizes (function)
- Defined: `minigccg2.s:524`

### struct_member_elem_sizes (function)
- Defined: `minigccg2.s:528`

### struct_member_unsigned (function)
- Defined: `minigccg2.s:532`

### struct_member_is_float (function)
- Defined: `minigccg2.s:536`

### struct_member_is_fnptr (function)
- Defined: `minigccg2.s:540`

### struct_member_is_struct (function)
- Defined: `minigccg2.s:544`

### struct_member_count (function)
- Defined: `minigccg2.s:548`

### struct_typedef_names (function)
- Defined: `minigccg2.s:552`

### struct_typedef_count (function)
- Defined: `minigccg2.s:556`

### defined_func_names (function)
- Defined: `minigccg2.s:560`

### defined_func_unsigned (function)
- Defined: `minigccg2.s:564`

### defined_func_count (function)
- Defined: `minigccg2.s:568`

### if_nest (function)
- Defined: `minigccg2.s:572`

### if_taken (function)
- Defined: `minigccg2.s:576`

### if_depth (function)
- Defined: `minigccg2.s:580`

### macro_count (function)
- Defined: `minigccg2.s:585`

### save_parser_state (function)
- Defined: `minigccg2.s:589`

### restore_parser_state (function)
- Defined: `minigccg2.s:752`

### macros (function)
- Defined: `minigccg2.s:968`

### find_macro (function)
- Defined: `minigccg2.s:972`

### add_macro (function)
- Defined: `minigccg2.s:1035`

### macro_p (function)
- Defined: `minigccg2.s:1105`

### macro_ok (function)
- Defined: `minigccg2.s:1109`

### macro_undef_zero (function)
- Defined: `minigccg2.s:1113`

### macro_skipws (function)
- Defined: `minigccg2.s:1117`

### macro_hex_digit (function)
- Defined: `minigccg2.s:1158`

### macro_digit_val (function)
- Defined: `minigccg2.s:1256`

### macro_primary (function)
- Defined: `minigccg2.s:1377`

### macro_unary (function)
- Defined: `minigccg2.s:2580`

### macro_mul (function)
- Defined: `minigccg2.s:2708`

### macro_add (function)
- Defined: `minigccg2.s:2911`

### macro_shift (function)
- Defined: `minigccg2.s:3009`

### macro_cmp (function)
- Defined: `minigccg2.s:3162`

### macro_eq (function)
- Defined: `minigccg2.s:3383`

### macro_bitand (function)
- Defined: `minigccg2.s:3536`

### macro_bitxor (function)
- Defined: `minigccg2.s:3622`

### macro_bitor (function)
- Defined: `minigccg2.s:3687`

### macro_logand (function)
- Defined: `minigccg2.s:3773`

### macro_or_expr (function)
- Defined: `minigccg2.s:3870`

### macro_fold (function)
- Defined: `minigccg2.s:3967`

### error (function)
- Defined: `minigccg2.s:3993`

### pp_eval (function)
- Defined: `minigccg2.s:4044`

### safe_malloc (function)
- Defined: `minigccg2.s:4177`

### safe_strcpy (function)
- Defined: `minigccg2.s:4231`

### ident_copy (function)
- Defined: `minigccg2.s:4308`

### is_struct_typedef (function)
- Defined: `minigccg2.s:4390`

### record_struct_typedef (function)
- Defined: `minigccg2.s:4477`

### safe_strtoll (function)
- Defined: `minigccg2.s:4575`

### is_file_processed (function)
- Defined: `minigccg2.s:4690`

### mark_file_processed (function)
- Defined: `minigccg2.s:4750`

### get_dir_from_path (function)
- Defined: `minigccg2.s:4861`

### resolve_local_include (function)
- Defined: `minigccg2.s:5004`

### read_include_file (function)
- Defined: `minigccg2.s:5452`

### hash_name (function)
- Defined: `minigccg2.s:5658`

### hash_init (function)
- Defined: `minigccg2.s:5716`

### push_scope (function)
- Defined: `minigccg2.s:5755`

### pop_scope (function)
- Defined: `minigccg2.s:5807`

### truncate_symbols (function)
- Defined: `minigccg2.s:6003`

### my_isspace (function)
- Defined: `minigccg2.s:6156`

### my_isalpha (function)
- Defined: `minigccg2.s:6245`

### my_isdigit (function)
- Defined: `minigccg2.s:6314`

### my_isalnum (function)
- Defined: `minigccg2.s:6354`

### lex_fail (function)
- Defined: `minigccg2.s:6399`

### lex_kw_add (function)
- Defined: `minigccg2.s:6503`

### lex_init_keywords (function)
- Defined: `minigccg2.s:6666`

### lex_kw_lookup (function)
- Defined: `minigccg2.s:7179`

### lex_match_op (function)
- Defined: `minigccg2.s:7272`

### lex_hex_val (function)
- Defined: `minigccg2.s:7355`

### lex_is_int_suffix (function)
- Defined: `minigccg2.s:7477`

### lex_number (function)
- Defined: `minigccg2.s:7546`

### next_token (function)
- Defined: `minigccg2.s:9073`

### restart (function)
- Defined: `minigccg2.s:9077`

### match (function)
- Defined: `minigccg2.s:15167`

### emit (function)
- Defined: `minigccg2.s:15205`

### emit_i (function)
- Defined: `minigccg2.s:15316`

### emit_s (function)
- Defined: `minigccg2.s:15364`

### emit_is (function)
- Defined: `minigccg2.s:15412`

### emit_si (function)
- Defined: `minigccg2.s:15463`

### emit_asciz_body (function)
- Defined: `minigccg2.s:15514`

### emit_label (function)
- Defined: `minigccg2.s:15828`

### find_symbol (function)
- Defined: `minigccg2.s:15857`

### add_symbol (function)
- Defined: `minigccg2.s:15943`

### arg_reg (function)
- Defined: `minigccg2.s:16343`

### note_defined_func (function)
- Defined: `minigccg2.s:16419`

### is_defined_func (function)
- Defined: `minigccg2.s:16542`

### func_return_unsigned (function)
- Defined: `minigccg2.s:16601`

### parse_fnptr_declarator (function)
- Defined: `minigccg2.s:16666`

### peek_call_argc (function)
- Defined: `minigccg2.s:17037`

### emit_spill_reverse (function)
- Defined: `minigccg2.s:17340`

### parse_indirect_call (function)
- Defined: `minigccg2.s:17477`

### libc_global_name (function)
- Defined: `minigccg2.s:17825`

### typedef_name (function)
- Defined: `minigccg2.s:17953`

### typedef_size (function)
- Defined: `minigccg2.s:18120`

### typedef_uns (function)
- Defined: `minigccg2.s:18287`

### unary (function)
- Defined: `minigccg2.s:18363`

### parse_sync_call (function)
- Defined: `minigccg2.s:23176`

### parse_va_start (function)
- Defined: `minigccg2.s:23498`

### parse_va_arg (function)
- Defined: `minigccg2.s:23794`

### parse_va_end (function)
- Defined: `minigccg2.s:24282`

### lvalue_address (function)
- Defined: `minigccg2.s:24393`

### postfix_member (function)
- Defined: `minigccg2.s:24972`

### handle_postfix (function)
- Defined: `minigccg2.s:25589`

### unary_expr (function)
- Defined: `minigccg2.s:26234`

### multiplicative_expr (function)
- Defined: `minigccg2.s:26259`

### additive_expr (function)
- Defined: `minigccg2.s:27045`

### shift_expr (function)
- Defined: `minigccg2.s:27614`

### relational_expr (function)
- Defined: `minigccg2.s:27816`

### equality_expr (function)
- Defined: `minigccg2.s:28530`

### bitwise_and_expr (function)
- Defined: `minigccg2.s:29018`

### bitwise_xor_expr (function)
- Defined: `minigccg2.s:29145`

### bitwise_or_expr (function)
- Defined: `minigccg2.s:29272`

### logical_and_expr (function)
- Defined: `minigccg2.s:29399`

### logical_or_expr (function)
- Defined: `minigccg2.s:29564`

### conditional_expr (function)
- Defined: `minigccg2.s:29729`

### emit_compound_op (function)
- Defined: `minigccg2.s:29869`

### assignment_expr (function)
- Defined: `minigccg2.s:30462`

### comma_expr (function)
- Defined: `minigccg2.s:34261`

### asm_tmpl (function)
- Defined: `minigccg2.s:34301`

### asm_text (function)
- Defined: `minigccg2.s:34305`

### asm_mem (function)
- Defined: `minigccg2.s:34309`

### asm_is_out (function)
- Defined: `minigccg2.s:34313`

### asm_home (function)
- Defined: `minigccg2.s:34317`

### asm_slot (function)
- Defined: `minigccg2.s:34321`

### asm_size (function)
- Defined: `minigccg2.s:34325`

### asm_nops (function)
- Defined: `minigccg2.s:34329`

### asm_nslots (function)
- Defined: `minigccg2.s:34333`

### asm_unique (function)
- Defined: `minigccg2.s:34337`

### asm_scratch (function)
- Defined: `minigccg2.s:34341`

### asm_home_text (function)
- Defined: `minigccg2.s:34417`

### asm_reg_sized (function)
- Defined: `minigccg2.s:34632`

### asm_fixed_home (function)
- Defined: `minigccg2.s:35612`

### asm_emit_template (function)
- Defined: `minigccg2.s:35702`

### asm_parse_mem (function)
- Defined: `minigccg2.s:35938`

### asm_emit_ss (function)
- Defined: `minigccg2.s:36531`

### asm_parse_one (function)
- Defined: `minigccg2.s:36582`

### asm_assign_homes (function)
- Defined: `minigccg2.s:37653`

### asm_emit_all (function)
- Defined: `minigccg2.s:38279`

### skip_gcc_attribute (function)
- Defined: `minigccg2.s:38855`

### parse_trailing_align (function)
- Defined: `minigccg2.s:39330`

### parse_asm_block (function)
- Defined: `minigccg2.s:39372`

### statement (function)
- Defined: `minigccg2.s:39937`

### restart_typedef (function)
- Defined: `minigccg2.s:43883`

### restart_int (function)
- Defined: `minigccg2.s:45108`

### parse_function (function)
- Defined: `minigccg2.s:46662`

### parse_enum (function)
- Defined: `minigccg2.s:48821`

### skip_struct_fields (function)
- Defined: `minigccg2.s:49409`

### skip_struct (function)
- Defined: `minigccg2.s:49995`

### td_stash_valid (function)
- Defined: `minigccg2.s:50930`

### td_stash_size (function)
- Defined: `minigccg2.s:50934`

### td_stash_uns (function)
- Defined: `minigccg2.s:50938`

### td_stash_fnptr (function)
- Defined: `minigccg2.s:50942`

### record_typedef_alias (function)
- Defined: `minigccg2.s:50946`

### skip_typedef (function)
- Defined: `minigccg2.s:51143`

### data_directive (function)
- Defined: `minigccg2.s:52331`

### emit_global_bss (function)
- Defined: `minigccg2.s:52381`

### emit_global_data_head (function)
- Defined: `minigccg2.s:52491`

### parse_const_int (function)
- Defined: `minigccg2.s:52566`

### intern_string (function)
- Defined: `minigccg2.s:52729`

### emit_global_initializer (function)
- Defined: `minigccg2.s:52822`

### parse_program (function)
- Defined: `minigccg2.s:53533`

### emit_float_consts (function)
- Defined: `minigccg2.s:56071`

### emit_string_pool (function)
- Defined: `minigccg2.s:56168`

### main (function)
- Defined: `minigccg2.s:56269`

### _start (function)
- Defined: `minigccg2.s:61452`

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

### static_local_count (function)
- Defined: `minigccg3.s:71`

### sym_label (function)
- Defined: `minigccg3.s:75`

### build_static_label (function)
- Defined: `minigccg3.s:100`

### hash_table (function)
- Defined: `minigccg3.s:320`

### scope_stack_sym (function)
- Defined: `minigccg3.s:324`

### scope_stack_stk (function)
- Defined: `minigccg3.s:328`

### scope_depth (function)
- Defined: `minigccg3.s:332`

### stack_size (function)
- Defined: `minigccg3.s:336`

### label_counter (function)
- Defined: `minigccg3.s:340`

### function_has_return (function)
- Defined: `minigccg3.s:344`

### emit_enabled (function)
- Defined: `minigccg3.s:348`

### max_func_stack (function)
- Defined: `minigccg3.s:352`

### assign_size (function)
- Defined: `minigccg3.s:356`

### expr_pointed (function)
- Defined: `minigccg3.s:360`

### expr_fnptr (function)
- Defined: `minigccg3.s:364`

### subscript_base_fnptr (function)
- Defined: `minigccg3.s:368`

### current_elem_size (function)
- Defined: `minigccg3.s:372`

### current_elem_size2 (function)
- Defined: `minigccg3.s:376`

### current_elem_unsigned (function)
- Defined: `minigccg3.s:380`

### deref_w (function)
- Defined: `minigccg3.s:384`

### deref_u (function)
- Defined: `minigccg3.s:388`

### no_postfix_deref (function)
- Defined: `minigccg3.s:392`

### expr_type (function)
- Defined: `minigccg3.s:396`

### expr_unsigned (function)
- Defined: `minigccg3.s:400`

### static_flag (function)
- Defined: `minigccg3.s:404`

### unsigned_type (function)
- Defined: `minigccg3.s:408`

### const_flag (function)
- Defined: `minigccg3.s:412`

### extern_flag (function)
- Defined: `minigccg3.s:416`

### global_emit_deferred (function)
- Defined: `minigccg3.s:420`

### pending_align (function)
- Defined: `minigccg3.s:424`

### func_is_variadic (function)
- Defined: `minigccg3.s:428`

### vararg_nfixed (function)
- Defined: `minigccg3.s:432`

### vararg_save_off (function)
- Defined: `minigccg3.s:436`

### float_const_str (function)
- Defined: `minigccg3.s:440`

### float_const_is_float (function)
- Defined: `minigccg3.s:444`

### float_const_count (function)
- Defined: `minigccg3.s:448`

### switch_case_values (function)
- Defined: `minigccg3.s:452`

### switch_case_labels (function)
- Defined: `minigccg3.s:456`

### switch_case_count (function)
- Defined: `minigccg3.s:460`

### switch_has_default (function)
- Defined: `minigccg3.s:464`

### switch_default_label (function)
- Defined: `minigccg3.s:468`

### break_target (function)
- Defined: `minigccg3.s:472`

### break_target_valid (function)
- Defined: `minigccg3.s:476`

### continue_target (function)
- Defined: `minigccg3.s:480`

### continue_target_valid (function)
- Defined: `minigccg3.s:484`

### str_label_counter (function)
- Defined: `minigccg3.s:488`

### string_pool (function)
- Defined: `minigccg3.s:492`

### string_count (function)
- Defined: `minigccg3.s:496`

### ptr_init_name (function)
- Defined: `minigccg3.s:500`

### ptr_init_label (function)
- Defined: `minigccg3.s:504`

### ptr_init_count (function)
- Defined: `minigccg3.s:508`

### struct_total_size (function)
- Defined: `minigccg3.s:512`

### struct_member_names (function)
- Defined: `minigccg3.s:516`

### struct_member_offsets (function)
- Defined: `minigccg3.s:520`

### struct_member_sizes (function)
- Defined: `minigccg3.s:524`

### struct_member_elem_sizes (function)
- Defined: `minigccg3.s:528`

### struct_member_unsigned (function)
- Defined: `minigccg3.s:532`

### struct_member_is_float (function)
- Defined: `minigccg3.s:536`

### struct_member_is_fnptr (function)
- Defined: `minigccg3.s:540`

### struct_member_is_struct (function)
- Defined: `minigccg3.s:544`

### struct_member_count (function)
- Defined: `minigccg3.s:548`

### struct_typedef_names (function)
- Defined: `minigccg3.s:552`

### struct_typedef_count (function)
- Defined: `minigccg3.s:556`

### defined_func_names (function)
- Defined: `minigccg3.s:560`

### defined_func_unsigned (function)
- Defined: `minigccg3.s:564`

### defined_func_count (function)
- Defined: `minigccg3.s:568`

### if_nest (function)
- Defined: `minigccg3.s:572`

### if_taken (function)
- Defined: `minigccg3.s:576`

### if_depth (function)
- Defined: `minigccg3.s:580`

### macro_count (function)
- Defined: `minigccg3.s:585`

### save_parser_state (function)
- Defined: `minigccg3.s:589`

### restore_parser_state (function)
- Defined: `minigccg3.s:752`

### macros (function)
- Defined: `minigccg3.s:968`

### find_macro (function)
- Defined: `minigccg3.s:972`

### add_macro (function)
- Defined: `minigccg3.s:1035`

### macro_p (function)
- Defined: `minigccg3.s:1105`

### macro_ok (function)
- Defined: `minigccg3.s:1109`

### macro_undef_zero (function)
- Defined: `minigccg3.s:1113`

### macro_skipws (function)
- Defined: `minigccg3.s:1117`

### macro_hex_digit (function)
- Defined: `minigccg3.s:1158`

### macro_digit_val (function)
- Defined: `minigccg3.s:1256`

### macro_primary (function)
- Defined: `minigccg3.s:1377`

### macro_unary (function)
- Defined: `minigccg3.s:2580`

### macro_mul (function)
- Defined: `minigccg3.s:2708`

### macro_add (function)
- Defined: `minigccg3.s:2911`

### macro_shift (function)
- Defined: `minigccg3.s:3009`

### macro_cmp (function)
- Defined: `minigccg3.s:3162`

### macro_eq (function)
- Defined: `minigccg3.s:3383`

### macro_bitand (function)
- Defined: `minigccg3.s:3536`

### macro_bitxor (function)
- Defined: `minigccg3.s:3622`

### macro_bitor (function)
- Defined: `minigccg3.s:3687`

### macro_logand (function)
- Defined: `minigccg3.s:3773`

### macro_or_expr (function)
- Defined: `minigccg3.s:3870`

### macro_fold (function)
- Defined: `minigccg3.s:3967`

### error (function)
- Defined: `minigccg3.s:3993`

### pp_eval (function)
- Defined: `minigccg3.s:4044`

### safe_malloc (function)
- Defined: `minigccg3.s:4177`

### safe_strcpy (function)
- Defined: `minigccg3.s:4231`

### ident_copy (function)
- Defined: `minigccg3.s:4308`

### is_struct_typedef (function)
- Defined: `minigccg3.s:4390`

### record_struct_typedef (function)
- Defined: `minigccg3.s:4477`

### safe_strtoll (function)
- Defined: `minigccg3.s:4575`

### is_file_processed (function)
- Defined: `minigccg3.s:4690`

### mark_file_processed (function)
- Defined: `minigccg3.s:4750`

### get_dir_from_path (function)
- Defined: `minigccg3.s:4861`

### resolve_local_include (function)
- Defined: `minigccg3.s:5004`

### read_include_file (function)
- Defined: `minigccg3.s:5452`

### hash_name (function)
- Defined: `minigccg3.s:5658`

### hash_init (function)
- Defined: `minigccg3.s:5716`

### push_scope (function)
- Defined: `minigccg3.s:5755`

### pop_scope (function)
- Defined: `minigccg3.s:5807`

### truncate_symbols (function)
- Defined: `minigccg3.s:6003`

### my_isspace (function)
- Defined: `minigccg3.s:6156`

### my_isalpha (function)
- Defined: `minigccg3.s:6245`

### my_isdigit (function)
- Defined: `minigccg3.s:6314`

### my_isalnum (function)
- Defined: `minigccg3.s:6354`

### lex_fail (function)
- Defined: `minigccg3.s:6399`

### lex_kw_add (function)
- Defined: `minigccg3.s:6503`

### lex_init_keywords (function)
- Defined: `minigccg3.s:6666`

### lex_kw_lookup (function)
- Defined: `minigccg3.s:7179`

### lex_match_op (function)
- Defined: `minigccg3.s:7272`

### lex_hex_val (function)
- Defined: `minigccg3.s:7355`

### lex_is_int_suffix (function)
- Defined: `minigccg3.s:7477`

### lex_number (function)
- Defined: `minigccg3.s:7546`

### next_token (function)
- Defined: `minigccg3.s:9073`

### restart (function)
- Defined: `minigccg3.s:9077`

### match (function)
- Defined: `minigccg3.s:15167`

### emit (function)
- Defined: `minigccg3.s:15205`

### emit_i (function)
- Defined: `minigccg3.s:15316`

### emit_s (function)
- Defined: `minigccg3.s:15364`

### emit_is (function)
- Defined: `minigccg3.s:15412`

### emit_si (function)
- Defined: `minigccg3.s:15463`

### emit_asciz_body (function)
- Defined: `minigccg3.s:15514`

### emit_label (function)
- Defined: `minigccg3.s:15828`

### find_symbol (function)
- Defined: `minigccg3.s:15857`

### add_symbol (function)
- Defined: `minigccg3.s:15943`

### arg_reg (function)
- Defined: `minigccg3.s:16343`

### note_defined_func (function)
- Defined: `minigccg3.s:16419`

### is_defined_func (function)
- Defined: `minigccg3.s:16542`

### func_return_unsigned (function)
- Defined: `minigccg3.s:16601`

### parse_fnptr_declarator (function)
- Defined: `minigccg3.s:16666`

### peek_call_argc (function)
- Defined: `minigccg3.s:17037`

### emit_spill_reverse (function)
- Defined: `minigccg3.s:17340`

### parse_indirect_call (function)
- Defined: `minigccg3.s:17477`

### libc_global_name (function)
- Defined: `minigccg3.s:17825`

### typedef_name (function)
- Defined: `minigccg3.s:17953`

### typedef_size (function)
- Defined: `minigccg3.s:18120`

### typedef_uns (function)
- Defined: `minigccg3.s:18287`

### unary (function)
- Defined: `minigccg3.s:18363`

### parse_sync_call (function)
- Defined: `minigccg3.s:23176`

### parse_va_start (function)
- Defined: `minigccg3.s:23498`

### parse_va_arg (function)
- Defined: `minigccg3.s:23794`

### parse_va_end (function)
- Defined: `minigccg3.s:24282`

### lvalue_address (function)
- Defined: `minigccg3.s:24393`

### postfix_member (function)
- Defined: `minigccg3.s:24972`

### handle_postfix (function)
- Defined: `minigccg3.s:25589`

### unary_expr (function)
- Defined: `minigccg3.s:26234`

### multiplicative_expr (function)
- Defined: `minigccg3.s:26259`

### additive_expr (function)
- Defined: `minigccg3.s:27045`

### shift_expr (function)
- Defined: `minigccg3.s:27614`

### relational_expr (function)
- Defined: `minigccg3.s:27816`

### equality_expr (function)
- Defined: `minigccg3.s:28530`

### bitwise_and_expr (function)
- Defined: `minigccg3.s:29018`

### bitwise_xor_expr (function)
- Defined: `minigccg3.s:29145`

### bitwise_or_expr (function)
- Defined: `minigccg3.s:29272`

### logical_and_expr (function)
- Defined: `minigccg3.s:29399`

### logical_or_expr (function)
- Defined: `minigccg3.s:29564`

### conditional_expr (function)
- Defined: `minigccg3.s:29729`

### emit_compound_op (function)
- Defined: `minigccg3.s:29869`

### assignment_expr (function)
- Defined: `minigccg3.s:30462`

### comma_expr (function)
- Defined: `minigccg3.s:34261`

### asm_tmpl (function)
- Defined: `minigccg3.s:34301`

### asm_text (function)
- Defined: `minigccg3.s:34305`

### asm_mem (function)
- Defined: `minigccg3.s:34309`

### asm_is_out (function)
- Defined: `minigccg3.s:34313`

### asm_home (function)
- Defined: `minigccg3.s:34317`

### asm_slot (function)
- Defined: `minigccg3.s:34321`

### asm_size (function)
- Defined: `minigccg3.s:34325`

### asm_nops (function)
- Defined: `minigccg3.s:34329`

### asm_nslots (function)
- Defined: `minigccg3.s:34333`

### asm_unique (function)
- Defined: `minigccg3.s:34337`

### asm_scratch (function)
- Defined: `minigccg3.s:34341`

### asm_home_text (function)
- Defined: `minigccg3.s:34417`

### asm_reg_sized (function)
- Defined: `minigccg3.s:34632`

### asm_fixed_home (function)
- Defined: `minigccg3.s:35612`

### asm_emit_template (function)
- Defined: `minigccg3.s:35702`

### asm_parse_mem (function)
- Defined: `minigccg3.s:35938`

### asm_emit_ss (function)
- Defined: `minigccg3.s:36531`

### asm_parse_one (function)
- Defined: `minigccg3.s:36582`

### asm_assign_homes (function)
- Defined: `minigccg3.s:37653`

### asm_emit_all (function)
- Defined: `minigccg3.s:38279`

### skip_gcc_attribute (function)
- Defined: `minigccg3.s:38855`

### parse_trailing_align (function)
- Defined: `minigccg3.s:39330`

### parse_asm_block (function)
- Defined: `minigccg3.s:39372`

### statement (function)
- Defined: `minigccg3.s:39937`

### restart_typedef (function)
- Defined: `minigccg3.s:43883`

### restart_int (function)
- Defined: `minigccg3.s:45108`

### parse_function (function)
- Defined: `minigccg3.s:46662`

### parse_enum (function)
- Defined: `minigccg3.s:48821`

### skip_struct_fields (function)
- Defined: `minigccg3.s:49409`

### skip_struct (function)
- Defined: `minigccg3.s:49995`

### td_stash_valid (function)
- Defined: `minigccg3.s:50930`

### td_stash_size (function)
- Defined: `minigccg3.s:50934`

### td_stash_uns (function)
- Defined: `minigccg3.s:50938`

### td_stash_fnptr (function)
- Defined: `minigccg3.s:50942`

### record_typedef_alias (function)
- Defined: `minigccg3.s:50946`

### skip_typedef (function)
- Defined: `minigccg3.s:51143`

### data_directive (function)
- Defined: `minigccg3.s:52331`

### emit_global_bss (function)
- Defined: `minigccg3.s:52381`

### emit_global_data_head (function)
- Defined: `minigccg3.s:52491`

### parse_const_int (function)
- Defined: `minigccg3.s:52566`

### intern_string (function)
- Defined: `minigccg3.s:52729`

### emit_global_initializer (function)
- Defined: `minigccg3.s:52822`

### parse_program (function)
- Defined: `minigccg3.s:53533`

### emit_float_consts (function)
- Defined: `minigccg3.s:56071`

### emit_string_pool (function)
- Defined: `minigccg3.s:56168`

### main (function)
- Defined: `minigccg3.s:56269`

### _start (function)
- Defined: `minigccg3.s:61452`

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

### static_local_count (function)
- Defined: `minigccg4.s:71`

### sym_label (function)
- Defined: `minigccg4.s:75`

### build_static_label (function)
- Defined: `minigccg4.s:100`

### hash_table (function)
- Defined: `minigccg4.s:320`

### scope_stack_sym (function)
- Defined: `minigccg4.s:324`

### scope_stack_stk (function)
- Defined: `minigccg4.s:328`

### scope_depth (function)
- Defined: `minigccg4.s:332`

### stack_size (function)
- Defined: `minigccg4.s:336`

### label_counter (function)
- Defined: `minigccg4.s:340`

### function_has_return (function)
- Defined: `minigccg4.s:344`

### emit_enabled (function)
- Defined: `minigccg4.s:348`

### max_func_stack (function)
- Defined: `minigccg4.s:352`

### assign_size (function)
- Defined: `minigccg4.s:356`

### expr_pointed (function)
- Defined: `minigccg4.s:360`

### expr_fnptr (function)
- Defined: `minigccg4.s:364`

### subscript_base_fnptr (function)
- Defined: `minigccg4.s:368`

### current_elem_size (function)
- Defined: `minigccg4.s:372`

### current_elem_size2 (function)
- Defined: `minigccg4.s:376`

### current_elem_unsigned (function)
- Defined: `minigccg4.s:380`

### deref_w (function)
- Defined: `minigccg4.s:384`

### deref_u (function)
- Defined: `minigccg4.s:388`

### no_postfix_deref (function)
- Defined: `minigccg4.s:392`

### expr_type (function)
- Defined: `minigccg4.s:396`

### expr_unsigned (function)
- Defined: `minigccg4.s:400`

### static_flag (function)
- Defined: `minigccg4.s:404`

### unsigned_type (function)
- Defined: `minigccg4.s:408`

### const_flag (function)
- Defined: `minigccg4.s:412`

### extern_flag (function)
- Defined: `minigccg4.s:416`

### global_emit_deferred (function)
- Defined: `minigccg4.s:420`

### pending_align (function)
- Defined: `minigccg4.s:424`

### func_is_variadic (function)
- Defined: `minigccg4.s:428`

### vararg_nfixed (function)
- Defined: `minigccg4.s:432`

### vararg_save_off (function)
- Defined: `minigccg4.s:436`

### float_const_str (function)
- Defined: `minigccg4.s:440`

### float_const_is_float (function)
- Defined: `minigccg4.s:444`

### float_const_count (function)
- Defined: `minigccg4.s:448`

### switch_case_values (function)
- Defined: `minigccg4.s:452`

### switch_case_labels (function)
- Defined: `minigccg4.s:456`

### switch_case_count (function)
- Defined: `minigccg4.s:460`

### switch_has_default (function)
- Defined: `minigccg4.s:464`

### switch_default_label (function)
- Defined: `minigccg4.s:468`

### break_target (function)
- Defined: `minigccg4.s:472`

### break_target_valid (function)
- Defined: `minigccg4.s:476`

### continue_target (function)
- Defined: `minigccg4.s:480`

### continue_target_valid (function)
- Defined: `minigccg4.s:484`

### str_label_counter (function)
- Defined: `minigccg4.s:488`

### string_pool (function)
- Defined: `minigccg4.s:492`

### string_count (function)
- Defined: `minigccg4.s:496`

### ptr_init_name (function)
- Defined: `minigccg4.s:500`

### ptr_init_label (function)
- Defined: `minigccg4.s:504`

### ptr_init_count (function)
- Defined: `minigccg4.s:508`

### struct_total_size (function)
- Defined: `minigccg4.s:512`

### struct_member_names (function)
- Defined: `minigccg4.s:516`

### struct_member_offsets (function)
- Defined: `minigccg4.s:520`

### struct_member_sizes (function)
- Defined: `minigccg4.s:524`

### struct_member_elem_sizes (function)
- Defined: `minigccg4.s:528`

### struct_member_unsigned (function)
- Defined: `minigccg4.s:532`

### struct_member_is_float (function)
- Defined: `minigccg4.s:536`

### struct_member_is_fnptr (function)
- Defined: `minigccg4.s:540`

### struct_member_is_struct (function)
- Defined: `minigccg4.s:544`

### struct_member_count (function)
- Defined: `minigccg4.s:548`

### struct_typedef_names (function)
- Defined: `minigccg4.s:552`

### struct_typedef_count (function)
- Defined: `minigccg4.s:556`

### defined_func_names (function)
- Defined: `minigccg4.s:560`

### defined_func_unsigned (function)
- Defined: `minigccg4.s:564`

### defined_func_count (function)
- Defined: `minigccg4.s:568`

### if_nest (function)
- Defined: `minigccg4.s:572`

### if_taken (function)
- Defined: `minigccg4.s:576`

### if_depth (function)
- Defined: `minigccg4.s:580`

### macro_count (function)
- Defined: `minigccg4.s:585`

### save_parser_state (function)
- Defined: `minigccg4.s:589`

### restore_parser_state (function)
- Defined: `minigccg4.s:752`

### macros (function)
- Defined: `minigccg4.s:968`

### find_macro (function)
- Defined: `minigccg4.s:972`

### add_macro (function)
- Defined: `minigccg4.s:1035`

### macro_p (function)
- Defined: `minigccg4.s:1105`

### macro_ok (function)
- Defined: `minigccg4.s:1109`

### macro_undef_zero (function)
- Defined: `minigccg4.s:1113`

### macro_skipws (function)
- Defined: `minigccg4.s:1117`

### macro_hex_digit (function)
- Defined: `minigccg4.s:1158`

### macro_digit_val (function)
- Defined: `minigccg4.s:1256`

### macro_primary (function)
- Defined: `minigccg4.s:1377`

### macro_unary (function)
- Defined: `minigccg4.s:2580`

### macro_mul (function)
- Defined: `minigccg4.s:2708`

### macro_add (function)
- Defined: `minigccg4.s:2911`

### macro_shift (function)
- Defined: `minigccg4.s:3009`

### macro_cmp (function)
- Defined: `minigccg4.s:3162`

### macro_eq (function)
- Defined: `minigccg4.s:3383`

### macro_bitand (function)
- Defined: `minigccg4.s:3536`

### macro_bitxor (function)
- Defined: `minigccg4.s:3622`

### macro_bitor (function)
- Defined: `minigccg4.s:3687`

### macro_logand (function)
- Defined: `minigccg4.s:3773`

### macro_or_expr (function)
- Defined: `minigccg4.s:3870`

### macro_fold (function)
- Defined: `minigccg4.s:3967`

### error (function)
- Defined: `minigccg4.s:3993`

### pp_eval (function)
- Defined: `minigccg4.s:4044`

### safe_malloc (function)
- Defined: `minigccg4.s:4177`

### safe_strcpy (function)
- Defined: `minigccg4.s:4231`

### ident_copy (function)
- Defined: `minigccg4.s:4308`

### is_struct_typedef (function)
- Defined: `minigccg4.s:4390`

### record_struct_typedef (function)
- Defined: `minigccg4.s:4477`

### safe_strtoll (function)
- Defined: `minigccg4.s:4575`

### is_file_processed (function)
- Defined: `minigccg4.s:4690`

### mark_file_processed (function)
- Defined: `minigccg4.s:4750`

### get_dir_from_path (function)
- Defined: `minigccg4.s:4861`

### resolve_local_include (function)
- Defined: `minigccg4.s:5004`

### read_include_file (function)
- Defined: `minigccg4.s:5452`

### hash_name (function)
- Defined: `minigccg4.s:5658`

### hash_init (function)
- Defined: `minigccg4.s:5716`

### push_scope (function)
- Defined: `minigccg4.s:5755`

### pop_scope (function)
- Defined: `minigccg4.s:5807`

### truncate_symbols (function)
- Defined: `minigccg4.s:6003`

### my_isspace (function)
- Defined: `minigccg4.s:6156`

### my_isalpha (function)
- Defined: `minigccg4.s:6245`

### my_isdigit (function)
- Defined: `minigccg4.s:6314`

### my_isalnum (function)
- Defined: `minigccg4.s:6354`

### lex_fail (function)
- Defined: `minigccg4.s:6399`

### lex_kw_add (function)
- Defined: `minigccg4.s:6503`

### lex_init_keywords (function)
- Defined: `minigccg4.s:6666`

### lex_kw_lookup (function)
- Defined: `minigccg4.s:7179`

### lex_match_op (function)
- Defined: `minigccg4.s:7272`

### lex_hex_val (function)
- Defined: `minigccg4.s:7355`

### lex_is_int_suffix (function)
- Defined: `minigccg4.s:7477`

### lex_number (function)
- Defined: `minigccg4.s:7546`

### next_token (function)
- Defined: `minigccg4.s:9073`

### restart (function)
- Defined: `minigccg4.s:9077`

### match (function)
- Defined: `minigccg4.s:15167`

### emit (function)
- Defined: `minigccg4.s:15205`

### emit_i (function)
- Defined: `minigccg4.s:15316`

### emit_s (function)
- Defined: `minigccg4.s:15364`

### emit_is (function)
- Defined: `minigccg4.s:15412`

### emit_si (function)
- Defined: `minigccg4.s:15463`

### emit_asciz_body (function)
- Defined: `minigccg4.s:15514`

### emit_label (function)
- Defined: `minigccg4.s:15828`

### find_symbol (function)
- Defined: `minigccg4.s:15857`

### add_symbol (function)
- Defined: `minigccg4.s:15943`

### arg_reg (function)
- Defined: `minigccg4.s:16343`

### note_defined_func (function)
- Defined: `minigccg4.s:16419`

### is_defined_func (function)
- Defined: `minigccg4.s:16542`

### func_return_unsigned (function)
- Defined: `minigccg4.s:16601`

### parse_fnptr_declarator (function)
- Defined: `minigccg4.s:16666`

### peek_call_argc (function)
- Defined: `minigccg4.s:17037`

### emit_spill_reverse (function)
- Defined: `minigccg4.s:17340`

### parse_indirect_call (function)
- Defined: `minigccg4.s:17477`

### libc_global_name (function)
- Defined: `minigccg4.s:17825`

### typedef_name (function)
- Defined: `minigccg4.s:17953`

### typedef_size (function)
- Defined: `minigccg4.s:18120`

### typedef_uns (function)
- Defined: `minigccg4.s:18287`

### unary (function)
- Defined: `minigccg4.s:18363`

### parse_sync_call (function)
- Defined: `minigccg4.s:23176`

### parse_va_start (function)
- Defined: `minigccg4.s:23498`

### parse_va_arg (function)
- Defined: `minigccg4.s:23794`

### parse_va_end (function)
- Defined: `minigccg4.s:24282`

### lvalue_address (function)
- Defined: `minigccg4.s:24393`

### postfix_member (function)
- Defined: `minigccg4.s:24972`

### handle_postfix (function)
- Defined: `minigccg4.s:25589`

### unary_expr (function)
- Defined: `minigccg4.s:26234`

### multiplicative_expr (function)
- Defined: `minigccg4.s:26259`

### additive_expr (function)
- Defined: `minigccg4.s:27045`

### shift_expr (function)
- Defined: `minigccg4.s:27614`

### relational_expr (function)
- Defined: `minigccg4.s:27816`

### equality_expr (function)
- Defined: `minigccg4.s:28530`

### bitwise_and_expr (function)
- Defined: `minigccg4.s:29018`

### bitwise_xor_expr (function)
- Defined: `minigccg4.s:29145`

### bitwise_or_expr (function)
- Defined: `minigccg4.s:29272`

### logical_and_expr (function)
- Defined: `minigccg4.s:29399`

### logical_or_expr (function)
- Defined: `minigccg4.s:29564`

### conditional_expr (function)
- Defined: `minigccg4.s:29729`

### emit_compound_op (function)
- Defined: `minigccg4.s:29869`

### assignment_expr (function)
- Defined: `minigccg4.s:30462`

### comma_expr (function)
- Defined: `minigccg4.s:34261`

### asm_tmpl (function)
- Defined: `minigccg4.s:34301`

### asm_text (function)
- Defined: `minigccg4.s:34305`

### asm_mem (function)
- Defined: `minigccg4.s:34309`

### asm_is_out (function)
- Defined: `minigccg4.s:34313`

### asm_home (function)
- Defined: `minigccg4.s:34317`

### asm_slot (function)
- Defined: `minigccg4.s:34321`

### asm_size (function)
- Defined: `minigccg4.s:34325`

### asm_nops (function)
- Defined: `minigccg4.s:34329`

### asm_nslots (function)
- Defined: `minigccg4.s:34333`

### asm_unique (function)
- Defined: `minigccg4.s:34337`

### asm_scratch (function)
- Defined: `minigccg4.s:34341`

### asm_home_text (function)
- Defined: `minigccg4.s:34417`

### asm_reg_sized (function)
- Defined: `minigccg4.s:34632`

### asm_fixed_home (function)
- Defined: `minigccg4.s:35612`

### asm_emit_template (function)
- Defined: `minigccg4.s:35702`

### asm_parse_mem (function)
- Defined: `minigccg4.s:35938`

### asm_emit_ss (function)
- Defined: `minigccg4.s:36531`

### asm_parse_one (function)
- Defined: `minigccg4.s:36582`

### asm_assign_homes (function)
- Defined: `minigccg4.s:37653`

### asm_emit_all (function)
- Defined: `minigccg4.s:38279`

### skip_gcc_attribute (function)
- Defined: `minigccg4.s:38855`

### parse_trailing_align (function)
- Defined: `minigccg4.s:39330`

### parse_asm_block (function)
- Defined: `minigccg4.s:39372`

### statement (function)
- Defined: `minigccg4.s:39937`

### restart_typedef (function)
- Defined: `minigccg4.s:43883`

### restart_int (function)
- Defined: `minigccg4.s:45108`

### parse_function (function)
- Defined: `minigccg4.s:46662`

### parse_enum (function)
- Defined: `minigccg4.s:48821`

### skip_struct_fields (function)
- Defined: `minigccg4.s:49409`

### skip_struct (function)
- Defined: `minigccg4.s:49995`

### td_stash_valid (function)
- Defined: `minigccg4.s:50930`

### td_stash_size (function)
- Defined: `minigccg4.s:50934`

### td_stash_uns (function)
- Defined: `minigccg4.s:50938`

### td_stash_fnptr (function)
- Defined: `minigccg4.s:50942`

### record_typedef_alias (function)
- Defined: `minigccg4.s:50946`

### skip_typedef (function)
- Defined: `minigccg4.s:51143`

### data_directive (function)
- Defined: `minigccg4.s:52331`

### emit_global_bss (function)
- Defined: `minigccg4.s:52381`

### emit_global_data_head (function)
- Defined: `minigccg4.s:52491`

### parse_const_int (function)
- Defined: `minigccg4.s:52566`

### intern_string (function)
- Defined: `minigccg4.s:52729`

### emit_global_initializer (function)
- Defined: `minigccg4.s:52822`

### parse_program (function)
- Defined: `minigccg4.s:53533`

### emit_float_consts (function)
- Defined: `minigccg4.s:56071`

### emit_string_pool (function)
- Defined: `minigccg4.s:56168`

### main (function)
- Defined: `minigccg4.s:56269`

### _start (function)
- Defined: `minigccg4.s:61452`

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
- Defined: `test_for.c:3`

## test_include.c

### main (function) `int main(void)`
- Defined: `test_include.c:4`
- Depends on: `my_library.h`

### greet (function) `void greet(void)`
- Defined: `test_include.c:10`
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
- Defined: `tests/neg_asm_ds.c:8`

## tests/neg_attr.c

### main (function) `int main(void)`
- Defined: `tests/neg_attr.c:3`

## tests/neg_comment.c

### main (function) `int main(void)`
- Defined: `tests/neg_comment.c:1`

## tests/neg_error.c

### main (function) `int main(void)`
- Defined: `tests/neg_error.c:2`
- Doc: error stop here

## tests/neg_float.c

### main (function) `int main(void)`
- Defined: `tests/neg_float.c:1`

## tests/neg_fnptr.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr.c:3`

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr.c:7`

## tests/neg_fnptr_call.c

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_call.c:3`

## tests/neg_fnptr_cmp.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr_cmp.c:3`

### mul2 (function) `long mul2(long a, long b)`
- Defined: `tests/neg_fnptr_cmp.c:7`

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_cmp.c:11`

## tests/neg_fnptr_cmp0.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr_cmp0.c:3`

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_cmp0.c:7`

## tests/neg_fnptr_globalinit.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr_globalinit.c:1`

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_globalinit.c:7`

## tests/neg_fnptr_tern.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/neg_fnptr_tern.c:3`

### main (function) `int main(void)`
- Defined: `tests/neg_fnptr_tern.c:7`

## tests/neg_funmacro.c

### main (function) `int main(void)`
- Defined: `tests/neg_funmacro.c:3`
- Doc: include <stdio.h> define ADD(a, b) ((a) + (b))

## tests/neg_hex.c

### main (function) `int main(void)`
- Defined: `tests/neg_hex.c:1`

## tests/neg_member.c

### main (function) `int main(void)`
- Defined: `tests/neg_member.c:5`

## tests/neg_octal.c

### main (function) `int main(void)`
- Defined: `tests/neg_octal.c:1`

## tests/neg_typedef_arrcont.c

### main (function) `int main(void)`
- Defined: `tests/neg_typedef_arrcont.c:3`

## tests/neg_va.c

### main (function) `int main(void)`
- Defined: `tests/neg_va.c:1`

## tests/t_args.c

### main (function) `int main(int argc, char **argv)`
- Defined: `tests/t_args.c:3`

## tests/t_args7.c

### sum7 (function) `long sum7(long a, long b, long c, long d, long e, long f, long g)`
- Defined: `tests/t_args7.c:3`

### sum8 (function) `long sum8(long a, long b, long c, long d, long e, long f, long g, long h)`
- Defined: `tests/t_args7.c:7`

### mix8 (function) `long mix8(long a, long b, long c, long d, long e, long f, long g, long h)`
- Defined: `tests/t_args7.c:11`

### main (function) `int main(void)`
- Defined: `tests/t_args7.c:16`

## tests/t_arith.c

### main (function) `int main(void)`
- Defined: `tests/t_arith.c:3`

## tests/t_arrays.c

### main (function) `int main(void)`
- Defined: `tests/t_arrays.c:3`

## tests/t_asm.c

### main (function) `int main(void)`
- Defined: `tests/t_asm.c:5`

## tests/t_asm3.c

### main (function) `int main(void)`
- Defined: `tests/t_asm3.c:6`

## tests/t_asm_ds.c

### via_d (function) `long via_d(long x)`
- Defined: `tests/t_asm_ds.c:4`

### via_s (function) `long via_s(long x)`
- Defined: `tests/t_asm_ds.c:10`

### add_ds (function) `long add_ds(long a, long b)`
- Defined: `tests/t_asm_ds.c:16`

### ret_d (function) `long ret_d(long x)`
- Defined: `tests/t_asm_ds.c:22`

### ret_s (function) `long ret_s(long x)`
- Defined: `tests/t_asm_ds.c:28`

### ret_di (function) `int ret_di(void)`
- Defined: `tests/t_asm_ds.c:34`

### ret_dc (function) `char ret_dc(void)`
- Defined: `tests/t_asm_ds.c:40`

### ret_ds (function) `int16_t ret_ds(void)`
- Defined: `tests/t_asm_ds.c:46`

### ret_dw (function) `int32_t ret_dw(void)`
- Defined: `tests/t_asm_ds.c:52`

### main (function) `int main(void)`
- Defined: `tests/t_asm_ds.c:58`

## tests/t_attr.c

### __attribute__ (function) `typedef struct __attribute__((packed))`
- Defined: `tests/t_attr.c:4`

### __attribute__ (function) `__attribute__((always_inline)) static inline int sq(int x)`
- Defined: `tests/t_attr.c:12`

### ksetjmp (function) `int ksetjmp(long buf)`
- Defined: `tests/t_attr.c:17`

### knoreturn (function) `void knoreturn(void)`
- Defined: `tests/t_attr.c:22`

### main (function) `int main(void)`
- Defined: `tests/t_attr.c:25`

## tests/t_chained.c

### main (function) `int main(void)`
- Defined: `tests/t_chained.c:17`

## tests/t_comma.c

### add (function) `int add(int a, int b)`
- Defined: `tests/t_comma.c:3`

### main (function) `int main(void)`
- Defined: `tests/t_comma.c:5`

## tests/t_compound.c

### main (function) `int main(void)`
- Defined: `tests/t_compound.c:3`

## tests/t_dowhile.c

### main (function) `int main(void)`
- Defined: `tests/t_dowhile.c:3`

## tests/t_elif.c

### main (function) `int main(void)`
- Defined: `tests/t_elif.c:49`

## tests/t_enum.c

### main (function) `int main(void)`
- Defined: `tests/t_enum.c:13`

## tests/t_enumtype.c

### pick (function) `enum E pick(enum E e)`
- Defined: `tests/t_enumtype.c:5`

### main (function) `int main(void)`
- Defined: `tests/t_enumtype.c:7`

## tests/t_fcast.c

### main (function) `int main(void)`
- Defined: `tests/t_fcast.c:3`

## tests/t_float.c

### main (function) `int main(void)`
- Defined: `tests/t_float.c:3`

## tests/t_fnptr.c

### add2 (function) `long add2(long a, long b)`
- Defined: `tests/t_fnptr.c:3`

### mul2 (function) `long mul2(long a, long b)`
- Defined: `tests/t_fnptr.c:7`

### apply2 (function) `long apply2(long (*f)(long, long), long x, long y)`
- Defined: `tests/t_fnptr.c:11`

### run_op (function) `long run_op(ops_t *o, long x, long y)`
- Defined: `tests/t_fnptr.c:22`

### main (function) `int main(void)`
- Defined: `tests/t_fnptr.c:26`

## tests/t_for.c

### main (function) `int main(void)`
- Defined: `tests/t_for.c:3`

## tests/t_globinit.c

### main (function) `int main(void)`
- Defined: `tests/t_globinit.c:8`

## tests/t_goto.c

### main (function) `int main(void)`
- Defined: `tests/t_goto.c:3`

## tests/t_hexoct.c

### main (function) `int main(void)`
- Defined: `tests/t_hexoct.c:3`

## tests/t_if.c

### grade (function) `int grade(int s)`
- Defined: `tests/t_if.c:3`

### main (function) `int main(void)`
- Defined: `tests/t_if.c:10`

## tests/t_include.c

### main (function) `int main(void)`
- Defined: `tests/t_include.c:5`
- Depends on: `tests/t_outer_h.h`

## tests/t_inline.c

### icube (function) `static inline int icube(int x)`
- Defined: `tests/t_inline.c:4`
- Depends on: `tests/t_inline_h.h`

### idbl (function) `__inline__ static int idbl(int x)`
- Defined: `tests/t_inline.c:8`
- Depends on: `tests/t_inline_h.h`

### iinc (function) `__inline static int iinc(int x)`
- Defined: `tests/t_inline.c:12`
- Depends on: `tests/t_inline_h.h`

### main (function) `int main(void)`
- Defined: `tests/t_inline.c:16`
- Depends on: `tests/t_inline_h.h`

## tests/t_inline_h.h

### isq (function) `static inline int isq(int x)`
- Defined: `tests/t_inline_h.h:4`
- Imported by: `tests/t_inline.c`

## tests/t_inner_h.h

### inner_add (function) `static inline int inner_add(int a, int b)`
- Defined: `tests/t_inner_h.h:6`
- Imported by: `tests/t_outer_h.h`

## tests/t_logic.c

### main (function) `int main(void)`
- Defined: `tests/t_logic.c:3`

## tests/t_longlong.c

### bump (function) `u64 bump(u64 x)`
- Defined: `tests/t_longlong.c:6`

### negate (function) `s64 negate(s64 x)`
- Defined: `tests/t_longlong.c:10`

### add64 (function) `unsigned long long add64(unsigned long long a, unsigned long long b)`
- Defined: `tests/t_longlong.c:14`

### main (function) `int main(void)`
- Defined: `tests/t_longlong.c:20`

## tests/t_macros.c

### main (function) `int main(void)`
- Defined: `tests/t_macros.c:10`

## tests/t_octesc.c

### main (function) `int main(void)`
- Defined: `tests/t_octesc.c:3`

## tests/t_pointers.c

### bump (function) `void bump(int *p)`
- Defined: `tests/t_pointers.c:3`

### main (function) `int main(void)`
- Defined: `tests/t_pointers.c:7`

## tests/t_recursion.c

### fib (function) `int fib(int n)`
- Defined: `tests/t_recursion.c:3`

### fact (function) `int fact(int n)`
- Defined: `tests/t_recursion.c:8`

### main (function) `int main(void)`
- Defined: `tests/t_recursion.c:13`

## tests/t_regauto.c

### main (function) `int main(void)`
- Defined: `tests/t_regauto.c:3`

## tests/t_scope.c

### touch (function) `void touch(void)`
- Defined: `tests/t_scope.c:7`

### main (function) `int main(void)`
- Defined: `tests/t_scope.c:12`

## tests/t_sizeof.c

### main (function) `int main(void)`
- Defined: `tests/t_sizeof.c:3`

## tests/t_static.c

### counter (function) `int counter(void)`
- Defined: `tests/t_static.c:3`

### adder (function) `int adder(int v)`
- Defined: `tests/t_static.c:9`

### same_name (function) `int same_name(void)`
- Defined: `tests/t_static.c:15`

### main (function) `int main(void)`
- Defined: `tests/t_static.c:21`

## tests/t_stdint.c

### loads_u8 (function) `uint8_t loads_u8(uint8_t v)`
- Defined: `tests/t_stdint.c:22`

### loads_s16 (function) `int16_t loads_s16(int16_t v)`
- Defined: `tests/t_stdint.c:26`

### loads_u32 (function) `uint32_t loads_u32(uint32_t v)`
- Defined: `tests/t_stdint.c:30`

### add_shorts (function) `short add_shorts(short a, short b)`
- Defined: `tests/t_stdint.c:34`

### main (function) `int main(void)`
- Defined: `tests/t_stdint.c:38`

## tests/t_strings.c

### main (function) `int main(void)`
- Defined: `tests/t_strings.c:3`

## tests/t_struct.c

### manhattan (function) `int manhattan(Point *p)`
- Defined: `tests/t_struct.c:10`

### main (function) `int main(void)`
- Defined: `tests/t_struct.c:18`

## tests/t_struct_ul.c

### main (function) `int main(void)`
- Defined: `tests/t_struct_ul.c:13`

## tests/t_switch.c

### classify (function) `int classify(int v)`
- Defined: `tests/t_switch.c:3`

### main (function) `int main(void)`
- Defined: `tests/t_switch.c:14`

## tests/t_sync.c

### main (function) `int main(void)`
- Defined: `tests/t_sync.c:6`

## tests/t_tagstruct.c

### dist (function) `int dist(struct P *p)`
- Defined: `tests/t_tagstruct.c:10`

### main (function) `int main(void)`
- Defined: `tests/t_tagstruct.c:12`

## tests/t_typedef.c

### main (function) `int main(void)`
- Defined: `tests/t_typedef.c:16`

## tests/t_union.c

### main (function) `int main(void)`
- Defined: `tests/t_union.c:23`

## tests/t_unsigned.c

### bump (function) `unsigned long bump(unsigned long x)`
- Defined: `tests/t_unsigned.c:9`

### narrow (function) `unsigned int narrow(unsigned int x)`
- Defined: `tests/t_unsigned.c:13`

### reg_base (function) `unsigned long reg_base(ureg_t *r)`
- Defined: `tests/t_unsigned.c:23`

### main (function) `int main(void)`
- Defined: `tests/t_unsigned.c:27`

## tests/t_variadic.c

### mini_puts (function) `void mini_puts(const char *s)`
- Defined: `tests/t_variadic.c:5`

### mini_kprintf (function) `void mini_kprintf(const char *fmt, ...)`
- Defined: `tests/t_variadic.c:12`

### vsum (function) `long vsum(int n, ...)`
- Defined: `tests/t_variadic.c:46`

### main (function) `int main(void)`
- Defined: `tests/t_variadic.c:59`

### putchar (function) `int putchar(int c);`
- Defined: `tests/t_variadic.c:3`

## tests/t_while.c

### main (function) `int main(void)`
- Defined: `tests/t_while.c:3`
