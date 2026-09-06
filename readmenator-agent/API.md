# API

## minigcc.c

### save_parser_state `static void save_parser_state(ParserState *state)`
- Defined: `minigcc.c:215`

### restore_parser_state `static void restore_parser_state(ParserState *state)`
- Defined: `minigcc.c:240`

### find_macro `static int find_macro(const char *name)`
- Defined: `minigcc.c:276`

### add_macro `static void add_macro(const char *name, int value)`
- Defined: `minigcc.c:285`

### error `static void error(const char *msg)`
- Defined: `minigcc.c:298`

### safe_malloc `static void *safe_malloc(size_t size)`
- Defined: `minigcc.c:304`

### safe_strcpy `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- Defined: `minigcc.c:313`

### safe_strtoll `static long safe_strtoll(const char *s)`
- Defined: `minigcc.c:322`

### is_file_processed `static int is_file_processed(const char *path)`
- Defined: `minigcc.c:335`

### mark_file_processed `static void mark_file_processed(const char *path)`
- Defined: `minigcc.c:344`

### get_dir_from_path `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- Defined: `minigcc.c:356`

### resolve_local_include `static char *resolve_local_include(const char *target)`
- Defined: `minigcc.c:375`

### read_include_file `static char *read_include_file(const char *path)`
- Defined: `minigcc.c:414`

### hash_name `static int hash_name(const char *name)`
- Defined: `minigcc.c:439`
- Doc: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multipli

### hash_init `static void hash_init(void)`
- Defined: `minigcc.c:448`

### push_scope `static void push_scope(void)`
- Defined: `minigcc.c:453`

### pop_scope `static void pop_scope(void)`
- Defined: `minigcc.c:461`

