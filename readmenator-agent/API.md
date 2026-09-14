# API

## minigcc.c

### save_parser_state (function) `static void save_parser_state(ParserState *state)`
- Defined: `minigcc.c:230`

### restore_parser_state (function) `static void restore_parser_state(ParserState *state)`
- Defined: `minigcc.c:255`

### find_macro (function) `static int find_macro(const char *name)`
- Defined: `minigcc.c:291`

### add_macro (function) `static void add_macro(const char *name, int value)`
- Defined: `minigcc.c:300`

### macro_skipws (function) `static void macro_skipws(void)`
- Defined: `minigcc.c:327`

### macro_hex_digit (function) `static int macro_hex_digit(int c)`
- Defined: `minigcc.c:331`

### macro_digit_val (function) `static int macro_digit_val(int c)`
- Defined: `minigcc.c:338`

### macro_primary (function) `static int macro_primary(void)`
- Defined: `minigcc.c:345`

### macro_unary (function) `static int macro_unary(void)`
- Defined: `minigcc.c:419`

### macro_mul (function) `static int macro_mul(void)`
- Defined: `minigcc.c:428`

### macro_add (function) `static int macro_add(void)`
- Defined: `minigcc.c:453`

### macro_shift (function) `static int macro_shift(void)`
- Defined: `minigcc.c:470`

### macro_cmp (function) `static int macro_cmp(void)`
- Defined: `minigcc.c:487`

### macro_eq (function) `static int macro_eq(void)`
- Defined: `minigcc.c:510`

### macro_bitand (function) `static int macro_bitand(void)`
- Defined: `minigcc.c:527`

### macro_bitxor (function) `static int macro_bitxor(void)`
- Defined: `minigcc.c:541`

### macro_bitor (function) `static int macro_bitor(void)`
- Defined: `minigcc.c:555`

### macro_logand (function) `static int macro_logand(void)`
- Defined: `minigcc.c:569`

### macro_or_expr (function) `static int macro_or_expr(void)`
- Defined: `minigcc.c:583`

### macro_fold (function) `static int macro_fold(void)`
- Defined: `minigcc.c:597`

### error (function) `static void error(const char *msg)`
- Defined: `minigcc.c:602`

### safe_malloc (function) `static void *safe_malloc(size_t size)`
- Defined: `minigcc.c:608`

### safe_strcpy (function) `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- Defined: `minigcc.c:617`

### safe_strtoll (function) `static long safe_strtoll(const char *s)`
- Defined: `minigcc.c:626`

### is_file_processed (function) `static int is_file_processed(const char *path)`
- Defined: `minigcc.c:639`

### mark_file_processed (function) `static void mark_file_processed(const char *path)`
- Defined: `minigcc.c:648`

### get_dir_from_path (function) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- Defined: `minigcc.c:660`

### resolve_local_include (function) `static char *resolve_local_include(const char *target)`
- Defined: `minigcc.c:679`

### read_include_file (function) `static char *read_include_file(const char *path)`
- Defined: `minigcc.c:718`

### hash_name (function) `static int hash_name(const char *name)`
- Defined: `minigcc.c:743`
- Doc: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multipli

### hash_init (function) `static void hash_init(void)`
- Defined: `minigcc.c:752`

### push_scope (function) `static void push_scope(void)`
- Defined: `minigcc.c:757`

### pop_scope (function) `static void pop_scope(void)`
- Defined: `minigcc.c:765`

