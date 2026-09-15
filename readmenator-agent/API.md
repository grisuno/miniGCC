# API

## minigcc.c

### save_parser_state (function) `static void save_parser_state(ParserState *state)`
- Defined: `minigcc.c:234`

### restore_parser_state (function) `static void restore_parser_state(ParserState *state)`
- Defined: `minigcc.c:259`

### find_macro (function) `static int find_macro(const char *name)`
- Defined: `minigcc.c:295`

### add_macro (function) `static void add_macro(const char *name, int value)`
- Defined: `minigcc.c:304`

### macro_skipws (function) `static void macro_skipws(void)`
- Defined: `minigcc.c:331`

### macro_hex_digit (function) `static int macro_hex_digit(int c)`
- Defined: `minigcc.c:335`

### macro_digit_val (function) `static int macro_digit_val(int c)`
- Defined: `minigcc.c:342`

### macro_primary (function) `static int macro_primary(void)`
- Defined: `minigcc.c:349`

### macro_unary (function) `static int macro_unary(void)`
- Defined: `minigcc.c:423`

### macro_mul (function) `static int macro_mul(void)`
- Defined: `minigcc.c:432`

### macro_add (function) `static int macro_add(void)`
- Defined: `minigcc.c:457`

### macro_shift (function) `static int macro_shift(void)`
- Defined: `minigcc.c:474`

### macro_cmp (function) `static int macro_cmp(void)`
- Defined: `minigcc.c:491`

### macro_eq (function) `static int macro_eq(void)`
- Defined: `minigcc.c:514`

### macro_bitand (function) `static int macro_bitand(void)`
- Defined: `minigcc.c:531`

### macro_bitxor (function) `static int macro_bitxor(void)`
- Defined: `minigcc.c:545`

### macro_bitor (function) `static int macro_bitor(void)`
- Defined: `minigcc.c:559`

### macro_logand (function) `static int macro_logand(void)`
- Defined: `minigcc.c:573`

### macro_or_expr (function) `static int macro_or_expr(void)`
- Defined: `minigcc.c:587`

### macro_fold (function) `static int macro_fold(void)`
- Defined: `minigcc.c:601`

### error (function) `static void error(const char *msg)`
- Defined: `minigcc.c:606`

### safe_malloc (function) `static void *safe_malloc(size_t size)`
- Defined: `minigcc.c:612`

### safe_strcpy (function) `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- Defined: `minigcc.c:621`

### safe_strtoll (function) `static long safe_strtoll(const char *s)`
- Defined: `minigcc.c:630`

### is_file_processed (function) `static int is_file_processed(const char *path)`
- Defined: `minigcc.c:643`

### mark_file_processed (function) `static void mark_file_processed(const char *path)`
- Defined: `minigcc.c:652`

### get_dir_from_path (function) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- Defined: `minigcc.c:664`

### resolve_local_include (function) `static char *resolve_local_include(const char *target)`
- Defined: `minigcc.c:683`

### read_include_file (function) `static char *read_include_file(const char *path)`
- Defined: `minigcc.c:722`

### hash_name (function) `static int hash_name(const char *name)`
- Defined: `minigcc.c:747`
- Doc: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multipli

### hash_init (function) `static void hash_init(void)`
- Defined: `minigcc.c:756`

### push_scope (function) `static void push_scope(void)`
- Defined: `minigcc.c:761`

### pop_scope (function) `static void pop_scope(void)`
- Defined: `minigcc.c:769`