### truncate_symbols `static void truncate_symbols(int start_idx)`
- Defined: `minigcc.c:491`
- Doc: Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (

### my_isspace `static int my_isspace(int c)`
- Defined: `minigcc.c:509`

### my_isalpha `static int my_isalpha(int c)`
- Defined: `minigcc.c:519`

### my_isdigit `static int my_isdigit(int c)`
- Defined: `minigcc.c:525`

### my_isalnum `static int my_isalnum(int c)`
- Defined: `minigcc.c:530`

### next_token `static void next_token(void)`
- Defined: `minigcc.c:538`
- Doc: } static int my_isdigit(int c) { if (c >= '0' && c <= '9') return 1; return 0; } static int my_isalnum(int c) { if (my_i

### match `static void match(int expected)`
- Defined: `minigcc.c:974`

### emit `static void emit(const char *s)`
- Defined: `minigcc.c:979`

### emit_i `static void emit_i(const char *fmt, int v)`
- Defined: `minigcc.c:993`

### emit_s `static void emit_s(const char *fmt, const char *s)`
- Defined: `minigcc.c:999`

### emit_is `static void emit_is(const char *fmt, int v, const char *s)`
- Defined: `minigcc.c:1005`

### emit_si `static void emit_si(const char *fmt, const char *s, int v)`
- Defined: `minigcc.c:1011`

### emit_asciz_body `static void emit_asciz_body(const char *s)`
- Defined: `minigcc.c:1021`
- Doc: Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by t

### emit_label `static void emit_label(int label)`
- Defined: `minigcc.c:1039`

### find_symbol `static int find_symbol(const char *name)`
- Defined: `minigcc.c:1046`
- Doc: else if (c == '\a') fprintf(output, "\\a"); else if (c == '\b') fprintf(output, "\\b"); else if (c >= 32 && c <= 126) fp

### add_symbol `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- Defined: `minigcc.c:1056`

### arg_reg `static const char *arg_reg(int i)`
- Defined: `minigcc.c:1117`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### libc_global_name `static const char *libc_global_name(int i)`
- Defined: `minigcc.c:1127`
- Doc: Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compi

### unary `static void unary(void)`
- Defined: `minigcc.c:1139`

### lvalue_address `static void lvalue_address(void)`
- Defined: `minigcc.c:1389`

### handle_postfix `static void handle_postfix(int is_lvalue)`
- Defined: `minigcc.c:1440`

### unary_expr `static void unary_expr(void)`
- Defined: `minigcc.c:1574`

### multiplicative_expr `static void multiplicative_expr(void)`
- Defined: `minigcc.c:1589`

### additive_expr `static void additive_expr(void)`
- Defined: `minigcc.c:1653`

### shift_expr `static void shift_expr(void)`
- Defined: `minigcc.c:1708`

### relational_expr `static void relational_expr(void)`
- Defined: `minigcc.c:1727`

### equality_expr `static void equality_expr(void)`
- Defined: `minigcc.c:1780`

### bitwise_and_expr `static void bitwise_and_expr(void)`
- Defined: `minigcc.c:1829`

### bitwise_xor_expr `static void bitwise_xor_expr(void)`
- Defined: `minigcc.c:1841`

### bitwise_or_expr `static void bitwise_or_expr(void)`
- Defined: `minigcc.c:1853`

### logical_and_expr `static void logical_and_expr(void)`
- Defined: `minigcc.c:1865`

### logical_or_expr `static void logical_or_expr(void)`
- Defined: `minigcc.c:1885`

### conditional_expr `static void conditional_expr(void)`
- Defined: `minigcc.c:1905`

### assignment_expr `static void assignment_expr(void)`
- Defined: `minigcc.c:1923`

### statement `static void statement(void)`
- Defined: `minigcc.c:2084`

### parse_function `static void parse_function(const char *name, int ret_type)`
- Defined: `minigcc.c:2741`

### parse_enum `static void parse_enum(void)`
- Defined: `minigcc.c:2868`

### skip_struct `static void skip_struct(void)`
- Defined: `minigcc.c:2917`

### skip_typedef `static void skip_typedef(void)`
- Defined: `minigcc.c:2981`

### data_directive `static const char *data_directive(int size)`
- Defined: `minigcc.c:3036`
- Doc: s->const_value = 8;  /* just a marker /* If a struct was just parsed, store its size if (struct_total_size > 0) s->const

### emit_global_bss `static void emit_global_bss(const char *name, int is_static, int size)`
- Defined: `minigcc.c:3044`
- Doc: } } match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(int size) { if (si

### emit_global_data_head `static void emit_global_data_head(const char *name, int is_static)`
- Defined: `minigcc.c:3051`

### parse_const_int `static int parse_const_int(long long *out)`
- Defined: `minigcc.c:3061`
- Doc: Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro 

### intern_string `static int intern_string(const char *text)`
- Defined: `minigcc.c:3084`
- Doc: } if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg 

### emit_global_initializer `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...`
- Defined: `minigcc.c:3101`
- Doc: Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is 

### parse_program `static void parse_program(void)`
- Defined: `minigcc.c:3165`

### emit_float_consts `static void emit_float_consts(void)`
- Defined: `minigcc.c:3316`

### emit_string_pool `static void emit_string_pool(void)`
- Defined: `minigcc.c:3326`

### main `int main(int argc, char **argv)`
- Defined: `minigcc.c:3336`

## minigccg2.s

### input_ptr
- Defined: `minigccg2.s:3`

### source_start
- Defined: `minigccg2.s:7`

### token
- Defined: `minigccg2.s:11`

### tok
- Defined: `minigccg2.s:15`

### line
- Defined: `minigccg2.s:19`

### output
- Defined: `minigccg2.s:23`

### ctx_stack
- Defined: `minigccg2.s:27`

### ctx_top
- Defined: `minigccg2.s:31`

### current_file
- Defined: `minigccg2.s:35`

### processed_files
- Defined: `minigccg2.s:39`

### processed_count
- Defined: `minigccg2.s:43`

### symbols
- Defined: `minigccg2.s:47`

### symbol_count
- Defined: `minigccg2.s:51`

### hash_table
- Defined: `minigccg2.s:55`

### scope_stack_sym
- Defined: `minigccg2.s:59`

### scope_stack_stk
- Defined: `minigccg2.s:63`

### scope_depth
- Defined: `minigccg2.s:67`

### stack_size
- Defined: `minigccg2.s:71`

### label_counter
- Defined: `minigccg2.s:75`

### function_has_return
- Defined: `minigccg2.s:79`

### emit_enabled
- Defined: `minigccg2.s:83`

### max_func_stack
- Defined: `minigccg2.s:87`

### assign_size
- Defined: `minigccg2.s:91`

### expr_pointed
- Defined: `minigccg2.s:95`

### current_elem_size
- Defined: `minigccg2.s:99`

### current_elem_size2
- Defined: `minigccg2.s:103`

### no_postfix_deref
- Defined: `minigccg2.s:107`

### expr_type
- Defined: `minigccg2.s:111`

### static_flag
- Defined: `minigccg2.s:115`

### unsigned_type
- Defined: `minigccg2.s:119`

### const_flag
- Defined: `minigccg2.s:123`

### extern_flag
- Defined: `minigccg2.s:127`

### global_emit_deferred
- Defined: `minigccg2.s:131`

### float_const_str
- Defined: `minigccg2.s:135`

### float_const_is_float
- Defined: `minigccg2.s:139`

### float_const_count
- Defined: `minigccg2.s:143`

### switch_case_values
- Defined: `minigccg2.s:147`

### switch_case_labels
- Defined: `minigccg2.s:151`

### switch_case_count
- Defined: `minigccg2.s:155`

### switch_has_default
- Defined: `minigccg2.s:159`

### switch_default_label
- Defined: `minigccg2.s:163`

### break_target
- Defined: `minigccg2.s:167`

### break_target_valid
- Defined: `minigccg2.s:171`

### continue_target
- Defined: `minigccg2.s:175`

### continue_target_valid
- Defined: `minigccg2.s:179`

### str_label_counter
- Defined: `minigccg2.s:183`

### string_pool
- Defined: `minigccg2.s:187`

### string_count
- Defined: `minigccg2.s:191`

### ptr_init_name
- Defined: `minigccg2.s:195`

### ptr_init_label
- Defined: `minigccg2.s:199`

### ptr_init_count
- Defined: `minigccg2.s:203`

### struct_total_size
- Defined: `minigccg2.s:207`

### struct_member_names
- Defined: `minigccg2.s:211`

### struct_member_offsets
- Defined: `minigccg2.s:215`

### struct_member_sizes
- Defined: `minigccg2.s:219`

### struct_member_elem_sizes
- Defined: `minigccg2.s:223`

### struct_member_count
- Defined: `minigccg2.s:227`

### if_nest
- Defined: `minigccg2.s:231`

### if_depth
- Defined: `minigccg2.s:235`

### macro_count
- Defined: `minigccg2.s:240`

### save_parser_state
- Defined: `minigccg2.s:244`

### restore_parser_state
- Defined: `minigccg2.s:383`

### macros
- Defined: `minigccg2.s:571`

### find_macro
- Defined: `minigccg2.s:575`

### add_macro
- Defined: `minigccg2.s:639`

### error
- Defined: `minigccg2.s:769`

### safe_malloc
- Defined: `minigccg2.s:821`

### safe_strcpy
- Defined: `minigccg2.s:876`

### safe_strtoll
- Defined: `minigccg2.s:953`

### is_file_processed
- Defined: `minigccg2.s:1068`

### mark_file_processed
- Defined: `minigccg2.s:1129`

### get_dir_from_path
- Defined: `minigccg2.s:1241`

### resolve_local_include
- Defined: `minigccg2.s:1384`

### read_include_file
- Defined: `minigccg2.s:1834`

### hash_name
- Defined: `minigccg2.s:2042`

### hash_init
- Defined: `minigccg2.s:2100`

### push_scope
- Defined: `minigccg2.s:2139`

### pop_scope
- Defined: `minigccg2.s:2191`

### truncate_symbols
- Defined: `minigccg2.s:2387`

### my_isspace
- Defined: `minigccg2.s:2540`

### my_isalpha
- Defined: `minigccg2.s:2629`

### my_isdigit
- Defined: `minigccg2.s:2698`

### my_isalnum
- Defined: `minigccg2.s:2738`

### next_token
- Defined: `minigccg2.s:2783`

### restart
- Defined: `minigccg2.s:2787`

### match
- Defined: `minigccg2.s:8892`

### emit
- Defined: `minigccg2.s:8930`

### emit_i
- Defined: `minigccg2.s:9044`

### emit_s
- Defined: `minigccg2.s:9093`

### emit_is
- Defined: `minigccg2.s:9142`

### emit_si
- Defined: `minigccg2.s:9195`

### emit_asciz_body
- Defined: `minigccg2.s:9248`

### emit_label
- Defined: `minigccg2.s:9572`

### find_symbol
- Defined: `minigccg2.s:9601`

### add_symbol
- Defined: `minigccg2.s:9688`

### arg_reg
- Defined: `minigccg2.s:10056`

### libc_global_name
- Defined: `minigccg2.s:10132`

### unary
- Defined: `minigccg2.s:10260`

### lvalue_address
- Defined: `minigccg2.s:12789`

### handle_postfix
- Defined: `minigccg2.s:13294`

### unary_expr
- Defined: `minigccg2.s:14271`

### multiplicative_expr
- Defined: `minigccg2.s:14296`

### additive_expr
- Defined: `minigccg2.s:14918`

### shift_expr
- Defined: `minigccg2.s:15413`

### relational_expr
- Defined: `minigccg2.s:15559`

### equality_expr
- Defined: `minigccg2.s:16161`

### bitwise_and_expr
- Defined: `minigccg2.s:16639`

### bitwise_xor_expr
- Defined: `minigccg2.s:16717`

### bitwise_or_expr
- Defined: `minigccg2.s:16795`

### logical_and_expr
- Defined: `minigccg2.s:16873`

### logical_or_expr
- Defined: `minigccg2.s:17036`

### conditional_expr
- Defined: `minigccg2.s:17199`

### assignment_expr
- Defined: `minigccg2.s:17331`

### statement
- Defined: `minigccg2.s:19851`

### restart_typedef
- Defined: `minigccg2.s:23297`

### restart_int
- Defined: `minigccg2.s:24328`

### parse_function
- Defined: `minigccg2.s:25484`

### parse_enum
- Defined: `minigccg2.s:26800`

### skip_struct
- Defined: `minigccg2.s:27212`

### skip_typedef
- Defined: `minigccg2.s:27798`

### data_directive
- Defined: `minigccg2.s:28288`

### emit_global_bss
- Defined: `minigccg2.s:28338`

### emit_global_data_head
- Defined: `minigccg2.s:28429`

### parse_const_int
- Defined: `minigccg2.s:28484`

### intern_string
- Defined: `minigccg2.s:28647`

### emit_global_initializer
- Defined: `minigccg2.s:28740`

### parse_program
- Defined: `minigccg2.s:29457`

### emit_float_consts
- Defined: `minigccg2.s:31173`

### emit_string_pool
- Defined: `minigccg2.s:31272`

### main
- Defined: `minigccg2.s:31374`

### _start
- Defined: `minigccg2.s:34714`

## minigccg3.s

### input_ptr
- Defined: `minigccg3.s:3`

### source_start
- Defined: `minigccg3.s:7`

### token
- Defined: `minigccg3.s:11`

### tok
- Defined: `minigccg3.s:15`

### line
- Defined: `minigccg3.s:19`

### output
- Defined: `minigccg3.s:23`

### ctx_stack
- Defined: `minigccg3.s:27`

### ctx_top
- Defined: `minigccg3.s:31`

### current_file
- Defined: `minigccg3.s:35`

### processed_files
- Defined: `minigccg3.s:39`

### processed_count
- Defined: `minigccg3.s:43`

### symbols
- Defined: `minigccg3.s:47`

### symbol_count
- Defined: `minigccg3.s:51`

### hash_table
- Defined: `minigccg3.s:55`

### scope_stack_sym
- Defined: `minigccg3.s:59`

### scope_stack_stk
- Defined: `minigccg3.s:63`

### scope_depth
- Defined: `minigccg3.s:67`

### stack_size
- Defined: `minigccg3.s:71`

### label_counter
- Defined: `minigccg3.s:75`

### function_has_return
- Defined: `minigccg3.s:79`

### emit_enabled
- Defined: `minigccg3.s:83`

### max_func_stack
- Defined: `minigccg3.s:87`

### assign_size
- Defined: `minigccg3.s:91`

### expr_pointed
- Defined: `minigccg3.s:95`

### current_elem_size
- Defined: `minigccg3.s:99`

### current_elem_size2
- Defined: `minigccg3.s:103`

### no_postfix_deref
- Defined: `minigccg3.s:107`

### expr_type
- Defined: `minigccg3.s:111`

### static_flag
- Defined: `minigccg3.s:115`

### unsigned_type
- Defined: `minigccg3.s:119`

### const_flag
- Defined: `minigccg3.s:123`

### extern_flag
- Defined: `minigccg3.s:127`

### global_emit_deferred
- Defined: `minigccg3.s:131`

### float_const_str
- Defined: `minigccg3.s:135`

### float_const_is_float
- Defined: `minigccg3.s:139`

### float_const_count
- Defined: `minigccg3.s:143`

### switch_case_values
- Defined: `minigccg3.s:147`

### switch_case_labels
- Defined: `minigccg3.s:151`

### switch_case_count
- Defined: `minigccg3.s:155`

### switch_has_default
- Defined: `minigccg3.s:159`

### switch_default_label
- Defined: `minigccg3.s:163`

### break_target
- Defined: `minigccg3.s:167`

### break_target_valid
- Defined: `minigccg3.s:171`

### continue_target
- Defined: `minigccg3.s:175`

### continue_target_valid
- Defined: `minigccg3.s:179`

### str_label_counter
- Defined: `minigccg3.s:183`

### string_pool
- Defined: `minigccg3.s:187`

### string_count
- Defined: `minigccg3.s:191`

### ptr_init_name
- Defined: `minigccg3.s:195`

### ptr_init_label
- Defined: `minigccg3.s:199`

### ptr_init_count
- Defined: `minigccg3.s:203`

### struct_total_size
- Defined: `minigccg3.s:207`

### struct_member_names
- Defined: `minigccg3.s:211`

### struct_member_offsets
- Defined: `minigccg3.s:215`

### struct_member_sizes
- Defined: `minigccg3.s:219`

### struct_member_elem_sizes
- Defined: `minigccg3.s:223`

### struct_member_count
- Defined: `minigccg3.s:227`

### if_nest
- Defined: `minigccg3.s:231`

### if_depth
- Defined: `minigccg3.s:235`

### macro_count
- Defined: `minigccg3.s:240`

### save_parser_state
- Defined: `minigccg3.s:244`

### restore_parser_state
- Defined: `minigccg3.s:383`

### macros
- Defined: `minigccg3.s:571`

### find_macro
- Defined: `minigccg3.s:575`

### add_macro
- Defined: `minigccg3.s:639`

### error
- Defined: `minigccg3.s:769`

### safe_malloc
- Defined: `minigccg3.s:821`

### safe_strcpy
- Defined: `minigccg3.s:876`

### safe_strtoll
- Defined: `minigccg3.s:953`

### is_file_processed
- Defined: `minigccg3.s:1068`

### mark_file_processed
- Defined: `minigccg3.s:1129`

### get_dir_from_path
- Defined: `minigccg3.s:1241`

### resolve_local_include
- Defined: `minigccg3.s:1384`

### read_include_file
- Defined: `minigccg3.s:1834`

### hash_name
- Defined: `minigccg3.s:2042`

### hash_init
- Defined: `minigccg3.s:2100`

### push_scope
- Defined: `minigccg3.s:2139`

### pop_scope
- Defined: `minigccg3.s:2191`

### truncate_symbols
- Defined: `minigccg3.s:2387`

### my_isspace
- Defined: `minigccg3.s:2540`

### my_isalpha
- Defined: `minigccg3.s:2629`

### my_isdigit
- Defined: `minigccg3.s:2698`

### my_isalnum
- Defined: `minigccg3.s:2738`

### next_token
- Defined: `minigccg3.s:2783`

### restart
- Defined: `minigccg3.s:2787`

### match
- Defined: `minigccg3.s:8892`

### emit
- Defined: `minigccg3.s:8930`

### emit_i
- Defined: `minigccg3.s:9044`

### emit_s
- Defined: `minigccg3.s:9093`

### emit_is
- Defined: `minigccg3.s:9142`

### emit_si
- Defined: `minigccg3.s:9195`

### emit_asciz_body
- Defined: `minigccg3.s:9248`

### emit_label
- Defined: `minigccg3.s:9572`

### find_symbol
- Defined: `minigccg3.s:9601`

### add_symbol
- Defined: `minigccg3.s:9688`

### arg_reg
- Defined: `minigccg3.s:10056`

### libc_global_name
- Defined: `minigccg3.s:10132`

### unary
- Defined: `minigccg3.s:10260`

### lvalue_address
- Defined: `minigccg3.s:12789`

### handle_postfix
- Defined: `minigccg3.s:13294`

### unary_expr
- Defined: `minigccg3.s:14271`

### multiplicative_expr
- Defined: `minigccg3.s:14296`

### additive_expr
- Defined: `minigccg3.s:14918`

### shift_expr
- Defined: `minigccg3.s:15413`

### relational_expr
- Defined: `minigccg3.s:15559`

### equality_expr
- Defined: `minigccg3.s:16161`

### bitwise_and_expr
- Defined: `minigccg3.s:16639`

### bitwise_xor_expr
- Defined: `minigccg3.s:16717`

### bitwise_or_expr
- Defined: `minigccg3.s:16795`

### logical_and_expr
- Defined: `minigccg3.s:16873`

### logical_or_expr
- Defined: `minigccg3.s:17036`

### conditional_expr
- Defined: `minigccg3.s:17199`

### assignment_expr
- Defined: `minigccg3.s:17331`

### statement
- Defined: `minigccg3.s:19851`

### restart_typedef
- Defined: `minigccg3.s:23297`

### restart_int
- Defined: `minigccg3.s:24328`

### parse_function
- Defined: `minigccg3.s:25484`

### parse_enum
- Defined: `minigccg3.s:26800`

### skip_struct
- Defined: `minigccg3.s:27212`

### skip_typedef
- Defined: `minigccg3.s:27798`

### data_directive
- Defined: `minigccg3.s:28288`

### emit_global_bss
- Defined: `minigccg3.s:28338`

### emit_global_data_head
- Defined: `minigccg3.s:28429`

### parse_const_int
- Defined: `minigccg3.s:28484`

### intern_string
- Defined: `minigccg3.s:28647`

### emit_global_initializer
- Defined: `minigccg3.s:28740`

### parse_program
- Defined: `minigccg3.s:29457`

### emit_float_consts
- Defined: `minigccg3.s:31173`

### emit_string_pool
- Defined: `minigccg3.s:31272`

### main
- Defined: `minigccg3.s:31374`

### _start
- Defined: `minigccg3.s:34714`

## minigccg4.s

### input_ptr
- Defined: `minigccg4.s:3`

### source_start
- Defined: `minigccg4.s:7`

### token
- Defined: `minigccg4.s:11`

### tok
- Defined: `minigccg4.s:15`

### line
- Defined: `minigccg4.s:19`

### output
- Defined: `minigccg4.s:23`

### ctx_stack
- Defined: `minigccg4.s:27`

### ctx_top
- Defined: `minigccg4.s:31`

### current_file
- Defined: `minigccg4.s:35`

### processed_files
- Defined: `minigccg4.s:39`

### processed_count
- Defined: `minigccg4.s:43`

### symbols
- Defined: `minigccg4.s:47`

### symbol_count
- Defined: `minigccg4.s:51`

### hash_table
- Defined: `minigccg4.s:55`

### scope_stack_sym
- Defined: `minigccg4.s:59`

### scope_stack_stk
- Defined: `minigccg4.s:63`

### scope_depth
- Defined: `minigccg4.s:67`

### stack_size
- Defined: `minigccg4.s:71`

### label_counter
- Defined: `minigccg4.s:75`

### function_has_return
- Defined: `minigccg4.s:79`

### emit_enabled
- Defined: `minigccg4.s:83`

### max_func_stack
- Defined: `minigccg4.s:87`

### assign_size
- Defined: `minigccg4.s:91`

### expr_pointed
- Defined: `minigccg4.s:95`

### current_elem_size
- Defined: `minigccg4.s:99`

### current_elem_size2
- Defined: `minigccg4.s:103`

### no_postfix_deref
- Defined: `minigccg4.s:107`

### expr_type
- Defined: `minigccg4.s:111`

### static_flag
- Defined: `minigccg4.s:115`

### unsigned_type
- Defined: `minigccg4.s:119`

### const_flag
- Defined: `minigccg4.s:123`

### extern_flag
- Defined: `minigccg4.s:127`

### global_emit_deferred
- Defined: `minigccg4.s:131`

### float_const_str
- Defined: `minigccg4.s:135`

### float_const_is_float
- Defined: `minigccg4.s:139`

### float_const_count
- Defined: `minigccg4.s:143`

### switch_case_values
- Defined: `minigccg4.s:147`

### switch_case_labels
- Defined: `minigccg4.s:151`

### switch_case_count
- Defined: `minigccg4.s:155`

### switch_has_default
- Defined: `minigccg4.s:159`

### switch_default_label
- Defined: `minigccg4.s:163`

### break_target
- Defined: `minigccg4.s:167`

### break_target_valid
- Defined: `minigccg4.s:171`

### continue_target
- Defined: `minigccg4.s:175`

### continue_target_valid
- Defined: `minigccg4.s:179`

### str_label_counter
- Defined: `minigccg4.s:183`

### string_pool
- Defined: `minigccg4.s:187`

### string_count
- Defined: `minigccg4.s:191`

### ptr_init_name
- Defined: `minigccg4.s:195`

### ptr_init_label
- Defined: `minigccg4.s:199`

### ptr_init_count
- Defined: `minigccg4.s:203`

### struct_total_size
- Defined: `minigccg4.s:207`

### struct_member_names
- Defined: `minigccg4.s:211`

### struct_member_offsets
- Defined: `minigccg4.s:215`

### struct_member_sizes
- Defined: `minigccg4.s:219`

### struct_member_elem_sizes
- Defined: `minigccg4.s:223`

### struct_member_count
- Defined: `minigccg4.s:227`

### if_nest
- Defined: `minigccg4.s:231`

### if_depth
- Defined: `minigccg4.s:235`

### macro_count
- Defined: `minigccg4.s:240`

### save_parser_state
- Defined: `minigccg4.s:244`

### restore_parser_state
- Defined: `minigccg4.s:383`

### macros
- Defined: `minigccg4.s:571`

### find_macro
- Defined: `minigccg4.s:575`

### add_macro
- Defined: `minigccg4.s:639`

### error
- Defined: `minigccg4.s:769`

### safe_malloc
- Defined: `minigccg4.s:821`

### safe_strcpy
- Defined: `minigccg4.s:876`

### safe_strtoll
- Defined: `minigccg4.s:953`

### is_file_processed
- Defined: `minigccg4.s:1068`

### mark_file_processed
- Defined: `minigccg4.s:1129`

### get_dir_from_path
- Defined: `minigccg4.s:1241`

### resolve_local_include
- Defined: `minigccg4.s:1384`

### read_include_file
- Defined: `minigccg4.s:1834`

### hash_name
- Defined: `minigccg4.s:2042`

### hash_init
- Defined: `minigccg4.s:2100`

### push_scope
- Defined: `minigccg4.s:2139`

### pop_scope
- Defined: `minigccg4.s:2191`

### truncate_symbols
- Defined: `minigccg4.s:2387`

### my_isspace
- Defined: `minigccg4.s:2540`

### my_isalpha
- Defined: `minigccg4.s:2629`

### my_isdigit
- Defined: `minigccg4.s:2698`

### my_isalnum
- Defined: `minigccg4.s:2738`

### next_token
- Defined: `minigccg4.s:2783`

### restart
- Defined: `minigccg4.s:2787`

### match
- Defined: `minigccg4.s:8892`

### emit
- Defined: `minigccg4.s:8930`

### emit_i
- Defined: `minigccg4.s:9044`

### emit_s
- Defined: `minigccg4.s:9093`

### emit_is
- Defined: `minigccg4.s:9142`

### emit_si
- Defined: `minigccg4.s:9195`

### emit_asciz_body
- Defined: `minigccg4.s:9248`

### emit_label
- Defined: `minigccg4.s:9572`

### find_symbol
- Defined: `minigccg4.s:9601`

### add_symbol
- Defined: `minigccg4.s:9688`

### arg_reg
- Defined: `minigccg4.s:10056`

### libc_global_name
- Defined: `minigccg4.s:10132`

### unary
- Defined: `minigccg4.s:10260`

### lvalue_address
- Defined: `minigccg4.s:12789`

### handle_postfix
- Defined: `minigccg4.s:13294`

### unary_expr
- Defined: `minigccg4.s:14271`

### multiplicative_expr
- Defined: `minigccg4.s:14296`

### additive_expr
- Defined: `minigccg4.s:14918`

### shift_expr
- Defined: `minigccg4.s:15413`

### relational_expr
- Defined: `minigccg4.s:15559`

### equality_expr
- Defined: `minigccg4.s:16161`

### bitwise_and_expr
- Defined: `minigccg4.s:16639`

### bitwise_xor_expr
- Defined: `minigccg4.s:16717`

### bitwise_or_expr
- Defined: `minigccg4.s:16795`

### logical_and_expr
- Defined: `minigccg4.s:16873`

### logical_or_expr
- Defined: `minigccg4.s:17036`

### conditional_expr
- Defined: `minigccg4.s:17199`

### assignment_expr
- Defined: `minigccg4.s:17331`

### statement
- Defined: `minigccg4.s:19851`

### restart_typedef
- Defined: `minigccg4.s:23297`

### restart_int
- Defined: `minigccg4.s:24328`

### parse_function
- Defined: `minigccg4.s:25484`

### parse_enum
- Defined: `minigccg4.s:26800`

### skip_struct
- Defined: `minigccg4.s:27212`

### skip_typedef
- Defined: `minigccg4.s:27798`

### data_directive
- Defined: `minigccg4.s:28288`

### emit_global_bss
- Defined: `minigccg4.s:28338`

### emit_global_data_head
- Defined: `minigccg4.s:28429`

### parse_const_int
- Defined: `minigccg4.s:28484`

### intern_string
- Defined: `minigccg4.s:28647`

### emit_global_initializer
- Defined: `minigccg4.s:28740`

### parse_program
- Defined: `minigccg4.s:29457`

### emit_float_consts
- Defined: `minigccg4.s:31173`

### emit_string_pool
- Defined: `minigccg4.s:31272`

### main
- Defined: `minigccg4.s:31374`

### _start
- Defined: `minigccg4.s:34714`

## test.c

### main `int main(void)`
- Defined: `test.c:1`

## test_for.c

### main `int main()`
- Defined: `test_for.c:2`
- Doc: include <stdio.h>

## test_include.c

### main `int main(void)`
- Defined: `test_include.c:3`
- Doc: include <stdio.h> include "my_library.h"

### greet `void greet(void)`
- Defined: `test_include.c:9`

## test_ld_selfhost.sh

### pass
- Defined: `test_ld_selfhost.sh:27`

### fail
- Defined: `test_ld_selfhost.sh:32`
