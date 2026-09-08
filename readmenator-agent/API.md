# API

## minigcc.c

### save_parser_state (function) `static void save_parser_state(ParserState *state)`
- Defined: `minigcc.c:215`

### restore_parser_state (function) `static void restore_parser_state(ParserState *state)`
- Defined: `minigcc.c:240`

### find_macro (function) `static int find_macro(const char *name)`
- Defined: `minigcc.c:276`

### add_macro (function) `static void add_macro(const char *name, int value)`
- Defined: `minigcc.c:285`

### error (function) `static void error(const char *msg)`
- Defined: `minigcc.c:298`

### safe_malloc (function) `static void *safe_malloc(size_t size)`
- Defined: `minigcc.c:304`

### safe_strcpy (function) `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- Defined: `minigcc.c:313`

### safe_strtoll (function) `static long safe_strtoll(const char *s)`
- Defined: `minigcc.c:322`

### is_file_processed (function) `static int is_file_processed(const char *path)`
- Defined: `minigcc.c:335`

### mark_file_processed (function) `static void mark_file_processed(const char *path)`
- Defined: `minigcc.c:344`

### get_dir_from_path (function) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- Defined: `minigcc.c:356`

### resolve_local_include (function) `static char *resolve_local_include(const char *target)`
- Defined: `minigcc.c:375`

### read_include_file (function) `static char *read_include_file(const char *path)`
- Defined: `minigcc.c:414`

### hash_name (function) `static int hash_name(const char *name)`
- Defined: `minigcc.c:439`
- Doc: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multipli

### hash_init (function) `static void hash_init(void)`
- Defined: `minigcc.c:448`

### push_scope (function) `static void push_scope(void)`
- Defined: `minigcc.c:453`

### pop_scope (function) `static void pop_scope(void)`
- Defined: `minigcc.c:461`