### truncate_symbols (function) `static void truncate_symbols(int start_idx)`
- Defined: `minigcc.c:795`
- Doc: Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (

### my_isspace (function) `static int my_isspace(int c)`
- Defined: `minigcc.c:813`

### my_isalpha (function) `static int my_isalpha(int c)`
- Defined: `minigcc.c:823`

### my_isdigit (function) `static int my_isdigit(int c)`
- Defined: `minigcc.c:829`

### my_isalnum (function) `static int my_isalnum(int c)`
- Defined: `minigcc.c:834`

### lex_fail (function) `static void lex_fail(const char *msg, char *start, char *end)`
- Defined: `minigcc.c:840`

### lex_kw_add (function) `static void lex_kw_add(const char *name, int id)`
- Defined: `minigcc.c:850`

### lex_init_keywords (function) `static void lex_init_keywords(void)`
- Defined: `minigcc.c:863`

### lex_kw_lookup (function) `static int lex_kw_lookup(void)`
- Defined: `minigcc.c:893`

### lex_match_op (function) `static int lex_match_op(const char *op, int id)`
- Defined: `minigcc.c:905`

### lex_hex_val (function) `static int lex_hex_val(int c)`
- Defined: `minigcc.c:917`

### lex_is_int_suffix (function) `static int lex_is_int_suffix(int c)`
- Defined: `minigcc.c:924`

### lex_number (function) `static void lex_number(void)`
- Defined: `minigcc.c:930`

### next_token (function) `static void next_token(void)`
- Defined: `minigcc.c:1049`
- Doc: float_const_is_float[float_const_count] = (sfx == 'f' || sfx == 'F') ? 1 : 0; safe_strcpy(float_const_str[float_const_co

### match (function) `static void match(int expected)`
- Defined: `minigcc.c:1463`

### emit (function) `static void emit(const char *s)`
- Defined: `minigcc.c:1468`

### emit_i (function) `static void emit_i(const char *fmt, int v)`
- Defined: `minigcc.c:1482`

### emit_s (function) `static void emit_s(const char *fmt, const char *s)`
- Defined: `minigcc.c:1488`

### emit_is (function) `static void emit_is(const char *fmt, int v, const char *s)`
- Defined: `minigcc.c:1494`

### emit_si (function) `static void emit_si(const char *fmt, const char *s, int v)`
- Defined: `minigcc.c:1500`

### emit_asciz_body (function) `static void emit_asciz_body(const char *s)`
- Defined: `minigcc.c:1510`
- Doc: Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by t

### emit_label (function) `static void emit_label(int label)`
- Defined: `minigcc.c:1528`

### find_symbol (function) `static int find_symbol(const char *name)`
- Defined: `minigcc.c:1535`
- Doc: else if (c == '\a') fprintf(output, "\\a"); else if (c == '\b') fprintf(output, "\\b"); else if (c >= 32 && c <= 126) fp

### add_symbol (function) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- Defined: `minigcc.c:1545`

### arg_reg (function) `static const char *arg_reg(int i)`
- Defined: `minigcc.c:1606`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### libc_global_name (function) `static const char *libc_global_name(int i)`
- Defined: `minigcc.c:1616`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### unary (function) `static void unary(void)`
- Defined: `minigcc.c:1628`

### lvalue_address (function) `static void lvalue_address(void)`
- Defined: `minigcc.c:1878`

### handle_postfix (function) `static void handle_postfix(int is_lvalue)`
- Defined: `minigcc.c:1930`

### unary_expr (function) `static void unary_expr(void)`
- Defined: `minigcc.c:2064`

### multiplicative_expr (function) `static void multiplicative_expr(void)`
- Defined: `minigcc.c:2079`

### additive_expr (function) `static void additive_expr(void)`
- Defined: `minigcc.c:2143`

### shift_expr (function) `static void shift_expr(void)`
- Defined: `minigcc.c:2198`

### relational_expr (function) `static void relational_expr(void)`
- Defined: `minigcc.c:2217`

### equality_expr (function) `static void equality_expr(void)`
- Defined: `minigcc.c:2270`

### bitwise_and_expr (function) `static void bitwise_and_expr(void)`
- Defined: `minigcc.c:2319`

### bitwise_xor_expr (function) `static void bitwise_xor_expr(void)`
- Defined: `minigcc.c:2331`

### bitwise_or_expr (function) `static void bitwise_or_expr(void)`
- Defined: `minigcc.c:2343`

### logical_and_expr (function) `static void logical_and_expr(void)`
- Defined: `minigcc.c:2355`

### logical_or_expr (function) `static void logical_or_expr(void)`
- Defined: `minigcc.c:2375`

### conditional_expr (function) `static void conditional_expr(void)`
- Defined: `minigcc.c:2395`

### emit_compound_op (function) `static void emit_compound_op(int op, int asize)`
- Defined: `minigcc.c:2413`

### assignment_expr (function) `static void assignment_expr(void)`
- Defined: `minigcc.c:2454`

### statement (function) `static void statement(void)`
- Defined: `minigcc.c:2650`

### parse_function (function) `static void parse_function(const char *name, int ret_type)`
- Defined: `minigcc.c:3307`

### parse_enum (function) `static void parse_enum(void)`
- Defined: `minigcc.c:3434`

### skip_struct (function) `static void skip_struct(void)`
- Defined: `minigcc.c:3483`

### skip_typedef (function) `static void skip_typedef(void)`
- Defined: `minigcc.c:3547`

### data_directive (function) `static const char *data_directive(int size)`
- Defined: `minigcc.c:3602`
- Doc: s->const_value = 8;  /* just a marker /* If a struct was just parsed, store its size if (struct_total_size > 0) s->const

### emit_global_bss (function) `static void emit_global_bss(const char *name, int is_static, int size)`
- Defined: `minigcc.c:3610`
- Doc: } } match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(int size) { if (si

### emit_global_data_head (function) `static void emit_global_data_head(const char *name, int is_static)`
- Defined: `minigcc.c:3617`

### parse_const_int (function) `static int parse_const_int(long long *out)`
- Defined: `minigcc.c:3627`
- Doc: Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro 

### intern_string (function) `static int intern_string(const char *text)`
- Defined: `minigcc.c:3650`
- Doc: } if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg 

### emit_global_initializer (function) `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...`
- Defined: `minigcc.c:3667`
- Doc: Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is 

### parse_program (function) `static void parse_program(void)`
- Defined: `minigcc.c:3731`

### emit_float_consts (function) `static void emit_float_consts(void)`
- Defined: `minigcc.c:3882`

### emit_string_pool (function) `static void emit_string_pool(void)`
- Defined: `minigcc.c:3892`

### main (function) `int main(int argc, char **argv)`
- Defined: `minigcc.c:3902`

### fprintf (function) `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);`
- Defined: `minigcc.c:604`

### exit (function) `exit(EXIT_FAILURE);`
- Defined: `minigcc.c:606`

### fclose (function) `fclose(f);`
- Defined: `minigcc.c:683`

### fseek (function) `fseek(f, 0, SEEK_END);`
- Defined: `minigcc.c:722`

### rewind (function) `rewind(f);`
- Defined: `minigcc.c:728`

### free (function) `free(buf);`
- Defined: `minigcc.c:732`

### snprintf (function) `snprintf(token, MAX_TOKEN_LEN, "%ld", v);`
- Defined: `minigcc.c:945`

### fputc (function) `fputc('%', output);`
- Defined: `minigcc.c:1473`

### strncpy (function) `strncpy(d, name, MAX_IDENT_LEN - 1);`
- Defined: `minigcc.c:1551`

### strcpy (function) `strcpy(saved_token, token);`
- Defined: `minigcc.c:2459`

### memcpy (function) `memcpy(varname, token, nlen);`
- Defined: `minigcc.c:2698`

## minigccg2.s

### lex_kw_blob (function)
- Defined: `minigccg2.s:3`

### lex_kw_ids (function)
- Defined: `minigccg2.s:7`

### lex_kw_count (function)
- Defined: `minigccg2.s:11`

### input_ptr (function)
- Defined: `minigccg2.s:15`

### source_start (function)
- Defined: `minigccg2.s:19`

### token (function)
- Defined: `minigccg2.s:23`

### tok (function)
- Defined: `minigccg2.s:27`

### line (function)
- Defined: `minigccg2.s:31`

### output (function)
- Defined: `minigccg2.s:35`

### ctx_stack (function)
- Defined: `minigccg2.s:39`

### ctx_top (function)
- Defined: `minigccg2.s:43`

### current_file (function)
- Defined: `minigccg2.s:47`

### processed_files (function)
- Defined: `minigccg2.s:51`

### processed_count (function)
- Defined: `minigccg2.s:55`

### symbols (function)
- Defined: `minigccg2.s:59`

### symbol_count (function)
- Defined: `minigccg2.s:63`

### hash_table (function)
- Defined: `minigccg2.s:67`

### scope_stack_sym (function)
- Defined: `minigccg2.s:71`

### scope_stack_stk (function)
- Defined: `minigccg2.s:75`

### scope_depth (function)
- Defined: `minigccg2.s:79`

### stack_size (function)
- Defined: `minigccg2.s:83`

### label_counter (function)
- Defined: `minigccg2.s:87`

### function_has_return (function)
- Defined: `minigccg2.s:91`

### emit_enabled (function)
- Defined: `minigccg2.s:95`

### max_func_stack (function)
- Defined: `minigccg2.s:99`

### assign_size (function)
- Defined: `minigccg2.s:103`

### expr_pointed (function)
- Defined: `minigccg2.s:107`

### current_elem_size (function)
- Defined: `minigccg2.s:111`

### current_elem_size2 (function)
- Defined: `minigccg2.s:115`

### no_postfix_deref (function)
- Defined: `minigccg2.s:119`

### expr_type (function)
- Defined: `minigccg2.s:123`

### static_flag (function)
- Defined: `minigccg2.s:127`

### unsigned_type (function)
- Defined: `minigccg2.s:131`

### const_flag (function)
- Defined: `minigccg2.s:135`

### extern_flag (function)
- Defined: `minigccg2.s:139`

### global_emit_deferred (function)
- Defined: `minigccg2.s:143`

### float_const_str (function)
- Defined: `minigccg2.s:147`

### float_const_is_float (function)
- Defined: `minigccg2.s:151`

### float_const_count (function)
- Defined: `minigccg2.s:155`

### switch_case_values (function)
- Defined: `minigccg2.s:159`

### switch_case_labels (function)
- Defined: `minigccg2.s:163`

### switch_case_count (function)
- Defined: `minigccg2.s:167`

### switch_has_default (function)
- Defined: `minigccg2.s:171`

### switch_default_label (function)
- Defined: `minigccg2.s:175`

### break_target (function)
- Defined: `minigccg2.s:179`

### break_target_valid (function)
- Defined: `minigccg2.s:183`

### continue_target (function)
- Defined: `minigccg2.s:187`

### continue_target_valid (function)
- Defined: `minigccg2.s:191`

### str_label_counter (function)
- Defined: `minigccg2.s:195`

### string_pool (function)
- Defined: `minigccg2.s:199`

### string_count (function)
- Defined: `minigccg2.s:203`

### ptr_init_name (function)
- Defined: `minigccg2.s:207`

### ptr_init_label (function)
- Defined: `minigccg2.s:211`

### ptr_init_count (function)
- Defined: `minigccg2.s:215`

### struct_total_size (function)
- Defined: `minigccg2.s:219`

### struct_member_names (function)
- Defined: `minigccg2.s:223`

### struct_member_offsets (function)
- Defined: `minigccg2.s:227`

### struct_member_sizes (function)
- Defined: `minigccg2.s:231`

### struct_member_elem_sizes (function)
- Defined: `minigccg2.s:235`

### struct_member_count (function)
- Defined: `minigccg2.s:239`

### if_nest (function)
- Defined: `minigccg2.s:243`

### if_depth (function)
- Defined: `minigccg2.s:247`

### macro_count (function)
- Defined: `minigccg2.s:252`

### save_parser_state (function)
- Defined: `minigccg2.s:256`

### restore_parser_state (function)
- Defined: `minigccg2.s:395`

### macros (function)
- Defined: `minigccg2.s:583`

### find_macro (function)
- Defined: `minigccg2.s:587`

### add_macro (function)
- Defined: `minigccg2.s:651`

### macro_p (function)
- Defined: `minigccg2.s:781`

### macro_ok (function)
- Defined: `minigccg2.s:785`

### macro_skipws (function)
- Defined: `minigccg2.s:789`

### macro_hex_digit (function)
- Defined: `minigccg2.s:830`

### macro_digit_val (function)
- Defined: `minigccg2.s:928`

### macro_primary (function)
- Defined: `minigccg2.s:1049`

### macro_unary (function)
- Defined: `minigccg2.s:1847`

### macro_mul (function)
- Defined: `minigccg2.s:1975`

### macro_add (function)
- Defined: `minigccg2.s:2178`

### macro_shift (function)
- Defined: `minigccg2.s:2276`

### macro_cmp (function)
- Defined: `minigccg2.s:2429`

### macro_eq (function)
- Defined: `minigccg2.s:2650`

### macro_bitand (function)
- Defined: `minigccg2.s:2803`

### macro_bitxor (function)
- Defined: `minigccg2.s:2889`

### macro_bitor (function)
- Defined: `minigccg2.s:2954`

### macro_logand (function)
- Defined: `minigccg2.s:3040`

### macro_or_expr (function)
- Defined: `minigccg2.s:3137`

### macro_fold (function)
- Defined: `minigccg2.s:3234`

### error (function)
- Defined: `minigccg2.s:3255`

### safe_malloc (function)
- Defined: `minigccg2.s:3307`

### safe_strcpy (function)
- Defined: `minigccg2.s:3362`

### safe_strtoll (function)
- Defined: `minigccg2.s:3439`

### is_file_processed (function)
- Defined: `minigccg2.s:3554`

### mark_file_processed (function)
- Defined: `minigccg2.s:3615`

### get_dir_from_path (function)
- Defined: `minigccg2.s:3727`

### resolve_local_include (function)
- Defined: `minigccg2.s:3870`

### read_include_file (function)
- Defined: `minigccg2.s:4320`

### hash_name (function)
- Defined: `minigccg2.s:4528`

### hash_init (function)
- Defined: `minigccg2.s:4586`

### push_scope (function)
- Defined: `minigccg2.s:4625`

### pop_scope (function)
- Defined: `minigccg2.s:4677`

### truncate_symbols (function)
- Defined: `minigccg2.s:4873`

### my_isspace (function)
- Defined: `minigccg2.s:5026`

### my_isalpha (function)
- Defined: `minigccg2.s:5115`

### my_isdigit (function)
- Defined: `minigccg2.s:5184`

### my_isalnum (function)
- Defined: `minigccg2.s:5224`

### lex_fail (function)
- Defined: `minigccg2.s:5269`

### lex_kw_add (function)
- Defined: `minigccg2.s:5373`

### lex_init_keywords (function)
- Defined: `minigccg2.s:5536`

### lex_kw_lookup (function)
- Defined: `minigccg2.s:5919`

### lex_match_op (function)
- Defined: `minigccg2.s:6013`

### lex_hex_val (function)
- Defined: `minigccg2.s:6096`

### lex_is_int_suffix (function)
- Defined: `minigccg2.s:6218`

### lex_number (function)
- Defined: `minigccg2.s:6287`

### next_token (function)
- Defined: `minigccg2.s:7817`

### restart (function)
- Defined: `minigccg2.s:7821`

### match (function)
- Defined: `minigccg2.s:12334`

### emit (function)
- Defined: `minigccg2.s:12372`

### emit_i (function)
- Defined: `minigccg2.s:12486`

### emit_s (function)
- Defined: `minigccg2.s:12535`

### emit_is (function)
- Defined: `minigccg2.s:12584`

### emit_si (function)
- Defined: `minigccg2.s:12637`

### emit_asciz_body (function)
- Defined: `minigccg2.s:12690`

### emit_label (function)
- Defined: `minigccg2.s:13014`

### find_symbol (function)
- Defined: `minigccg2.s:13043`

### add_symbol (function)
- Defined: `minigccg2.s:13130`

### arg_reg (function)
- Defined: `minigccg2.s:13504`

### libc_global_name (function)
- Defined: `minigccg2.s:13580`

### unary (function)
- Defined: `minigccg2.s:13708`

### lvalue_address (function)
- Defined: `minigccg2.s:16252`

### handle_postfix (function)
- Defined: `minigccg2.s:16777`

### unary_expr (function)
- Defined: `minigccg2.s:17799`

### multiplicative_expr (function)
- Defined: `minigccg2.s:17824`

### additive_expr (function)
- Defined: `minigccg2.s:18446`

### shift_expr (function)
- Defined: `minigccg2.s:18941`

### relational_expr (function)
- Defined: `minigccg2.s:19087`

### equality_expr (function)
- Defined: `minigccg2.s:19689`

### bitwise_and_expr (function)
- Defined: `minigccg2.s:20167`

### bitwise_xor_expr (function)
- Defined: `minigccg2.s:20245`

### bitwise_or_expr (function)
- Defined: `minigccg2.s:20323`

### logical_and_expr (function)
- Defined: `minigccg2.s:20401`

### logical_or_expr (function)
- Defined: `minigccg2.s:20564`

### conditional_expr (function)
- Defined: `minigccg2.s:20727`

### emit_compound_op (function)
- Defined: `minigccg2.s:20859`

### assignment_expr (function)
- Defined: `minigccg2.s:21361`

### statement (function)
- Defined: `minigccg2.s:24676`

### restart_typedef (function)
- Defined: `minigccg2.s:28122`

### restart_int (function)
- Defined: `minigccg2.s:29154`

### parse_function (function)
- Defined: `minigccg2.s:30311`

### parse_enum (function)
- Defined: `minigccg2.s:31632`

### skip_struct (function)
- Defined: `minigccg2.s:32044`

### skip_typedef (function)
- Defined: `minigccg2.s:32630`

### data_directive (function)
- Defined: `minigccg2.s:33120`

### emit_global_bss (function)
- Defined: `minigccg2.s:33170`

### emit_global_data_head (function)
- Defined: `minigccg2.s:33261`

### parse_const_int (function)
- Defined: `minigccg2.s:33316`

### intern_string (function)
- Defined: `minigccg2.s:33479`

### emit_global_initializer (function)
- Defined: `minigccg2.s:33572`

### parse_program (function)
- Defined: `minigccg2.s:34289`

### emit_float_consts (function)
- Defined: `minigccg2.s:36005`

### emit_string_pool (function)
- Defined: `minigccg2.s:36104`

### main (function)
- Defined: `minigccg2.s:36206`

### _start (function)
- Defined: `minigccg2.s:39836`

## minigccg3.s

### lex_kw_blob (function)
- Defined: `minigccg3.s:3`

### lex_kw_ids (function)
- Defined: `minigccg3.s:7`

### lex_kw_count (function)
- Defined: `minigccg3.s:11`

### input_ptr (function)
- Defined: `minigccg3.s:15`

### source_start (function)
- Defined: `minigccg3.s:19`

### token (function)
- Defined: `minigccg3.s:23`

### tok (function)
- Defined: `minigccg3.s:27`

### line (function)
- Defined: `minigccg3.s:31`

### output (function)
- Defined: `minigccg3.s:35`

### ctx_stack (function)
- Defined: `minigccg3.s:39`

### ctx_top (function)
- Defined: `minigccg3.s:43`

### current_file (function)
- Defined: `minigccg3.s:47`

### processed_files (function)
- Defined: `minigccg3.s:51`

### processed_count (function)
- Defined: `minigccg3.s:55`

### symbols (function)
- Defined: `minigccg3.s:59`

### symbol_count (function)
- Defined: `minigccg3.s:63`

### hash_table (function)
- Defined: `minigccg3.s:67`

### scope_stack_sym (function)
- Defined: `minigccg3.s:71`

### scope_stack_stk (function)
- Defined: `minigccg3.s:75`

### scope_depth (function)
- Defined: `minigccg3.s:79`

### stack_size (function)
- Defined: `minigccg3.s:83`

### label_counter (function)
- Defined: `minigccg3.s:87`

### function_has_return (function)
- Defined: `minigccg3.s:91`

### emit_enabled (function)
- Defined: `minigccg3.s:95`

### max_func_stack (function)
- Defined: `minigccg3.s:99`

### assign_size (function)
- Defined: `minigccg3.s:103`

### expr_pointed (function)
- Defined: `minigccg3.s:107`

### current_elem_size (function)
- Defined: `minigccg3.s:111`

### current_elem_size2 (function)
- Defined: `minigccg3.s:115`

### no_postfix_deref (function)
- Defined: `minigccg3.s:119`

### expr_type (function)
- Defined: `minigccg3.s:123`

### static_flag (function)
- Defined: `minigccg3.s:127`

### unsigned_type (function)
- Defined: `minigccg3.s:131`

### const_flag (function)
- Defined: `minigccg3.s:135`

### extern_flag (function)
- Defined: `minigccg3.s:139`

### global_emit_deferred (function)
- Defined: `minigccg3.s:143`

### float_const_str (function)
- Defined: `minigccg3.s:147`

### float_const_is_float (function)
- Defined: `minigccg3.s:151`

### float_const_count (function)
- Defined: `minigccg3.s:155`

### switch_case_values (function)
- Defined: `minigccg3.s:159`

### switch_case_labels (function)
- Defined: `minigccg3.s:163`

### switch_case_count (function)
- Defined: `minigccg3.s:167`

### switch_has_default (function)
- Defined: `minigccg3.s:171`

### switch_default_label (function)
- Defined: `minigccg3.s:175`

### break_target (function)
- Defined: `minigccg3.s:179`

### break_target_valid (function)
- Defined: `minigccg3.s:183`

### continue_target (function)
- Defined: `minigccg3.s:187`

### continue_target_valid (function)
- Defined: `minigccg3.s:191`

### str_label_counter (function)
- Defined: `minigccg3.s:195`

### string_pool (function)
- Defined: `minigccg3.s:199`

### string_count (function)
- Defined: `minigccg3.s:203`

### ptr_init_name (function)
- Defined: `minigccg3.s:207`

### ptr_init_label (function)
- Defined: `minigccg3.s:211`

### ptr_init_count (function)
- Defined: `minigccg3.s:215`

### struct_total_size (function)
- Defined: `minigccg3.s:219`

### struct_member_names (function)
- Defined: `minigccg3.s:223`

### struct_member_offsets (function)
- Defined: `minigccg3.s:227`

### struct_member_sizes (function)
- Defined: `minigccg3.s:231`

### struct_member_elem_sizes (function)
- Defined: `minigccg3.s:235`

### struct_member_count (function)
- Defined: `minigccg3.s:239`

### if_nest (function)
- Defined: `minigccg3.s:243`

### if_depth (function)
- Defined: `minigccg3.s:247`

### macro_count (function)
- Defined: `minigccg3.s:252`

### save_parser_state (function)
- Defined: `minigccg3.s:256`

### restore_parser_state (function)
- Defined: `minigccg3.s:395`

### macros (function)
- Defined: `minigccg3.s:583`

### find_macro (function)
- Defined: `minigccg3.s:587`

### add_macro (function)
- Defined: `minigccg3.s:651`

### macro_p (function)
- Defined: `minigccg3.s:781`

### macro_ok (function)
- Defined: `minigccg3.s:785`

### macro_skipws (function)
- Defined: `minigccg3.s:789`

### macro_hex_digit (function)
- Defined: `minigccg3.s:830`

### macro_digit_val (function)
- Defined: `minigccg3.s:928`

### macro_primary (function)
- Defined: `minigccg3.s:1049`

### macro_unary (function)
- Defined: `minigccg3.s:1847`

### macro_mul (function)
- Defined: `minigccg3.s:1975`

### macro_add (function)
- Defined: `minigccg3.s:2178`

### macro_shift (function)
- Defined: `minigccg3.s:2276`

### macro_cmp (function)
- Defined: `minigccg3.s:2429`

### macro_eq (function)
- Defined: `minigccg3.s:2650`

### macro_bitand (function)
- Defined: `minigccg3.s:2803`

### macro_bitxor (function)
- Defined: `minigccg3.s:2889`

### macro_bitor (function)
- Defined: `minigccg3.s:2954`

### macro_logand (function)
- Defined: `minigccg3.s:3040`

### macro_or_expr (function)
- Defined: `minigccg3.s:3137`

### macro_fold (function)
- Defined: `minigccg3.s:3234`

### error (function)
- Defined: `minigccg3.s:3255`

### safe_malloc (function)
- Defined: `minigccg3.s:3307`

### safe_strcpy (function)
- Defined: `minigccg3.s:3362`

### safe_strtoll (function)
- Defined: `minigccg3.s:3439`

### is_file_processed (function)
- Defined: `minigccg3.s:3554`

### mark_file_processed (function)
- Defined: `minigccg3.s:3615`

### get_dir_from_path (function)
- Defined: `minigccg3.s:3727`

### resolve_local_include (function)
- Defined: `minigccg3.s:3870`

### read_include_file (function)
- Defined: `minigccg3.s:4320`

### hash_name (function)
- Defined: `minigccg3.s:4528`

### hash_init (function)
- Defined: `minigccg3.s:4586`

### push_scope (function)
- Defined: `minigccg3.s:4625`

### pop_scope (function)
- Defined: `minigccg3.s:4677`

### truncate_symbols (function)
- Defined: `minigccg3.s:4873`

### my_isspace (function)
- Defined: `minigccg3.s:5026`

### my_isalpha (function)
- Defined: `minigccg3.s:5115`

### my_isdigit (function)
- Defined: `minigccg3.s:5184`

### my_isalnum (function)
- Defined: `minigccg3.s:5224`

### lex_fail (function)
- Defined: `minigccg3.s:5269`

### lex_kw_add (function)
- Defined: `minigccg3.s:5373`

### lex_init_keywords (function)
- Defined: `minigccg3.s:5536`

### lex_kw_lookup (function)
- Defined: `minigccg3.s:5919`

### lex_match_op (function)
- Defined: `minigccg3.s:6013`

### lex_hex_val (function)
- Defined: `minigccg3.s:6096`

### lex_is_int_suffix (function)
- Defined: `minigccg3.s:6218`

### lex_number (function)
- Defined: `minigccg3.s:6287`

### next_token (function)
- Defined: `minigccg3.s:7817`

### restart (function)
- Defined: `minigccg3.s:7821`

### match (function)
- Defined: `minigccg3.s:12334`

### emit (function)
- Defined: `minigccg3.s:12372`

### emit_i (function)
- Defined: `minigccg3.s:12486`

### emit_s (function)
- Defined: `minigccg3.s:12535`

### emit_is (function)
- Defined: `minigccg3.s:12584`

### emit_si (function)
- Defined: `minigccg3.s:12637`

### emit_asciz_body (function)
- Defined: `minigccg3.s:12690`

### emit_label (function)
- Defined: `minigccg3.s:13014`

### find_symbol (function)
- Defined: `minigccg3.s:13043`

### add_symbol (function)
- Defined: `minigccg3.s:13130`

### arg_reg (function)
- Defined: `minigccg3.s:13504`

### libc_global_name (function)
- Defined: `minigccg3.s:13580`

### unary (function)
- Defined: `minigccg3.s:13708`

### lvalue_address (function)
- Defined: `minigccg3.s:16252`

### handle_postfix (function)
- Defined: `minigccg3.s:16777`

### unary_expr (function)
- Defined: `minigccg3.s:17799`

### multiplicative_expr (function)
- Defined: `minigccg3.s:17824`

### additive_expr (function)
- Defined: `minigccg3.s:18446`

### shift_expr (function)
- Defined: `minigccg3.s:18941`

### relational_expr (function)
- Defined: `minigccg3.s:19087`

### equality_expr (function)
- Defined: `minigccg3.s:19689`

### bitwise_and_expr (function)
- Defined: `minigccg3.s:20167`

### bitwise_xor_expr (function)
- Defined: `minigccg3.s:20245`

### bitwise_or_expr (function)
- Defined: `minigccg3.s:20323`

### logical_and_expr (function)
- Defined: `minigccg3.s:20401`

### logical_or_expr (function)
- Defined: `minigccg3.s:20564`

### conditional_expr (function)
- Defined: `minigccg3.s:20727`

### emit_compound_op (function)
- Defined: `minigccg3.s:20859`

### assignment_expr (function)
- Defined: `minigccg3.s:21361`

### statement (function)
- Defined: `minigccg3.s:24676`

### restart_typedef (function)
- Defined: `minigccg3.s:28122`

### restart_int (function)
- Defined: `minigccg3.s:29154`

### parse_function (function)
- Defined: `minigccg3.s:30311`

### parse_enum (function)
- Defined: `minigccg3.s:31632`

### skip_struct (function)
- Defined: `minigccg3.s:32044`

### skip_typedef (function)
- Defined: `minigccg3.s:32630`

### data_directive (function)
- Defined: `minigccg3.s:33120`

### emit_global_bss (function)
- Defined: `minigccg3.s:33170`

### emit_global_data_head (function)
- Defined: `minigccg3.s:33261`

### parse_const_int (function)
- Defined: `minigccg3.s:33316`

### intern_string (function)
- Defined: `minigccg3.s:33479`

### emit_global_initializer (function)
- Defined: `minigccg3.s:33572`

### parse_program (function)
- Defined: `minigccg3.s:34289`

### emit_float_consts (function)
- Defined: `minigccg3.s:36005`

### emit_string_pool (function)
- Defined: `minigccg3.s:36104`

### main (function)
- Defined: `minigccg3.s:36206`

### _start (function)
- Defined: `minigccg3.s:39836`

## minigccg4.s

### lex_kw_blob (function)
- Defined: `minigccg4.s:3`

### lex_kw_ids (function)
- Defined: `minigccg4.s:7`

### lex_kw_count (function)
- Defined: `minigccg4.s:11`

### input_ptr (function)
- Defined: `minigccg4.s:15`

### source_start (function)
- Defined: `minigccg4.s:19`

### token (function)
- Defined: `minigccg4.s:23`

### tok (function)
- Defined: `minigccg4.s:27`

### line (function)
- Defined: `minigccg4.s:31`

### output (function)
- Defined: `minigccg4.s:35`

### ctx_stack (function)
- Defined: `minigccg4.s:39`

### ctx_top (function)
- Defined: `minigccg4.s:43`

### current_file (function)
- Defined: `minigccg4.s:47`

### processed_files (function)
- Defined: `minigccg4.s:51`

### processed_count (function)
- Defined: `minigccg4.s:55`

### symbols (function)
- Defined: `minigccg4.s:59`

### symbol_count (function)
- Defined: `minigccg4.s:63`

### hash_table (function)
- Defined: `minigccg4.s:67`

### scope_stack_sym (function)
- Defined: `minigccg4.s:71`

### scope_stack_stk (function)
- Defined: `minigccg4.s:75`

### scope_depth (function)
- Defined: `minigccg4.s:79`

### stack_size (function)
- Defined: `minigccg4.s:83`

### label_counter (function)
- Defined: `minigccg4.s:87`

### function_has_return (function)
- Defined: `minigccg4.s:91`

### emit_enabled (function)
- Defined: `minigccg4.s:95`

### max_func_stack (function)
- Defined: `minigccg4.s:99`

### assign_size (function)
- Defined: `minigccg4.s:103`

### expr_pointed (function)
- Defined: `minigccg4.s:107`

### current_elem_size (function)
- Defined: `minigccg4.s:111`

### current_elem_size2 (function)
- Defined: `minigccg4.s:115`

### no_postfix_deref (function)
- Defined: `minigccg4.s:119`

### expr_type (function)
- Defined: `minigccg4.s:123`

### static_flag (function)
- Defined: `minigccg4.s:127`

### unsigned_type (function)
- Defined: `minigccg4.s:131`

### const_flag (function)
- Defined: `minigccg4.s:135`

### extern_flag (function)
- Defined: `minigccg4.s:139`

### global_emit_deferred (function)
- Defined: `minigccg4.s:143`

### float_const_str (function)
- Defined: `minigccg4.s:147`

### float_const_is_float (function)
- Defined: `minigccg4.s:151`

### float_const_count (function)
- Defined: `minigccg4.s:155`

### switch_case_values (function)
- Defined: `minigccg4.s:159`

### switch_case_labels (function)
- Defined: `minigccg4.s:163`

### switch_case_count (function)
- Defined: `minigccg4.s:167`

### switch_has_default (function)
- Defined: `minigccg4.s:171`

### switch_default_label (function)
- Defined: `minigccg4.s:175`

### break_target (function)
- Defined: `minigccg4.s:179`

### break_target_valid (function)
- Defined: `minigccg4.s:183`

### continue_target (function)
- Defined: `minigccg4.s:187`

### continue_target_valid (function)
- Defined: `minigccg4.s:191`

### str_label_counter (function)
- Defined: `minigccg4.s:195`

### string_pool (function)
- Defined: `minigccg4.s:199`

### string_count (function)
- Defined: `minigccg4.s:203`

### ptr_init_name (function)
- Defined: `minigccg4.s:207`

### ptr_init_label (function)
- Defined: `minigccg4.s:211`

### ptr_init_count (function)
- Defined: `minigccg4.s:215`

### struct_total_size (function)
- Defined: `minigccg4.s:219`

### struct_member_names (function)
- Defined: `minigccg4.s:223`

### struct_member_offsets (function)
- Defined: `minigccg4.s:227`

### struct_member_sizes (function)
- Defined: `minigccg4.s:231`

### struct_member_elem_sizes (function)
- Defined: `minigccg4.s:235`

### struct_member_count (function)
- Defined: `minigccg4.s:239`

### if_nest (function)
- Defined: `minigccg4.s:243`

### if_depth (function)
- Defined: `minigccg4.s:247`

### macro_count (function)
- Defined: `minigccg4.s:252`

### save_parser_state (function)
- Defined: `minigccg4.s:256`

### restore_parser_state (function)
- Defined: `minigccg4.s:395`

### macros (function)
- Defined: `minigccg4.s:583`

### find_macro (function)
- Defined: `minigccg4.s:587`

### add_macro (function)
- Defined: `minigccg4.s:651`

### macro_p (function)
- Defined: `minigccg4.s:781`

### macro_ok (function)
- Defined: `minigccg4.s:785`

### macro_skipws (function)
- Defined: `minigccg4.s:789`

### macro_hex_digit (function)
- Defined: `minigccg4.s:830`

### macro_digit_val (function)
- Defined: `minigccg4.s:928`

### macro_primary (function)
- Defined: `minigccg4.s:1049`

### macro_unary (function)
- Defined: `minigccg4.s:1847`

### macro_mul (function)
- Defined: `minigccg4.s:1975`

### macro_add (function)
- Defined: `minigccg4.s:2178`

### macro_shift (function)
- Defined: `minigccg4.s:2276`

### macro_cmp (function)
- Defined: `minigccg4.s:2429`

### macro_eq (function)
- Defined: `minigccg4.s:2650`

### macro_bitand (function)
- Defined: `minigccg4.s:2803`

### macro_bitxor (function)
- Defined: `minigccg4.s:2889`

### macro_bitor (function)
- Defined: `minigccg4.s:2954`

### macro_logand (function)
- Defined: `minigccg4.s:3040`

### macro_or_expr (function)
- Defined: `minigccg4.s:3137`

### macro_fold (function)
- Defined: `minigccg4.s:3234`

### error (function)
- Defined: `minigccg4.s:3255`

### safe_malloc (function)
- Defined: `minigccg4.s:3307`

### safe_strcpy (function)
- Defined: `minigccg4.s:3362`

### safe_strtoll (function)
- Defined: `minigccg4.s:3439`

### is_file_processed (function)
- Defined: `minigccg4.s:3554`

### mark_file_processed (function)
- Defined: `minigccg4.s:3615`

### get_dir_from_path (function)
- Defined: `minigccg4.s:3727`

### resolve_local_include (function)
- Defined: `minigccg4.s:3870`

### read_include_file (function)
- Defined: `minigccg4.s:4320`

### hash_name (function)
- Defined: `minigccg4.s:4528`

### hash_init (function)
- Defined: `minigccg4.s:4586`

### push_scope (function)
- Defined: `minigccg4.s:4625`

### pop_scope (function)
- Defined: `minigccg4.s:4677`

### truncate_symbols (function)
- Defined: `minigccg4.s:4873`

### my_isspace (function)
- Defined: `minigccg4.s:5026`

### my_isalpha (function)
- Defined: `minigccg4.s:5115`

### my_isdigit (function)
- Defined: `minigccg4.s:5184`

### my_isalnum (function)
- Defined: `minigccg4.s:5224`

### lex_fail (function)
- Defined: `minigccg4.s:5269`

### lex_kw_add (function)
- Defined: `minigccg4.s:5373`

### lex_init_keywords (function)
- Defined: `minigccg4.s:5536`

### lex_kw_lookup (function)
- Defined: `minigccg4.s:5919`

### lex_match_op (function)
- Defined: `minigccg4.s:6013`

### lex_hex_val (function)
- Defined: `minigccg4.s:6096`

### lex_is_int_suffix (function)
- Defined: `minigccg4.s:6218`

### lex_number (function)
- Defined: `minigccg4.s:6287`

### next_token (function)
- Defined: `minigccg4.s:7817`

### restart (function)
- Defined: `minigccg4.s:7821`

### match (function)
- Defined: `minigccg4.s:12334`

### emit (function)
- Defined: `minigccg4.s:12372`

### emit_i (function)
- Defined: `minigccg4.s:12486`

### emit_s (function)
- Defined: `minigccg4.s:12535`

### emit_is (function)
- Defined: `minigccg4.s:12584`

### emit_si (function)
- Defined: `minigccg4.s:12637`

### emit_asciz_body (function)
- Defined: `minigccg4.s:12690`

### emit_label (function)
- Defined: `minigccg4.s:13014`

### find_symbol (function)
- Defined: `minigccg4.s:13043`

### add_symbol (function)
- Defined: `minigccg4.s:13130`

### arg_reg (function)
- Defined: `minigccg4.s:13504`

### libc_global_name (function)
- Defined: `minigccg4.s:13580`

### unary (function)
- Defined: `minigccg4.s:13708`

### lvalue_address (function)
- Defined: `minigccg4.s:16252`

### handle_postfix (function)
- Defined: `minigccg4.s:16777`

### unary_expr (function)
- Defined: `minigccg4.s:17799`

### multiplicative_expr (function)
- Defined: `minigccg4.s:17824`

### additive_expr (function)
- Defined: `minigccg4.s:18446`

### shift_expr (function)
- Defined: `minigccg4.s:18941`

### relational_expr (function)
- Defined: `minigccg4.s:19087`

### equality_expr (function)
- Defined: `minigccg4.s:19689`

### bitwise_and_expr (function)
- Defined: `minigccg4.s:20167`

### bitwise_xor_expr (function)
- Defined: `minigccg4.s:20245`

### bitwise_or_expr (function)
- Defined: `minigccg4.s:20323`

### logical_and_expr (function)
- Defined: `minigccg4.s:20401`

### logical_or_expr (function)
- Defined: `minigccg4.s:20564`

### conditional_expr (function)
- Defined: `minigccg4.s:20727`

### emit_compound_op (function)
- Defined: `minigccg4.s:20859`

### assignment_expr (function)
- Defined: `minigccg4.s:21361`

### statement (function)
- Defined: `minigccg4.s:24676`

### restart_typedef (function)
- Defined: `minigccg4.s:28122`

### restart_int (function)
- Defined: `minigccg4.s:29154`

### parse_function (function)
- Defined: `minigccg4.s:30311`

### parse_enum (function)
- Defined: `minigccg4.s:31632`

### skip_struct (function)
- Defined: `minigccg4.s:32044`

### skip_typedef (function)
- Defined: `minigccg4.s:32630`

### data_directive (function)
- Defined: `minigccg4.s:33120`

### emit_global_bss (function)
- Defined: `minigccg4.s:33170`

### emit_global_data_head (function)
- Defined: `minigccg4.s:33261`

### parse_const_int (function)
- Defined: `minigccg4.s:33316`

### intern_string (function)
- Defined: `minigccg4.s:33479`

### emit_global_initializer (function)
- Defined: `minigccg4.s:33572`

### parse_program (function)
- Defined: `minigccg4.s:34289`

### emit_float_consts (function)
- Defined: `minigccg4.s:36005`

### emit_string_pool (function)
- Defined: `minigccg4.s:36104`

### main (function)
- Defined: `minigccg4.s:36206`

### _start (function)
- Defined: `minigccg4.s:39836`

## my_library.h

### greet (function) `void greet(void);`
- Defined: `my_library.h:5`
- Doc: Test function to verify that inclusion works correctly
- Imported by: `test_include.c`

## test.c

### main (function) `int main(void)`
- Defined: `test.c:1`

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
