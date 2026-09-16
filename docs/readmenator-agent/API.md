# API

## minigcc.c

### save_parser_state (function) `static void save_parser_state(ParserState *state)`
- Defined: `minigcc.c:247`

### restore_parser_state (function) `static void restore_parser_state(ParserState *state)`
- Defined: `minigcc.c:275`

### find_macro (function) `static int find_macro(const char *name)`
- Defined: `minigcc.c:314`

### add_macro (function) `static void add_macro(const char *name, int value)`
- Defined: `minigcc.c:323`

### macro_skipws (function) `static void macro_skipws(void)`
- Defined: `minigcc.c:350`

### macro_hex_digit (function) `static int macro_hex_digit(int c)`
- Defined: `minigcc.c:354`

### macro_digit_val (function) `static int macro_digit_val(int c)`
- Defined: `minigcc.c:361`

### macro_primary (function) `static int macro_primary(void)`
- Defined: `minigcc.c:368`

### macro_unary (function) `static int macro_unary(void)`
- Defined: `minigcc.c:442`

### macro_mul (function) `static int macro_mul(void)`
- Defined: `minigcc.c:451`

### macro_add (function) `static int macro_add(void)`
- Defined: `minigcc.c:476`

### macro_shift (function) `static int macro_shift(void)`
- Defined: `minigcc.c:493`

### macro_cmp (function) `static int macro_cmp(void)`
- Defined: `minigcc.c:510`

### macro_eq (function) `static int macro_eq(void)`
- Defined: `minigcc.c:533`

### macro_bitand (function) `static int macro_bitand(void)`
- Defined: `minigcc.c:550`

### macro_bitxor (function) `static int macro_bitxor(void)`
- Defined: `minigcc.c:564`

### macro_bitor (function) `static int macro_bitor(void)`
- Defined: `minigcc.c:578`

### macro_logand (function) `static int macro_logand(void)`
- Defined: `minigcc.c:592`

### macro_or_expr (function) `static int macro_or_expr(void)`
- Defined: `minigcc.c:606`

### macro_fold (function) `static int macro_fold(void)`
- Defined: `minigcc.c:620`

### error (function) `static void error(const char *msg)`
- Defined: `minigcc.c:625`

### safe_malloc (function) `static void *safe_malloc(size_t size)`
- Defined: `minigcc.c:631`

### safe_strcpy (function) `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- Defined: `minigcc.c:640`

### safe_strtoll (function) `static long safe_strtoll(const char *s)`
- Defined: `minigcc.c:649`

### is_file_processed (function) `static int is_file_processed(const char *path)`
- Defined: `minigcc.c:662`

### mark_file_processed (function) `static void mark_file_processed(const char *path)`
- Defined: `minigcc.c:671`

### get_dir_from_path (function) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- Defined: `minigcc.c:683`

### resolve_local_include (function) `static char *resolve_local_include(const char *target)`
- Defined: `minigcc.c:702`

### read_include_file (function) `static char *read_include_file(const char *path)`
- Defined: `minigcc.c:741`

### hash_name (function) `static int hash_name(const char *name)`
- Defined: `minigcc.c:766`
- Doc: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multipli

### hash_init (function) `static void hash_init(void)`
- Defined: `minigcc.c:775`

### push_scope (function) `static void push_scope(void)`
- Defined: `minigcc.c:780`

### pop_scope (function) `static void pop_scope(void)`
- Defined: `minigcc.c:788`