### truncate_symbols (function) `static void truncate_symbols(int start_idx)`
- Defined: `minigcc.c:491`
- Doc: Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (

### my_isspace (function) `static int my_isspace(int c)`
- Defined: `minigcc.c:509`

### my_isalpha (function) `static int my_isalpha(int c)`
- Defined: `minigcc.c:519`

### my_isdigit (function) `static int my_isdigit(int c)`
- Defined: `minigcc.c:525`

### my_isalnum (function) `static int my_isalnum(int c)`
- Defined: `minigcc.c:530`

### next_token (function) `static void next_token(void)`
- Defined: `minigcc.c:538`
- Doc: } static int my_isdigit(int c) { if (c >= '0' && c <= '9') return 1; return 0; } static int my_isalnum(int c) { if (my_i

### match (function) `static void match(int expected)`
- Defined: `minigcc.c:974`

### emit (function) `static void emit(const char *s)`
- Defined: `minigcc.c:979`

### emit_i (function) `static void emit_i(const char *fmt, int v)`
- Defined: `minigcc.c:993`

### emit_s (function) `static void emit_s(const char *fmt, const char *s)`
- Defined: `minigcc.c:999`

### emit_is (function) `static void emit_is(const char *fmt, int v, const char *s)`
- Defined: `minigcc.c:1005`

### emit_si (function) `static void emit_si(const char *fmt, const char *s, int v)`
- Defined: `minigcc.c:1011`

### emit_asciz_body (function) `static void emit_asciz_body(const char *s)`
- Defined: `minigcc.c:1021`
- Doc: Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by t

### emit_label (function) `static void emit_label(int label)`
- Defined: `minigcc.c:1039`

### find_symbol (function) `static int find_symbol(const char *name)`
- Defined: `minigcc.c:1046`
- Doc: else if (c == '\a') fprintf(output, "\\a"); else if (c == '\b') fprintf(output, "\\b"); else if (c >= 32 && c <= 126) fp

### add_symbol (function) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- Defined: `minigcc.c:1056`

### arg_reg (function) `static const char *arg_reg(int i)`
- Defined: `minigcc.c:1117`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### libc_global_name (function) `static const char *libc_global_name(int i)`
- Defined: `minigcc.c:1127`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### unary (function) `static void unary(void)`
- Defined: `minigcc.c:1139`

### lvalue_address (function) `static void lvalue_address(void)`
- Defined: `minigcc.c:1389`

### handle_postfix (function) `static void handle_postfix(int is_lvalue)`
- Defined: `minigcc.c:1440`

### unary_expr (function) `static void unary_expr(void)`
- Defined: `minigcc.c:1574`

### multiplicative_expr (function) `static void multiplicative_expr(void)`
- Defined: `minigcc.c:1589`

### additive_expr (function) `static void additive_expr(void)`
- Defined: `minigcc.c:1653`

### shift_expr (function) `static void shift_expr(void)`
- Defined: `minigcc.c:1708`

### relational_expr (function) `static void relational_expr(void)`
- Defined: `minigcc.c:1727`

### equality_expr (function) `static void equality_expr(void)`
- Defined: `minigcc.c:1780`

### bitwise_and_expr (function) `static void bitwise_and_expr(void)`
- Defined: `minigcc.c:1829`

### bitwise_xor_expr (function) `static void bitwise_xor_expr(void)`
- Defined: `minigcc.c:1841`

### bitwise_or_expr (function) `static void bitwise_or_expr(void)`
- Defined: `minigcc.c:1853`

### logical_and_expr (function) `static void logical_and_expr(void)`
- Defined: `minigcc.c:1865`

### logical_or_expr (function) `static void logical_or_expr(void)`
- Defined: `minigcc.c:1885`

### conditional_expr (function) `static void conditional_expr(void)`
- Defined: `minigcc.c:1905`

### assignment_expr (function) `static void assignment_expr(void)`
- Defined: `minigcc.c:1923`

### statement (function) `static void statement(void)`
- Defined: `minigcc.c:2084`

### parse_function (function) `static void parse_function(const char *name, int ret_type)`
- Defined: `minigcc.c:2741`

### parse_enum (function) `static void parse_enum(void)`
- Defined: `minigcc.c:2868`

### skip_struct (function) `static void skip_struct(void)`
- Defined: `minigcc.c:2917`

### skip_typedef (function) `static void skip_typedef(void)`
- Defined: `minigcc.c:2981`

### data_directive (function) `static const char *data_directive(int size)`
- Defined: `minigcc.c:3036`
- Doc: s->const_value = 8;  /* just a marker /* If a struct was just parsed, store its size if (struct_total_size > 0) s->const

### emit_global_bss (function) `static void emit_global_bss(const char *name, int is_static, int size)`
- Defined: `minigcc.c:3044`
- Doc: } } match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(int size) { if (si

### emit_global_data_head (function) `static void emit_global_data_head(const char *name, int is_static)`
- Defined: `minigcc.c:3051`

### parse_const_int (function) `static int parse_const_int(long long *out)`
- Defined: `minigcc.c:3061`
- Doc: Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro 

### intern_string (function) `static int intern_string(const char *text)`
- Defined: `minigcc.c:3084`
- Doc: } if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg 

### emit_global_initializer (function) `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...`
- Defined: `minigcc.c:3101`
- Doc: Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is 

### parse_program (function) `static void parse_program(void)`
- Defined: `minigcc.c:3165`

### emit_float_consts (function) `static void emit_float_consts(void)`
- Defined: `minigcc.c:3316`

### emit_string_pool (function) `static void emit_string_pool(void)`
- Defined: `minigcc.c:3326`

### main (function) `int main(int argc, char **argv)`
- Defined: `minigcc.c:3336`

### fprintf (function) `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);`
- Defined: `minigcc.c:300`

### exit (function) `exit(EXIT_FAILURE);`
- Defined: `minigcc.c:302`

### fclose (function) `fclose(f);`
- Defined: `minigcc.c:379`

### fseek (function) `fseek(f, 0, SEEK_END);`
- Defined: `minigcc.c:418`

### rewind (function) `rewind(f);`
- Defined: `minigcc.c:424`

### free (function) `free(buf);`
- Defined: `minigcc.c:428`

### snprintf (function) `snprintf(token, MAX_TOKEN_LEN, "%d", macros[mi].value);`
- Defined: `minigcc.c:774`

### strcpy (function) `strcpy(float_const_str[float_const_count], token);`
- Defined: `minigcc.c:816`

### fputc (function) `fputc('%', output);`
- Defined: `minigcc.c:984`

### strncpy (function) `strncpy(d, name, MAX_IDENT_LEN - 1);`
- Defined: `minigcc.c:1062`

### memcpy (function) `memcpy(varname, token, nlen);`
- Defined: `minigcc.c:2132`

## minigccg2.s

### input_ptr (function)
- Defined: `minigccg2.s:3`

### source_start (function)
- Defined: `minigccg2.s:7`

### token (function)
- Defined: `minigccg2.s:11`

### tok (function)
- Defined: `minigccg2.s:15`

### line (function)
- Defined: `minigccg2.s:19`

### output (function)
- Defined: `minigccg2.s:23`

### ctx_stack (function)
- Defined: `minigccg2.s:27`

### ctx_top (function)
- Defined: `minigccg2.s:31`

### current_file (function)
- Defined: `minigccg2.s:35`

### processed_files (function)
- Defined: `minigccg2.s:39`

### processed_count (function)
- Defined: `minigccg2.s:43`

### symbols (function)
- Defined: `minigccg2.s:47`

### symbol_count (function)
- Defined: `minigccg2.s:51`

### hash_table (function)
- Defined: `minigccg2.s:55`

### scope_stack_sym (function)
- Defined: `minigccg2.s:59`

### scope_stack_stk (function)
- Defined: `minigccg2.s:63`

### scope_depth (function)
- Defined: `minigccg2.s:67`

### stack_size (function)
- Defined: `minigccg2.s:71`

### label_counter (function)
- Defined: `minigccg2.s:75`

### function_has_return (function)
- Defined: `minigccg2.s:79`

### emit_enabled (function)
- Defined: `minigccg2.s:83`

### max_func_stack (function)
- Defined: `minigccg2.s:87`

### assign_size (function)
- Defined: `minigccg2.s:91`

### expr_pointed (function)
- Defined: `minigccg2.s:95`

### current_elem_size (function)
- Defined: `minigccg2.s:99`

### current_elem_size2 (function)
- Defined: `minigccg2.s:103`

### no_postfix_deref (function)
- Defined: `minigccg2.s:107`

### expr_type (function)
- Defined: `minigccg2.s:111`

### static_flag (function)
- Defined: `minigccg2.s:115`

### unsigned_type (function)
- Defined: `minigccg2.s:119`

### const_flag (function)
- Defined: `minigccg2.s:123`

### extern_flag (function)
- Defined: `minigccg2.s:127`

### global_emit_deferred (function)
- Defined: `minigccg2.s:131`

### float_const_str (function)
- Defined: `minigccg2.s:135`

### float_const_is_float (function)
- Defined: `minigccg2.s:139`

### float_const_count (function)
- Defined: `minigccg2.s:143`

### switch_case_values (function)
- Defined: `minigccg2.s:147`

### switch_case_labels (function)
- Defined: `minigccg2.s:151`

### switch_case_count (function)
- Defined: `minigccg2.s:155`

### switch_has_default (function)
- Defined: `minigccg2.s:159`

### switch_default_label (function)
- Defined: `minigccg2.s:163`

### break_target (function)
- Defined: `minigccg2.s:167`

### break_target_valid (function)
- Defined: `minigccg2.s:171`

### continue_target (function)
- Defined: `minigccg2.s:175`

### continue_target_valid (function)
- Defined: `minigccg2.s:179`

### str_label_counter (function)
- Defined: `minigccg2.s:183`

### string_pool (function)
- Defined: `minigccg2.s:187`

### string_count (function)
- Defined: `minigccg2.s:191`

### ptr_init_name (function)
- Defined: `minigccg2.s:195`

### ptr_init_label (function)
- Defined: `minigccg2.s:199`

### ptr_init_count (function)
- Defined: `minigccg2.s:203`

### struct_total_size (function)
- Defined: `minigccg2.s:207`

### struct_member_names (function)
- Defined: `minigccg2.s:211`

### struct_member_offsets (function)
- Defined: `minigccg2.s:215`

### struct_member_sizes (function)
- Defined: `minigccg2.s:219`

### struct_member_elem_sizes (function)
- Defined: `minigccg2.s:223`

### struct_member_count (function)
- Defined: `minigccg2.s:227`

### if_nest (function)
- Defined: `minigccg2.s:231`

### if_depth (function)
- Defined: `minigccg2.s:235`

### macro_count (function)
- Defined: `minigccg2.s:240`

### save_parser_state (function)
- Defined: `minigccg2.s:244`

### restore_parser_state (function)
- Defined: `minigccg2.s:383`

### macros (function)
- Defined: `minigccg2.s:571`

### find_macro (function)
- Defined: `minigccg2.s:575`

### add_macro (function)
- Defined: `minigccg2.s:639`

### error (function)
- Defined: `minigccg2.s:769`

### safe_malloc (function)
- Defined: `minigccg2.s:821`

### safe_strcpy (function)
- Defined: `minigccg2.s:876`

### safe_strtoll (function)
- Defined: `minigccg2.s:953`

### is_file_processed (function)
- Defined: `minigccg2.s:1068`

### mark_file_processed (function)
- Defined: `minigccg2.s:1129`

### get_dir_from_path (function)
- Defined: `minigccg2.s:1241`

### resolve_local_include (function)
- Defined: `minigccg2.s:1384`

### read_include_file (function)
- Defined: `minigccg2.s:1834`

### hash_name (function)
- Defined: `minigccg2.s:2042`

### hash_init (function)
- Defined: `minigccg2.s:2100`

### push_scope (function)
- Defined: `minigccg2.s:2139`

### pop_scope (function)
- Defined: `minigccg2.s:2191`

### truncate_symbols (function)
- Defined: `minigccg2.s:2387`

### my_isspace (function)
- Defined: `minigccg2.s:2540`

### my_isalpha (function)
- Defined: `minigccg2.s:2629`

### my_isdigit (function)
- Defined: `minigccg2.s:2698`

### my_isalnum (function)
- Defined: `minigccg2.s:2738`

### next_token (function)
- Defined: `minigccg2.s:2783`

### restart (function)
- Defined: `minigccg2.s:2787`

### match (function)
- Defined: `minigccg2.s:8892`

### emit (function)
- Defined: `minigccg2.s:8930`

### emit_i (function)
- Defined: `minigccg2.s:9044`

### emit_s (function)
- Defined: `minigccg2.s:9093`

### emit_is (function)
- Defined: `minigccg2.s:9142`

### emit_si (function)
- Defined: `minigccg2.s:9195`

### emit_asciz_body (function)
- Defined: `minigccg2.s:9248`

### emit_label (function)
- Defined: `minigccg2.s:9572`

### find_symbol (function)
- Defined: `minigccg2.s:9601`

### add_symbol (function)
- Defined: `minigccg2.s:9688`

### arg_reg (function)
- Defined: `minigccg2.s:10056`

### libc_global_name (function)
- Defined: `minigccg2.s:10132`

### unary (function)
- Defined: `minigccg2.s:10260`

### lvalue_address (function)
- Defined: `minigccg2.s:12789`

### handle_postfix (function)
- Defined: `minigccg2.s:13294`

### unary_expr (function)
- Defined: `minigccg2.s:14271`

### multiplicative_expr (function)
- Defined: `minigccg2.s:14296`

### additive_expr (function)
- Defined: `minigccg2.s:14918`

### shift_expr (function)
- Defined: `minigccg2.s:15413`

### relational_expr (function)
- Defined: `minigccg2.s:15559`

### equality_expr (function)
- Defined: `minigccg2.s:16161`

### bitwise_and_expr (function)
- Defined: `minigccg2.s:16639`

### bitwise_xor_expr (function)
- Defined: `minigccg2.s:16717`

### bitwise_or_expr (function)
- Defined: `minigccg2.s:16795`

### logical_and_expr (function)
- Defined: `minigccg2.s:16873`

### logical_or_expr (function)
- Defined: `minigccg2.s:17036`

### conditional_expr (function)
- Defined: `minigccg2.s:17199`

### assignment_expr (function)
- Defined: `minigccg2.s:17331`

### statement (function)
- Defined: `minigccg2.s:19851`

### restart_typedef (function)
- Defined: `minigccg2.s:23297`

### restart_int (function)
- Defined: `minigccg2.s:24328`

### parse_function (function)
- Defined: `minigccg2.s:25484`

### parse_enum (function)
- Defined: `minigccg2.s:26800`

### skip_struct (function)
- Defined: `minigccg2.s:27212`

### skip_typedef (function)
- Defined: `minigccg2.s:27798`

### data_directive (function)
- Defined: `minigccg2.s:28288`

### emit_global_bss (function)
- Defined: `minigccg2.s:28338`

### emit_global_data_head (function)
- Defined: `minigccg2.s:28429`

### parse_const_int (function)
- Defined: `minigccg2.s:28484`

### intern_string (function)
- Defined: `minigccg2.s:28647`

### emit_global_initializer (function)
- Defined: `minigccg2.s:28740`

### parse_program (function)
- Defined: `minigccg2.s:29457`

### emit_float_consts (function)
- Defined: `minigccg2.s:31173`

### emit_string_pool (function)
- Defined: `minigccg2.s:31272`

### main (function)
- Defined: `minigccg2.s:31374`

### _start (function)
- Defined: `minigccg2.s:34714`

## minigccg3.s

### input_ptr (function)
- Defined: `minigccg3.s:3`

### source_start (function)
- Defined: `minigccg3.s:7`

### token (function)
- Defined: `minigccg3.s:11`

### tok (function)
- Defined: `minigccg3.s:15`

### line (function)
- Defined: `minigccg3.s:19`

### output (function)
- Defined: `minigccg3.s:23`

### ctx_stack (function)
- Defined: `minigccg3.s:27`

### ctx_top (function)
- Defined: `minigccg3.s:31`

### current_file (function)
- Defined: `minigccg3.s:35`

### processed_files (function)
- Defined: `minigccg3.s:39`

### processed_count (function)
- Defined: `minigccg3.s:43`

### symbols (function)
- Defined: `minigccg3.s:47`

### symbol_count (function)
- Defined: `minigccg3.s:51`

### hash_table (function)
- Defined: `minigccg3.s:55`

### scope_stack_sym (function)
- Defined: `minigccg3.s:59`

### scope_stack_stk (function)
- Defined: `minigccg3.s:63`

### scope_depth (function)
- Defined: `minigccg3.s:67`

### stack_size (function)
- Defined: `minigccg3.s:71`

### label_counter (function)
- Defined: `minigccg3.s:75`

### function_has_return (function)
- Defined: `minigccg3.s:79`

### emit_enabled (function)
- Defined: `minigccg3.s:83`

### max_func_stack (function)
- Defined: `minigccg3.s:87`

### assign_size (function)
- Defined: `minigccg3.s:91`

### expr_pointed (function)
- Defined: `minigccg3.s:95`

### current_elem_size (function)
- Defined: `minigccg3.s:99`

### current_elem_size2 (function)
- Defined: `minigccg3.s:103`

### no_postfix_deref (function)
- Defined: `minigccg3.s:107`

### expr_type (function)
- Defined: `minigccg3.s:111`

### static_flag (function)
- Defined: `minigccg3.s:115`

### unsigned_type (function)
- Defined: `minigccg3.s:119`

### const_flag (function)
- Defined: `minigccg3.s:123`

### extern_flag (function)
- Defined: `minigccg3.s:127`

### global_emit_deferred (function)
- Defined: `minigccg3.s:131`

### float_const_str (function)
- Defined: `minigccg3.s:135`

### float_const_is_float (function)
- Defined: `minigccg3.s:139`

### float_const_count (function)
- Defined: `minigccg3.s:143`

### switch_case_values (function)
- Defined: `minigccg3.s:147`

### switch_case_labels (function)
- Defined: `minigccg3.s:151`

### switch_case_count (function)
- Defined: `minigccg3.s:155`

### switch_has_default (function)
- Defined: `minigccg3.s:159`

### switch_default_label (function)
- Defined: `minigccg3.s:163`

### break_target (function)
- Defined: `minigccg3.s:167`

### break_target_valid (function)
- Defined: `minigccg3.s:171`

### continue_target (function)
- Defined: `minigccg3.s:175`

### continue_target_valid (function)
- Defined: `minigccg3.s:179`

### str_label_counter (function)
- Defined: `minigccg3.s:183`

### string_pool (function)
- Defined: `minigccg3.s:187`

### string_count (function)
- Defined: `minigccg3.s:191`

### ptr_init_name (function)
- Defined: `minigccg3.s:195`

### ptr_init_label (function)
- Defined: `minigccg3.s:199`

### ptr_init_count (function)
- Defined: `minigccg3.s:203`

### struct_total_size (function)
- Defined: `minigccg3.s:207`

### struct_member_names (function)
- Defined: `minigccg3.s:211`

### struct_member_offsets (function)
- Defined: `minigccg3.s:215`

### struct_member_sizes (function)
- Defined: `minigccg3.s:219`

### struct_member_elem_sizes (function)
- Defined: `minigccg3.s:223`

### struct_member_count (function)
- Defined: `minigccg3.s:227`

### if_nest (function)
- Defined: `minigccg3.s:231`

### if_depth (function)
- Defined: `minigccg3.s:235`

### macro_count (function)
- Defined: `minigccg3.s:240`

### save_parser_state (function)
- Defined: `minigccg3.s:244`

### restore_parser_state (function)
- Defined: `minigccg3.s:383`

### macros (function)
- Defined: `minigccg3.s:571`

### find_macro (function)
- Defined: `minigccg3.s:575`

### add_macro (function)
- Defined: `minigccg3.s:639`

### error (function)
- Defined: `minigccg3.s:769`

### safe_malloc (function)
- Defined: `minigccg3.s:821`

### safe_strcpy (function)
- Defined: `minigccg3.s:876`

### safe_strtoll (function)
- Defined: `minigccg3.s:953`

### is_file_processed (function)
- Defined: `minigccg3.s:1068`

### mark_file_processed (function)
- Defined: `minigccg3.s:1129`

### get_dir_from_path (function)
- Defined: `minigccg3.s:1241`

### resolve_local_include (function)
- Defined: `minigccg3.s:1384`

### read_include_file (function)
- Defined: `minigccg3.s:1834`

### hash_name (function)
- Defined: `minigccg3.s:2042`

### hash_init (function)
- Defined: `minigccg3.s:2100`

### push_scope (function)
- Defined: `minigccg3.s:2139`

### pop_scope (function)
- Defined: `minigccg3.s:2191`

### truncate_symbols (function)
- Defined: `minigccg3.s:2387`

### my_isspace (function)
- Defined: `minigccg3.s:2540`

### my_isalpha (function)
- Defined: `minigccg3.s:2629`

### my_isdigit (function)
- Defined: `minigccg3.s:2698`

### my_isalnum (function)
- Defined: `minigccg3.s:2738`

### next_token (function)
- Defined: `minigccg3.s:2783`

### restart (function)
- Defined: `minigccg3.s:2787`

### match (function)
- Defined: `minigccg3.s:8892`

### emit (function)
- Defined: `minigccg3.s:8930`

### emit_i (function)
- Defined: `minigccg3.s:9044`

### emit_s (function)
- Defined: `minigccg3.s:9093`

### emit_is (function)
- Defined: `minigccg3.s:9142`

### emit_si (function)
- Defined: `minigccg3.s:9195`

### emit_asciz_body (function)
- Defined: `minigccg3.s:9248`

### emit_label (function)
- Defined: `minigccg3.s:9572`

### find_symbol (function)
- Defined: `minigccg3.s:9601`

### add_symbol (function)
- Defined: `minigccg3.s:9688`

### arg_reg (function)
- Defined: `minigccg3.s:10056`

### libc_global_name (function)
- Defined: `minigccg3.s:10132`

### unary (function)
- Defined: `minigccg3.s:10260`

### lvalue_address (function)
- Defined: `minigccg3.s:12789`

### handle_postfix (function)
- Defined: `minigccg3.s:13294`

### unary_expr (function)
- Defined: `minigccg3.s:14271`

### multiplicative_expr (function)
- Defined: `minigccg3.s:14296`

### additive_expr (function)
- Defined: `minigccg3.s:14918`

### shift_expr (function)
- Defined: `minigccg3.s:15413`

### relational_expr (function)
- Defined: `minigccg3.s:15559`

### equality_expr (function)
- Defined: `minigccg3.s:16161`

### bitwise_and_expr (function)
- Defined: `minigccg3.s:16639`

### bitwise_xor_expr (function)
- Defined: `minigccg3.s:16717`

### bitwise_or_expr (function)
- Defined: `minigccg3.s:16795`

### logical_and_expr (function)
- Defined: `minigccg3.s:16873`

### logical_or_expr (function)
- Defined: `minigccg3.s:17036`

### conditional_expr (function)
- Defined: `minigccg3.s:17199`

### assignment_expr (function)
- Defined: `minigccg3.s:17331`

### statement (function)
- Defined: `minigccg3.s:19851`

### restart_typedef (function)
- Defined: `minigccg3.s:23297`

### restart_int (function)
- Defined: `minigccg3.s:24328`

### parse_function (function)
- Defined: `minigccg3.s:25484`

### parse_enum (function)
- Defined: `minigccg3.s:26800`

### skip_struct (function)
- Defined: `minigccg3.s:27212`

### skip_typedef (function)
- Defined: `minigccg3.s:27798`

### data_directive (function)
- Defined: `minigccg3.s:28288`

### emit_global_bss (function)
- Defined: `minigccg3.s:28338`

### emit_global_data_head (function)
- Defined: `minigccg3.s:28429`

### parse_const_int (function)
- Defined: `minigccg3.s:28484`

### intern_string (function)
- Defined: `minigccg3.s:28647`

### emit_global_initializer (function)
- Defined: `minigccg3.s:28740`

### parse_program (function)
- Defined: `minigccg3.s:29457`

### emit_float_consts (function)
- Defined: `minigccg3.s:31173`

### emit_string_pool (function)
- Defined: `minigccg3.s:31272`

### main (function)
- Defined: `minigccg3.s:31374`

### _start (function)
- Defined: `minigccg3.s:34714`

## minigccg4.s

### input_ptr (function)
- Defined: `minigccg4.s:3`

### source_start (function)
- Defined: `minigccg4.s:7`

### token (function)
- Defined: `minigccg4.s:11`

### tok (function)
- Defined: `minigccg4.s:15`

### line (function)
- Defined: `minigccg4.s:19`

### output (function)
- Defined: `minigccg4.s:23`

### ctx_stack (function)
- Defined: `minigccg4.s:27`

### ctx_top (function)
- Defined: `minigccg4.s:31`

### current_file (function)
- Defined: `minigccg4.s:35`

### processed_files (function)
- Defined: `minigccg4.s:39`

### processed_count (function)
- Defined: `minigccg4.s:43`

### symbols (function)
- Defined: `minigccg4.s:47`

### symbol_count (function)
- Defined: `minigccg4.s:51`

### hash_table (function)
- Defined: `minigccg4.s:55`

### scope_stack_sym (function)
- Defined: `minigccg4.s:59`

### scope_stack_stk (function)
- Defined: `minigccg4.s:63`

### scope_depth (function)
- Defined: `minigccg4.s:67`

### stack_size (function)
- Defined: `minigccg4.s:71`

### label_counter (function)
- Defined: `minigccg4.s:75`

### function_has_return (function)
- Defined: `minigccg4.s:79`

### emit_enabled (function)
- Defined: `minigccg4.s:83`

### max_func_stack (function)
- Defined: `minigccg4.s:87`

### assign_size (function)
- Defined: `minigccg4.s:91`

### expr_pointed (function)
- Defined: `minigccg4.s:95`

### current_elem_size (function)
- Defined: `minigccg4.s:99`

### current_elem_size2 (function)
- Defined: `minigccg4.s:103`

### no_postfix_deref (function)
- Defined: `minigccg4.s:107`

### expr_type (function)
- Defined: `minigccg4.s:111`

### static_flag (function)
- Defined: `minigccg4.s:115`

### unsigned_type (function)
- Defined: `minigccg4.s:119`

### const_flag (function)
- Defined: `minigccg4.s:123`

### extern_flag (function)
- Defined: `minigccg4.s:127`

### global_emit_deferred (function)
- Defined: `minigccg4.s:131`

### float_const_str (function)
- Defined: `minigccg4.s:135`

### float_const_is_float (function)
- Defined: `minigccg4.s:139`

### float_const_count (function)
- Defined: `minigccg4.s:143`

### switch_case_values (function)
- Defined: `minigccg4.s:147`

### switch_case_labels (function)
- Defined: `minigccg4.s:151`

### switch_case_count (function)
- Defined: `minigccg4.s:155`

### switch_has_default (function)
- Defined: `minigccg4.s:159`

### switch_default_label (function)
- Defined: `minigccg4.s:163`

### break_target (function)
- Defined: `minigccg4.s:167`

### break_target_valid (function)
- Defined: `minigccg4.s:171`

### continue_target (function)
- Defined: `minigccg4.s:175`

### continue_target_valid (function)
- Defined: `minigccg4.s:179`

### str_label_counter (function)
- Defined: `minigccg4.s:183`

### string_pool (function)
- Defined: `minigccg4.s:187`

### string_count (function)
- Defined: `minigccg4.s:191`

### ptr_init_name (function)
- Defined: `minigccg4.s:195`

### ptr_init_label (function)
- Defined: `minigccg4.s:199`

### ptr_init_count (function)
- Defined: `minigccg4.s:203`

### struct_total_size (function)
- Defined: `minigccg4.s:207`

### struct_member_names (function)
- Defined: `minigccg4.s:211`

### struct_member_offsets (function)
- Defined: `minigccg4.s:215`

### struct_member_sizes (function)
- Defined: `minigccg4.s:219`

### struct_member_elem_sizes (function)
- Defined: `minigccg4.s:223`

### struct_member_count (function)
- Defined: `minigccg4.s:227`

### if_nest (function)
- Defined: `minigccg4.s:231`

### if_depth (function)
- Defined: `minigccg4.s:235`

### macro_count (function)
- Defined: `minigccg4.s:240`

### save_parser_state (function)
- Defined: `minigccg4.s:244`

### restore_parser_state (function)
- Defined: `minigccg4.s:383`

### macros (function)
- Defined: `minigccg4.s:571`

### find_macro (function)
- Defined: `minigccg4.s:575`

### add_macro (function)
- Defined: `minigccg4.s:639`

### error (function)
- Defined: `minigccg4.s:769`

### safe_malloc (function)
- Defined: `minigccg4.s:821`

### safe_strcpy (function)
- Defined: `minigccg4.s:876`

### safe_strtoll (function)
- Defined: `minigccg4.s:953`

### is_file_processed (function)
- Defined: `minigccg4.s:1068`

### mark_file_processed (function)
- Defined: `minigccg4.s:1129`

### get_dir_from_path (function)
- Defined: `minigccg4.s:1241`

### resolve_local_include (function)
- Defined: `minigccg4.s:1384`

### read_include_file (function)
- Defined: `minigccg4.s:1834`

### hash_name (function)
- Defined: `minigccg4.s:2042`

### hash_init (function)
- Defined: `minigccg4.s:2100`

### push_scope (function)
- Defined: `minigccg4.s:2139`

### pop_scope (function)
- Defined: `minigccg4.s:2191`

### truncate_symbols (function)
- Defined: `minigccg4.s:2387`

### my_isspace (function)
- Defined: `minigccg4.s:2540`

### my_isalpha (function)
- Defined: `minigccg4.s:2629`

### my_isdigit (function)
- Defined: `minigccg4.s:2698`

### my_isalnum (function)
- Defined: `minigccg4.s:2738`

### next_token (function)
- Defined: `minigccg4.s:2783`

### restart (function)
- Defined: `minigccg4.s:2787`

### match (function)
- Defined: `minigccg4.s:8892`

### emit (function)
- Defined: `minigccg4.s:8930`

### emit_i (function)
- Defined: `minigccg4.s:9044`

### emit_s (function)
- Defined: `minigccg4.s:9093`

### emit_is (function)
- Defined: `minigccg4.s:9142`

### emit_si (function)
- Defined: `minigccg4.s:9195`

### emit_asciz_body (function)
- Defined: `minigccg4.s:9248`

### emit_label (function)
- Defined: `minigccg4.s:9572`

### find_symbol (function)
- Defined: `minigccg4.s:9601`

### add_symbol (function)
- Defined: `minigccg4.s:9688`

### arg_reg (function)
- Defined: `minigccg4.s:10056`

### libc_global_name (function)
- Defined: `minigccg4.s:10132`

### unary (function)
- Defined: `minigccg4.s:10260`

### lvalue_address (function)
- Defined: `minigccg4.s:12789`

### handle_postfix (function)
- Defined: `minigccg4.s:13294`

### unary_expr (function)
- Defined: `minigccg4.s:14271`

### multiplicative_expr (function)
- Defined: `minigccg4.s:14296`

### additive_expr (function)
- Defined: `minigccg4.s:14918`

### shift_expr (function)
- Defined: `minigccg4.s:15413`

### relational_expr (function)
- Defined: `minigccg4.s:15559`

### equality_expr (function)
- Defined: `minigccg4.s:16161`

### bitwise_and_expr (function)
- Defined: `minigccg4.s:16639`

### bitwise_xor_expr (function)
- Defined: `minigccg4.s:16717`

### bitwise_or_expr (function)
- Defined: `minigccg4.s:16795`

### logical_and_expr (function)
- Defined: `minigccg4.s:16873`

### logical_or_expr (function)
- Defined: `minigccg4.s:17036`

### conditional_expr (function)
- Defined: `minigccg4.s:17199`

### assignment_expr (function)
- Defined: `minigccg4.s:17331`

### statement (function)
- Defined: `minigccg4.s:19851`

### restart_typedef (function)
- Defined: `minigccg4.s:23297`

### restart_int (function)
- Defined: `minigccg4.s:24328`

### parse_function (function)
- Defined: `minigccg4.s:25484`

### parse_enum (function)
- Defined: `minigccg4.s:26800`

### skip_struct (function)
- Defined: `minigccg4.s:27212`

### skip_typedef (function)
- Defined: `minigccg4.s:27798`

### data_directive (function)
- Defined: `minigccg4.s:28288`

### emit_global_bss (function)
- Defined: `minigccg4.s:28338`

### emit_global_data_head (function)
- Defined: `minigccg4.s:28429`

### parse_const_int (function)
- Defined: `minigccg4.s:28484`

### intern_string (function)
- Defined: `minigccg4.s:28647`

### emit_global_initializer (function)
- Defined: `minigccg4.s:28740`

### parse_program (function)
- Defined: `minigccg4.s:29457`

### emit_float_consts (function)
- Defined: `minigccg4.s:31173`

### emit_string_pool (function)
- Defined: `minigccg4.s:31272`

### main (function)
- Defined: `minigccg4.s:31374`

### _start (function)
- Defined: `minigccg4.s:34714`

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