### truncate_symbols (function) `static void truncate_symbols(int start_idx)`
- Defined: `minigcc.c:799`
- Doc: Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (

### my_isspace (function) `static int my_isspace(int c)`
- Defined: `minigcc.c:817`

### my_isalpha (function) `static int my_isalpha(int c)`
- Defined: `minigcc.c:827`

### my_isdigit (function) `static int my_isdigit(int c)`
- Defined: `minigcc.c:833`

### my_isalnum (function) `static int my_isalnum(int c)`
- Defined: `minigcc.c:838`

### lex_fail (function) `static void lex_fail(const char *msg, char *start, char *end)`
- Defined: `minigcc.c:844`

### lex_kw_add (function) `static void lex_kw_add(const char *name, int id)`
- Defined: `minigcc.c:854`

### lex_init_keywords (function) `static void lex_init_keywords(void)`
- Defined: `minigcc.c:867`

### lex_kw_lookup (function) `static int lex_kw_lookup(void)`
- Defined: `minigcc.c:905`

### lex_match_op (function) `static int lex_match_op(const char *op, int id)`
- Defined: `minigcc.c:917`

### lex_hex_val (function) `static int lex_hex_val(int c)`
- Defined: `minigcc.c:929`

### lex_is_int_suffix (function) `static int lex_is_int_suffix(int c)`
- Defined: `minigcc.c:936`

### lex_number (function) `static void lex_number(void)`
- Defined: `minigcc.c:942`

### next_token (function) `static void next_token(void)`
- Defined: `minigcc.c:1061`
- Doc: float_const_is_float[float_const_count] = (sfx == 'f' || sfx == 'F') ? 1 : 0; safe_strcpy(float_const_str[float_const_co

### match (function) `static void match(int expected)`
- Defined: `minigcc.c:1489`

### emit (function) `static void emit(const char *s)`
- Defined: `minigcc.c:1494`

### emit_i (function) `static void emit_i(const char *fmt, int v)`
- Defined: `minigcc.c:1508`

### emit_s (function) `static void emit_s(const char *fmt, const char *s)`
- Defined: `minigcc.c:1514`

### emit_is (function) `static void emit_is(const char *fmt, int v, const char *s)`
- Defined: `minigcc.c:1520`

### emit_si (function) `static void emit_si(const char *fmt, const char *s, int v)`
- Defined: `minigcc.c:1526`

### emit_asciz_body (function) `static void emit_asciz_body(const char *s)`
- Defined: `minigcc.c:1536`
- Doc: Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by t

### emit_label (function) `static void emit_label(int label)`
- Defined: `minigcc.c:1554`

### find_symbol (function) `static int find_symbol(const char *name)`
- Defined: `minigcc.c:1561`
- Doc: else if (c == '\a') fprintf(output, "\\a"); else if (c == '\b') fprintf(output, "\\b"); else if (c >= 32 && c <= 126) fp

### add_symbol (function) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- Defined: `minigcc.c:1571`

### arg_reg (function) `static const char *arg_reg(int i)`
- Defined: `minigcc.c:1634`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### libc_global_name (function) `static const char *libc_global_name(int i)`
- Defined: `minigcc.c:1644`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### unary (function) `static void unary(void)`
- Defined: `minigcc.c:1656`

### lvalue_address (function) `static void lvalue_address(void)`
- Defined: `minigcc.c:1928`

### handle_postfix (function) `static void handle_postfix(int is_lvalue)`
- Defined: `minigcc.c:1980`

### unary_expr (function) `static void unary_expr(void)`
- Defined: `minigcc.c:2114`

### multiplicative_expr (function) `static void multiplicative_expr(void)`
- Defined: `minigcc.c:2129`

### additive_expr (function) `static void additive_expr(void)`
- Defined: `minigcc.c:2193`

### shift_expr (function) `static void shift_expr(void)`
- Defined: `minigcc.c:2248`

### relational_expr (function) `static void relational_expr(void)`
- Defined: `minigcc.c:2267`

### equality_expr (function) `static void equality_expr(void)`
- Defined: `minigcc.c:2320`

### bitwise_and_expr (function) `static void bitwise_and_expr(void)`
- Defined: `minigcc.c:2369`

### bitwise_xor_expr (function) `static void bitwise_xor_expr(void)`
- Defined: `minigcc.c:2381`

### bitwise_or_expr (function) `static void bitwise_or_expr(void)`
- Defined: `minigcc.c:2393`

### logical_and_expr (function) `static void logical_and_expr(void)`
- Defined: `minigcc.c:2405`

### logical_or_expr (function) `static void logical_or_expr(void)`
- Defined: `minigcc.c:2425`

### conditional_expr (function) `static void conditional_expr(void)`
- Defined: `minigcc.c:2445`

### emit_compound_op (function) `static void emit_compound_op(int op, int asize)`
- Defined: `minigcc.c:2463`

### assignment_expr (function) `static void assignment_expr(void)`
- Defined: `minigcc.c:2504`

### asm_scratch (function) `static const char *asm_scratch(int i)`
- Defined: `minigcc.c:2715`

### asm_home_text (function) `static void asm_home_text(int home, char *buf)`
- Defined: `minigcc.c:2724`

### asm_reg_sized (function) `static void asm_reg_sized(int home, int size, char *buf)`
- Defined: `minigcc.c:2732`

### asm_fixed_home (function) `static int asm_fixed_home(int c)`
- Defined: `minigcc.c:2758`

### asm_emit_template (function) `static void asm_emit_template(void)`
- Defined: `minigcc.c:2766`

### asm_parse_mem (function) `static void asm_parse_mem(int idx, int is_out)`
- Defined: `minigcc.c:2793`

### asm_emit_ss (function) `static void asm_emit_ss(const char *fmt, const char *a, const char *b)`
- Defined: `minigcc.c:2851`

### asm_parse_one (function) `static void asm_parse_one(int idx, int is_out)`
- Defined: `minigcc.c:2857`

### asm_assign_homes (function) `static void asm_assign_homes(void)`
- Defined: `minigcc.c:2921`

### asm_emit_all (function) `static void asm_emit_all(void)`
- Defined: `minigcc.c:2966`

### parse_asm_block (function) `static void parse_asm_block(void)`
- Defined: `minigcc.c:3010`

### statement (function) `static void statement(void)`
- Defined: `minigcc.c:3074`

### parse_function (function) `static void parse_function(const char *name, int ret_type)`
- Defined: `minigcc.c:3741`

### parse_enum (function) `static void parse_enum(void)`
- Defined: `minigcc.c:3888`

### skip_struct (function) `static void skip_struct(void)`
- Defined: `minigcc.c:3937`

### skip_typedef (function) `static void skip_typedef(void)`
- Defined: `minigcc.c:4001`

### data_directive (function) `static const char *data_directive(int size)`
- Defined: `minigcc.c:4056`
- Doc: s->const_value = 8;  /* just a marker /* If a struct was just parsed, store its size if (struct_total_size > 0) s->const

### emit_global_bss (function) `static void emit_global_bss(const char *name, int is_static, int size)`
- Defined: `minigcc.c:4064`
- Doc: } } match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(int size) { if (si

### emit_global_data_head (function) `static void emit_global_data_head(const char *name, int is_static)`
- Defined: `minigcc.c:4071`

### parse_const_int (function) `static int parse_const_int(long long *out)`
- Defined: `minigcc.c:4081`
- Doc: Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro 

### intern_string (function) `static int intern_string(const char *text)`
- Defined: `minigcc.c:4104`
- Doc: } if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg 

### emit_global_initializer (function) `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...`
- Defined: `minigcc.c:4121`
- Doc: Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is 

### parse_program (function) `static void parse_program(void)`
- Defined: `minigcc.c:4185`

### emit_float_consts (function) `static void emit_float_consts(void)`
- Defined: `minigcc.c:4340`

### emit_string_pool (function) `static void emit_string_pool(void)`
- Defined: `minigcc.c:4350`

### main (function) `int main(int argc, char **argv)`
- Defined: `minigcc.c:4360`

### fprintf (function) `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);`
- Defined: `minigcc.c:608`

### exit (function) `exit(EXIT_FAILURE);`
- Defined: `minigcc.c:610`

### fclose (function) `fclose(f);`
- Defined: `minigcc.c:687`

### fseek (function) `fseek(f, 0, SEEK_END);`
- Defined: `minigcc.c:726`

### rewind (function) `rewind(f);`
- Defined: `minigcc.c:732`

### free (function) `free(buf);`
- Defined: `minigcc.c:736`

### snprintf (function) `snprintf(token, MAX_TOKEN_LEN, "%ld", v);`
- Defined: `minigcc.c:957`

### fputc (function) `fputc('%', output);`
- Defined: `minigcc.c:1499`

### strncpy (function) `strncpy(d, name, MAX_IDENT_LEN - 1);`
- Defined: `minigcc.c:1577`

### strcpy (function) `strcpy(saved_token, token);`
- Defined: `minigcc.c:2509`

### fputs (function) `fputs(asm_text[oi], output);`
- Defined: `minigcc.c:2782`

### memcpy (function) `memcpy(varname, token, nlen);`
- Defined: `minigcc.c:3126`

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

### current_elem_size (function)
- Defined: `minigccg2.s:115`

### current_elem_size2 (function)
- Defined: `minigccg2.s:119`

### no_postfix_deref (function)
- Defined: `minigccg2.s:123`

### expr_type (function)
- Defined: `minigccg2.s:127`

### static_flag (function)
- Defined: `minigccg2.s:131`

### unsigned_type (function)
- Defined: `minigccg2.s:135`

### const_flag (function)
- Defined: `minigccg2.s:139`

### extern_flag (function)
- Defined: `minigccg2.s:143`

### global_emit_deferred (function)
- Defined: `minigccg2.s:147`

### float_const_str (function)
- Defined: `minigccg2.s:151`

### float_const_is_float (function)
- Defined: `minigccg2.s:155`

### float_const_count (function)
- Defined: `minigccg2.s:159`

### switch_case_values (function)
- Defined: `minigccg2.s:163`

### switch_case_labels (function)
- Defined: `minigccg2.s:167`

### switch_case_count (function)
- Defined: `minigccg2.s:171`

### switch_has_default (function)
- Defined: `minigccg2.s:175`

### switch_default_label (function)
- Defined: `minigccg2.s:179`

### break_target (function)
- Defined: `minigccg2.s:183`

### break_target_valid (function)
- Defined: `minigccg2.s:187`

### continue_target (function)
- Defined: `minigccg2.s:191`

### continue_target_valid (function)
- Defined: `minigccg2.s:195`

### str_label_counter (function)
- Defined: `minigccg2.s:199`

### string_pool (function)
- Defined: `minigccg2.s:203`

### string_count (function)
- Defined: `minigccg2.s:207`

### ptr_init_name (function)
- Defined: `minigccg2.s:211`

### ptr_init_label (function)
- Defined: `minigccg2.s:215`

### ptr_init_count (function)
- Defined: `minigccg2.s:219`

### struct_total_size (function)
- Defined: `minigccg2.s:223`

### struct_member_names (function)
- Defined: `minigccg2.s:227`

### struct_member_offsets (function)
- Defined: `minigccg2.s:231`

### struct_member_sizes (function)
- Defined: `minigccg2.s:235`

### struct_member_elem_sizes (function)
- Defined: `minigccg2.s:239`

### struct_member_count (function)
- Defined: `minigccg2.s:243`

### if_nest (function)
- Defined: `minigccg2.s:247`

### if_depth (function)
- Defined: `minigccg2.s:251`

### macro_count (function)
- Defined: `minigccg2.s:256`

### save_parser_state (function)
- Defined: `minigccg2.s:260`

### restore_parser_state (function)
- Defined: `minigccg2.s:399`

### macros (function)
- Defined: `minigccg2.s:587`

### find_macro (function)
- Defined: `minigccg2.s:591`

### add_macro (function)
- Defined: `minigccg2.s:655`

### macro_p (function)
- Defined: `minigccg2.s:785`

### macro_ok (function)
- Defined: `minigccg2.s:789`

### macro_skipws (function)
- Defined: `minigccg2.s:793`

### macro_hex_digit (function)
- Defined: `minigccg2.s:834`

### macro_digit_val (function)
- Defined: `minigccg2.s:932`

### macro_primary (function)
- Defined: `minigccg2.s:1053`

### macro_unary (function)
- Defined: `minigccg2.s:1851`

### macro_mul (function)
- Defined: `minigccg2.s:1979`

### macro_add (function)
- Defined: `minigccg2.s:2182`

### macro_shift (function)
- Defined: `minigccg2.s:2280`

### macro_cmp (function)
- Defined: `minigccg2.s:2433`

### macro_eq (function)
- Defined: `minigccg2.s:2654`

### macro_bitand (function)
- Defined: `minigccg2.s:2807`

### macro_bitxor (function)
- Defined: `minigccg2.s:2893`

### macro_bitor (function)
- Defined: `minigccg2.s:2958`

### macro_logand (function)
- Defined: `minigccg2.s:3044`

### macro_or_expr (function)
- Defined: `minigccg2.s:3141`

### macro_fold (function)
- Defined: `minigccg2.s:3238`

### error (function)
- Defined: `minigccg2.s:3259`

### safe_malloc (function)
- Defined: `minigccg2.s:3311`

### safe_strcpy (function)
- Defined: `minigccg2.s:3366`

### safe_strtoll (function)
- Defined: `minigccg2.s:3443`

### is_file_processed (function)
- Defined: `minigccg2.s:3558`

### mark_file_processed (function)
- Defined: `minigccg2.s:3619`

### get_dir_from_path (function)
- Defined: `minigccg2.s:3731`

### resolve_local_include (function)
- Defined: `minigccg2.s:3874`

### read_include_file (function)
- Defined: `minigccg2.s:4324`

### hash_name (function)
- Defined: `minigccg2.s:4532`

### hash_init (function)
- Defined: `minigccg2.s:4590`

### push_scope (function)
- Defined: `minigccg2.s:4629`

### pop_scope (function)
- Defined: `minigccg2.s:4681`

### truncate_symbols (function)
- Defined: `minigccg2.s:4877`

### my_isspace (function)
- Defined: `minigccg2.s:5030`

### my_isalpha (function)
- Defined: `minigccg2.s:5119`

### my_isdigit (function)
- Defined: `minigccg2.s:5188`

### my_isalnum (function)
- Defined: `minigccg2.s:5228`

### lex_fail (function)
- Defined: `minigccg2.s:5273`

### lex_kw_add (function)
- Defined: `minigccg2.s:5377`

### lex_init_keywords (function)
- Defined: `minigccg2.s:5540`

### lex_kw_lookup (function)
- Defined: `minigccg2.s:6035`

### lex_match_op (function)
- Defined: `minigccg2.s:6129`

### lex_hex_val (function)
- Defined: `minigccg2.s:6212`

### lex_is_int_suffix (function)
- Defined: `minigccg2.s:6334`

### lex_number (function)
- Defined: `minigccg2.s:6403`

### next_token (function)
- Defined: `minigccg2.s:7933`

### restart (function)
- Defined: `minigccg2.s:7937`

### match (function)
- Defined: `minigccg2.s:12616`

### emit (function)
- Defined: `minigccg2.s:12654`

### emit_i (function)
- Defined: `minigccg2.s:12768`

### emit_s (function)
- Defined: `minigccg2.s:12817`

### emit_is (function)
- Defined: `minigccg2.s:12866`

### emit_si (function)
- Defined: `minigccg2.s:12919`

### emit_asciz_body (function)
- Defined: `minigccg2.s:12972`

### emit_label (function)
- Defined: `minigccg2.s:13296`

### find_symbol (function)
- Defined: `minigccg2.s:13325`

### add_symbol (function)
- Defined: `minigccg2.s:13412`

### arg_reg (function)
- Defined: `minigccg2.s:13786`

### libc_global_name (function)
- Defined: `minigccg2.s:13862`

### unary (function)
- Defined: `minigccg2.s:13990`

### lvalue_address (function)
- Defined: `minigccg2.s:16683`

### handle_postfix (function)
- Defined: `minigccg2.s:17208`

### unary_expr (function)
- Defined: `minigccg2.s:18230`

### multiplicative_expr (function)
- Defined: `minigccg2.s:18255`

### additive_expr (function)
- Defined: `minigccg2.s:18877`

### shift_expr (function)
- Defined: `minigccg2.s:19372`

### relational_expr (function)
- Defined: `minigccg2.s:19518`

### equality_expr (function)
- Defined: `minigccg2.s:20120`

### bitwise_and_expr (function)
- Defined: `minigccg2.s:20598`

### bitwise_xor_expr (function)
- Defined: `minigccg2.s:20676`

### bitwise_or_expr (function)
- Defined: `minigccg2.s:20754`

### logical_and_expr (function)
- Defined: `minigccg2.s:20832`

### logical_or_expr (function)
- Defined: `minigccg2.s:20995`

### conditional_expr (function)
- Defined: `minigccg2.s:21158`

### emit_compound_op (function)
- Defined: `minigccg2.s:21290`

### assignment_expr (function)
- Defined: `minigccg2.s:21792`

### asm_tmpl (function)
- Defined: `minigccg2.s:25107`

### asm_text (function)
- Defined: `minigccg2.s:25111`

### asm_mem (function)
- Defined: `minigccg2.s:25115`

### asm_is_out (function)
- Defined: `minigccg2.s:25119`

### asm_home (function)
- Defined: `minigccg2.s:25123`

### asm_slot (function)
- Defined: `minigccg2.s:25127`

### asm_size (function)
- Defined: `minigccg2.s:25131`

### asm_nops (function)
- Defined: `minigccg2.s:25135`

### asm_nslots (function)
- Defined: `minigccg2.s:25139`

### asm_unique (function)
- Defined: `minigccg2.s:25143`

### asm_scratch (function)
- Defined: `minigccg2.s:25147`

### asm_home_text (function)
- Defined: `minigccg2.s:25223`

### asm_reg_sized (function)
- Defined: `minigccg2.s:25380`

### asm_fixed_home (function)
- Defined: `minigccg2.s:25926`

### asm_emit_template (function)
- Defined: `minigccg2.s:25990`

### asm_parse_mem (function)
- Defined: `minigccg2.s:26230`

### asm_emit_ss (function)
- Defined: `minigccg2.s:26791`

### asm_parse_one (function)
- Defined: `minigccg2.s:26844`

### asm_assign_homes (function)
- Defined: `minigccg2.s:27815`

### asm_emit_all (function)
- Defined: `minigccg2.s:28260`

### parse_asm_block (function)
- Defined: `minigccg2.s:28770`

### statement (function)
- Defined: `minigccg2.s:29339`

### restart_typedef (function)
- Defined: `minigccg2.s:32858`

### restart_int (function)
- Defined: `minigccg2.s:33890`

### parse_function (function)
- Defined: `minigccg2.s:35049`

### parse_enum (function)
- Defined: `minigccg2.s:36514`

### skip_struct (function)
- Defined: `minigccg2.s:36926`

### skip_typedef (function)
- Defined: `minigccg2.s:37512`

### data_directive (function)
- Defined: `minigccg2.s:38002`

### emit_global_bss (function)
- Defined: `minigccg2.s:38052`

### emit_global_data_head (function)
- Defined: `minigccg2.s:38143`

### parse_const_int (function)
- Defined: `minigccg2.s:38198`

### intern_string (function)
- Defined: `minigccg2.s:38361`

### emit_global_initializer (function)
- Defined: `minigccg2.s:38454`

### parse_program (function)
- Defined: `minigccg2.s:39171`

### emit_float_consts (function)
- Defined: `minigccg2.s:40976`

### emit_string_pool (function)
- Defined: `minigccg2.s:41075`

### main (function)
- Defined: `minigccg2.s:41177`

### _start (function)
- Defined: `minigccg2.s:45151`

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

### current_elem_size (function)
- Defined: `minigccg3.s:115`

### current_elem_size2 (function)
- Defined: `minigccg3.s:119`

### no_postfix_deref (function)
- Defined: `minigccg3.s:123`

### expr_type (function)
- Defined: `minigccg3.s:127`

### static_flag (function)
- Defined: `minigccg3.s:131`

### unsigned_type (function)
- Defined: `minigccg3.s:135`

### const_flag (function)
- Defined: `minigccg3.s:139`

### extern_flag (function)
- Defined: `minigccg3.s:143`

### global_emit_deferred (function)
- Defined: `minigccg3.s:147`

### float_const_str (function)
- Defined: `minigccg3.s:151`

### float_const_is_float (function)
- Defined: `minigccg3.s:155`

### float_const_count (function)
- Defined: `minigccg3.s:159`

### switch_case_values (function)
- Defined: `minigccg3.s:163`

### switch_case_labels (function)
- Defined: `minigccg3.s:167`

### switch_case_count (function)
- Defined: `minigccg3.s:171`

### switch_has_default (function)
- Defined: `minigccg3.s:175`

### switch_default_label (function)
- Defined: `minigccg3.s:179`

### break_target (function)
- Defined: `minigccg3.s:183`

### break_target_valid (function)
- Defined: `minigccg3.s:187`

### continue_target (function)
- Defined: `minigccg3.s:191`

### continue_target_valid (function)
- Defined: `minigccg3.s:195`

### str_label_counter (function)
- Defined: `minigccg3.s:199`

### string_pool (function)
- Defined: `minigccg3.s:203`

### string_count (function)
- Defined: `minigccg3.s:207`

### ptr_init_name (function)
- Defined: `minigccg3.s:211`

### ptr_init_label (function)
- Defined: `minigccg3.s:215`

### ptr_init_count (function)
- Defined: `minigccg3.s:219`

### struct_total_size (function)
- Defined: `minigccg3.s:223`

### struct_member_names (function)
- Defined: `minigccg3.s:227`

### struct_member_offsets (function)
- Defined: `minigccg3.s:231`

### struct_member_sizes (function)
- Defined: `minigccg3.s:235`

### struct_member_elem_sizes (function)
- Defined: `minigccg3.s:239`

### struct_member_count (function)
- Defined: `minigccg3.s:243`

### if_nest (function)
- Defined: `minigccg3.s:247`

### if_depth (function)
- Defined: `minigccg3.s:251`

### macro_count (function)
- Defined: `minigccg3.s:256`

### save_parser_state (function)
- Defined: `minigccg3.s:260`

### restore_parser_state (function)
- Defined: `minigccg3.s:399`

### macros (function)
- Defined: `minigccg3.s:587`

### find_macro (function)
- Defined: `minigccg3.s:591`

### add_macro (function)
- Defined: `minigccg3.s:655`

### macro_p (function)
- Defined: `minigccg3.s:785`

### macro_ok (function)
- Defined: `minigccg3.s:789`

### macro_skipws (function)
- Defined: `minigccg3.s:793`

### macro_hex_digit (function)
- Defined: `minigccg3.s:834`

### macro_digit_val (function)
- Defined: `minigccg3.s:932`

### macro_primary (function)
- Defined: `minigccg3.s:1053`

### macro_unary (function)
- Defined: `minigccg3.s:1851`

### macro_mul (function)
- Defined: `minigccg3.s:1979`

### macro_add (function)
- Defined: `minigccg3.s:2182`

### macro_shift (function)
- Defined: `minigccg3.s:2280`

### macro_cmp (function)
- Defined: `minigccg3.s:2433`

### macro_eq (function)
- Defined: `minigccg3.s:2654`

### macro_bitand (function)
- Defined: `minigccg3.s:2807`

### macro_bitxor (function)
- Defined: `minigccg3.s:2893`

### macro_bitor (function)
- Defined: `minigccg3.s:2958`

### macro_logand (function)
- Defined: `minigccg3.s:3044`

### macro_or_expr (function)
- Defined: `minigccg3.s:3141`

### macro_fold (function)
- Defined: `minigccg3.s:3238`

### error (function)
- Defined: `minigccg3.s:3259`

### safe_malloc (function)
- Defined: `minigccg3.s:3311`

### safe_strcpy (function)
- Defined: `minigccg3.s:3366`

### safe_strtoll (function)
- Defined: `minigccg3.s:3443`

### is_file_processed (function)
- Defined: `minigccg3.s:3558`

### mark_file_processed (function)
- Defined: `minigccg3.s:3619`

### get_dir_from_path (function)
- Defined: `minigccg3.s:3731`

### resolve_local_include (function)
- Defined: `minigccg3.s:3874`

### read_include_file (function)
- Defined: `minigccg3.s:4324`

### hash_name (function)
- Defined: `minigccg3.s:4532`

### hash_init (function)
- Defined: `minigccg3.s:4590`

### push_scope (function)
- Defined: `minigccg3.s:4629`

### pop_scope (function)
- Defined: `minigccg3.s:4681`

### truncate_symbols (function)
- Defined: `minigccg3.s:4877`

### my_isspace (function)
- Defined: `minigccg3.s:5030`

### my_isalpha (function)
- Defined: `minigccg3.s:5119`

### my_isdigit (function)
- Defined: `minigccg3.s:5188`

### my_isalnum (function)
- Defined: `minigccg3.s:5228`

### lex_fail (function)
- Defined: `minigccg3.s:5273`

### lex_kw_add (function)
- Defined: `minigccg3.s:5377`

### lex_init_keywords (function)
- Defined: `minigccg3.s:5540`

### lex_kw_lookup (function)
- Defined: `minigccg3.s:6035`

### lex_match_op (function)
- Defined: `minigccg3.s:6129`

### lex_hex_val (function)
- Defined: `minigccg3.s:6212`

### lex_is_int_suffix (function)
- Defined: `minigccg3.s:6334`

### lex_number (function)
- Defined: `minigccg3.s:6403`

### next_token (function)
- Defined: `minigccg3.s:7933`

### restart (function)
- Defined: `minigccg3.s:7937`

### match (function)
- Defined: `minigccg3.s:12616`

### emit (function)
- Defined: `minigccg3.s:12654`

### emit_i (function)
- Defined: `minigccg3.s:12768`

### emit_s (function)
- Defined: `minigccg3.s:12817`

### emit_is (function)
- Defined: `minigccg3.s:12866`

### emit_si (function)
- Defined: `minigccg3.s:12919`

### emit_asciz_body (function)
- Defined: `minigccg3.s:12972`

### emit_label (function)
- Defined: `minigccg3.s:13296`

### find_symbol (function)
- Defined: `minigccg3.s:13325`

### add_symbol (function)
- Defined: `minigccg3.s:13412`

### arg_reg (function)
- Defined: `minigccg3.s:13786`

### libc_global_name (function)
- Defined: `minigccg3.s:13862`

### unary (function)
- Defined: `minigccg3.s:13990`

### lvalue_address (function)
- Defined: `minigccg3.s:16683`

### handle_postfix (function)
- Defined: `minigccg3.s:17208`

### unary_expr (function)
- Defined: `minigccg3.s:18230`

### multiplicative_expr (function)
- Defined: `minigccg3.s:18255`

### additive_expr (function)
- Defined: `minigccg3.s:18877`

### shift_expr (function)
- Defined: `minigccg3.s:19372`

### relational_expr (function)
- Defined: `minigccg3.s:19518`

### equality_expr (function)
- Defined: `minigccg3.s:20120`

### bitwise_and_expr (function)
- Defined: `minigccg3.s:20598`

### bitwise_xor_expr (function)
- Defined: `minigccg3.s:20676`

### bitwise_or_expr (function)
- Defined: `minigccg3.s:20754`

### logical_and_expr (function)
- Defined: `minigccg3.s:20832`

### logical_or_expr (function)
- Defined: `minigccg3.s:20995`

### conditional_expr (function)
- Defined: `minigccg3.s:21158`

### emit_compound_op (function)
- Defined: `minigccg3.s:21290`

### assignment_expr (function)
- Defined: `minigccg3.s:21792`

### asm_tmpl (function)
- Defined: `minigccg3.s:25107`

### asm_text (function)
- Defined: `minigccg3.s:25111`

### asm_mem (function)
- Defined: `minigccg3.s:25115`

### asm_is_out (function)
- Defined: `minigccg3.s:25119`

### asm_home (function)
- Defined: `minigccg3.s:25123`

### asm_slot (function)
- Defined: `minigccg3.s:25127`

### asm_size (function)
- Defined: `minigccg3.s:25131`

### asm_nops (function)
- Defined: `minigccg3.s:25135`

### asm_nslots (function)
- Defined: `minigccg3.s:25139`

### asm_unique (function)
- Defined: `minigccg3.s:25143`

### asm_scratch (function)
- Defined: `minigccg3.s:25147`

### asm_home_text (function)
- Defined: `minigccg3.s:25223`

### asm_reg_sized (function)
- Defined: `minigccg3.s:25380`

### asm_fixed_home (function)
- Defined: `minigccg3.s:25926`

### asm_emit_template (function)
- Defined: `minigccg3.s:25990`

### asm_parse_mem (function)
- Defined: `minigccg3.s:26230`

### asm_emit_ss (function)
- Defined: `minigccg3.s:26791`

### asm_parse_one (function)
- Defined: `minigccg3.s:26844`

### asm_assign_homes (function)
- Defined: `minigccg3.s:27815`

### asm_emit_all (function)
- Defined: `minigccg3.s:28260`

### parse_asm_block (function)
- Defined: `minigccg3.s:28770`

### statement (function)
- Defined: `minigccg3.s:29339`

### restart_typedef (function)
- Defined: `minigccg3.s:32858`

### restart_int (function)
- Defined: `minigccg3.s:33890`

### parse_function (function)
- Defined: `minigccg3.s:35049`

### parse_enum (function)
- Defined: `minigccg3.s:36514`

### skip_struct (function)
- Defined: `minigccg3.s:36926`

### skip_typedef (function)
- Defined: `minigccg3.s:37512`

### data_directive (function)
- Defined: `minigccg3.s:38002`

### emit_global_bss (function)
- Defined: `minigccg3.s:38052`

### emit_global_data_head (function)
- Defined: `minigccg3.s:38143`

### parse_const_int (function)
- Defined: `minigccg3.s:38198`

### intern_string (function)
- Defined: `minigccg3.s:38361`

### emit_global_initializer (function)
- Defined: `minigccg3.s:38454`

### parse_program (function)
- Defined: `minigccg3.s:39171`

### emit_float_consts (function)
- Defined: `minigccg3.s:40976`

### emit_string_pool (function)
- Defined: `minigccg3.s:41075`

### main (function)
- Defined: `minigccg3.s:41177`

### _start (function)
- Defined: `minigccg3.s:45151`

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

### current_elem_size (function)
- Defined: `minigccg4.s:115`

### current_elem_size2 (function)
- Defined: `minigccg4.s:119`

### no_postfix_deref (function)
- Defined: `minigccg4.s:123`

### expr_type (function)
- Defined: `minigccg4.s:127`

### static_flag (function)
- Defined: `minigccg4.s:131`

### unsigned_type (function)
- Defined: `minigccg4.s:135`

### const_flag (function)
- Defined: `minigccg4.s:139`

### extern_flag (function)
- Defined: `minigccg4.s:143`

### global_emit_deferred (function)
- Defined: `minigccg4.s:147`

### float_const_str (function)
- Defined: `minigccg4.s:151`

### float_const_is_float (function)
- Defined: `minigccg4.s:155`

### float_const_count (function)
- Defined: `minigccg4.s:159`

### switch_case_values (function)
- Defined: `minigccg4.s:163`

### switch_case_labels (function)
- Defined: `minigccg4.s:167`

### switch_case_count (function)
- Defined: `minigccg4.s:171`

### switch_has_default (function)
- Defined: `minigccg4.s:175`

### switch_default_label (function)
- Defined: `minigccg4.s:179`

### break_target (function)
- Defined: `minigccg4.s:183`

### break_target_valid (function)
- Defined: `minigccg4.s:187`

### continue_target (function)
- Defined: `minigccg4.s:191`

### continue_target_valid (function)
- Defined: `minigccg4.s:195`

### str_label_counter (function)
- Defined: `minigccg4.s:199`

### string_pool (function)
- Defined: `minigccg4.s:203`

### string_count (function)
- Defined: `minigccg4.s:207`

### ptr_init_name (function)
- Defined: `minigccg4.s:211`

### ptr_init_label (function)
- Defined: `minigccg4.s:215`

### ptr_init_count (function)
- Defined: `minigccg4.s:219`

### struct_total_size (function)
- Defined: `minigccg4.s:223`

### struct_member_names (function)
- Defined: `minigccg4.s:227`

### struct_member_offsets (function)
- Defined: `minigccg4.s:231`

### struct_member_sizes (function)
- Defined: `minigccg4.s:235`

### struct_member_elem_sizes (function)
- Defined: `minigccg4.s:239`

### struct_member_count (function)
- Defined: `minigccg4.s:243`

### if_nest (function)
- Defined: `minigccg4.s:247`

### if_depth (function)
- Defined: `minigccg4.s:251`

### macro_count (function)
- Defined: `minigccg4.s:256`

### save_parser_state (function)
- Defined: `minigccg4.s:260`

### restore_parser_state (function)
- Defined: `minigccg4.s:399`

### macros (function)
- Defined: `minigccg4.s:587`

### find_macro (function)
- Defined: `minigccg4.s:591`

### add_macro (function)
- Defined: `minigccg4.s:655`

### macro_p (function)
- Defined: `minigccg4.s:785`

### macro_ok (function)
- Defined: `minigccg4.s:789`

### macro_skipws (function)
- Defined: `minigccg4.s:793`

### macro_hex_digit (function)
- Defined: `minigccg4.s:834`

### macro_digit_val (function)
- Defined: `minigccg4.s:932`

### macro_primary (function)
- Defined: `minigccg4.s:1053`

### macro_unary (function)
- Defined: `minigccg4.s:1851`

### macro_mul (function)
- Defined: `minigccg4.s:1979`

### macro_add (function)
- Defined: `minigccg4.s:2182`

### macro_shift (function)
- Defined: `minigccg4.s:2280`

### macro_cmp (function)
- Defined: `minigccg4.s:2433`

### macro_eq (function)
- Defined: `minigccg4.s:2654`

### macro_bitand (function)
- Defined: `minigccg4.s:2807`

### macro_bitxor (function)
- Defined: `minigccg4.s:2893`

### macro_bitor (function)
- Defined: `minigccg4.s:2958`

### macro_logand (function)
- Defined: `minigccg4.s:3044`

### macro_or_expr (function)
- Defined: `minigccg4.s:3141`

### macro_fold (function)
- Defined: `minigccg4.s:3238`

### error (function)
- Defined: `minigccg4.s:3259`

### safe_malloc (function)
- Defined: `minigccg4.s:3311`

### safe_strcpy (function)
- Defined: `minigccg4.s:3366`

### safe_strtoll (function)
- Defined: `minigccg4.s:3443`

### is_file_processed (function)
- Defined: `minigccg4.s:3558`

### mark_file_processed (function)
- Defined: `minigccg4.s:3619`

### get_dir_from_path (function)
- Defined: `minigccg4.s:3731`

### resolve_local_include (function)
- Defined: `minigccg4.s:3874`

### read_include_file (function)
- Defined: `minigccg4.s:4324`

### hash_name (function)
- Defined: `minigccg4.s:4532`

### hash_init (function)
- Defined: `minigccg4.s:4590`

### push_scope (function)
- Defined: `minigccg4.s:4629`

### pop_scope (function)
- Defined: `minigccg4.s:4681`

### truncate_symbols (function)
- Defined: `minigccg4.s:4877`

### my_isspace (function)
- Defined: `minigccg4.s:5030`

### my_isalpha (function)
- Defined: `minigccg4.s:5119`

### my_isdigit (function)
- Defined: `minigccg4.s:5188`

### my_isalnum (function)
- Defined: `minigccg4.s:5228`

### lex_fail (function)
- Defined: `minigccg4.s:5273`

### lex_kw_add (function)
- Defined: `minigccg4.s:5377`

### lex_init_keywords (function)
- Defined: `minigccg4.s:5540`

### lex_kw_lookup (function)
- Defined: `minigccg4.s:6035`

### lex_match_op (function)
- Defined: `minigccg4.s:6129`

### lex_hex_val (function)
- Defined: `minigccg4.s:6212`

### lex_is_int_suffix (function)
- Defined: `minigccg4.s:6334`

### lex_number (function)
- Defined: `minigccg4.s:6403`

### next_token (function)
- Defined: `minigccg4.s:7933`

### restart (function)
- Defined: `minigccg4.s:7937`

### match (function)
- Defined: `minigccg4.s:12616`

### emit (function)
- Defined: `minigccg4.s:12654`

### emit_i (function)
- Defined: `minigccg4.s:12768`

### emit_s (function)
- Defined: `minigccg4.s:12817`

### emit_is (function)
- Defined: `minigccg4.s:12866`

### emit_si (function)
- Defined: `minigccg4.s:12919`

### emit_asciz_body (function)
- Defined: `minigccg4.s:12972`

### emit_label (function)
- Defined: `minigccg4.s:13296`

### find_symbol (function)
- Defined: `minigccg4.s:13325`

### add_symbol (function)
- Defined: `minigccg4.s:13412`

### arg_reg (function)
- Defined: `minigccg4.s:13786`

### libc_global_name (function)
- Defined: `minigccg4.s:13862`

### unary (function)
- Defined: `minigccg4.s:13990`

### lvalue_address (function)
- Defined: `minigccg4.s:16683`

### handle_postfix (function)
- Defined: `minigccg4.s:17208`

### unary_expr (function)
- Defined: `minigccg4.s:18230`

### multiplicative_expr (function)
- Defined: `minigccg4.s:18255`

### additive_expr (function)
- Defined: `minigccg4.s:18877`

### shift_expr (function)
- Defined: `minigccg4.s:19372`

### relational_expr (function)
- Defined: `minigccg4.s:19518`

### equality_expr (function)
- Defined: `minigccg4.s:20120`

### bitwise_and_expr (function)
- Defined: `minigccg4.s:20598`

### bitwise_xor_expr (function)
- Defined: `minigccg4.s:20676`

### bitwise_or_expr (function)
- Defined: `minigccg4.s:20754`

### logical_and_expr (function)
- Defined: `minigccg4.s:20832`

### logical_or_expr (function)
- Defined: `minigccg4.s:20995`

### conditional_expr (function)
- Defined: `minigccg4.s:21158`

### emit_compound_op (function)
- Defined: `minigccg4.s:21290`

### assignment_expr (function)
- Defined: `minigccg4.s:21792`

### asm_tmpl (function)
- Defined: `minigccg4.s:25107`

### asm_text (function)
- Defined: `minigccg4.s:25111`

### asm_mem (function)
- Defined: `minigccg4.s:25115`

### asm_is_out (function)
- Defined: `minigccg4.s:25119`

### asm_home (function)
- Defined: `minigccg4.s:25123`

### asm_slot (function)
- Defined: `minigccg4.s:25127`

### asm_size (function)
- Defined: `minigccg4.s:25131`

### asm_nops (function)
- Defined: `minigccg4.s:25135`

### asm_nslots (function)
- Defined: `minigccg4.s:25139`

### asm_unique (function)
- Defined: `minigccg4.s:25143`

### asm_scratch (function)
- Defined: `minigccg4.s:25147`

### asm_home_text (function)
- Defined: `minigccg4.s:25223`

### asm_reg_sized (function)
- Defined: `minigccg4.s:25380`

### asm_fixed_home (function)
- Defined: `minigccg4.s:25926`

### asm_emit_template (function)
- Defined: `minigccg4.s:25990`

### asm_parse_mem (function)
- Defined: `minigccg4.s:26230`

### asm_emit_ss (function)
- Defined: `minigccg4.s:26791`

### asm_parse_one (function)
- Defined: `minigccg4.s:26844`

### asm_assign_homes (function)
- Defined: `minigccg4.s:27815`

### asm_emit_all (function)
- Defined: `minigccg4.s:28260`

### parse_asm_block (function)
- Defined: `minigccg4.s:28770`

### statement (function)
- Defined: `minigccg4.s:29339`

### restart_typedef (function)
- Defined: `minigccg4.s:32858`

### restart_int (function)
- Defined: `minigccg4.s:33890`

### parse_function (function)
- Defined: `minigccg4.s:35049`

### parse_enum (function)
- Defined: `minigccg4.s:36514`

### skip_struct (function)
- Defined: `minigccg4.s:36926`

### skip_typedef (function)
- Defined: `minigccg4.s:37512`

### data_directive (function)
- Defined: `minigccg4.s:38002`

### emit_global_bss (function)
- Defined: `minigccg4.s:38052`

### emit_global_data_head (function)
- Defined: `minigccg4.s:38143`

### parse_const_int (function)
- Defined: `minigccg4.s:38198`

### intern_string (function)
- Defined: `minigccg4.s:38361`

### emit_global_initializer (function)
- Defined: `minigccg4.s:38454`

### parse_program (function)
- Defined: `minigccg4.s:39171`

### emit_float_consts (function)
- Defined: `minigccg4.s:40976`

### emit_string_pool (function)
- Defined: `minigccg4.s:41075`

### main (function)
- Defined: `minigccg4.s:41177`

### _start (function)
- Defined: `minigccg4.s:45151`

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

### printf (function) `printf("Compilation successful! The compiler includes files correctly.\n");`
- Defined: `test_include.c:5`
- Depends on: `my_library.h`

## test_ld_selfhost.sh

### pass (function)
- Defined: `test_ld_selfhost.sh:27`

### fail (function)
- Defined: `test_ld_selfhost.sh:32`

## tests/neg_asm.c

### main (function) `int main(void)`
- Defined: `tests/neg_asm.c:1`

### volatile (function) `__asm__ volatile("mov %0, %%rax" : "=z"(x));`
- Defined: `tests/neg_asm.c:3`

## tests/neg_asm2.c

### main (function) `int main(void)`
- Defined: `tests/neg_asm2.c:1`

### volatile (function) `__asm__ volatile("nop" : "=a"(a), "=a"(b));`
- Defined: `tests/neg_asm2.c:4`

## tests/neg_asm3.c

### main (function) `int main(void)`
- Defined: `tests/neg_asm3.c:1`

### volatile (function) `__asm__ volatile("nop" : "+r"(a));`
- Defined: `tests/neg_asm3.c:3`

## tests/neg_comment.c

### main (function) `int main(void)`
- Defined: `tests/neg_comment.c:1`

## tests/neg_float.c

### main (function) `int main(void)`
- Defined: `tests/neg_float.c:1`

## tests/neg_hex.c

### main (function) `int main(void)`
- Defined: `tests/neg_hex.c:1`

## tests/neg_octal.c

### main (function) `int main(void)`
- Defined: `tests/neg_octal.c:1`

## tests/t_args.c

### main (function) `int main(int argc, char **argv)`
- Defined: `tests/t_args.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d\n", argc);`
- Defined: `tests/t_args.c:4`

## tests/t_arith.c

### main (function) `int main(void)`
- Defined: `tests/t_arith.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d %d %d\n", a, b, c);`
- Defined: `tests/t_arith.c:19`

## tests/t_arrays.c

### main (function) `int main(void)`
- Defined: `tests/t_arrays.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d %d %d\n", a[0], a[2], a[4]);`
- Defined: `tests/t_arrays.c:7`

## tests/t_asm.c

### main (function) `int main(void)`
- Defined: `tests/t_asm.c:4`

### volatile (function) `__asm__ volatile("nop");`
- Defined: `tests/t_asm.c:6`

### __asm (function) `__asm("nop");`
- Defined: `tests/t_asm.c:7`

### __asm__ (function) `__asm__("nop");`
- Defined: `tests/t_asm.c:8`

### printf (function) `printf("%d %d\n", probe, v);`
- Defined: `tests/t_asm.c:11`

## tests/t_asm3.c

### main (function) `int main(void)`
- Defined: `tests/t_asm3.c:5`

### volatile (function) `__asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi));`
- Defined: `tests/t_asm3.c:9`

### printf (function) `printf("%d\n", (lo == 0 && hi == 0) ? 0 : 1);`
- Defined: `tests/t_asm3.c:10`

## tests/t_compound.c

### main (function) `int main(void)`
- Defined: `tests/t_compound.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d\n", m);`
- Defined: `tests/t_compound.c:8`

## tests/t_dowhile.c

### main (function) `int main(void)`
- Defined: `tests/t_dowhile.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d %d\n", sum, i);`
- Defined: `tests/t_dowhile.c:10`

## tests/t_enum.c

### main (function) `int main(void)`
- Defined: `tests/t_enum.c:12`

### printf (function) `printf("%d %d %d\n", RED, GREEN, BLUE);`
- Defined: `tests/t_enum.c:14`

## tests/t_float.c

### main (function) `int main(void)`
- Defined: `tests/t_float.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d %d %d\n", a + b == 4.0, a * b == 3.75, b - a == 1.0);`
- Defined: `tests/t_float.c:6`

## tests/t_for.c

### main (function) `int main(void)`
- Defined: `tests/t_for.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d\n", sum);`
- Defined: `tests/t_for.c:7`

## tests/t_globinit.c

### main (function) `int main(void)`
- Defined: `tests/t_globinit.c:7`

### printf (function) `printf("%d %d %d\n", gscalar, garr[0], garr[3]);`
- Defined: `tests/t_globinit.c:9`

## tests/t_goto.c

### main (function) `int main(void)`
- Defined: `tests/t_goto.c:2`
- Doc: include <stdio.h>

### printf (function) `end: printf("%d\n", i);`
- Defined: `tests/t_goto.c:13`

## tests/t_hexoct.c

### main (function) `int main(void)`
- Defined: `tests/t_hexoct.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d %d %d\n", h1, h2, h3);`
- Defined: `tests/t_hexoct.c:11`

## tests/t_if.c

### grade (function) `int grade(int s)`
- Defined: `tests/t_if.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/t_if.c:9`

### printf (function) `printf("%d %d %d\n", grade(95), grade(80), grade(60));`
- Defined: `tests/t_if.c:12`

## tests/t_include.c

### main (function) `int main(void)`
- Defined: `tests/t_include.c:4`
- Doc: include <stdio.h> include "t_outer_h.h" include "t_outer_h.h"
- Depends on: `tests/t_outer_h.h`

### printf (function) `printf("%d %d %d\n", INNER_VAL, OUTER_VAL, inner_add(40, 2));`
- Defined: `tests/t_include.c:6`
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

### printf (function) `printf("%d %d %d\n", isq(6), icube(3), idbl(20));`
- Defined: `tests/t_inline.c:17`
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

### printf (function) `printf("%d %d %d\n", t && t, t && f, f || f);`
- Defined: `tests/t_logic.c:6`

## tests/t_macros.c

### main (function) `int main(void)`
- Defined: `tests/t_macros.c:9`
- Doc: define KONST 40 define SHIFTED (1 << 4) define HEXED 0x10 define SUMMED (KONST + 2) define NEGD (0 - 3) define SZ 4

### printf (function) `printf("%d %d %d\n", KONST, SHIFTED, HEXED);`
- Defined: `tests/t_macros.c:11`

## tests/t_pointers.c

### bump (function) `void bump(int *p)`
- Defined: `tests/t_pointers.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/t_pointers.c:6`

### printf (function) `printf("%d %d\n", x, *p);`
- Defined: `tests/t_pointers.c:10`

## tests/t_recursion.c

### fib (function) `int fib(int n)`
- Defined: `tests/t_recursion.c:2`
- Doc: include <stdio.h>

### fact (function) `int fact(int n)`
- Defined: `tests/t_recursion.c:7`

### main (function) `int main(void)`
- Defined: `tests/t_recursion.c:12`

### printf (function) `printf("%d %d\n", fib(15), fact(7));`
- Defined: `tests/t_recursion.c:14`

## tests/t_scope.c

### touch (function) `void touch(void)`
- Defined: `tests/t_scope.c:6`

### main (function) `int main(void)`
- Defined: `tests/t_scope.c:11`

### printf (function) `printf("%d %d\n", g, K);`
- Defined: `tests/t_scope.c:13`

## tests/t_sizeof.c

### main (function) `int main(void)`
- Defined: `tests/t_sizeof.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d %d %d\n", sizeof(char), sizeof(float), sizeof(double));`
- Defined: `tests/t_sizeof.c:4`

## tests/t_strings.c

### main (function) `int main(void)`
- Defined: `tests/t_strings.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("hello\n");`
- Defined: `tests/t_strings.c:4`

## tests/t_struct.c

### manhattan (function) `int manhattan(Point *p)`
- Defined: `tests/t_struct.c:9`

### main (function) `int main(void)`
- Defined: `tests/t_struct.c:17`

### printf (function) `printf("%d %d\n", pp->x, pp->y);`
- Defined: `tests/t_struct.c:22`

## tests/t_switch.c

### classify (function) `int classify(int v)`
- Defined: `tests/t_switch.c:2`
- Doc: include <stdio.h>

### main (function) `int main(void)`
- Defined: `tests/t_switch.c:13`

### printf (function) `printf("%d %d %d\n", classify(1), classify(2), classify(3));`
- Defined: `tests/t_switch.c:15`

## tests/t_typedef.c

### main (function) `int main(void)`
- Defined: `tests/t_typedef.c:15`

### printf (function) `printf("%d\n", shared + 2);`
- Defined: `tests/t_typedef.c:18`

## tests/t_while.c

### main (function) `int main(void)`
- Defined: `tests/t_while.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d %d\n", i, sum);`
- Defined: `tests/t_while.c:12`