### truncate_symbols (function) `static void truncate_symbols(int start_idx)`
- Defined: `minigcc.c:818`
- Doc: Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (

### my_isspace (function) `static int my_isspace(int c)`
- Defined: `minigcc.c:836`

### my_isalpha (function) `static int my_isalpha(int c)`
- Defined: `minigcc.c:846`

### my_isdigit (function) `static int my_isdigit(int c)`
- Defined: `minigcc.c:852`

### my_isalnum (function) `static int my_isalnum(int c)`
- Defined: `minigcc.c:857`

### lex_fail (function) `static void lex_fail(const char *msg, char *start, char *end)`
- Defined: `minigcc.c:863`

### lex_kw_add (function) `static void lex_kw_add(const char *name, int id)`
- Defined: `minigcc.c:873`

### lex_init_keywords (function) `static void lex_init_keywords(void)`
- Defined: `minigcc.c:886`

### lex_kw_lookup (function) `static int lex_kw_lookup(void)`
- Defined: `minigcc.c:926`

### lex_match_op (function) `static int lex_match_op(const char *op, int id)`
- Defined: `minigcc.c:938`

### lex_hex_val (function) `static int lex_hex_val(int c)`
- Defined: `minigcc.c:950`

### lex_is_int_suffix (function) `static int lex_is_int_suffix(int c)`
- Defined: `minigcc.c:957`

### lex_number (function) `static void lex_number(void)`
- Defined: `minigcc.c:963`

### next_token (function) `static void next_token(void)`
- Defined: `minigcc.c:1082`
- Doc: float_const_is_float[float_const_count] = (sfx == 'f' || sfx == 'F') ? 1 : 0; safe_strcpy(float_const_str[float_const_co

### match (function) `static void match(int expected)`
- Defined: `minigcc.c:1510`

### emit (function) `static void emit(const char *s)`
- Defined: `minigcc.c:1515`

### emit_i (function) `static void emit_i(const char *fmt, int v)`
- Defined: `minigcc.c:1529`

### emit_s (function) `static void emit_s(const char *fmt, const char *s)`
- Defined: `minigcc.c:1535`

### emit_is (function) `static void emit_is(const char *fmt, int v, const char *s)`
- Defined: `minigcc.c:1541`

### emit_si (function) `static void emit_si(const char *fmt, const char *s, int v)`
- Defined: `minigcc.c:1547`

### emit_asciz_body (function) `static void emit_asciz_body(const char *s)`
- Defined: `minigcc.c:1557`
- Doc: Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by t

### emit_label (function) `static void emit_label(int label)`
- Defined: `minigcc.c:1575`

### find_symbol (function) `static int find_symbol(const char *name)`
- Defined: `minigcc.c:1582`
- Doc: else if (c == '\a') fprintf(output, "\\a"); else if (c == '\b') fprintf(output, "\\b"); else if (c >= 32 && c <= 126) fp

### add_symbol (function) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- Defined: `minigcc.c:1592`

### arg_reg (function) `static const char *arg_reg(int i)`
- Defined: `minigcc.c:1666`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### libc_global_name (function) `static const char *libc_global_name(int i)`
- Defined: `minigcc.c:1676`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### typedef_name (function) `static const char *typedef_name(int i)`
- Defined: `minigcc.c:1688`

### typedef_size (function) `static int typedef_size(int i)`
- Defined: `minigcc.c:1704`

### typedef_uns (function) `static int typedef_uns(int i)`
- Defined: `minigcc.c:1720`

### unary (function) `static void unary(void)`
- Defined: `minigcc.c:1729`

### strcmp (function) `strcmp(id_name, "va_start") == 0)`
- Defined: `minigcc.c:1766`

### strcmp (function) `strcmp(id_name, "va_end") == 0)`
- Defined: `minigcc.c:1769`

### strcmp (function) `strcmp(id_name, "va_arg") == 0)`
- Defined: `minigcc.c:1772`

### parse_sync_call (function) `static void parse_sync_call(const char *name)`
- Defined: `minigcc.c:2092`

### parse_va_start (function) `static void parse_va_start(void)`
- Defined: `minigcc.c:2126`

### parse_va_arg (function) `static void parse_va_arg(void)`
- Defined: `minigcc.c:2159`

### parse_va_end (function) `static void parse_va_end(void)`
- Defined: `minigcc.c:2209`

### lvalue_address (function) `static void lvalue_address(void)`
- Defined: `minigcc.c:2224`

### handle_postfix (function) `static void handle_postfix(int is_lvalue)`
- Defined: `minigcc.c:2281`

### unary_expr (function) `static void unary_expr(void)`
- Defined: `minigcc.c:2442`

### multiplicative_expr (function) `static void multiplicative_expr(void)`
- Defined: `minigcc.c:2457`

### additive_expr (function) `static void additive_expr(void)`
- Defined: `minigcc.c:2521`

### shift_expr (function) `static void shift_expr(void)`
- Defined: `minigcc.c:2582`

### relational_expr (function) `static void relational_expr(void)`
- Defined: `minigcc.c:2601`

### equality_expr (function) `static void equality_expr(void)`
- Defined: `minigcc.c:2654`

### bitwise_and_expr (function) `static void bitwise_and_expr(void)`
- Defined: `minigcc.c:2703`

### bitwise_xor_expr (function) `static void bitwise_xor_expr(void)`
- Defined: `minigcc.c:2715`

### bitwise_or_expr (function) `static void bitwise_or_expr(void)`
- Defined: `minigcc.c:2727`

### logical_and_expr (function) `static void logical_and_expr(void)`
- Defined: `minigcc.c:2739`

### logical_or_expr (function) `static void logical_or_expr(void)`
- Defined: `minigcc.c:2759`

### conditional_expr (function) `static void conditional_expr(void)`
- Defined: `minigcc.c:2779`

### emit_compound_op (function) `static void emit_compound_op(int op, int asize)`
- Defined: `minigcc.c:2797`

### assignment_expr (function) `static void assignment_expr(void)`
- Defined: `minigcc.c:2838`

### asm_scratch (function) `static const char *asm_scratch(int i)`
- Defined: `minigcc.c:3059`

### asm_home_text (function) `static void asm_home_text(int home, char *buf)`
- Defined: `minigcc.c:3068`

### asm_reg_sized (function) `static void asm_reg_sized(int home, int size, char *buf)`
- Defined: `minigcc.c:3076`

### asm_fixed_home (function) `static int asm_fixed_home(int c)`
- Defined: `minigcc.c:3112`

### asm_emit_template (function) `static void asm_emit_template(void)`
- Defined: `minigcc.c:3120`

### asm_parse_mem (function) `static void asm_parse_mem(int idx, int is_out)`
- Defined: `minigcc.c:3147`

### asm_emit_ss (function) `static void asm_emit_ss(const char *fmt, const char *a, const char *b)`
- Defined: `minigcc.c:3205`

### asm_parse_one (function) `static void asm_parse_one(int idx, int is_out)`
- Defined: `minigcc.c:3211`

### asm_assign_homes (function) `static void asm_assign_homes(void)`
- Defined: `minigcc.c:3275`

### asm_emit_all (function) `static void asm_emit_all(void)`
- Defined: `minigcc.c:3320`

### skip_gcc_attribute (function) `static int skip_gcc_attribute(void)`
- Defined: `minigcc.c:3368`

### strcmp (function) `strcmp(token, "returns_twice") == 0 ||
                       strcmp(token, "always_inline") == 0)`
- Defined: `minigcc.c:3389`

### parse_trailing_align (function) `static void parse_trailing_align(void)`
- Defined: `minigcc.c:3418`

### parse_asm_block (function) `static void parse_asm_block(void)`
- Defined: `minigcc.c:3425`

### statement (function) `static void statement(void)`
- Defined: `minigcc.c:3489`

### parse_function (function) `static void parse_function(const char *name, int ret_type)`
- Defined: `minigcc.c:4179`

### parse_enum (function) `static void parse_enum(void)`
- Defined: `minigcc.c:4355`

### skip_struct_fields (function) `static void skip_struct_fields(int fsize, int funs, int ffloat)`
- Defined: `minigcc.c:4405`

### skip_struct (function) `static void skip_struct(void)`
- Defined: `minigcc.c:4440`

### skip_typedef (function) `static void skip_typedef(void)`
- Defined: `minigcc.c:4503`

### data_directive (function) `static const char *data_directive(int size)`
- Defined: `minigcc.c:4562`
- Doc: s->const_value = 8;  /* just a marker /* If a struct was just parsed, store its size if (struct_total_size > 0) s->const

### emit_global_bss (function) `static void emit_global_bss(const char *name, int is_static, int size)`
- Defined: `minigcc.c:4570`
- Doc: } } match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(int size) { if (si

### emit_global_data_head (function) `static void emit_global_data_head(const char *name, int is_static)`
- Defined: `minigcc.c:4581`

### parse_const_int (function) `static int parse_const_int(long long *out)`
- Defined: `minigcc.c:4595`
- Doc: Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro 

### intern_string (function) `static int intern_string(const char *text)`
- Defined: `minigcc.c:4618`
- Doc: } if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg 

### emit_global_initializer (function) `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...`
- Defined: `minigcc.c:4635`
- Doc: Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is 

### parse_program (function) `static void parse_program(void)`
- Defined: `minigcc.c:4699`

### emit_float_consts (function) `static void emit_float_consts(void)`
- Defined: `minigcc.c:4883`

### emit_string_pool (function) `static void emit_string_pool(void)`
- Defined: `minigcc.c:4893`

### main (function) `int main(int argc, char **argv)`
- Defined: `minigcc.c:4903`

### fprintf (function) `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);`
- Defined: `minigcc.c:627`

### exit (function) `exit(EXIT_FAILURE);`
- Defined: `minigcc.c:629`

### fclose (function) `fclose(f);`
- Defined: `minigcc.c:706`

### fseek (function) `fseek(f, 0, SEEK_END);`
- Defined: `minigcc.c:745`

### rewind (function) `rewind(f);`
- Defined: `minigcc.c:751`

### free (function) `free(buf);`
- Defined: `minigcc.c:755`

### snprintf (function) `snprintf(token, MAX_TOKEN_LEN, "%ld", v);`
- Defined: `minigcc.c:978`

### fputc (function) `fputc('%', output);`
- Defined: `minigcc.c:1520`

### strncpy (function) `strncpy(d, name, MAX_IDENT_LEN - 1);`
- Defined: `minigcc.c:1598`

### memcpy (function) `memcpy(apname, token, nlen);`
- Defined: `minigcc.c:2135`

### strcpy (function) `strcpy(saved_token, token);`
- Defined: `minigcc.c:2843`

### fputs (function) `fputs(asm_text[oi], output);`
- Defined: `minigcc.c:3136`

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

### current_elem_unsigned (function)
- Defined: `minigccg2.s:123`

### deref_w (function)
- Defined: `minigccg2.s:127`

### deref_u (function)
- Defined: `minigccg2.s:131`

### no_postfix_deref (function)
- Defined: `minigccg2.s:135`

### expr_type (function)
- Defined: `minigccg2.s:139`

### static_flag (function)
- Defined: `minigccg2.s:143`

### unsigned_type (function)
- Defined: `minigccg2.s:147`

### const_flag (function)
- Defined: `minigccg2.s:151`

### extern_flag (function)
- Defined: `minigccg2.s:155`

### global_emit_deferred (function)
- Defined: `minigccg2.s:159`

### pending_align (function)
- Defined: `minigccg2.s:163`

### func_is_variadic (function)
- Defined: `minigccg2.s:167`

### vararg_nfixed (function)
- Defined: `minigccg2.s:171`

### vararg_save_off (function)
- Defined: `minigccg2.s:175`

### float_const_str (function)
- Defined: `minigccg2.s:179`

### float_const_is_float (function)
- Defined: `minigccg2.s:183`

### float_const_count (function)
- Defined: `minigccg2.s:187`

### switch_case_values (function)
- Defined: `minigccg2.s:191`

### switch_case_labels (function)
- Defined: `minigccg2.s:195`

### switch_case_count (function)
- Defined: `minigccg2.s:199`

### switch_has_default (function)
- Defined: `minigccg2.s:203`

### switch_default_label (function)
- Defined: `minigccg2.s:207`

### break_target (function)
- Defined: `minigccg2.s:211`

### break_target_valid (function)
- Defined: `minigccg2.s:215`

### continue_target (function)
- Defined: `minigccg2.s:219`

### continue_target_valid (function)
- Defined: `minigccg2.s:223`

### str_label_counter (function)
- Defined: `minigccg2.s:227`

### string_pool (function)
- Defined: `minigccg2.s:231`

### string_count (function)
- Defined: `minigccg2.s:235`

### ptr_init_name (function)
- Defined: `minigccg2.s:239`

### ptr_init_label (function)
- Defined: `minigccg2.s:243`

### ptr_init_count (function)
- Defined: `minigccg2.s:247`

### struct_total_size (function)
- Defined: `minigccg2.s:251`

### struct_member_names (function)
- Defined: `minigccg2.s:255`

### struct_member_offsets (function)
- Defined: `minigccg2.s:259`

### struct_member_sizes (function)
- Defined: `minigccg2.s:263`

### struct_member_elem_sizes (function)
- Defined: `minigccg2.s:267`

### struct_member_unsigned (function)
- Defined: `minigccg2.s:271`

### struct_member_is_float (function)
- Defined: `minigccg2.s:275`

### struct_member_count (function)
- Defined: `minigccg2.s:279`

### if_nest (function)
- Defined: `minigccg2.s:283`

### if_depth (function)
- Defined: `minigccg2.s:287`

### macro_count (function)
- Defined: `minigccg2.s:292`

### save_parser_state (function)
- Defined: `minigccg2.s:296`

### restore_parser_state (function)
- Defined: `minigccg2.s:453`

### macros (function)
- Defined: `minigccg2.s:662`

### find_macro (function)
- Defined: `minigccg2.s:666`

### add_macro (function)
- Defined: `minigccg2.s:730`

### macro_p (function)
- Defined: `minigccg2.s:860`

### macro_ok (function)
- Defined: `minigccg2.s:864`

### macro_skipws (function)
- Defined: `minigccg2.s:868`

### macro_hex_digit (function)
- Defined: `minigccg2.s:909`

### macro_digit_val (function)
- Defined: `minigccg2.s:1007`

### macro_primary (function)
- Defined: `minigccg2.s:1128`

### macro_unary (function)
- Defined: `minigccg2.s:1926`

### macro_mul (function)
- Defined: `minigccg2.s:2054`

### macro_add (function)
- Defined: `minigccg2.s:2257`

### macro_shift (function)
- Defined: `minigccg2.s:2355`

### macro_cmp (function)
- Defined: `minigccg2.s:2508`

### macro_eq (function)
- Defined: `minigccg2.s:2729`

### macro_bitand (function)
- Defined: `minigccg2.s:2882`

### macro_bitxor (function)
- Defined: `minigccg2.s:2968`

### macro_bitor (function)
- Defined: `minigccg2.s:3033`

### macro_logand (function)
- Defined: `minigccg2.s:3119`

### macro_or_expr (function)
- Defined: `minigccg2.s:3216`

### macro_fold (function)
- Defined: `minigccg2.s:3313`

### error (function)
- Defined: `minigccg2.s:3334`

### safe_malloc (function)
- Defined: `minigccg2.s:3386`

### safe_strcpy (function)
- Defined: `minigccg2.s:3441`

### safe_strtoll (function)
- Defined: `minigccg2.s:3518`

### is_file_processed (function)
- Defined: `minigccg2.s:3633`

### mark_file_processed (function)
- Defined: `minigccg2.s:3694`

### get_dir_from_path (function)
- Defined: `minigccg2.s:3806`

### resolve_local_include (function)
- Defined: `minigccg2.s:3949`

### read_include_file (function)
- Defined: `minigccg2.s:4399`

### hash_name (function)
- Defined: `minigccg2.s:4607`

### hash_init (function)
- Defined: `minigccg2.s:4665`

### push_scope (function)
- Defined: `minigccg2.s:4704`

### pop_scope (function)
- Defined: `minigccg2.s:4756`

### truncate_symbols (function)
- Defined: `minigccg2.s:4952`

### my_isspace (function)
- Defined: `minigccg2.s:5105`

### my_isalpha (function)
- Defined: `minigccg2.s:5194`

### my_isdigit (function)
- Defined: `minigccg2.s:5263`

### my_isalnum (function)
- Defined: `minigccg2.s:5303`

### lex_fail (function)
- Defined: `minigccg2.s:5348`

### lex_kw_add (function)
- Defined: `minigccg2.s:5452`

### lex_init_keywords (function)
- Defined: `minigccg2.s:5615`

### lex_kw_lookup (function)
- Defined: `minigccg2.s:6138`

### lex_match_op (function)
- Defined: `minigccg2.s:6232`

### lex_hex_val (function)
- Defined: `minigccg2.s:6315`

### lex_is_int_suffix (function)
- Defined: `minigccg2.s:6437`

### lex_number (function)
- Defined: `minigccg2.s:6506`

### next_token (function)
- Defined: `minigccg2.s:8036`

### restart (function)
- Defined: `minigccg2.s:8040`

### match (function)
- Defined: `minigccg2.s:12719`

### emit (function)
- Defined: `minigccg2.s:12757`

### emit_i (function)
- Defined: `minigccg2.s:12871`

### emit_s (function)
- Defined: `minigccg2.s:12920`

### emit_is (function)
- Defined: `minigccg2.s:12969`

### emit_si (function)
- Defined: `minigccg2.s:13022`

### emit_asciz_body (function)
- Defined: `minigccg2.s:13075`

### emit_label (function)
- Defined: `minigccg2.s:13399`

### find_symbol (function)
- Defined: `minigccg2.s:13428`

### add_symbol (function)
- Defined: `minigccg2.s:13515`

### arg_reg (function)
- Defined: `minigccg2.s:13922`

### libc_global_name (function)
- Defined: `minigccg2.s:13998`

### typedef_name (function)
- Defined: `minigccg2.s:14126`

### typedef_size (function)
- Defined: `minigccg2.s:14293`

### typedef_uns (function)
- Defined: `minigccg2.s:14460`

### unary (function)
- Defined: `minigccg2.s:14536`

### parse_sync_call (function)
- Defined: `minigccg2.s:18291`

### parse_va_start (function)
- Defined: `minigccg2.s:18611`

### parse_va_arg (function)
- Defined: `minigccg2.s:18953`

### parse_va_end (function)
- Defined: `minigccg2.s:19488`

### lvalue_address (function)
- Defined: `minigccg2.s:19594`

### handle_postfix (function)
- Defined: `minigccg2.s:20155`

### unary_expr (function)
- Defined: `minigccg2.s:21521`

### multiplicative_expr (function)
- Defined: `minigccg2.s:21546`

### additive_expr (function)
- Defined: `minigccg2.s:22168`

### shift_expr (function)
- Defined: `minigccg2.s:22681`

### relational_expr (function)
- Defined: `minigccg2.s:22827`

### equality_expr (function)
- Defined: `minigccg2.s:23429`

### bitwise_and_expr (function)
- Defined: `minigccg2.s:23907`

### bitwise_xor_expr (function)
- Defined: `minigccg2.s:23985`

### bitwise_or_expr (function)
- Defined: `minigccg2.s:24063`

### logical_and_expr (function)
- Defined: `minigccg2.s:24141`

### logical_or_expr (function)
- Defined: `minigccg2.s:24304`

### conditional_expr (function)
- Defined: `minigccg2.s:24467`

### emit_compound_op (function)
- Defined: `minigccg2.s:24599`

### assignment_expr (function)
- Defined: `minigccg2.s:25101`

### asm_tmpl (function)
- Defined: `minigccg2.s:28731`

### asm_text (function)
- Defined: `minigccg2.s:28735`

### asm_mem (function)
- Defined: `minigccg2.s:28739`

### asm_is_out (function)
- Defined: `minigccg2.s:28743`

### asm_home (function)
- Defined: `minigccg2.s:28747`

### asm_slot (function)
- Defined: `minigccg2.s:28751`

### asm_size (function)
- Defined: `minigccg2.s:28755`

### asm_nops (function)
- Defined: `minigccg2.s:28759`

### asm_nslots (function)
- Defined: `minigccg2.s:28763`

### asm_unique (function)
- Defined: `minigccg2.s:28767`

### asm_scratch (function)
- Defined: `minigccg2.s:28771`

### asm_home_text (function)
- Defined: `minigccg2.s:28847`

### asm_reg_sized (function)
- Defined: `minigccg2.s:29004`

### asm_fixed_home (function)
- Defined: `minigccg2.s:29811`

### asm_emit_template (function)
- Defined: `minigccg2.s:29875`

### asm_parse_mem (function)
- Defined: `minigccg2.s:30115`

### asm_emit_ss (function)
- Defined: `minigccg2.s:30676`

### asm_parse_one (function)
- Defined: `minigccg2.s:30729`

### asm_assign_homes (function)
- Defined: `minigccg2.s:31700`

### asm_emit_all (function)
- Defined: `minigccg2.s:32145`

### skip_gcc_attribute (function)
- Defined: `minigccg2.s:32727`

### parse_trailing_align (function)
- Defined: `minigccg2.s:33207`

### parse_asm_block (function)
- Defined: `minigccg2.s:33249`

### statement (function)
- Defined: `minigccg2.s:33818`

### restart_typedef (function)
- Defined: `minigccg2.s:37448`

### restart_int (function)
- Defined: `minigccg2.s:38567`

### parse_function (function)
- Defined: `minigccg2.s:39837`

### parse_enum (function)
- Defined: `minigccg2.s:41636`

### skip_struct_fields (function)
- Defined: `minigccg2.s:42067`

### skip_struct (function)
- Defined: `minigccg2.s:42405`

### skip_typedef (function)
- Defined: `minigccg2.s:43059`

### data_directive (function)
- Defined: `minigccg2.s:43613`

### emit_global_bss (function)
- Defined: `minigccg2.s:43663`

### emit_global_data_head (function)
- Defined: `minigccg2.s:43777`

### parse_const_int (function)
- Defined: `minigccg2.s:43855`

### intern_string (function)
- Defined: `minigccg2.s:44018`

### emit_global_initializer (function)
- Defined: `minigccg2.s:44111`

### parse_program (function)
- Defined: `minigccg2.s:44828`

### emit_float_consts (function)
- Defined: `minigccg2.s:46884`

### emit_string_pool (function)
- Defined: `minigccg2.s:46983`

### main (function)
- Defined: `minigccg2.s:47085`

### _start (function)
- Defined: `minigccg2.s:51933`

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

### current_elem_unsigned (function)
- Defined: `minigccg3.s:123`

### deref_w (function)
- Defined: `minigccg3.s:127`

### deref_u (function)
- Defined: `minigccg3.s:131`

### no_postfix_deref (function)
- Defined: `minigccg3.s:135`

### expr_type (function)
- Defined: `minigccg3.s:139`

### static_flag (function)
- Defined: `minigccg3.s:143`

### unsigned_type (function)
- Defined: `minigccg3.s:147`

### const_flag (function)
- Defined: `minigccg3.s:151`

### extern_flag (function)
- Defined: `minigccg3.s:155`

### global_emit_deferred (function)
- Defined: `minigccg3.s:159`

### pending_align (function)
- Defined: `minigccg3.s:163`

### func_is_variadic (function)
- Defined: `minigccg3.s:167`

### vararg_nfixed (function)
- Defined: `minigccg3.s:171`

### vararg_save_off (function)
- Defined: `minigccg3.s:175`

### float_const_str (function)
- Defined: `minigccg3.s:179`

### float_const_is_float (function)
- Defined: `minigccg3.s:183`

### float_const_count (function)
- Defined: `minigccg3.s:187`

### switch_case_values (function)
- Defined: `minigccg3.s:191`

### switch_case_labels (function)
- Defined: `minigccg3.s:195`

### switch_case_count (function)
- Defined: `minigccg3.s:199`

### switch_has_default (function)
- Defined: `minigccg3.s:203`

### switch_default_label (function)
- Defined: `minigccg3.s:207`

### break_target (function)
- Defined: `minigccg3.s:211`

### break_target_valid (function)
- Defined: `minigccg3.s:215`

### continue_target (function)
- Defined: `minigccg3.s:219`

### continue_target_valid (function)
- Defined: `minigccg3.s:223`

### str_label_counter (function)
- Defined: `minigccg3.s:227`

### string_pool (function)
- Defined: `minigccg3.s:231`

### string_count (function)
- Defined: `minigccg3.s:235`

### ptr_init_name (function)
- Defined: `minigccg3.s:239`

### ptr_init_label (function)
- Defined: `minigccg3.s:243`

### ptr_init_count (function)
- Defined: `minigccg3.s:247`

### struct_total_size (function)
- Defined: `minigccg3.s:251`

### struct_member_names (function)
- Defined: `minigccg3.s:255`

### struct_member_offsets (function)
- Defined: `minigccg3.s:259`

### struct_member_sizes (function)
- Defined: `minigccg3.s:263`

### struct_member_elem_sizes (function)
- Defined: `minigccg3.s:267`

### struct_member_unsigned (function)
- Defined: `minigccg3.s:271`

### struct_member_is_float (function)
- Defined: `minigccg3.s:275`

### struct_member_count (function)
- Defined: `minigccg3.s:279`

### if_nest (function)
- Defined: `minigccg3.s:283`

### if_depth (function)
- Defined: `minigccg3.s:287`

### macro_count (function)
- Defined: `minigccg3.s:292`

### save_parser_state (function)
- Defined: `minigccg3.s:296`

### restore_parser_state (function)
- Defined: `minigccg3.s:453`

### macros (function)
- Defined: `minigccg3.s:662`

### find_macro (function)
- Defined: `minigccg3.s:666`

### add_macro (function)
- Defined: `minigccg3.s:730`

### macro_p (function)
- Defined: `minigccg3.s:860`

### macro_ok (function)
- Defined: `minigccg3.s:864`

### macro_skipws (function)
- Defined: `minigccg3.s:868`

### macro_hex_digit (function)
- Defined: `minigccg3.s:909`

### macro_digit_val (function)
- Defined: `minigccg3.s:1007`

### macro_primary (function)
- Defined: `minigccg3.s:1128`

### macro_unary (function)
- Defined: `minigccg3.s:1926`

### macro_mul (function)
- Defined: `minigccg3.s:2054`

### macro_add (function)
- Defined: `minigccg3.s:2257`

### macro_shift (function)
- Defined: `minigccg3.s:2355`

### macro_cmp (function)
- Defined: `minigccg3.s:2508`

### macro_eq (function)
- Defined: `minigccg3.s:2729`

### macro_bitand (function)
- Defined: `minigccg3.s:2882`

### macro_bitxor (function)
- Defined: `minigccg3.s:2968`

### macro_bitor (function)
- Defined: `minigccg3.s:3033`

### macro_logand (function)
- Defined: `minigccg3.s:3119`

### macro_or_expr (function)
- Defined: `minigccg3.s:3216`

### macro_fold (function)
- Defined: `minigccg3.s:3313`

### error (function)
- Defined: `minigccg3.s:3334`

### safe_malloc (function)
- Defined: `minigccg3.s:3386`

### safe_strcpy (function)
- Defined: `minigccg3.s:3441`

### safe_strtoll (function)
- Defined: `minigccg3.s:3518`

### is_file_processed (function)
- Defined: `minigccg3.s:3633`

### mark_file_processed (function)
- Defined: `minigccg3.s:3694`

### get_dir_from_path (function)
- Defined: `minigccg3.s:3806`

### resolve_local_include (function)
- Defined: `minigccg3.s:3949`

### read_include_file (function)
- Defined: `minigccg3.s:4399`

### hash_name (function)
- Defined: `minigccg3.s:4607`

### hash_init (function)
- Defined: `minigccg3.s:4665`

### push_scope (function)
- Defined: `minigccg3.s:4704`

### pop_scope (function)
- Defined: `minigccg3.s:4756`

### truncate_symbols (function)
- Defined: `minigccg3.s:4952`

### my_isspace (function)
- Defined: `minigccg3.s:5105`

### my_isalpha (function)
- Defined: `minigccg3.s:5194`

### my_isdigit (function)
- Defined: `minigccg3.s:5263`

### my_isalnum (function)
- Defined: `minigccg3.s:5303`

### lex_fail (function)
- Defined: `minigccg3.s:5348`

### lex_kw_add (function)
- Defined: `minigccg3.s:5452`

### lex_init_keywords (function)
- Defined: `minigccg3.s:5615`

### lex_kw_lookup (function)
- Defined: `minigccg3.s:6138`

### lex_match_op (function)
- Defined: `minigccg3.s:6232`

### lex_hex_val (function)
- Defined: `minigccg3.s:6315`

### lex_is_int_suffix (function)
- Defined: `minigccg3.s:6437`

### lex_number (function)
- Defined: `minigccg3.s:6506`

### next_token (function)
- Defined: `minigccg3.s:8036`

### restart (function)
- Defined: `minigccg3.s:8040`

### match (function)
- Defined: `minigccg3.s:12719`

### emit (function)
- Defined: `minigccg3.s:12757`

### emit_i (function)
- Defined: `minigccg3.s:12871`

### emit_s (function)
- Defined: `minigccg3.s:12920`

### emit_is (function)
- Defined: `minigccg3.s:12969`

### emit_si (function)
- Defined: `minigccg3.s:13022`

### emit_asciz_body (function)
- Defined: `minigccg3.s:13075`

### emit_label (function)
- Defined: `minigccg3.s:13399`

### find_symbol (function)
- Defined: `minigccg3.s:13428`

### add_symbol (function)
- Defined: `minigccg3.s:13515`

### arg_reg (function)
- Defined: `minigccg3.s:13922`

### libc_global_name (function)
- Defined: `minigccg3.s:13998`

### typedef_name (function)
- Defined: `minigccg3.s:14126`

### typedef_size (function)
- Defined: `minigccg3.s:14293`

### typedef_uns (function)
- Defined: `minigccg3.s:14460`

### unary (function)
- Defined: `minigccg3.s:14536`

### parse_sync_call (function)
- Defined: `minigccg3.s:18291`

### parse_va_start (function)
- Defined: `minigccg3.s:18611`

### parse_va_arg (function)
- Defined: `minigccg3.s:18953`

### parse_va_end (function)
- Defined: `minigccg3.s:19488`

### lvalue_address (function)
- Defined: `minigccg3.s:19594`

### handle_postfix (function)
- Defined: `minigccg3.s:20155`

### unary_expr (function)
- Defined: `minigccg3.s:21521`

### multiplicative_expr (function)
- Defined: `minigccg3.s:21546`

### additive_expr (function)
- Defined: `minigccg3.s:22168`

### shift_expr (function)
- Defined: `minigccg3.s:22681`

### relational_expr (function)
- Defined: `minigccg3.s:22827`

### equality_expr (function)
- Defined: `minigccg3.s:23429`

### bitwise_and_expr (function)
- Defined: `minigccg3.s:23907`

### bitwise_xor_expr (function)
- Defined: `minigccg3.s:23985`

### bitwise_or_expr (function)
- Defined: `minigccg3.s:24063`

### logical_and_expr (function)
- Defined: `minigccg3.s:24141`

### logical_or_expr (function)
- Defined: `minigccg3.s:24304`

### conditional_expr (function)
- Defined: `minigccg3.s:24467`

### emit_compound_op (function)
- Defined: `minigccg3.s:24599`

### assignment_expr (function)
- Defined: `minigccg3.s:25101`

### asm_tmpl (function)
- Defined: `minigccg3.s:28731`

### asm_text (function)
- Defined: `minigccg3.s:28735`

### asm_mem (function)
- Defined: `minigccg3.s:28739`

### asm_is_out (function)
- Defined: `minigccg3.s:28743`

### asm_home (function)
- Defined: `minigccg3.s:28747`

### asm_slot (function)
- Defined: `minigccg3.s:28751`

### asm_size (function)
- Defined: `minigccg3.s:28755`

### asm_nops (function)
- Defined: `minigccg3.s:28759`

### asm_nslots (function)
- Defined: `minigccg3.s:28763`

### asm_unique (function)
- Defined: `minigccg3.s:28767`

### asm_scratch (function)
- Defined: `minigccg3.s:28771`

### asm_home_text (function)
- Defined: `minigccg3.s:28847`

### asm_reg_sized (function)
- Defined: `minigccg3.s:29004`

### asm_fixed_home (function)
- Defined: `minigccg3.s:29811`

### asm_emit_template (function)
- Defined: `minigccg3.s:29875`

### asm_parse_mem (function)
- Defined: `minigccg3.s:30115`

### asm_emit_ss (function)
- Defined: `minigccg3.s:30676`

### asm_parse_one (function)
- Defined: `minigccg3.s:30729`

### asm_assign_homes (function)
- Defined: `minigccg3.s:31700`

### asm_emit_all (function)
- Defined: `minigccg3.s:32145`

### skip_gcc_attribute (function)
- Defined: `minigccg3.s:32727`

### parse_trailing_align (function)
- Defined: `minigccg3.s:33207`

### parse_asm_block (function)
- Defined: `minigccg3.s:33249`

### statement (function)
- Defined: `minigccg3.s:33818`

### restart_typedef (function)
- Defined: `minigccg3.s:37448`

### restart_int (function)
- Defined: `minigccg3.s:38567`

### parse_function (function)
- Defined: `minigccg3.s:39837`

### parse_enum (function)
- Defined: `minigccg3.s:41636`

### skip_struct_fields (function)
- Defined: `minigccg3.s:42067`

### skip_struct (function)
- Defined: `minigccg3.s:42405`

### skip_typedef (function)
- Defined: `minigccg3.s:43059`

### data_directive (function)
- Defined: `minigccg3.s:43613`

### emit_global_bss (function)
- Defined: `minigccg3.s:43663`

### emit_global_data_head (function)
- Defined: `minigccg3.s:43777`

### parse_const_int (function)
- Defined: `minigccg3.s:43855`

### intern_string (function)
- Defined: `minigccg3.s:44018`

### emit_global_initializer (function)
- Defined: `minigccg3.s:44111`

### parse_program (function)
- Defined: `minigccg3.s:44828`

### emit_float_consts (function)
- Defined: `minigccg3.s:46884`

### emit_string_pool (function)
- Defined: `minigccg3.s:46983`

### main (function)
- Defined: `minigccg3.s:47085`

### _start (function)
- Defined: `minigccg3.s:51933`

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

### current_elem_unsigned (function)
- Defined: `minigccg4.s:123`

### deref_w (function)
- Defined: `minigccg4.s:127`

### deref_u (function)
- Defined: `minigccg4.s:131`

### no_postfix_deref (function)
- Defined: `minigccg4.s:135`

### expr_type (function)
- Defined: `minigccg4.s:139`

### static_flag (function)
- Defined: `minigccg4.s:143`

### unsigned_type (function)
- Defined: `minigccg4.s:147`

### const_flag (function)
- Defined: `minigccg4.s:151`

### extern_flag (function)
- Defined: `minigccg4.s:155`

### global_emit_deferred (function)
- Defined: `minigccg4.s:159`

### pending_align (function)
- Defined: `minigccg4.s:163`

### func_is_variadic (function)
- Defined: `minigccg4.s:167`

### vararg_nfixed (function)
- Defined: `minigccg4.s:171`

### vararg_save_off (function)
- Defined: `minigccg4.s:175`

### float_const_str (function)
- Defined: `minigccg4.s:179`

### float_const_is_float (function)
- Defined: `minigccg4.s:183`

### float_const_count (function)
- Defined: `minigccg4.s:187`

### switch_case_values (function)
- Defined: `minigccg4.s:191`

### switch_case_labels (function)
- Defined: `minigccg4.s:195`

### switch_case_count (function)
- Defined: `minigccg4.s:199`

### switch_has_default (function)
- Defined: `minigccg4.s:203`

### switch_default_label (function)
- Defined: `minigccg4.s:207`

### break_target (function)
- Defined: `minigccg4.s:211`

### break_target_valid (function)
- Defined: `minigccg4.s:215`

### continue_target (function)
- Defined: `minigccg4.s:219`

### continue_target_valid (function)
- Defined: `minigccg4.s:223`

### str_label_counter (function)
- Defined: `minigccg4.s:227`

### string_pool (function)
- Defined: `minigccg4.s:231`

### string_count (function)
- Defined: `minigccg4.s:235`

### ptr_init_name (function)
- Defined: `minigccg4.s:239`

### ptr_init_label (function)
- Defined: `minigccg4.s:243`

### ptr_init_count (function)
- Defined: `minigccg4.s:247`

### struct_total_size (function)
- Defined: `minigccg4.s:251`

### struct_member_names (function)
- Defined: `minigccg4.s:255`

### struct_member_offsets (function)
- Defined: `minigccg4.s:259`

### struct_member_sizes (function)
- Defined: `minigccg4.s:263`

### struct_member_elem_sizes (function)
- Defined: `minigccg4.s:267`

### struct_member_unsigned (function)
- Defined: `minigccg4.s:271`

### struct_member_is_float (function)
- Defined: `minigccg4.s:275`

### struct_member_count (function)
- Defined: `minigccg4.s:279`

### if_nest (function)
- Defined: `minigccg4.s:283`

### if_depth (function)
- Defined: `minigccg4.s:287`

### macro_count (function)
- Defined: `minigccg4.s:292`

### save_parser_state (function)
- Defined: `minigccg4.s:296`

### restore_parser_state (function)
- Defined: `minigccg4.s:453`

### macros (function)
- Defined: `minigccg4.s:662`

### find_macro (function)
- Defined: `minigccg4.s:666`

### add_macro (function)
- Defined: `minigccg4.s:730`

### macro_p (function)
- Defined: `minigccg4.s:860`

### macro_ok (function)
- Defined: `minigccg4.s:864`

### macro_skipws (function)
- Defined: `minigccg4.s:868`

### macro_hex_digit (function)
- Defined: `minigccg4.s:909`

### macro_digit_val (function)
- Defined: `minigccg4.s:1007`

### macro_primary (function)
- Defined: `minigccg4.s:1128`

### macro_unary (function)
- Defined: `minigccg4.s:1926`

### macro_mul (function)
- Defined: `minigccg4.s:2054`

### macro_add (function)
- Defined: `minigccg4.s:2257`

### macro_shift (function)
- Defined: `minigccg4.s:2355`

### macro_cmp (function)
- Defined: `minigccg4.s:2508`

### macro_eq (function)
- Defined: `minigccg4.s:2729`

### macro_bitand (function)
- Defined: `minigccg4.s:2882`

### macro_bitxor (function)
- Defined: `minigccg4.s:2968`

### macro_bitor (function)
- Defined: `minigccg4.s:3033`

### macro_logand (function)
- Defined: `minigccg4.s:3119`

### macro_or_expr (function)
- Defined: `minigccg4.s:3216`

### macro_fold (function)
- Defined: `minigccg4.s:3313`

### error (function)
- Defined: `minigccg4.s:3334`

### safe_malloc (function)
- Defined: `minigccg4.s:3386`

### safe_strcpy (function)
- Defined: `minigccg4.s:3441`

### safe_strtoll (function)
- Defined: `minigccg4.s:3518`

### is_file_processed (function)
- Defined: `minigccg4.s:3633`

### mark_file_processed (function)
- Defined: `minigccg4.s:3694`

### get_dir_from_path (function)
- Defined: `minigccg4.s:3806`

### resolve_local_include (function)
- Defined: `minigccg4.s:3949`

### read_include_file (function)
- Defined: `minigccg4.s:4399`

### hash_name (function)
- Defined: `minigccg4.s:4607`

### hash_init (function)
- Defined: `minigccg4.s:4665`

### push_scope (function)
- Defined: `minigccg4.s:4704`

### pop_scope (function)
- Defined: `minigccg4.s:4756`

### truncate_symbols (function)
- Defined: `minigccg4.s:4952`

### my_isspace (function)
- Defined: `minigccg4.s:5105`

### my_isalpha (function)
- Defined: `minigccg4.s:5194`

### my_isdigit (function)
- Defined: `minigccg4.s:5263`

### my_isalnum (function)
- Defined: `minigccg4.s:5303`

### lex_fail (function)
- Defined: `minigccg4.s:5348`

### lex_kw_add (function)
- Defined: `minigccg4.s:5452`

### lex_init_keywords (function)
- Defined: `minigccg4.s:5615`

### lex_kw_lookup (function)
- Defined: `minigccg4.s:6138`

### lex_match_op (function)
- Defined: `minigccg4.s:6232`

### lex_hex_val (function)
- Defined: `minigccg4.s:6315`

### lex_is_int_suffix (function)
- Defined: `minigccg4.s:6437`

### lex_number (function)
- Defined: `minigccg4.s:6506`

### next_token (function)
- Defined: `minigccg4.s:8036`

### restart (function)
- Defined: `minigccg4.s:8040`

### match (function)
- Defined: `minigccg4.s:12719`

### emit (function)
- Defined: `minigccg4.s:12757`

### emit_i (function)
- Defined: `minigccg4.s:12871`

### emit_s (function)
- Defined: `minigccg4.s:12920`

### emit_is (function)
- Defined: `minigccg4.s:12969`

### emit_si (function)
- Defined: `minigccg4.s:13022`

### emit_asciz_body (function)
- Defined: `minigccg4.s:13075`

### emit_label (function)
- Defined: `minigccg4.s:13399`

### find_symbol (function)
- Defined: `minigccg4.s:13428`

### add_symbol (function)
- Defined: `minigccg4.s:13515`

### arg_reg (function)
- Defined: `minigccg4.s:13922`

### libc_global_name (function)
- Defined: `minigccg4.s:13998`

### typedef_name (function)
- Defined: `minigccg4.s:14126`

### typedef_size (function)
- Defined: `minigccg4.s:14293`

### typedef_uns (function)
- Defined: `minigccg4.s:14460`

### unary (function)
- Defined: `minigccg4.s:14536`

### parse_sync_call (function)
- Defined: `minigccg4.s:18291`

### parse_va_start (function)
- Defined: `minigccg4.s:18611`

### parse_va_arg (function)
- Defined: `minigccg4.s:18953`

### parse_va_end (function)
- Defined: `minigccg4.s:19488`

### lvalue_address (function)
- Defined: `minigccg4.s:19594`

### handle_postfix (function)
- Defined: `minigccg4.s:20155`

### unary_expr (function)
- Defined: `minigccg4.s:21521`

### multiplicative_expr (function)
- Defined: `minigccg4.s:21546`

### additive_expr (function)
- Defined: `minigccg4.s:22168`

### shift_expr (function)
- Defined: `minigccg4.s:22681`

### relational_expr (function)
- Defined: `minigccg4.s:22827`

### equality_expr (function)
- Defined: `minigccg4.s:23429`

### bitwise_and_expr (function)
- Defined: `minigccg4.s:23907`

### bitwise_xor_expr (function)
- Defined: `minigccg4.s:23985`

### bitwise_or_expr (function)
- Defined: `minigccg4.s:24063`

### logical_and_expr (function)
- Defined: `minigccg4.s:24141`

### logical_or_expr (function)
- Defined: `minigccg4.s:24304`

### conditional_expr (function)
- Defined: `minigccg4.s:24467`

### emit_compound_op (function)
- Defined: `minigccg4.s:24599`

### assignment_expr (function)
- Defined: `minigccg4.s:25101`

### asm_tmpl (function)
- Defined: `minigccg4.s:28731`

### asm_text (function)
- Defined: `minigccg4.s:28735`

### asm_mem (function)
- Defined: `minigccg4.s:28739`

### asm_is_out (function)
- Defined: `minigccg4.s:28743`

### asm_home (function)
- Defined: `minigccg4.s:28747`

### asm_slot (function)
- Defined: `minigccg4.s:28751`

### asm_size (function)
- Defined: `minigccg4.s:28755`

### asm_nops (function)
- Defined: `minigccg4.s:28759`

### asm_nslots (function)
- Defined: `minigccg4.s:28763`

### asm_unique (function)
- Defined: `minigccg4.s:28767`

### asm_scratch (function)
- Defined: `minigccg4.s:28771`

### asm_home_text (function)
- Defined: `minigccg4.s:28847`

### asm_reg_sized (function)
- Defined: `minigccg4.s:29004`

### asm_fixed_home (function)
- Defined: `minigccg4.s:29811`

### asm_emit_template (function)
- Defined: `minigccg4.s:29875`

### asm_parse_mem (function)
- Defined: `minigccg4.s:30115`

### asm_emit_ss (function)
- Defined: `minigccg4.s:30676`

### asm_parse_one (function)
- Defined: `minigccg4.s:30729`

### asm_assign_homes (function)
- Defined: `minigccg4.s:31700`

### asm_emit_all (function)
- Defined: `minigccg4.s:32145`

### skip_gcc_attribute (function)
- Defined: `minigccg4.s:32727`

### parse_trailing_align (function)
- Defined: `minigccg4.s:33207`

### parse_asm_block (function)
- Defined: `minigccg4.s:33249`

### statement (function)
- Defined: `minigccg4.s:33818`

### restart_typedef (function)
- Defined: `minigccg4.s:37448`

### restart_int (function)
- Defined: `minigccg4.s:38567`

### parse_function (function)
- Defined: `minigccg4.s:39837`

### parse_enum (function)
- Defined: `minigccg4.s:41636`

### skip_struct_fields (function)
- Defined: `minigccg4.s:42067`

### skip_struct (function)
- Defined: `minigccg4.s:42405`

### skip_typedef (function)
- Defined: `minigccg4.s:43059`

### data_directive (function)
- Defined: `minigccg4.s:43613`

### emit_global_bss (function)
- Defined: `minigccg4.s:43663`

### emit_global_data_head (function)
- Defined: `minigccg4.s:43777`

### parse_const_int (function)
- Defined: `minigccg4.s:43855`

### intern_string (function)
- Defined: `minigccg4.s:44018`

### emit_global_initializer (function)
- Defined: `minigccg4.s:44111`

### parse_program (function)
- Defined: `minigccg4.s:44828`

### emit_float_consts (function)
- Defined: `minigccg4.s:46884`

### emit_string_pool (function)
- Defined: `minigccg4.s:46983`

### main (function)
- Defined: `minigccg4.s:47085`

### _start (function)
- Defined: `minigccg4.s:51933`

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

## tests/neg_attr.c

### main (function) `int main(void)`
- Defined: `tests/neg_attr.c:2`

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

## tests/neg_va.c

### main (function) `int main(void)`
- Defined: `tests/neg_va.c:1`

### __builtin_va_start (function) `__builtin_va_start(ap, ap);`
- Defined: `tests/neg_va.c:3`

### __builtin_va_end (function) `__builtin_va_end(ap);`
- Defined: `tests/neg_va.c:4`

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

### printf (function) `printf("%d %d %d %d %d\n", id.limit, id.base == 200, arr[0], g, sq(6));`
- Defined: `tests/t_attr.c:31`

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

### printf (function) `printf("%d %d %d\n", gu8, gi8, gu16);`
- Defined: `tests/t_stdint.c:49`

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

## tests/t_sync.c

### main (function) `int main(void)`
- Defined: `tests/t_sync.c:5`

### printf (function) `printf("%d %d %d\n", a, b, ctr);`
- Defined: `tests/t_sync.c:11`

### __sync_lock_release (function) `__sync_lock_release(&flag);`
- Defined: `tests/t_sync.c:16`

### __sync_synchronize (function) `__sync_synchronize();`
- Defined: `tests/t_sync.c:27`

## tests/t_typedef.c

### main (function) `int main(void)`
- Defined: `tests/t_typedef.c:15`

### printf (function) `printf("%d\n", shared + 2);`
- Defined: `tests/t_typedef.c:18`

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

### __builtin_va_start (function) `__builtin_va_start(ap, fmt);`
- Defined: `tests/t_variadic.c:14`

### __builtin_va_end (function) `__builtin_va_end(ap);`
- Defined: `tests/t_variadic.c:43`

### printf (function) `printf("%d %d\n", vsum(3, 10L, 20L, 30L), vsum(1, 99L));`
- Defined: `tests/t_variadic.c:68`

## tests/t_while.c

### main (function) `int main(void)`
- Defined: `tests/t_while.c:2`
- Doc: include <stdio.h>

### printf (function) `printf("%d %d\n", i, sum);`
- Defined: `tests/t_while.c:12`
