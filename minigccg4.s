    .section .text
    .bss
lex_kw_blob:
    .space 320
    .text
    .bss
lex_kw_ids:
    .space 384
    .text
    .data
lex_kw_count:
    .quad 0
    .text
    .data
lex_pass_top:
    .quad -1
    .text
    .bss
input_ptr:
    .space 8
    .text
    .bss
source_start:
    .space 8
    .text
    .bss
token:
    .space 256
    .text
    .bss
tok:
    .space 8
    .text
    .data
line:
    .quad 1
    .text
    .bss
output:
    .space 8
    .text
    .bss
ctx_stack:
    .space 1792
    .text
    .data
ctx_top:
    .quad 0
    .text
    .data
current_file:
    .quad 0
    .text
    .bss
processed_files:
    .space 2048
    .text
    .data
processed_count:
    .quad 0
    .text
    .bss
symbols:
    .space 180224
    .text
    .data
symbol_count:
    .quad 0
    .text
    .bss
hash_table:
    .space 4096
    .text
    .bss
scope_stack_sym:
    .space 2048
    .text
    .bss
scope_stack_stk:
    .space 2048
    .text
    .data
scope_depth:
    .quad 0
    .text
    .data
stack_size:
    .quad 0
    .text
    .data
label_counter:
    .quad 0
    .text
    .data
function_has_return:
    .quad 0
    .text
    .data
emit_enabled:
    .quad 1
    .text
    .data
max_func_stack:
    .quad 0
    .text
    .data
assign_size:
    .quad 8
    .text
    .data
expr_pointed:
    .quad 0
    .text
    .data
current_elem_size:
    .quad 0
    .text
    .data
current_elem_size2:
    .quad 0
    .text
    .data
current_elem_unsigned:
    .quad 0
    .text
    .data
deref_w:
    .quad 0
    .text
    .data
deref_u:
    .quad 0
    .text
    .data
no_postfix_deref:
    .quad 0
    .text
    .data
expr_type:
    .quad 0
    .text
    .data
static_flag:
    .quad 0
    .text
    .data
unsigned_type:
    .quad 0
    .text
    .data
const_flag:
    .quad 0
    .text
    .data
extern_flag:
    .quad 0
    .text
    .data
global_emit_deferred:
    .quad 0
    .text
    .bss
float_const_str:
    .space 524288
    .text
    .bss
float_const_is_float:
    .space 16384
    .text
    .data
float_const_count:
    .quad 0
    .text
    .bss
switch_case_values:
    .space 2048
    .text
    .bss
switch_case_labels:
    .space 2048
    .text
    .data
switch_case_count:
    .quad 0
    .text
    .data
switch_has_default:
    .quad 0
    .text
    .data
switch_default_label:
    .quad 0
    .text
    .data
break_target:
    .quad 0
    .text
    .data
break_target_valid:
    .quad 0
    .text
    .data
continue_target:
    .quad 0
    .text
    .data
continue_target_valid:
    .quad 0
    .text
    .data
str_label_counter:
    .quad 0
    .text
    .bss
string_pool:
    .space 16384
    .text
    .data
string_count:
    .quad 0
    .text
    .bss
ptr_init_name:
    .space 8192
    .text
    .bss
ptr_init_label:
    .space 2048
    .text
    .data
ptr_init_count:
    .quad 0
    .text
    .data
struct_total_size:
    .quad 0
    .text
    .bss
struct_member_names:
    .space 8192
    .text
    .bss
struct_member_offsets:
    .space 2048
    .text
    .bss
struct_member_sizes:
    .space 2048
    .text
    .bss
struct_member_elem_sizes:
    .space 2048
    .text
    .bss
struct_member_unsigned:
    .space 2048
    .text
    .bss
struct_member_is_float:
    .space 2048
    .text
    .data
struct_member_count:
    .quad 0
    .text
    .bss
if_nest:
    .space 512
    .text
    .data
if_depth:
    .quad 0
    .text
    .bss
    .globl macro_count
macro_count:
    .space 8
    .text
    .globl save_parser_state
save_parser_state:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq assign_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $4, %rax
    pushq %rax
    movq expr_pointed(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $8, %rax
    pushq %rax
    movq current_elem_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $12, %rax
    pushq %rax
    movq current_elem_size2(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $16, %rax
    pushq %rax
    movq current_elem_unsigned(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $20, %rax
    pushq %rax
    movq deref_w(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $24, %rax
    pushq %rax
    movq deref_u(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $28, %rax
    pushq %rax
    movq no_postfix_deref(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $36, %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $40, %rax
    pushq %rax
    movq function_has_return(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq emit_enabled(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq max_func_stack(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $52, %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq switch_has_default(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $60, %rax
    pushq %rax
    movq switch_default_label(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq break_target(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq break_target_valid(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq continue_target(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $76, %rax
    pushq %rax
    movq continue_target_valid(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $80, %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $84, %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $88, %rax
    pushq %rax
    movq macro_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $92, %rax
    pushq %rax
    movq expr_type(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $96, %rax
    pushq %rax
    movq float_const_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    leave
    ret
    .globl restore_parser_state
restore_parser_state:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $4, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $8, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $12, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $16, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $20, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $24, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $28, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2
    movq -16(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call truncate_symbols
    movq %r12, %rsp
    popq %r12
    jmp .L3
.L2:
    leaq symbol_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L3:
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $40, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $52, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_has_default(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $56, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_default_label(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $76, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $84, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq macro_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $88, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_type(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $92, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq float_const_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $96, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
    .bss
macros:
    .space 9216
    .text
    .globl find_macro
find_macro:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    jmp .L12
.L10:
    leaq macros(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L14
    movq -32(%rbp), %rax
    leave
    ret
.L14:
.L11:
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L12
.L12:
    movq -32(%rbp), %rax
    pushq %rax
    movq macro_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L10
.L13:
    movq $1, %rax
    negq %rax
    leave
    ret
    leave
    ret
    .globl add_macro
add_macro:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq macro_count(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L22
    leaq .Lstr1(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L22:
    leaq macros(%rip), %rax
    pushq %rax
    movq macro_count(%rip), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    movq %rax, -48(%rbp)
    leaq macro_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L24
    leaq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L24:
    movq $0, %rax
    movq %rax, -80(%rbp)
.L26:
    movq -80(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L27
    movq -48(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L26
.L27:
    movq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq macros(%rip), %rax
    pushq %rax
    movq macro_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    leave
    ret
    .bss
macro_p:
    .space 8
    .text
    .bss
macro_ok:
    .space 8
    .text
    .globl macro_skipws
macro_skipws:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
.L34:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L38
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L38
    xorl %eax, %eax
    jmp .L39
.L38:
    movl $1, %eax
.L39:
    cmpq $0, %rax
    je .L35
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L34
.L35:
    leave
    ret
    .globl macro_hex_digit
macro_hex_digit:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L52
    movq -16(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L52
    movl $1, %eax
    jmp .L53
.L52:
    xorl %eax, %eax
.L53:
    cmpq $0, %rax
    je .L54
    movq $1, %rax
    leave
    ret
.L54:
    movq -16(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L56
    movq -16(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L56
    movl $1, %eax
    jmp .L57
.L56:
    xorl %eax, %eax
.L57:
    cmpq $0, %rax
    je .L58
    movq $1, %rax
    leave
    ret
.L58:
    movq -16(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L60
    movq -16(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L60
    movl $1, %eax
    jmp .L61
.L60:
    xorl %eax, %eax
.L61:
    cmpq $0, %rax
    je .L62
    movq $1, %rax
    leave
    ret
.L62:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl macro_digit_val
macro_digit_val:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L76
    movq -16(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L76
    movl $1, %eax
    jmp .L77
.L76:
    xorl %eax, %eax
.L77:
    cmpq $0, %rax
    je .L78
    movq -16(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    leave
    ret
.L78:
    movq -16(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L80
    movq -16(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L80
    movl $1, %eax
    jmp .L81
.L80:
    xorl %eax, %eax
.L81:
    cmpq $0, %rax
    je .L82
    movq -16(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    addq %rcx, %rax
    leave
    ret
.L82:
    movq -16(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L84
    movq -16(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L84
    movl $1, %eax
    jmp .L85
.L84:
    xorl %eax, %eax
.L85:
    cmpq $0, %rax
    je .L86
    movq -16(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    addq %rcx, %rax
    leave
    ret
.L86:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl macro_primary
macro_primary:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L178
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_or_expr
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L180
    leaq macro_ok(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    leave
    ret
.L180:
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -16(%rbp), %rax
    leave
    ret
.L178:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L182
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L184
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -96(%rbp), %rax
    pushq %rax
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -96(%rbp), %rax
    pushq %rax
    movq $110, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L186
    leaq -96(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L187
.L186:
    movq -96(%rbp), %rax
    pushq %rax
    movq $116, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L188
    leaq -96(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L189
.L188:
    movq -96(%rbp), %rax
    pushq %rax
    movq $114, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L190
    leaq -96(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L191
.L190:
    movq -96(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L192
    leaq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L193
.L192:
    movq -96(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L194
    leaq -96(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L195
.L194:
    movq -96(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L196
    leaq -96(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L197
.L196:
    movq -96(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L198
    leaq -96(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L199
.L198:
    movq -96(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L200
    leaq -96(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L201
.L200:
    movq -96(%rbp), %rax
    pushq %rax
    movq $98, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L202
    leaq -96(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L202:
.L201:
.L199:
.L197:
.L195:
.L193:
.L191:
.L189:
.L187:
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L185
.L184:
    leaq -96(%rbp), %rax
    pushq %rax
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L185:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L204
    leaq macro_ok(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    leave
    ret
.L204:
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -96(%rbp), %rax
    leave
    ret
.L182:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L208
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L208
    movl $1, %eax
    jmp .L209
.L208:
    xorl %eax, %eax
.L209:
    cmpq $0, %rax
    je .L210
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L216
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $120, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L218
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $88, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L218
    xorl %eax, %eax
    jmp .L219
.L218:
    movl $1, %eax
.L219:
    testq %rax, %rax
    je .L216
    movl $1, %eax
    jmp .L217
.L216:
    xorl %eax, %eax
.L217:
    cmpq $0, %rax
    je .L220
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L222:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_hex_digit
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L223
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_digit_val
    movq %r12, %rsp
    popq %r12
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L222
.L223:
    jmp .L221
.L220:
.L224:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L228
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L228
    movl $1, %eax
    jmp .L229
.L228:
    xorl %eax, %eax
.L229:
    cmpq $0, %rax
    je .L225
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L224
.L225:
.L221:
    movq -16(%rbp), %rax
    leave
    ret
.L210:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L232
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $122, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L232
    movl $1, %eax
    jmp .L233
.L232:
    xorl %eax, %eax
.L233:
    testq %rax, %rax
    jne .L234
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L238
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $90, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L238
    movl $1, %eax
    jmp .L239
.L238:
    xorl %eax, %eax
.L239:
    testq %rax, %rax
    jne .L234
    xorl %eax, %eax
    jmp .L235
.L234:
    movl $1, %eax
.L235:
    testq %rax, %rax
    jne .L240
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L240
    xorl %eax, %eax
    jmp .L241
.L240:
    movl $1, %eax
.L241:
    cmpq $0, %rax
    je .L242
    leaq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L244:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L248
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $122, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L248
    movl $1, %eax
    jmp .L249
.L248:
    xorl %eax, %eax
.L249:
    testq %rax, %rax
    jne .L250
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L254
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $90, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L254
    movl $1, %eax
    jmp .L255
.L254:
    xorl %eax, %eax
.L255:
    testq %rax, %rax
    jne .L250
    xorl %eax, %eax
    jmp .L251
.L250:
    movl $1, %eax
.L251:
    testq %rax, %rax
    jne .L256
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L260
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L260
    movl $1, %eax
    jmp .L261
.L260:
    xorl %eax, %eax
.L261:
    testq %rax, %rax
    jne .L256
    xorl %eax, %eax
    jmp .L257
.L256:
    movl $1, %eax
.L257:
    testq %rax, %rax
    jne .L262
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L262
    xorl %eax, %eax
    jmp .L263
.L262:
    movl $1, %eax
.L263:
    testq %rax, %rax
    je .L264
    movq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L264
    movl $1, %eax
    jmp .L265
.L264:
    xorl %eax, %eax
.L265:
    cmpq $0, %rax
    je .L245
    leaq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L244
.L245:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -32(%rbp), %rax
    pushq %rax
    leaq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L266
    leaq macro_ok(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    leave
    ret
.L266:
    leaq macros(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    leave
    ret
.L242:
    leaq macro_ok(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl macro_unary
macro_unary:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L276
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq $0, %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_unary
    movq %r12, %rsp
    popq %r12
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    leave
    ret
.L276:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L278
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_unary
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L278:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $126, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L280
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_unary
    movq %r12, %rsp
    popq %r12
    notq %rax
    leave
    ret
.L280:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L282
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_unary
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    leave
    ret
.L282:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_primary
    movq %r12, %rsp
    popq %r12
    leave
    ret
    leave
    ret
    .globl macro_mul
macro_mul:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_unary
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L302
.L301:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L304
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_unary
    movq %r12, %rsp
    popq %r12
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L305
.L304:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L308
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L308
    movl $1, %eax
    jmp .L309
.L308:
    xorl %eax, %eax
.L309:
    cmpq $0, %rax
    je .L310
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -32(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_unary
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L312
    leaq macro_ok(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    leave
    ret
.L312:
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, %r8
    movq %rcx, %rax
    cqto
    idivq %r8
    popq %rcx
    movq %rax, (%rcx)
    jmp .L311
.L310:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L314
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -32(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_unary
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L316
    leaq macro_ok(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    leave
    ret
.L316:
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, %r8
    movq %rcx, %rax
    cqto
    idivq %r8
    movq %rdx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L315
.L314:
    movq -16(%rbp), %rax
    leave
    ret
.L315:
.L311:
.L305:
.L302:
    jmp .L301
.L303:
    leave
    ret
    .globl macro_add
macro_add:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_mul
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L326
.L325:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L328
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_mul
    movq %r12, %rsp
    popq %r12
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L329
.L328:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L330
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_mul
    movq %r12, %rsp
    popq %r12
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L331
.L330:
    movq -16(%rbp), %rax
    leave
    ret
.L331:
.L329:
.L326:
    jmp .L325
.L327:
    leave
    ret
    .globl macro_shift
macro_shift:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_add
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L348
.L347:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L352
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L352
    movl $1, %eax
    jmp .L353
.L352:
    xorl %eax, %eax
.L353:
    cmpq $0, %rax
    je .L354
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_add
    movq %r12, %rsp
    popq %r12
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L355
.L354:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L358
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L358
    movl $1, %eax
    jmp .L359
.L358:
    xorl %eax, %eax
.L359:
    cmpq $0, %rax
    je .L360
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_add
    movq %r12, %rsp
    popq %r12
    pushq %rax
    popq %rcx
    popq %rax
    sarq %cl, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L361
.L360:
    movq -16(%rbp), %rax
    leave
    ret
.L361:
.L355:
.L348:
    jmp .L347
.L349:
    leave
    ret
    .globl macro_cmp
macro_cmp:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_shift
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L382
.L381:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L386
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L386
    movl $1, %eax
    jmp .L387
.L386:
    xorl %eax, %eax
.L387:
    cmpq $0, %rax
    je .L388
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_shift
    movq %r12, %rsp
    popq %r12
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L389
.L388:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L392
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L392
    movl $1, %eax
    jmp .L393
.L392:
    xorl %eax, %eax
.L393:
    cmpq $0, %rax
    je .L394
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_shift
    movq %r12, %rsp
    popq %r12
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L395
.L394:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L396
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_shift
    movq %r12, %rsp
    popq %r12
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L397
.L396:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L398
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_shift
    movq %r12, %rsp
    popq %r12
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L399
.L398:
    movq -16(%rbp), %rax
    leave
    ret
.L399:
.L397:
.L395:
.L389:
.L382:
    jmp .L381
.L383:
    leave
    ret
    .globl macro_eq
macro_eq:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_cmp
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L416
.L415:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L420
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L420
    movl $1, %eax
    jmp .L421
.L420:
    xorl %eax, %eax
.L421:
    cmpq $0, %rax
    je .L422
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_cmp
    movq %r12, %rsp
    popq %r12
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L423
.L422:
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L426
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L426
    movl $1, %eax
    jmp .L427
.L426:
    xorl %eax, %eax
.L427:
    cmpq $0, %rax
    je .L428
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_cmp
    movq %r12, %rsp
    popq %r12
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L429
.L428:
    movq -16(%rbp), %rax
    leave
    ret
.L429:
.L423:
.L416:
    jmp .L415
.L417:
    leave
    ret
    .globl macro_bitand
macro_bitand:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_eq
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L440
.L439:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L444
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L444
    movl $1, %eax
    jmp .L445
.L444:
    xorl %eax, %eax
.L445:
    cmpq $0, %rax
    je .L446
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_eq
    movq %r12, %rsp
    popq %r12
    popq %rcx
    andq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L447
.L446:
    movq -16(%rbp), %rax
    leave
    ret
.L447:
.L440:
    jmp .L439
.L441:
    leave
    ret
    .globl macro_bitxor
macro_bitxor:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_bitand
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L454
.L453:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $94, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L456
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_bitand
    movq %r12, %rsp
    popq %r12
    popq %rcx
    xorq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L457
.L456:
    movq -16(%rbp), %rax
    leave
    ret
.L457:
.L454:
    jmp .L453
.L455:
    leave
    ret
    .globl macro_bitor
macro_bitor:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_bitxor
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L468
.L467:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L472
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L472
    movl $1, %eax
    jmp .L473
.L472:
    xorl %eax, %eax
.L473:
    cmpq $0, %rax
    je .L474
    leaq macro_p(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_bitxor
    movq %r12, %rsp
    popq %r12
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L475
.L474:
    movq -16(%rbp), %rax
    leave
    ret
.L475:
.L468:
    jmp .L467
.L469:
    leave
    ret
    .globl macro_logand
macro_logand:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_bitor
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L488
.L487:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L492
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L492
    movl $1, %eax
    jmp .L493
.L492:
    xorl %eax, %eax
.L493:
    cmpq $0, %rax
    je .L494
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    testq %rax, %rax
    je .L496
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_bitor
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    je .L496
    movl $1, %eax
    jmp .L497
.L496:
    xorl %eax, %eax
.L497:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L495
.L494:
    movq -16(%rbp), %rax
    leave
    ret
.L495:
.L488:
    jmp .L487
.L489:
    leave
    ret
    .globl macro_or_expr
macro_or_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_logand
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    jmp .L510
.L509:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_skipws
    movq %r12, %rsp
    popq %r12
    movq macro_p(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L514
    movq macro_p(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L514
    movl $1, %eax
    jmp .L515
.L514:
    xorl %eax, %eax
.L515:
    cmpq $0, %rax
    je .L516
    leaq macro_p(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    testq %rax, %rax
    jne .L518
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_logand
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L518
    xorl %eax, %eax
    jmp .L519
.L518:
    movl $1, %eax
.L519:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L517
.L516:
    movq -16(%rbp), %rax
    leave
    ret
.L517:
.L510:
    jmp .L509
.L511:
    leave
    ret
    .globl macro_fold
macro_fold:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq macro_ok(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_or_expr
    movq %r12, %rsp
    popq %r12
    leave
    ret
    leave
    ret
    .globl error
error:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr4(%rip), %rax
    pushq %rax
    movq current_file(%rip), %rax
    testq %rax, %rax
    je .L522
    movq current_file(%rip), %rax
    jmp .L523
.L522:
    leaq .Lstr5(%rip), %rax
.L523:
    pushq %rax
    movq line(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call exit
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl safe_malloc
safe_malloc:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call malloc
    movq %r12, %rsp
    popq %r12
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L526
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr7(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call exit
    movq %r12, %rsp
    popq %r12
.L526:
    movq -32(%rbp), %rax
    leave
    ret
    leave
    ret
    .globl safe_strcpy
safe_strcpy:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L532:
    movq -64(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L534
    movq -32(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L534
    movl $1, %eax
    jmp .L535
.L534:
    xorl %eax, %eax
.L535:
    cmpq $0, %rax
    je .L533
    movq -16(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L532
.L533:
    movq -16(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leave
    ret
    .globl safe_strtoll
safe_strtoll:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L548
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L549
.L548:
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L550
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L550:
.L549:
.L552:
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L556
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L556
    movl $1, %eax
    jmp .L557
.L556:
    xorl %eax, %eax
.L557:
    cmpq $0, %rax
    je .L553
    leaq -32(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L552
.L553:
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L558
    movq -32(%rbp), %rax
    negq %rax
    jmp .L559
.L558:
    movq -32(%rbp), %rax
.L559:
    leave
    ret
    leave
    ret
    .globl is_file_processed
is_file_processed:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
.L564:
    movq -32(%rbp), %rax
    pushq %rax
    movq processed_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L565
    leaq processed_files(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L566
    movq $1, %rax
    leave
    ret
.L566:
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L564
.L565:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl mark_file_processed
mark_file_processed:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq processed_count(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L572
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr9(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L572:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -32(%rbp)
    leaq processed_files(%rip), %rax
    pushq %rax
    movq processed_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L574:
    movq -48(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L575
    leaq processed_files(%rip), %rax
    pushq %rax
    movq processed_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L574
.L575:
    leaq processed_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leave
    ret
    .globl get_dir_from_path
get_dir_from_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq $1, %rax
    negq %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
.L586:
    movq -16(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L587
    movq -16(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L588
    leaq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L588:
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L586
.L587:
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L590
    movq -64(%rbp), %rax
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L592
    leaq -96(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L592:
    movq $0, %rax
    movq %rax, -112(%rbp)
.L594:
    movq -112(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L595
    movq -32(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -112(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L594
.L595:
    movq -32(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L591
.L590:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L591:
    leave
    ret
    .globl resolve_local_include
resolve_local_include:
    pushq %rbp
    movq %rsp, %rbp
    subq $1696, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    leaq .Lstr12(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fopen
    movq %r12, %rsp
    popq %r12
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L622
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
.L624:
    movq -80(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L625
    movq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L624
.L625:
    movq -64(%rbp), %rax
    leave
    ret
.L622:
    movq current_file(%rip), %rax
    cmpq $0, %rax
    je .L626
    movq current_file(%rip), %rax
    pushq %rax
    leaq -544(%rbp), %rax
    pushq %rax
    movq $512, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call get_dir_from_path
    movq %r12, %rsp
    popq %r12
    leaq -544(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -1584(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -1600(%rbp)
    movq $0, %rax
    movq %rax, -1616(%rbp)
    movq -1584(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L628
    leaq -544(%rbp), %rax
    pushq %rax
    movq -1584(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L628
    movl $1, %eax
    jmp .L629
.L628:
    xorl %eax, %eax
.L629:
    cmpq $0, %rax
    je .L630
.L632:
    movq -1616(%rbp), %rax
    pushq %rax
    movq -1584(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L634
    movq -1616(%rbp), %rax
    pushq %rax
    movq $1023, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L634
    movl $1, %eax
    jmp .L635
.L634:
    xorl %eax, %eax
.L635:
    cmpq $0, %rax
    je .L633
    leaq -1568(%rbp), %rax
    pushq %rax
    movq -1616(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    leaq -544(%rbp), %rax
    pushq %rax
    movq -1616(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -1616(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L632
.L633:
    leaq -1568(%rbp), %rax
    pushq %rax
    leaq -1616(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L631
.L630:
.L636:
    movq -1616(%rbp), %rax
    pushq %rax
    movq -1584(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L638
    movq -1616(%rbp), %rax
    pushq %rax
    movq $1023, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L638
    movl $1, %eax
    jmp .L639
.L638:
    xorl %eax, %eax
.L639:
    cmpq $0, %rax
    je .L637
    leaq -1568(%rbp), %rax
    pushq %rax
    movq -1616(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    leaq -544(%rbp), %rax
    pushq %rax
    movq -1616(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -1616(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L636
.L637:
.L631:
    movq $0, %rax
    movq %rax, -1632(%rbp)
.L640:
    movq -1632(%rbp), %rax
    pushq %rax
    movq -1600(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L642
    movq -1616(%rbp), %rax
    pushq %rax
    movq $1023, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L642
    movl $1, %eax
    jmp .L643
.L642:
    xorl %eax, %eax
.L643:
    cmpq $0, %rax
    je .L641
    leaq -1568(%rbp), %rax
    pushq %rax
    movq -1616(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -1632(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -1616(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -1632(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L640
.L641:
    leaq -1568(%rbp), %rax
    pushq %rax
    movq -1616(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -32(%rbp), %rax
    pushq %rax
    leaq -1568(%rbp), %rax
    pushq %rax
    leaq .Lstr13(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fopen
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L644
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq %r12, %rsp
    popq %r12
    leaq -1568(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -1648(%rbp)
    movq -1648(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq %r12, %rsp
    popq %r12
    movq %rax, -1664(%rbp)
    movq $0, %rax
    movq %rax, -1680(%rbp)
.L646:
    movq -1680(%rbp), %rax
    pushq %rax
    movq -1648(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L647
    movq -1664(%rbp), %rax
    pushq %rax
    movq -1680(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    leaq -1568(%rbp), %rax
    pushq %rax
    movq -1680(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -1680(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L646
.L647:
    movq -1664(%rbp), %rax
    leave
    ret
.L644:
.L626:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl read_include_file
read_include_file:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    leaq .Lstr15(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fopen
    movq %r12, %rsp
    popq %r12
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L656
    movq $0, %rax
    leave
    ret
.L656:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fseek
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call ftell
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L658
    movq -48(%rbp), %rax
    pushq %rax
    movq $1048576, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L658
    xorl %eax, %eax
    jmp .L659
.L658:
    movl $1, %eax
.L659:
    cmpq $0, %rax
    je .L660
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    leave
    ret
.L660:
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call rewind
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fread
    movq %r12, %rsp
    popq %r12
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L662
    movq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    leave
    ret
.L662:
    movq -64(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq %r12, %rsp
    popq %r12
    movq -64(%rbp), %rax
    leave
    ret
    leave
    ret
    .globl hash_name
hash_name:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
.L668:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L669
    leaq -32(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L668
.L669:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L670
    leaq -32(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
.L670:
    movq -32(%rbp), %rax
    pushq %rax
    movq $512, %rax
    popq %rcx
    movq %rax, %r8
    movq %rcx, %rax
    cqto
    idivq %r8
    movq %rdx, %rax
    leave
    ret
    leave
    ret
    .globl hash_init
hash_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L678
.L676:
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
.L677:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L678
.L678:
    movq -16(%rbp), %rax
    pushq %rax
    movq $512, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L676
.L679:
    leave
    ret
    .globl push_scope
push_scope:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq scope_depth(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L682
    leaq .Lstr17(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L682:
    leaq scope_stack_sym(%rip), %rax
    pushq %rax
    movq scope_depth(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq scope_stack_stk(%rip), %rax
    pushq %rax
    movq scope_depth(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq scope_depth(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leave
    ret
    .globl pop_scope
pop_scope:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq scope_depth(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L696
    leaq .Lstr19(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L696:
    leaq scope_depth(%rip), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    leaq scope_stack_sym(%rip), %rax
    pushq %rax
    movq scope_depth(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    movq %rax, -16(%rbp)
    leaq stack_size(%rip), %rax
    pushq %rax
    leaq scope_stack_stk(%rip), %rax
    pushq %rax
    movq scope_depth(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    movq %rax, -32(%rbp)
    jmp .L700
.L698:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L702
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L699
.L702:
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    movq %rax, -64(%rbp)
.L704:
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L705
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L706
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    popq %rcx
    movl %eax, (%rcx)
    jmp .L705
.L706:
    leaq -64(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L704
.L705:
.L699:
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L700
.L700:
    movq -32(%rbp), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L698
.L701:
    leaq symbol_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
    .globl truncate_symbols
truncate_symbols:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -32(%rbp)
    jmp .L720
.L718:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L722
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L719
.L722:
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    movq %rax, -64(%rbp)
.L724:
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L725
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L726
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    popq %rcx
    movl %eax, (%rcx)
    jmp .L725
.L726:
    leaq -64(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L724
.L725:
.L719:
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L720
.L720:
    movq -32(%rbp), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L718
.L721:
    leaq symbol_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
    .globl my_isspace
my_isspace:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L740
    movq $1, %rax
    leave
    ret
.L740:
    movq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L742
    movq $1, %rax
    leave
    ret
.L742:
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L744
    movq $1, %rax
    leave
    ret
.L744:
    movq -16(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L746
    movq $1, %rax
    leave
    ret
.L746:
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L748
    movq $1, %rax
    leave
    ret
.L748:
    movq -16(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L750
    movq $1, %rax
    leave
    ret
.L750:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl my_isalpha
my_isalpha:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L760
    movq -16(%rbp), %rax
    pushq %rax
    movq $122, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L760
    movl $1, %eax
    jmp .L761
.L760:
    xorl %eax, %eax
.L761:
    cmpq $0, %rax
    je .L762
    movq $1, %rax
    leave
    ret
.L762:
    movq -16(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L764
    movq -16(%rbp), %rax
    pushq %rax
    movq $90, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L764
    movl $1, %eax
    jmp .L765
.L764:
    xorl %eax, %eax
.L765:
    cmpq $0, %rax
    je .L766
    movq $1, %rax
    leave
    ret
.L766:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl my_isdigit
my_isdigit:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L772
    movq -16(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L772
    movl $1, %eax
    jmp .L773
.L772:
    xorl %eax, %eax
.L773:
    cmpq $0, %rax
    je .L774
    movq $1, %rax
    leave
    ret
.L774:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl my_isalnum
my_isalnum:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalpha
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L780
    movq $1, %rax
    leave
    ret
.L780:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isdigit
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L782
    movq $1, %rax
    leave
    ret
.L782:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl lex_fail
lex_fail:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L790
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L790:
    movq -64(%rbp), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L792
    leaq -64(%rbp), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L792:
    movq $0, %rax
    movq %rax, -80(%rbp)
.L794:
    movq -80(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L795
    leaq token(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L794
.L795:
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl lex_kw_add
lex_kw_add:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L804:
    movq -64(%rbp), %rax
    pushq %rax
    movq lex_kw_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L805
    leaq -48(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    leaq lex_kw_blob(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L804
.L805:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -80(%rbp)
    movq lex_kw_count(%rip), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L806
    movq -48(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $320, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L806
    xorl %eax, %eax
    jmp .L807
.L806:
    movl $1, %eax
.L807:
    cmpq $0, %rax
    je .L808
    leaq .Lstr21(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L808:
    movq $0, %rax
    movq %rax, -96(%rbp)
.L810:
    movq -96(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L811
    leaq lex_kw_blob(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L810
.L811:
    leaq lex_kw_ids(%rip), %rax
    pushq %rax
    movq lex_kw_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq lex_kw_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leave
    ret
    .globl lex_init_keywords
lex_init_keywords:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq lex_kw_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L814
    leave
    ret
.L814:
    leaq .Lstr56(%rip), %rax
    pushq %rax
    movq $258, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr57(%rip), %rax
    pushq %rax
    movq $259, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr58(%rip), %rax
    pushq %rax
    movq $260, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr59(%rip), %rax
    pushq %rax
    movq $261, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr60(%rip), %rax
    pushq %rax
    movq $262, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr61(%rip), %rax
    pushq %rax
    movq $262, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr62(%rip), %rax
    pushq %rax
    movq $263, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr63(%rip), %rax
    pushq %rax
    movq $264, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr64(%rip), %rax
    pushq %rax
    movq $265, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr65(%rip), %rax
    pushq %rax
    movq $266, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr66(%rip), %rax
    pushq %rax
    movq $267, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr67(%rip), %rax
    pushq %rax
    movq $268, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr68(%rip), %rax
    pushq %rax
    movq $269, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr69(%rip), %rax
    pushq %rax
    movq $270, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr70(%rip), %rax
    pushq %rax
    movq $280, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr71(%rip), %rax
    pushq %rax
    movq $281, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr72(%rip), %rax
    pushq %rax
    movq $282, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr73(%rip), %rax
    pushq %rax
    movq $283, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr74(%rip), %rax
    pushq %rax
    movq $284, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr75(%rip), %rax
    pushq %rax
    movq $288, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr76(%rip), %rax
    pushq %rax
    movq $289, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr77(%rip), %rax
    pushq %rax
    movq $290, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr78(%rip), %rax
    pushq %rax
    movq $292, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr79(%rip), %rax
    pushq %rax
    movq $293, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr80(%rip), %rax
    pushq %rax
    movq $307, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr81(%rip), %rax
    pushq %rax
    movq $308, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr82(%rip), %rax
    pushq %rax
    movq $304, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr83(%rip), %rax
    pushq %rax
    movq $304, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr84(%rip), %rax
    pushq %rax
    movq $304, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr85(%rip), %rax
    pushq %rax
    movq $305, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr86(%rip), %rax
    pushq %rax
    movq $305, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr87(%rip), %rax
    pushq %rax
    movq $306, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr88(%rip), %rax
    pushq %rax
    movq $306, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leaq .Lstr89(%rip), %rax
    pushq %rax
    movq $306, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_add
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl lex_kw_lookup
lex_kw_lookup:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq $0, %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
.L820:
    movq -32(%rbp), %rax
    pushq %rax
    movq lex_kw_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L821
    leaq token(%rip), %rax
    pushq %rax
    leaq lex_kw_blob(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L822
    leaq lex_kw_ids(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    leave
    ret
.L822:
    leaq -16(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    leaq lex_kw_blob(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L820
.L821:
    movq $1, %rax
    negq %rax
    leave
    ret
    leave
    ret
    .globl lex_match_op
lex_match_op:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L828:
    movq -16(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L829
    movq input_ptr(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L830
    movq $0, %rax
    leave
    ret
.L830:
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L828
.L829:
    leaq token(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    leaq tok(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    leave
    ret
    leave
    ret
    .globl lex_hex_val
lex_hex_val:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L844
    movq -16(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L844
    movl $1, %eax
    jmp .L845
.L844:
    xorl %eax, %eax
.L845:
    cmpq $0, %rax
    je .L846
    movq -16(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    leave
    ret
.L846:
    movq -16(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L848
    movq -16(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L848
    movl $1, %eax
    jmp .L849
.L848:
    xorl %eax, %eax
.L849:
    cmpq $0, %rax
    je .L850
    movq -16(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    addq %rcx, %rax
    leave
    ret
.L850:
    movq -16(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L852
    movq -16(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L852
    movl $1, %eax
    jmp .L853
.L852:
    xorl %eax, %eax
.L853:
    cmpq $0, %rax
    je .L854
    movq -16(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    addq %rcx, %rax
    leave
    ret
.L854:
    movq $1, %rax
    negq %rax
    leave
    ret
    leave
    ret
    .globl lex_is_int_suffix
lex_is_int_suffix:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $117, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L864
    movq -16(%rbp), %rax
    pushq %rax
    movq $85, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L864
    xorl %eax, %eax
    jmp .L865
.L864:
    movl $1, %eax
.L865:
    cmpq $0, %rax
    je .L866
    movq $1, %rax
    leave
    ret
.L866:
    movq -16(%rbp), %rax
    pushq %rax
    movq $108, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L868
    movq -16(%rbp), %rax
    pushq %rax
    movq $76, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L868
    xorl %eax, %eax
    jmp .L869
.L868:
    movl $1, %eax
.L869:
    cmpq $0, %rax
    je .L870
    movq $1, %rax
    leave
    ret
.L870:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl lex_number
lex_number:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1044
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $120, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1046
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $88, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1046
    xorl %eax, %eax
    jmp .L1047
.L1046:
    movl $1, %eax
.L1047:
    testq %rax, %rax
    je .L1044
    movl $1, %eax
    jmp .L1045
.L1044:
    xorl %eax, %eax
.L1045:
    cmpq $0, %rax
    je .L1048
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_hex_val
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1050
    leaq .Lstr99(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_fail
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1050:
.L1052:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_hex_val
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1053
    leaq -32(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_hex_val
    movq %r12, %rsp
    popq %r12
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1052
.L1053:
.L1054:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_is_int_suffix
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1055
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1054
.L1055:
    leaq token(%rip), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    leaq .Lstr100(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1048:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1060
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1060
    movl $1, %eax
    jmp .L1061
.L1060:
    xorl %eax, %eax
.L1061:
    testq %rax, %rax
    je .L1062
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1062
    movl $1, %eax
    jmp .L1063
.L1062:
    xorl %eax, %eax
.L1063:
    cmpq $0, %rax
    je .L1064
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -16(%rbp)
.L1066:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1070
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1070
    movl $1, %eax
    jmp .L1071
.L1070:
    xorl %eax, %eax
.L1071:
    cmpq $0, %rax
    je .L1067
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1066
.L1067:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1076
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $101, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1076
    movl $1, %eax
    jmp .L1077
.L1076:
    xorl %eax, %eax
.L1077:
    testq %rax, %rax
    je .L1078
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $69, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1078
    movl $1, %eax
    jmp .L1079
.L1078:
    xorl %eax, %eax
.L1079:
    cmpq $0, %rax
    je .L1080
    movq input_ptr(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L1082:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1086
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1086
    movl $1, %eax
    jmp .L1087
.L1086:
    xorl %eax, %eax
.L1087:
    cmpq $0, %rax
    je .L1083
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $56, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1090
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1090
    xorl %eax, %eax
    jmp .L1091
.L1090:
    movl $1, %eax
.L1091:
    cmpq $0, %rax
    je .L1092
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -64(%rbp)
.L1094:
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1098
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1098
    movl $1, %eax
    jmp .L1099
.L1098:
    xorl %eax, %eax
.L1099:
    cmpq $0, %rax
    je .L1095
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1094
.L1095:
    leaq .Lstr101(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_fail
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1092:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1082
.L1083:
.L1100:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_is_int_suffix
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1101
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1100
.L1101:
    leaq token(%rip), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    leaq .Lstr102(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1080:
.L1064:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1102
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -16(%rbp)
.L1104:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1108
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1108
    movl $1, %eax
    jmp .L1109
.L1108:
    xorl %eax, %eax
.L1109:
    cmpq $0, %rax
    je .L1105
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1104
.L1105:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $101, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1112
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $69, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1112
    xorl %eax, %eax
    jmp .L1113
.L1112:
    movl $1, %eax
.L1113:
    cmpq $0, %rax
    je .L1114
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1118
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1118
    xorl %eax, %eax
    jmp .L1119
.L1118:
    movl $1, %eax
.L1119:
    cmpq $0, %rax
    je .L1120
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1120:
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1124
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1124
    xorl %eax, %eax
    jmp .L1125
.L1124:
    movl $1, %eax
.L1125:
    cmpq $0, %rax
    je .L1126
    leaq .Lstr103(%rip), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_fail
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1126:
    leaq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1128:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1132
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1132
    movl $1, %eax
    jmp .L1133
.L1132:
    xorl %eax, %eax
.L1133:
    cmpq $0, %rax
    je .L1129
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1128
.L1129:
.L1114:
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1134
    leaq .Lstr104(%rip), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_fail
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1134:
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L1136:
    movq -48(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1137
    leaq token(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1136
.L1137:
    leaq token(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1138
    movq -64(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1138
    xorl %eax, %eax
    jmp .L1139
.L1138:
    movl $1, %eax
.L1139:
    testq %rax, %rax
    jne .L1140
    movq -64(%rbp), %rax
    pushq %rax
    movq $108, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1140
    xorl %eax, %eax
    jmp .L1141
.L1140:
    movl $1, %eax
.L1141:
    testq %rax, %rax
    jne .L1142
    movq -64(%rbp), %rax
    pushq %rax
    movq $76, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1142
    xorl %eax, %eax
    jmp .L1143
.L1142:
    movl $1, %eax
.L1143:
    cmpq $0, %rax
    je .L1144
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1144:
    leaq tok(%rip), %rax
    pushq %rax
    movq $291, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq float_const_is_float(%rip), %rax
    pushq %rax
    movq float_const_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1146
    movq -64(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1146
    xorl %eax, %eax
    jmp .L1147
.L1146:
    movl $1, %eax
.L1147:
    testq %rax, %rax
    je .L1148
    movq $1, %rax
    jmp .L1149
.L1148:
    movq $0, %rax
.L1149:
    popq %rcx
    movq %rax, (%rcx)
    leaq float_const_str(%rip), %rax
    pushq %rax
    movq float_const_count(%rip), %rax
    popq %rcx
    imulq $256, %rax
    addq %rcx, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    leaq float_const_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leave
    ret
.L1102:
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L1150:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1154
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1154
    movl $1, %eax
    jmp .L1155
.L1154:
    xorl %eax, %eax
.L1155:
    cmpq $0, %rax
    je .L1151
    leaq -32(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1150
.L1151:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1156
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1158:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1162
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1162
    movl $1, %eax
    jmp .L1163
.L1162:
    xorl %eax, %eax
.L1163:
    cmpq $0, %rax
    je .L1159
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1158
.L1159:
.L1156:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $101, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1166
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $69, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1166
    xorl %eax, %eax
    jmp .L1167
.L1166:
    movl $1, %eax
.L1167:
    cmpq $0, %rax
    je .L1168
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1172
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1172
    xorl %eax, %eax
    jmp .L1173
.L1172:
    movl $1, %eax
.L1173:
    cmpq $0, %rax
    je .L1174
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1174:
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1178
    movq -64(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1178
    xorl %eax, %eax
    jmp .L1179
.L1178:
    movl $1, %eax
.L1179:
    cmpq $0, %rax
    je .L1180
    leaq .Lstr105(%rip), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_fail
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1180:
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1182:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1186
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1186
    movl $1, %eax
    jmp .L1187
.L1186:
    xorl %eax, %eax
.L1187:
    cmpq $0, %rax
    je .L1183
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1182
.L1183:
.L1168:
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1188
    leaq .Lstr106(%rip), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_fail
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1188:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L1190
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
.L1192:
    movq -80(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1193
    leaq token(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1192
.L1193:
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1194
    movq -96(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1194
    xorl %eax, %eax
    jmp .L1195
.L1194:
    movl $1, %eax
.L1195:
    testq %rax, %rax
    jne .L1196
    movq -96(%rbp), %rax
    pushq %rax
    movq $108, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1196
    xorl %eax, %eax
    jmp .L1197
.L1196:
    movl $1, %eax
.L1197:
    testq %rax, %rax
    jne .L1198
    movq -96(%rbp), %rax
    pushq %rax
    movq $76, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1198
    xorl %eax, %eax
    jmp .L1199
.L1198:
    movl $1, %eax
.L1199:
    cmpq $0, %rax
    je .L1200
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1200:
    leaq tok(%rip), %rax
    pushq %rax
    movq $291, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq float_const_is_float(%rip), %rax
    pushq %rax
    movq float_const_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1202
    movq -96(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1202
    xorl %eax, %eax
    jmp .L1203
.L1202:
    movl $1, %eax
.L1203:
    testq %rax, %rax
    je .L1204
    movq $1, %rax
    jmp .L1205
.L1204:
    movq $0, %rax
.L1205:
    popq %rcx
    movq %rax, (%rcx)
    leaq float_const_str(%rip), %rax
    pushq %rax
    movq float_const_count(%rip), %rax
    popq %rcx
    imulq $256, %rax
    addq %rcx, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    leaq float_const_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leave
    ret
.L1190:
.L1206:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_is_int_suffix
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1207
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1206
.L1207:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    leaq .Lstr107(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
    leave
    ret
    .globl next_token
next_token:
    pushq %rbp
    movq %rsp, %rbp
    subq $608, %rsp
restart:
    leaq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1669:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1670
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1671
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1671:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1669
.L1670:
    movq if_depth(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1673
    leaq if_nest(%rip), %rax
    pushq %rax
    movq if_depth(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    testq %rax, %rax
    je .L1673
    movl $1, %eax
    jmp .L1674
.L1673:
    xorl %eax, %eax
.L1674:
    cmpq $0, %rax
    je .L1675
.L1677:
    movq if_depth(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1679
    leaq if_nest(%rip), %rax
    pushq %rax
    movq if_depth(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    testq %rax, %rax
    je .L1679
    movl $1, %eax
    jmp .L1680
.L1679:
    xorl %eax, %eax
.L1680:
    testq %rax, %rax
    je .L1681
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1681
    movl $1, %eax
    jmp .L1682
.L1681:
    xorl %eax, %eax
.L1682:
    cmpq $0, %rax
    je .L1678
.L1683:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1687
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $35, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1687
    movl $1, %eax
    jmp .L1688
.L1687:
    xorl %eax, %eax
.L1688:
    cmpq $0, %rax
    je .L1684
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1689
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1689:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1683
.L1684:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1691
    jmp .L1678
.L1691:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1693:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1694
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1695
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1695:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1693
.L1694:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr157(%rip), %rax
    pushq %rax
    movq $5, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1697
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr158(%rip), %rax
    pushq %rax
    movq $6, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1697
    xorl %eax, %eax
    jmp .L1698
.L1697:
    movl $1, %eax
.L1698:
    testq %rax, %rax
    jne .L1699
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr159(%rip), %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1699
    xorl %eax, %eax
    jmp .L1700
.L1699:
    movl $1, %eax
.L1700:
    cmpq $0, %rax
    je .L1701
    movq if_depth(%rip), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1703
    leaq .Lstr160(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L1703:
    leaq if_nest(%rip), %rax
    pushq %rax
    leaq if_depth(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1702
.L1701:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr161(%rip), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1705
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1707
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L1707
    xorl %eax, %eax
    jmp .L1708
.L1707:
    movl $1, %eax
.L1708:
    testq %rax, %rax
    je .L1705
    movl $1, %eax
    jmp .L1706
.L1705:
    xorl %eax, %eax
.L1706:
    cmpq $0, %rax
    je .L1709
    leaq if_nest(%rip), %rax
    pushq %rax
    movq if_depth(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq if_nest(%rip), %rax
    pushq %rax
    movq if_depth(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1710
.L1709:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr162(%rip), %rax
    pushq %rax
    movq $5, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1711
    movq if_depth(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1713
    leaq if_depth(%rip), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L1713:
.L1711:
.L1710:
.L1702:
.L1715:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1719
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1719
    movl $1, %eax
    jmp .L1720
.L1719:
    xorl %eax, %eax
.L1720:
    cmpq $0, %rax
    je .L1716
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1715
.L1716:
    jmp .L1677
.L1678:
    jmp restart
.L1675:
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1721
    movq ctx_top(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1723
    movq lex_pass_top(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1725
    movq ctx_top(%rip), %rax
    pushq %rax
    movq lex_pass_top(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1725
    xorl %eax, %eax
    jmp .L1726
.L1725:
    movl $1, %eax
.L1726:
    testq %rax, %rax
    je .L1723
    movl $1, %eax
    jmp .L1724
.L1723:
    xorl %eax, %eax
.L1724:
    cmpq $0, %rax
    je .L1727
    movq source_start(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
    leaq ctx_top(%rip), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    leaq source_start(%rip), %rax
    pushq %rax
    leaq ctx_stack(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    imulq $28, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    pushq %rax
    leaq ctx_stack(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    imulq $28, %rax
    addq %rcx, %rax
    addq $8, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    leaq ctx_stack(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    imulq $28, %rax
    addq %rcx, %rax
    addq $24, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq current_file(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
    leaq current_file(%rip), %rax
    pushq %rax
    leaq ctx_stack(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    imulq $28, %rax
    addq %rcx, %rax
    addq $16, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp restart
.L1727:
    leaq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1721:
    movq -16(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1729
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1729
    movl $1, %eax
    jmp .L1730
.L1729:
    xorl %eax, %eax
.L1730:
    cmpq $0, %rax
    je .L1731
    movq input_ptr(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1733:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L1734
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1737
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1737
    movl $1, %eax
    jmp .L1738
.L1737:
    xorl %eax, %eax
.L1738:
    cmpq $0, %rax
    je .L1739
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1734
.L1739:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1741
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1741:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1733
.L1734:
    movq -48(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1743
    leaq .Lstr163(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_fail
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1743:
    jmp restart
.L1731:
    movq -16(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1745
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1745
    movl $1, %eax
    jmp .L1746
.L1745:
    xorl %eax, %eax
.L1746:
    cmpq $0, %rax
    je .L1747
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1749:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1753
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1753
    movl $1, %eax
    jmp .L1754
.L1753:
    xorl %eax, %eax
.L1754:
    cmpq $0, %rax
    je .L1750
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1749
.L1750:
    jmp restart
.L1747:
    movq -16(%rbp), %rax
    pushq %rax
    movq $35, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1755
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1757:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1758
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1759
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1759:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1757
.L1758:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr164(%rip), %rax
    pushq %rax
    movq $6, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1761
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1763:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1764
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1763
.L1764:
    movq $0, %rax
    movq %rax, -64(%rbp)
.L1765:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalnum
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L1767
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1767
    xorl %eax, %eax
    jmp .L1768
.L1767:
    movl $1, %eax
.L1768:
    testq %rax, %rax
    je .L1769
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1769
    movl $1, %eax
    jmp .L1770
.L1769:
    xorl %eax, %eax
.L1770:
    cmpq $0, %rax
    je .L1766
    leaq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1765
.L1766:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L1771:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1775
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1775
    xorl %eax, %eax
    jmp .L1776
.L1775:
    movl $1, %eax
.L1776:
    cmpq $0, %rax
    je .L1772
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1771
.L1772:
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -96(%rbp)
    leaq macro_p(%rip), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -80(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call macro_fold
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq macro_ok(%rip), %rax
    cmpq $0, %rax
    je .L1777
    leaq -96(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq macro_p(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1777:
    movq -96(%rbp), %rax
    testq %rax, %rax
    jne .L1779
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1779
    xorl %eax, %eax
    jmp .L1780
.L1779:
    movl $1, %eax
.L1780:
    cmpq $0, %rax
    je .L1781
    leaq -48(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq %r12, %rsp
    popq %r12
.L1781:
    jmp .L1762
.L1761:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr165(%rip), %rax
    pushq %rax
    movq $7, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1783
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1785:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1786
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1785
.L1786:
    movq $0, %rax
    movq %rax, -544(%rbp)
    movq $0, %rax
    movq %rax, -560(%rbp)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1787
    leaq -560(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1789:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1795
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1795
    movl $1, %eax
    jmp .L1796
.L1795:
    xorl %eax, %eax
.L1796:
    testq %rax, %rax
    je .L1797
    movq -544(%rbp), %rax
    pushq %rax
    movq $511, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1797
    movl $1, %eax
    jmp .L1798
.L1797:
    xorl %eax, %eax
.L1798:
    cmpq $0, %rax
    je .L1790
    leaq -528(%rbp), %rax
    pushq %rax
    leaq -544(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1789
.L1790:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1799
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1799:
    jmp .L1788
.L1787:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1801
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1803:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1809
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1809
    movl $1, %eax
    jmp .L1810
.L1809:
    xorl %eax, %eax
.L1810:
    testq %rax, %rax
    je .L1811
    movq -544(%rbp), %rax
    pushq %rax
    movq $511, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1811
    movl $1, %eax
    jmp .L1812
.L1811:
    xorl %eax, %eax
.L1812:
    cmpq $0, %rax
    je .L1804
    leaq -528(%rbp), %rax
    pushq %rax
    leaq -544(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1803
.L1804:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1813
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1813:
.L1801:
.L1788:
    leaq -528(%rbp), %rax
    pushq %rax
    movq -544(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L1815:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1819
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1819
    movl $1, %eax
    jmp .L1820
.L1819:
    xorl %eax, %eax
.L1820:
    cmpq $0, %rax
    je .L1816
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1815
.L1816:
    movq -560(%rbp), %rax
    testq %rax, %rax
    je .L1821
    movq -544(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1821
    movl $1, %eax
    jmp .L1822
.L1821:
    xorl %eax, %eax
.L1822:
    cmpq $0, %rax
    je .L1823
    leaq -528(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call resolve_local_include
    movq %r12, %rsp
    popq %r12
    movq %rax, -576(%rbp)
    movq -576(%rbp), %rax
    cmpq $0, %rax
    je .L1825
    movq -576(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call is_file_processed
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1827
    movq -576(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call mark_file_processed
    movq %r12, %rsp
    popq %r12
    movq -576(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call read_include_file
    movq %r12, %rsp
    popq %r12
    movq %rax, -592(%rbp)
    movq -592(%rbp), %rax
    cmpq $0, %rax
    je .L1829
    movq ctx_top(%rip), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1831
    leaq .Lstr166(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L1831:
    leaq ctx_stack(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    imulq $28, %rax
    addq %rcx, %rax
    pushq %rax
    movq source_start(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq ctx_stack(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    imulq $28, %rax
    addq %rcx, %rax
    addq $8, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq ctx_stack(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    imulq $28, %rax
    addq %rcx, %rax
    addq $16, %rax
    pushq %rax
    movq current_file(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq ctx_stack(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    imulq $28, %rax
    addq %rcx, %rax
    addq $24, %rax
    pushq %rax
    movq line(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq ctx_top(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq source_start(%rip), %rax
    pushq %rax
    movq -592(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -592(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_file(%rip), %rax
    pushq %rax
    movq -576(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp restart
    jmp .L1830
.L1829:
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr167(%rip), %rax
    pushq %rax
    leaq -528(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq -576(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
.L1830:
    jmp .L1828
.L1827:
    movq -576(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
.L1828:
    jmp .L1826
.L1825:
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr168(%rip), %rax
    pushq %rax
    leaq -528(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
.L1826:
.L1823:
    jmp .L1784
.L1783:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr169(%rip), %rax
    pushq %rax
    movq $5, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1833
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1835:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1836
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1835
.L1836:
    movq $0, %rax
    movq %rax, -64(%rbp)
.L1837:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalnum
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L1839
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1839
    xorl %eax, %eax
    jmp .L1840
.L1839:
    movl $1, %eax
.L1840:
    testq %rax, %rax
    je .L1841
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1841
    movl $1, %eax
    jmp .L1842
.L1841:
    xorl %eax, %eax
.L1842:
    cmpq $0, %rax
    je .L1838
    leaq -48(%rbp), %rax
    pushq %rax
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rcx
    addb $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1837
.L1838:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq if_depth(%rip), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1843
    leaq .Lstr170(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L1843:
    leaq if_nest(%rip), %rax
    pushq %rax
    leaq if_depth(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1845:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1849
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1849
    movl $1, %eax
    jmp .L1850
.L1849:
    xorl %eax, %eax
.L1850:
    cmpq $0, %rax
    je .L1846
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1845
.L1846:
    jmp restart
    jmp .L1834
.L1833:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr171(%rip), %rax
    pushq %rax
    movq $6, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1851
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1853:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1854
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1853
.L1854:
    movq $0, %rax
    movq %rax, -64(%rbp)
.L1855:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalnum
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L1857
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1857
    xorl %eax, %eax
    jmp .L1858
.L1857:
    movl $1, %eax
.L1858:
    testq %rax, %rax
    je .L1859
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1859
    movl $1, %eax
    jmp .L1860
.L1859:
    xorl %eax, %eax
.L1860:
    cmpq $0, %rax
    je .L1856
    leaq -48(%rbp), %rax
    pushq %rax
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rcx
    addb $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1855
.L1856:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq if_depth(%rip), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1861
    leaq .Lstr172(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L1861:
    leaq if_nest(%rip), %rax
    pushq %rax
    leaq if_depth(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1863:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1867
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1867
    movl $1, %eax
    jmp .L1868
.L1867:
    xorl %eax, %eax
.L1868:
    cmpq $0, %rax
    je .L1864
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1863
.L1864:
    jmp restart
    jmp .L1852
.L1851:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr173(%rip), %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1869
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1871:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L1872
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1871
.L1872:
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1873
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1874
.L1873:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $49, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1875
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1875:
.L1874:
.L1877:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1881
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1881
    movl $1, %eax
    jmp .L1882
.L1881:
    xorl %eax, %eax
.L1882:
    cmpq $0, %rax
    je .L1878
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1877
.L1878:
    movq if_depth(%rip), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1883
    leaq .Lstr174(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L1883:
    leaq if_nest(%rip), %rax
    pushq %rax
    leaq if_depth(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp restart
    jmp .L1870
.L1869:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr175(%rip), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1885
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1887
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L1887
    xorl %eax, %eax
    jmp .L1888
.L1887:
    movl $1, %eax
.L1888:
    testq %rax, %rax
    je .L1885
    movl $1, %eax
    jmp .L1886
.L1885:
    xorl %eax, %eax
.L1886:
    cmpq $0, %rax
    je .L1889
    movq if_depth(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1891
    leaq .Lstr176(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L1891:
    leaq if_nest(%rip), %rax
    pushq %rax
    movq if_depth(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq if_nest(%rip), %rax
    pushq %rax
    movq if_depth(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1893:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1897
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1897
    movl $1, %eax
    jmp .L1898
.L1897:
    xorl %eax, %eax
.L1898:
    cmpq $0, %rax
    je .L1894
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1893
.L1894:
    jmp restart
    jmp .L1890
.L1889:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr177(%rip), %rax
    pushq %rax
    movq $5, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1899
    movq if_depth(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1901
    leaq .Lstr178(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L1901:
    leaq if_depth(%rip), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L1903:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1907
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1907
    movl $1, %eax
    jmp .L1908
.L1907:
    xorl %eax, %eax
.L1908:
    cmpq $0, %rax
    je .L1904
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1903
.L1904:
    jmp restart
.L1899:
.L1890:
.L1870:
.L1852:
.L1834:
.L1784:
.L1762:
.L1909:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1913
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1913
    movl $1, %eax
    jmp .L1914
.L1913:
    xorl %eax, %eax
.L1914:
    cmpq $0, %rax
    je .L1910
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1909
.L1910:
    jmp restart
.L1755:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalpha
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L1915
    movq -16(%rbp), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1915
    xorl %eax, %eax
    jmp .L1916
.L1915:
    movl $1, %eax
.L1916:
    cmpq $0, %rax
    je .L1917
    movq input_ptr(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L1919:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalnum
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L1921
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L1921
    xorl %eax, %eax
    jmp .L1922
.L1921:
    movl $1, %eax
.L1922:
    cmpq $0, %rax
    je .L1920
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1919
.L1920:
    movq -48(%rbp), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1923
    movq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -96(%rbp)
    leaq .Lstr179(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_fail
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1923:
    movq $0, %rax
    movq %rax, -96(%rbp)
.L1925:
    movq -96(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1926
    leaq token(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1925
.L1926:
    leaq token(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_kw_lookup
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1927
    leaq tok(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1927:
    leaq -80(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1929
    leaq token(%rip), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    leaq .Lstr180(%rip), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1930
.L1929:
    leaq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1930:
    leave
    ret
.L1917:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isdigit
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    jne .L1931
    movq -16(%rbp), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1933
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isdigit
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    je .L1933
    movl $1, %eax
    jmp .L1934
.L1933:
    xorl %eax, %eax
.L1934:
    testq %rax, %rax
    jne .L1931
    xorl %eax, %eax
    jmp .L1932
.L1931:
    movl $1, %eax
.L1932:
    cmpq $0, %rax
    je .L1935
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_number
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L1935:
    movq -16(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1937
    leaq token(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    jmp .L1940
.L1939:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1942:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1948
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1948
    movl $1, %eax
    jmp .L1949
.L1948:
    xorl %eax, %eax
.L1949:
    testq %rax, %rax
    je .L1950
    movq -48(%rbp), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1950
    movl $1, %eax
    jmp .L1951
.L1950:
    xorl %eax, %eax
.L1951:
    cmpq $0, %rax
    je .L1943
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1954
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L1954
    movl $1, %eax
    jmp .L1955
.L1954:
    xorl %eax, %eax
.L1955:
    cmpq $0, %rax
    je .L1956
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    pushq $0
    jmp .L1958
.L1960:
    movq -32(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1961:
    movq -32(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1962:
    movq -32(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1963:
    movq -32(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1964:
    movq -32(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1965:
    movq -32(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1966:
    movq -32(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1967:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1968:
    movq -32(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1969:
    movq -32(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1970:
    movq -32(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1971:
    movq -32(%rbp), %rax
    pushq %rax
    movq $27, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
.L1972:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L1973:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L1974
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq %rax, -80(%rbp)
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1975
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1975
    movl $1, %eax
    jmp .L1976
.L1975:
    xorl %eax, %eax
.L1976:
    cmpq $0, %rax
    je .L1977
    leaq -64(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    pushq %rax
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1978
.L1977:
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1979
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1979
    movl $1, %eax
    jmp .L1980
.L1979:
    xorl %eax, %eax
.L1980:
    cmpq $0, %rax
    je .L1981
    leaq -64(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    pushq %rax
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1982
.L1981:
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1983
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1983
    movl $1, %eax
    jmp .L1984
.L1983:
    xorl %eax, %eax
.L1984:
    cmpq $0, %rax
    je .L1985
    leaq -64(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    pushq %rax
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1986
.L1985:
    jmp .L1974
.L1986:
.L1982:
.L1978:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1973
.L1974:
    movq -32(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1942
.L1987:
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1988
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $55, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1988
    movl $1, %eax
    jmp .L1989
.L1988:
    xorl %eax, %eax
.L1989:
    cmpq $0, %rax
    je .L1990
    movq $0, %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
.L1992:
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1994
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $55, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1994
    movl $1, %eax
    jmp .L1995
.L1994:
    xorl %eax, %eax
.L1995:
    testq %rax, %rax
    je .L1996
    movq -80(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L1996
    movl $1, %eax
    jmp .L1997
.L1996:
    xorl %eax, %eax
.L1997:
    cmpq $0, %rax
    je .L1993
    leaq -64(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $3, %rax
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1992
.L1993:
    movq -32(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1942
.L1990:
    movq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L1959
    jmp .L1959
.L1958:
    movq 8(%rsp), %rax
    cmpq $110, %rax
    je .L1960
    cmpq $116, %rax
    je .L1961
    cmpq $114, %rax
    je .L1962
    cmpq $102, %rax
    je .L1963
    cmpq $118, %rax
    je .L1964
    cmpq $97, %rax
    je .L1965
    cmpq $98, %rax
    je .L1966
    cmpq $48, %rax
    je .L1967
    cmpq $92, %rax
    je .L1968
    cmpq $34, %rax
    je .L1969
    cmpq $39, %rax
    je .L1970
    cmpq $101, %rax
    je .L1971
    cmpq $120, %rax
    je .L1972
    jmp .L1987
.L1959:
    addq $16, %rsp
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1957
.L1956:
    movq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1957:
    jmp .L1942
.L1943:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1998
    leaq .Lstr181(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L1998:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L2000:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2001
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2002
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L2002:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2000
.L2001:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2004
    jmp .L1941
.L2004:
.L1940:
    jmp .L1939
.L1941:
    leaq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1937:
    movq -16(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2006
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2008
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    pushq $0
    jmp .L2010
.L2012:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2013:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2014:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2015:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2016:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2017:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2018:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2019:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $27, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2020:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2021:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2022:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2023:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2011
.L2024:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L2025:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L2026
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq %rax, -80(%rbp)
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2027
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2027
    movl $1, %eax
    jmp .L2028
.L2027:
    xorl %eax, %eax
.L2028:
    cmpq $0, %rax
    je .L2029
    leaq -48(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    pushq %rax
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2030
.L2029:
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2031
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2031
    movl $1, %eax
    jmp .L2032
.L2031:
    xorl %eax, %eax
.L2032:
    cmpq $0, %rax
    je .L2033
    leaq -48(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    pushq %rax
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2034
.L2033:
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2035
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2035
    movl $1, %eax
    jmp .L2036
.L2035:
    xorl %eax, %eax
.L2036:
    cmpq $0, %rax
    je .L2037
    leaq -48(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    pushq %rax
    movsbq -80(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2038
.L2037:
    jmp .L2026
.L2038:
.L2034:
.L2030:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2025
.L2026:
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2039
    leaq .Lstr182(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2039:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $255, %rax
    popq %rcx
    andq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq $127, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2041
    leaq -32(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2041:
    jmp .L2011
.L2043:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2046
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $55, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2046
    movl $1, %eax
    jmp .L2047
.L2046:
    xorl %eax, %eax
.L2047:
    cmpq $0, %rax
    je .L2048
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L2050:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2056
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $55, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2056
    movl $1, %eax
    jmp .L2057
.L2056:
    xorl %eax, %eax
.L2057:
    testq %rax, %rax
    je .L2058
    movq -64(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2058
    movl $1, %eax
    jmp .L2059
.L2058:
    xorl %eax, %eax
.L2059:
    cmpq $0, %rax
    je .L2051
    leaq -48(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $3, %rax
    pushq %rax
    popq %rcx
    popq %rax
    salq %cl, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2050
.L2051:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $255, %rax
    popq %rcx
    andq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq $127, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2060
    leaq -32(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2060:
    jmp .L2049
.L2048:
    leaq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2049:
    jmp .L2011
    jmp .L2011
.L2010:
    movq 8(%rsp), %rax
    cmpq $110, %rax
    je .L2012
    cmpq $116, %rax
    je .L2013
    cmpq $114, %rax
    je .L2014
    cmpq $102, %rax
    je .L2015
    cmpq $118, %rax
    je .L2016
    cmpq $97, %rax
    je .L2017
    cmpq $98, %rax
    je .L2018
    cmpq $101, %rax
    je .L2019
    cmpq $48, %rax
    je .L2020
    cmpq $92, %rax
    je .L2021
    cmpq $39, %rax
    je .L2022
    cmpq $34, %rax
    je .L2023
    cmpq $120, %rax
    je .L2024
    jmp .L2043
.L2011:
    addq $16, %rsp
    jmp .L2009
.L2008:
    leaq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2009:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2062
    leaq .Lstr183(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2062:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq token(%rip), %rax
    pushq %rax
    movq $256, %rax
    pushq %rax
    leaq .Lstr184(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L2006:
    movq -16(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2064
    leaq .Lstr185(%rip), %rax
    pushq %rax
    movq $302, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2066
    leave
    ret
.L2066:
    leaq .Lstr186(%rip), %rax
    pushq %rax
    movq $294, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2068
    leave
    ret
.L2068:
    leaq .Lstr187(%rip), %rax
    pushq %rax
    movq $274, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2070
    leave
    ret
.L2070:
.L2064:
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2072
    leaq .Lstr188(%rip), %rax
    pushq %rax
    movq $303, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2074
    leave
    ret
.L2074:
    leaq .Lstr189(%rip), %rax
    pushq %rax
    movq $295, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2076
    leave
    ret
.L2076:
    leaq .Lstr190(%rip), %rax
    pushq %rax
    movq $275, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2078
    leave
    ret
.L2078:
.L2072:
    movq -16(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2080
    leaq .Lstr191(%rip), %rax
    pushq %rax
    movq $276, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2082
    leave
    ret
.L2082:
.L2080:
    movq -16(%rbp), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2084
    leaq .Lstr192(%rip), %rax
    pushq %rax
    movq $277, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2086
    leave
    ret
.L2086:
.L2084:
    movq -16(%rbp), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2088
    leaq .Lstr193(%rip), %rax
    pushq %rax
    movq $278, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2090
    leave
    ret
.L2090:
    leaq .Lstr194(%rip), %rax
    pushq %rax
    movq $299, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2092
    leave
    ret
.L2092:
.L2088:
    movq -16(%rbp), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2094
    leaq .Lstr195(%rip), %rax
    pushq %rax
    movq $279, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2096
    leave
    ret
.L2096:
    leaq .Lstr196(%rip), %rax
    pushq %rax
    movq $300, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2098
    leave
    ret
.L2098:
.L2094:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2100
    leaq .Lstr197(%rip), %rax
    pushq %rax
    movq $271, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2102
    leave
    ret
.L2102:
    leaq .Lstr198(%rip), %rax
    pushq %rax
    movq $286, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2104
    leave
    ret
.L2104:
.L2100:
    movq -16(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2106
    leaq .Lstr199(%rip), %rax
    pushq %rax
    movq $272, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2108
    leave
    ret
.L2108:
    leaq .Lstr200(%rip), %rax
    pushq %rax
    movq $287, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2110
    leave
    ret
.L2110:
    leaq .Lstr201(%rip), %rax
    pushq %rax
    movq $273, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2112
    leave
    ret
.L2112:
.L2106:
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2114
    leaq .Lstr202(%rip), %rax
    pushq %rax
    movq $296, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2116
    leave
    ret
.L2116:
.L2114:
    movq -16(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2118
    leaq .Lstr203(%rip), %rax
    pushq %rax
    movq $297, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2120
    leave
    ret
.L2120:
.L2118:
    movq -16(%rbp), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2122
    leaq .Lstr204(%rip), %rax
    pushq %rax
    movq $298, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2124
    leave
    ret
.L2124:
.L2122:
    movq -16(%rbp), %rax
    pushq %rax
    movq $94, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2126
    leaq .Lstr205(%rip), %rax
    pushq %rax
    movq $301, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_match_op
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L2128
    leave
    ret
.L2128:
.L2126:
    leaq token(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leave
    ret
    .globl match
match:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2132
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2133
.L2132:
    leaq .Lstr207(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2133:
    leave
    ret
    .globl emit
emit:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2144
    leave
    ret
.L2144:
.L2146:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L2147
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2150
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2150
    movl $1, %eax
    jmp .L2151
.L2150:
    xorl %eax, %eax
.L2151:
    cmpq $0, %rax
    je .L2152
    movq $37, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2153
.L2152:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L2153:
    jmp .L2146
.L2147:
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl emit_i
emit_i:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2156
    leave
    ret
.L2156:
    movq output(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl emit_s
emit_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2160
    leave
    ret
.L2160:
    movq output(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl emit_is
emit_is:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2164
    leave
    ret
.L2164:
    movq output(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl emit_si
emit_si:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2168
    leave
    ret
.L2168:
    movq output(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl emit_asciz_body
emit_asciz_body:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2196
    leave
    ret
.L2196:
.L2198:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L2199
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq %rax, -32(%rbp)
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2200
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr218(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2201
.L2200:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2202
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr219(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2203
.L2202:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2204
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr220(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2205
.L2204:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2206
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr221(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2207
.L2206:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2208
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr222(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2209
.L2208:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2210
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr223(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2211
.L2210:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2212
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr224(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2213
.L2212:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2214
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr225(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2215
.L2214:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2216
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr226(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L2217
.L2216:
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2218
    movzbq -32(%rbp), %rax
    pushq %rax
    movq $126, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2218
    movl $1, %eax
    jmp .L2219
.L2218:
    xorl %eax, %eax
.L2219:
    cmpq $0, %rax
    je .L2220
    movzbq -32(%rbp), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    jmp .L2221
.L2220:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr227(%rip), %rax
    pushq %rax
    movzbq -32(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
.L2221:
.L2217:
.L2215:
.L2213:
.L2211:
.L2209:
.L2207:
.L2205:
.L2203:
.L2201:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2198
.L2199:
    leave
    ret
    .globl emit_label
emit_label:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq emit_enabled(%rip), %rax
    cmpq $0, %rax
    je .L2224
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr229(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
.L2224:
    leave
    ret
    .globl find_symbol
find_symbol:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -32(%rbp)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    movq %rax, -48(%rbp)
.L2230:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2231
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2232
    movq -48(%rbp), %rax
    leave
    ret
.L2232:
    leaq -48(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $84, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2230
.L2231:
    movq $1, %rax
    negq %rax
    leave
    ret
    leave
    ret
    .globl add_symbol
add_symbol:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq %rcx, -64(%rbp)
    movq %r8, -80(%rbp)
    movq %r9, -96(%rbp)
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2248
    leaq .Lstr236(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2248:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strncpy
    movq %r12, %rsp
    popq %r12
    movq -128(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -112(%rbp), %rax
    addq $36, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $40, %rax
    pushq %rax
    movq static_flag(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq static_flag(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $80, %rax
    pushq %rax
    movq unsigned_type(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq unsigned_type(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $52, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq const_flag(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $60, %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $76, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    addq $84, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L2250
    movq -112(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq extern_flag(%rip), %rax
    cmpq $0, %rax
    je .L2252
    leaq extern_flag(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2253
.L2252:
    movq global_emit_deferred(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2254
    leaq .Lstr237(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -112(%rbp), %rax
    addq $40, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2256
    leaq .Lstr238(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L2256:
    leaq .Lstr239(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2258
    leaq .Lstr240(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2258:
    leaq .Lstr241(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2254:
.L2253:
    jmp .L2251
.L2250:
    leaq stack_size(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $16, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq stack_size(%rip), %rax
    negq %rax
    popq %rcx
    movl %eax, (%rcx)
    movq stack_size(%rip), %rax
    pushq %rax
    movq max_func_stack(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2260
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2260:
.L2251:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -144(%rbp)
    movq -112(%rbp), %rax
    addq $84, %rax
    pushq %rax
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leave
    ret
    .globl arg_reg
arg_reg:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2272
    leaq .Lstr248(%rip), %rax
    leave
    ret
.L2272:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2274
    leaq .Lstr249(%rip), %rax
    leave
    ret
.L2274:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2276
    leaq .Lstr250(%rip), %rax
    leave
    ret
.L2276:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2278
    leaq .Lstr251(%rip), %rax
    leave
    ret
.L2278:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2280
    leaq .Lstr252(%rip), %rax
    leave
    ret
.L2280:
    leaq .Lstr253(%rip), %rax
    leave
    ret
    leave
    ret
    .globl libc_global_name
libc_global_name:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2300
    leaq .Lstr263(%rip), %rax
    leave
    ret
.L2300:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2302
    leaq .Lstr264(%rip), %rax
    leave
    ret
.L2302:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2304
    leaq .Lstr265(%rip), %rax
    leave
    ret
.L2304:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2306
    leaq .Lstr266(%rip), %rax
    leave
    ret
.L2306:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2308
    leaq .Lstr267(%rip), %rax
    leave
    ret
.L2308:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2310
    leaq .Lstr268(%rip), %rax
    leave
    ret
.L2310:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2312
    leaq .Lstr269(%rip), %rax
    leave
    ret
.L2312:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2314
    leaq .Lstr270(%rip), %rax
    leave
    ret
.L2314:
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2316
    leaq .Lstr271(%rip), %rax
    leave
    ret
.L2316:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl typedef_name
typedef_name:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2340
    leaq .Lstr283(%rip), %rax
    leave
    ret
.L2340:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2342
    leaq .Lstr284(%rip), %rax
    leave
    ret
.L2342:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2344
    leaq .Lstr285(%rip), %rax
    leave
    ret
.L2344:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2346
    leaq .Lstr286(%rip), %rax
    leave
    ret
.L2346:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2348
    leaq .Lstr287(%rip), %rax
    leave
    ret
.L2348:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2350
    leaq .Lstr288(%rip), %rax
    leave
    ret
.L2350:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2352
    leaq .Lstr289(%rip), %rax
    leave
    ret
.L2352:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2354
    leaq .Lstr290(%rip), %rax
    leave
    ret
.L2354:
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2356
    leaq .Lstr291(%rip), %rax
    leave
    ret
.L2356:
    movq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2358
    leaq .Lstr292(%rip), %rax
    leave
    ret
.L2358:
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2360
    leaq .Lstr293(%rip), %rax
    leave
    ret
.L2360:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl typedef_size
typedef_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2384
    movq $1, %rax
    leave
    ret
.L2384:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2386
    movq $1, %rax
    leave
    ret
.L2386:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2388
    movq $2, %rax
    leave
    ret
.L2388:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2390
    movq $2, %rax
    leave
    ret
.L2390:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2392
    movq $4, %rax
    leave
    ret
.L2392:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2394
    movq $4, %rax
    leave
    ret
.L2394:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2396
    movq $8, %rax
    leave
    ret
.L2396:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2398
    movq $8, %rax
    leave
    ret
.L2398:
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2400
    movq $8, %rax
    leave
    ret
.L2400:
    movq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2402
    movq $8, %rax
    leave
    ret
.L2402:
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2404
    movq $2, %rax
    leave
    ret
.L2404:
    movq $8, %rax
    leave
    ret
    leave
    ret
    .globl typedef_uns
typedef_uns:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2416
    movq $1, %rax
    leave
    ret
.L2416:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2418
    movq $1, %rax
    leave
    ret
.L2418:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2420
    movq $1, %rax
    leave
    ret
.L2420:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2422
    movq $1, %rax
    leave
    ret
.L2422:
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2424
    movq $1, %rax
    leave
    ret
.L2424:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl unary
unary:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2688
    leaq .Lstr369(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_type(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2689
.L2688:
    movq tok(%rip), %rax
    pushq %rax
    movq $291, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2690
    movq float_const_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq float_const_is_float(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    movq %rax, -32(%rbp)
    leaq .Lstr370(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L2692
    leaq .Lstr371(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr372(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq expr_type(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2693
.L2692:
    leaq .Lstr373(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr374(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq expr_type(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2693:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2691
.L2690:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2694
    leaq -32(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2696
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2698
.L2700:
    movq $1, %rax
    cmpq $0, %rax
    je .L2701
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr375(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2702
    jmp .L2701
.L2702:
    movq $44, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    jmp .L2700
.L2701:
.L2698:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -64(%rbp)
    jmp .L2706
.L2704:
    leaq .Lstr376(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call arg_reg
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_is
    movq %r12, %rsp
    popq %r12
.L2705:
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2706
.L2706:
    movq -64(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2708
    movq -64(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2708
    movl $1, %eax
    jmp .L2709
.L2708:
    xorl %eax, %eax
.L2709:
    cmpq $0, %rax
    jne .L2704
.L2707:
    movq -48(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2710
    leaq .Lstr377(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2710:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2712
    leaq .Lstr378(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2712:
    leaq .Lstr379(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr380(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr381(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr382(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr383(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    leaq .Lstr384(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr385(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2697
.L2696:
    leaq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2714
    leaq .Lstr386(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2714:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    addq $52, %rax
    movslq (%rax), %rax
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L2716
    movq -64(%rbp), %rax
    addq $56, %rax
    movslq (%rax), %rax
    movq %rax, -96(%rbp)
    leaq .Lstr387(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2717
.L2716:
    movq -64(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    jne .L2718
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2720
    movq -64(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2720
    movl $1, %eax
    jmp .L2721
.L2720:
    xorl %eax, %eax
.L2721:
    testq %rax, %rax
    jne .L2718
    xorl %eax, %eax
    jmp .L2719
.L2718:
    movl $1, %eax
.L2719:
    cmpq $0, %rax
    je .L2722
    movq -64(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    movq %rax, -96(%rbp)
    movq -64(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    testq %rax, %rax
    je .L2724
    movq -64(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2725
.L2724:
    movq $8, %rax
.L2725:
    movq %rax, -128(%rbp)
    movq -112(%rbp), %rax
    testq %rax, %rax
    je .L2726
    movq -64(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L2727
.L2726:
    movq $0, %rax
.L2727:
    movq %rax, -144(%rbp)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2728
    leaq .Lstr388(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2729
.L2728:
    leaq .Lstr389(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2729:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2730
    movq -64(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2730
    movl $1, %eax
    jmp .L2731
.L2730:
    xorl %eax, %eax
.L2731:
    testq %rax, %rax
    je .L2732
    movq $0, %rax
    jmp .L2733
.L2732:
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2734
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    jmp .L2735
.L2734:
    movq $262, %rax
.L2735:
.L2733:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2723
.L2722:
    movq -64(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    movq %rax, -96(%rbp)
    movq -64(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    movq %rax, -112(%rbp)
    movq -64(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    movq %rax, -128(%rbp)
    movq -64(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    movq %rax, -144(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2736
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2736
    movl $1, %eax
    jmp .L2737
.L2736:
    xorl %eax, %eax
.L2737:
    movq %rax, -160(%rbp)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L2738
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2740
    movq -64(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2741
.L2740:
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2742
    movq -64(%rbp), %rax
    addq $76, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2742
    movl $1, %eax
    jmp .L2743
.L2742:
    xorl %eax, %eax
.L2743:
    testq %rax, %rax
    je .L2744
    movq $1, %rax
    jmp .L2745
.L2744:
    movq $8, %rax
.L2745:
.L2741:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq current_elem_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2739
.L2738:
.L2739:
    leaq expr_type(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -128(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2746
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2748
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2750
    leaq .Lstr390(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2751
.L2750:
    leaq .Lstr391(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L2751:
    jmp .L2749
.L2748:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2752
    leaq .Lstr392(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L2753
.L2752:
    leaq .Lstr393(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2753:
.L2749:
    jmp .L2747
.L2746:
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2754
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2756
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2758
    leaq .Lstr394(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2759
.L2758:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2760
    leaq .Lstr395(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2761
.L2760:
    leaq .Lstr396(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L2761:
.L2759:
    jmp .L2757
.L2756:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2762
    leaq .Lstr397(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L2763
.L2762:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2764
    leaq .Lstr398(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L2765
.L2764:
    leaq .Lstr399(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2765:
.L2763:
.L2757:
    jmp .L2755
.L2754:
    movq -112(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2766
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2768
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2770
    leaq .Lstr400(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2771
.L2770:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2772
    leaq .Lstr401(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2773
.L2772:
    leaq .Lstr402(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L2773:
.L2771:
    jmp .L2769
.L2768:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2774
    leaq .Lstr403(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L2775
.L2774:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2776
    leaq .Lstr404(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L2777
.L2776:
    leaq .Lstr405(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2777:
.L2775:
.L2769:
    jmp .L2767
.L2766:
    movq -112(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2778
    movq -128(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2778
    movl $1, %eax
    jmp .L2779
.L2778:
    xorl %eax, %eax
.L2779:
    cmpq $0, %rax
    je .L2780
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2782
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2784
    leaq .Lstr406(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2785
.L2784:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2786
    leaq .Lstr407(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2787
.L2786:
    leaq .Lstr408(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L2787:
.L2785:
    jmp .L2783
.L2782:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2788
    leaq .Lstr409(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L2789
.L2788:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2790
    leaq .Lstr410(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L2791
.L2790:
    leaq .Lstr411(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2791:
.L2789:
.L2783:
    jmp .L2781
.L2780:
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2792
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2794
    leaq .Lstr412(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2795
.L2794:
    leaq .Lstr413(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L2795:
    jmp .L2793
.L2792:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2796
    leaq .Lstr414(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L2797
.L2796:
    leaq .Lstr415(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2797:
.L2793:
.L2781:
.L2767:
.L2755:
.L2747:
.L2723:
.L2717:
.L2697:
    jmp .L2695
.L2694:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2798
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq line(%rip), %rax
    movq %rax, -32(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2800
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2802
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2802
    movl $1, %eax
    jmp .L2803
.L2802:
    xorl %eax, %eax
.L2803:
    cmpq $0, %rax
    je .L2804
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2806:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2807
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2806
.L2807:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2808
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2808:
.L2804:
    jmp .L2801
.L2800:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2810
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2810
    xorl %eax, %eax
    jmp .L2811
.L2810:
    movl $1, %eax
.L2811:
    testq %rax, %rax
    jne .L2812
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2812
    xorl %eax, %eax
    jmp .L2813
.L2812:
    movl $1, %eax
.L2813:
    testq %rax, %rax
    jne .L2814
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2814
    xorl %eax, %eax
    jmp .L2815
.L2814:
    movl $1, %eax
.L2815:
    cmpq $0, %rax
    je .L2816
    movq tok(%rip), %rax
    movq %rax, -64(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2818:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2819
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2818
.L2819:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2820
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2820:
    movq -48(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2822
    leaq tok(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2822:
.L2816:
.L2801:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L2824
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq %r12, %rsp
    popq %r12
    jmp .L2825
.L2824:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
.L2825:
    jmp .L2799
.L2798:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2826
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq %r12, %rsp
    popq %r12
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2828
    movq deref_w(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2828
    movl $1, %eax
    jmp .L2829
.L2828:
    xorl %eax, %eax
.L2829:
    cmpq $0, %rax
    je .L2830
    leaq .Lstr416(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2831
.L2830:
    movq deref_w(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2832
    movq deref_u(%rip), %rax
    cmpq $0, %rax
    je .L2834
    leaq .Lstr417(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2835
.L2834:
    leaq .Lstr418(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2835:
    jmp .L2833
.L2832:
    movq deref_w(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2836
    movq deref_u(%rip), %rax
    cmpq $0, %rax
    je .L2838
    leaq .Lstr419(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2839
.L2838:
    leaq .Lstr420(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2839:
    jmp .L2837
.L2836:
    movq deref_w(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2840
    movq deref_u(%rip), %rax
    cmpq $0, %rax
    je .L2842
    leaq .Lstr421(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2843
.L2842:
    leaq .Lstr422(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2843:
    jmp .L2841
.L2840:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2844
    leaq .Lstr423(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2845
.L2844:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2846
    leaq .Lstr424(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq expr_type(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2847
.L2846:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2848
    leaq .Lstr425(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq expr_type(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2849
.L2848:
    leaq .Lstr426(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2849:
.L2847:
.L2845:
.L2841:
.L2837:
.L2833:
.L2831:
    leaq deref_w(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2827
.L2826:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2850
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2852
    leaq .Lstr427(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2852:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2854
    leaq .Lstr428(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2854:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2856
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2857
.L2856:
    movq -32(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2858
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2859
.L2858:
    movq -32(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2860
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2861
.L2860:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2861:
.L2859:
.L2857:
    leaq deref_w(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2862
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2863
.L2862:
    movq -32(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2864
    movq $8, %rax
    jmp .L2865
.L2864:
    movq -32(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
.L2865:
.L2863:
    popq %rcx
    movq %rax, (%rcx)
    movq deref_w(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2866
    movq deref_w(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2866
    movl $1, %eax
    jmp .L2867
.L2866:
    xorl %eax, %eax
.L2867:
    testq %rax, %rax
    je .L2868
    movq deref_w(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2868
    movl $1, %eax
    jmp .L2869
.L2868:
    xorl %eax, %eax
.L2869:
    testq %rax, %rax
    je .L2870
    movq deref_w(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2870
    movl $1, %eax
    jmp .L2871
.L2870:
    xorl %eax, %eax
.L2871:
    cmpq $0, %rax
    je .L2872
    leaq deref_w(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2872:
    leaq deref_u(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2874
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2875
.L2874:
    movq $0, %rax
.L2875:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2876
    movq -32(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L2877
.L2876:
    movq $0, %rax
.L2877:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L2878
    leaq .Lstr429(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L2879
.L2878:
    leaq .Lstr430(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L2879:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2851
.L2850:
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2880
    leaq str_label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    movq string_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2882
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -32(%rbp)
    leaq string_pool(%rip), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    leaq string_pool(%rip), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    leaq string_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L2882:
    leaq .Lstr431(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2881
.L2880:
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2884
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2886
    leaq .Lstr432(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2887
.L2886:
    movq expr_type(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2888
    leaq .Lstr433(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2889
.L2888:
    leaq .Lstr434(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2889:
.L2887:
    jmp .L2885
.L2884:
    movq tok(%rip), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2890
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq %r12, %rsp
    popq %r12
    leaq .Lstr435(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr436(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr437(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2891
.L2890:
    movq tok(%rip), %rax
    pushq %rax
    movq $126, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2892
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq %r12, %rsp
    popq %r12
    leaq .Lstr438(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2893
.L2892:
    movq tok(%rip), %rax
    pushq %rax
    movq $293, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2894
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2896
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2896:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2898
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr439(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2900
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr440(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2900
    xorl %eax, %eax
    jmp .L2901
.L2900:
    movl $1, %eax
.L2901:
    testq %rax, %rax
    je .L2898
    movl $1, %eax
    jmp .L2899
.L2898:
    xorl %eax, %eax
.L2899:
    cmpq $0, %rax
    je .L2902
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2904
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2904
    xorl %eax, %eax
    jmp .L2905
.L2904:
    movl $1, %eax
.L2905:
    testq %rax, %rax
    jne .L2906
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2906
    xorl %eax, %eax
    jmp .L2907
.L2906:
    movl $1, %eax
.L2907:
    testq %rax, %rax
    jne .L2908
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2908
    xorl %eax, %eax
    jmp .L2909
.L2908:
    movl $1, %eax
.L2909:
    cmpq $0, %rax
    je .L2910
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2910:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2903
.L2902:
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2912
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2913
.L2912:
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2914
    leaq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2915
.L2914:
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2916
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2917
.L2916:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2918
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2918
    xorl %eax, %eax
    jmp .L2919
.L2918:
    movl $1, %eax
.L2919:
    cmpq $0, %rax
    je .L2920
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2921
.L2920:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2922
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2922
    xorl %eax, %eax
    jmp .L2923
.L2922:
    movl $1, %eax
.L2923:
    cmpq $0, %rax
    je .L2924
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2926
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2928
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2928
    movl $1, %eax
    jmp .L2929
.L2928:
    xorl %eax, %eax
.L2929:
    testq %rax, %rax
    je .L2930
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2930
    movl $1, %eax
    jmp .L2931
.L2930:
    xorl %eax, %eax
.L2931:
    cmpq $0, %rax
    je .L2932
    leaq -16(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $56, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2932:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2926:
    jmp .L2925
.L2924:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2934
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2936
    leaq .Lstr441(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2936:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2938
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $65536, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2938
    movl $1, %eax
    jmp .L2939
.L2938:
    xorl %eax, %eax
.L2939:
    cmpq $0, %rax
    je .L2940
    leaq -16(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $56, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2941
.L2940:
    leaq -16(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $44, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2941:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2935
.L2934:
    movq emit_enabled(%rip), %rax
    movq %rax, -48(%rbp)
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq %r12, %rsp
    popq %r12
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq expr_type(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2942
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2943
.L2942:
    movq expr_type(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2944
    leaq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2945
.L2944:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2945:
.L2943:
.L2935:
.L2925:
.L2921:
.L2917:
.L2915:
.L2913:
.L2903:
.L2946:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2947
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2946
.L2947:
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L2948
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
.L2948:
    leaq .Lstr442(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2895
.L2894:
    leaq .Lstr443(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L2895:
.L2893:
.L2891:
.L2885:
.L2881:
.L2851:
.L2827:
.L2799:
.L2695:
.L2691:
.L2689:
    leave
    ret
    .globl lvalue_address
lvalue_address:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3002
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3004
    leaq .Lstr450(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L3004:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    jne .L3006
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3008
    movq -32(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3008
    movl $1, %eax
    jmp .L3009
.L3008:
    xorl %eax, %eax
.L3009:
    testq %rax, %rax
    jne .L3006
    xorl %eax, %eax
    jmp .L3007
.L3006:
    movl $1, %eax
.L3007:
    cmpq $0, %rax
    je .L3010
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3012
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L3013
.L3012:
    movq $8, %rax
.L3013:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3014
    movq -32(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L3015
.L3014:
    movq $0, %rax
.L3015:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3016
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    jmp .L3017
.L3016:
    movq $262, %rax
.L3017:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3011
.L3010:
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L3018
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3020
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L3021
.L3020:
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3022
    movq -32(%rbp), %rax
    addq $76, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3022
    movl $1, %eax
    jmp .L3023
.L3022:
    xorl %eax, %eax
.L3023:
    testq %rax, %rax
    je .L3024
    movq $1, %rax
    jmp .L3025
.L3024:
    movq $8, %rax
.L3025:
.L3021:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3019
.L3018:
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3019:
.L3011:
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3026
    movq -32(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3026
    movl $1, %eax
    jmp .L3027
.L3026:
    xorl %eax, %eax
.L3027:
    movq %rax, -48(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L3028
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3030
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3030
    xorl %eax, %eax
    jmp .L3031
.L3030:
    movl $1, %eax
.L3031:
    testq %rax, %rax
    jne .L3032
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3032
    xorl %eax, %eax
    jmp .L3033
.L3032:
    movl $1, %eax
.L3033:
    testq %rax, %rax
    jne .L3034
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3034
    xorl %eax, %eax
    jmp .L3035
.L3034:
    movl $1, %eax
.L3035:
    testq %rax, %rax
    je .L3028
    movl $1, %eax
    jmp .L3029
.L3028:
    xorl %eax, %eax
.L3029:
    cmpq $0, %rax
    je .L3036
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3037
.L3036:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L3038
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3038:
.L3037:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L3040
    movq -32(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L3042
    leaq .Lstr451(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L3043
.L3042:
    leaq .Lstr452(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L3043:
    jmp .L3041
.L3040:
    movq -32(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L3044
    leaq .Lstr453(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L3045
.L3044:
    leaq .Lstr454(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L3045:
.L3041:
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq %r12, %rsp
    popq %r12
    jmp .L3003
.L3002:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3046
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq %r12, %rsp
    popq %r12
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3048
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3050
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3051
.L3050:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3052
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3053
.L3052:
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3053:
.L3051:
.L3048:
    jmp .L3047
.L3046:
    leaq .Lstr455(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L3047:
.L3003:
    leave
    ret
    .globl handle_postfix
handle_postfix:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -16(%rbp)
.L3174:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3176
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3176
    xorl %eax, %eax
    jmp .L3177
.L3176:
    movl $1, %eax
.L3177:
    testq %rax, %rax
    jne .L3178
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3178
    xorl %eax, %eax
    jmp .L3179
.L3178:
    movl $1, %eax
.L3179:
    cmpq $0, %rax
    je .L3175
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3180
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr483(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq expr_pointed(%rip), %rax
    movq %rax, -32(%rbp)
    movq current_elem_size(%rip), %rax
    movq %rax, -48(%rbp)
    movq current_elem_size2(%rip), %rax
    movq %rax, -64(%rbp)
    movq current_elem_unsigned(%rip), %rax
    movq %rax, -80(%rbp)
    movq assign_size(%rip), %rax
    movq %rax, -96(%rbp)
    movq no_postfix_deref(%rip), %rax
    movq %rax, -112(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq .Lstr484(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq current_elem_size(%rip), %rax
    movq %rax, -128(%rbp)
    movq current_elem_unsigned(%rip), %rax
    movq %rax, -144(%rbp)
    movq -128(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3182
    leaq -128(%rbp), %rax
    pushq %rax
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3184
    movq $1, %rax
    jmp .L3185
.L3184:
    movq $8, %rax
.L3185:
    popq %rcx
    movq %rax, (%rcx)
    leaq -144(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3182:
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3186
    leaq .Lstr485(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L3186:
    leaq .Lstr486(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq current_elem_size2(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3188
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq current_elem_size2(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq current_elem_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3189
.L3188:
    movq -16(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3190
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3190
    movl $1, %eax
    jmp .L3191
.L3190:
    xorl %eax, %eax
.L3191:
    testq %rax, %rax
    je .L3192
    movq -128(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3192
    movl $1, %eax
    jmp .L3193
.L3192:
    xorl %eax, %eax
.L3193:
    cmpq $0, %rax
    je .L3194
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3196
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L3198
    leaq .Lstr487(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3199
.L3198:
    leaq .Lstr488(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3199:
    jmp .L3197
.L3196:
    movq -128(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3200
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L3202
    leaq .Lstr489(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3203
.L3202:
    leaq .Lstr490(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3203:
    jmp .L3201
.L3200:
    movq -128(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3204
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L3206
    leaq .Lstr491(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3207
.L3206:
    leaq .Lstr492(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3207:
    jmp .L3205
.L3204:
    leaq .Lstr493(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3205:
.L3201:
.L3197:
    movq -128(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3208
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L3208
    movl $1, %eax
    jmp .L3209
.L3208:
    xorl %eax, %eax
.L3209:
    cmpq $0, %rax
    je .L3210
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3212
    movq $1, %rax
    jmp .L3213
.L3212:
    movq $8, %rax
.L3213:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3211
.L3210:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3211:
.L3194:
.L3189:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    jmp .L3181
.L3180:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3214
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $8, %rax
    movq %rax, -48(%rbp)
    movq $8, %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
    jmp .L3218
.L3216:
    leaq token(%rip), %rax
    pushq %rax
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3220
    leaq -32(%rbp), %rax
    pushq %rax
    leaq struct_member_offsets(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -48(%rbp), %rax
    pushq %rax
    leaq struct_member_sizes(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    leaq struct_member_elem_sizes(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -80(%rbp), %rax
    pushq %rax
    leaq struct_member_unsigned(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -96(%rbp), %rax
    pushq %rax
    leaq struct_member_is_float(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3219
.L3220:
.L3217:
    leaq -112(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3218
.L3218:
    movq -112(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L3216
.L3219:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3222
    leaq .Lstr494(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L3222:
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    testq %rax, %rax
    jne .L3224
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    jne .L3224
    xorl %eax, %eax
    jmp .L3225
.L3224:
    movl $1, %eax
.L3225:
    cmpq $0, %rax
    je .L3226
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3228
    movq -80(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3228
    movl $1, %eax
    jmp .L3229
.L3228:
    xorl %eax, %eax
.L3229:
    cmpq $0, %rax
    je .L3230
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3231
.L3230:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3232
    movq -96(%rbp), %rax
    testq %rax, %rax
    je .L3232
    movl $1, %eax
    jmp .L3233
.L3232:
    xorl %eax, %eax
.L3233:
    cmpq $0, %rax
    je .L3234
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3235
.L3234:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3236
    movq $262, %rax
    jmp .L3237
.L3236:
    movq $0, %rax
.L3237:
    popq %rcx
    movq %rax, (%rcx)
.L3235:
.L3231:
    jmp .L3227
.L3226:
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3238
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3240
    movq $262, %rax
    jmp .L3241
.L3240:
    movq $0, %rax
.L3241:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3239
.L3238:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3242
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3244
    leaq .Lstr495(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3245
.L3244:
    leaq .Lstr496(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3245:
    jmp .L3243
.L3242:
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3246
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3248
    leaq .Lstr497(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3249
.L3248:
    leaq .Lstr498(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3249:
    jmp .L3247
.L3246:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3250
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3252
    leaq .Lstr499(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3253
.L3252:
    leaq .Lstr500(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3253:
    jmp .L3251
.L3250:
    leaq .Lstr501(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3251:
.L3247:
.L3243:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3239:
.L3227:
    jmp .L3215
.L3214:
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3254
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $8, %rax
    movq %rax, -48(%rbp)
    movq $8, %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
    jmp .L3258
.L3256:
    leaq token(%rip), %rax
    pushq %rax
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3260
    leaq -32(%rbp), %rax
    pushq %rax
    leaq struct_member_offsets(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -48(%rbp), %rax
    pushq %rax
    leaq struct_member_sizes(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    leaq struct_member_elem_sizes(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -80(%rbp), %rax
    pushq %rax
    leaq struct_member_unsigned(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -96(%rbp), %rax
    pushq %rax
    leaq struct_member_is_float(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3259
.L3260:
.L3257:
    leaq -112(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3258
.L3258:
    movq -112(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L3256
.L3259:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3262
    leaq .Lstr502(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L3262:
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    testq %rax, %rax
    jne .L3264
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    jne .L3264
    xorl %eax, %eax
    jmp .L3265
.L3264:
    movl $1, %eax
.L3265:
    cmpq $0, %rax
    je .L3266
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3268
    movq -80(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3268
    movl $1, %eax
    jmp .L3269
.L3268:
    xorl %eax, %eax
.L3269:
    cmpq $0, %rax
    je .L3270
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3271
.L3270:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3272
    movq -96(%rbp), %rax
    testq %rax, %rax
    je .L3272
    movl $1, %eax
    jmp .L3273
.L3272:
    xorl %eax, %eax
.L3273:
    cmpq $0, %rax
    je .L3274
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3275
.L3274:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3276
    movq $262, %rax
    jmp .L3277
.L3276:
    movq $0, %rax
.L3277:
    popq %rcx
    movq %rax, (%rcx)
.L3275:
.L3271:
    jmp .L3267
.L3266:
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3278
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3280
    movq $262, %rax
    jmp .L3281
.L3280:
    movq $0, %rax
.L3281:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3279
.L3278:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3282
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3284
    leaq .Lstr503(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3285
.L3284:
    leaq .Lstr504(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3285:
    jmp .L3283
.L3282:
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3286
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3288
    leaq .Lstr505(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3289
.L3288:
    leaq .Lstr506(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3289:
    jmp .L3287
.L3286:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3290
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3292
    leaq .Lstr507(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3293
.L3292:
    leaq .Lstr508(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3293:
    jmp .L3291
.L3290:
    leaq .Lstr509(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3291:
.L3287:
.L3283:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3279:
.L3267:
.L3254:
.L3215:
.L3181:
    jmp .L3174
.L3175:
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
    .globl unary_expr
unary_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl multiplicative_expr
multiplicative_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary_expr
    movq %r12, %rsp
    popq %r12
.L3334:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3336
    movq tok(%rip), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3336
    xorl %eax, %eax
    jmp .L3337
.L3336:
    movl $1, %eax
.L3337:
    testq %rax, %rax
    jne .L3338
    movq tok(%rip), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3338
    xorl %eax, %eax
    jmp .L3339
.L3338:
    movl $1, %eax
.L3339:
    cmpq $0, %rax
    je .L3335
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr538(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    movq %rax, -32(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call unary_expr
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    movq %rax, -48(%rbp)
    leaq .Lstr539(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    movq %rax, -64(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3340
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3340
    xorl %eax, %eax
    jmp .L3341
.L3340:
    movl $1, %eax
.L3341:
    cmpq $0, %rax
    je .L3342
    leaq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3343
.L3342:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3344
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3344
    xorl %eax, %eax
    jmp .L3345
.L3344:
    movl $1, %eax
.L3345:
    cmpq $0, %rax
    je .L3346
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3346:
.L3343:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3348
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3348
    xorl %eax, %eax
    jmp .L3349
.L3348:
    movl $1, %eax
.L3349:
    cmpq $0, %rax
    je .L3350
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3352
    leaq .Lstr540(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3353
.L3352:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3354
    leaq .Lstr541(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3355
.L3354:
    leaq .Lstr542(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3356
    leaq .Lstr543(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3357
.L3356:
    leaq .Lstr544(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3357:
.L3355:
.L3353:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3358
    leaq .Lstr545(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3359
.L3358:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3360
    leaq .Lstr546(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3361
.L3360:
    leaq .Lstr547(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3362
    leaq .Lstr548(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3363
.L3362:
    leaq .Lstr549(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3363:
.L3361:
.L3359:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3364
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3366
    leaq .Lstr550(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3367
.L3366:
    leaq .Lstr551(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3367:
    leaq .Lstr552(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3365
.L3364:
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3368
    leaq .Lstr553(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3369
.L3368:
    leaq .Lstr554(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3369:
    leaq .Lstr555(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3365:
    jmp .L3351
.L3350:
    movq -16(%rbp), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3370
    leaq .Lstr556(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr557(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr558(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr559(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr560(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3371
.L3370:
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3372
    leaq .Lstr561(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3373
.L3372:
    leaq .Lstr562(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr563(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr564(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr565(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3373:
.L3371:
.L3351:
    leaq expr_type(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3334
.L3335:
    leave
    ret
    .globl additive_expr
additive_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call multiplicative_expr
    movq %r12, %rsp
    popq %r12
.L3412:
    movq tok(%rip), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3414
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3414
    xorl %eax, %eax
    jmp .L3415
.L3414:
    movl $1, %eax
.L3415:
    cmpq $0, %rax
    je .L3413
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr585(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    movq %rax, -32(%rbp)
    movq deref_w(%rip), %rax
    movq %rax, -48(%rbp)
    movq deref_u(%rip), %rax
    movq %rax, -64(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call multiplicative_expr
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L3416
    leaq deref_w(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L3416:
    movq expr_type(%rip), %rax
    movq %rax, -80(%rbp)
    leaq .Lstr586(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -80(%rbp), %rax
    movq %rax, -96(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3418
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3418
    xorl %eax, %eax
    jmp .L3419
.L3418:
    movl $1, %eax
.L3419:
    cmpq $0, %rax
    je .L3420
    leaq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3421
.L3420:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3422
    movq -96(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3422
    xorl %eax, %eax
    jmp .L3423
.L3422:
    movl $1, %eax
.L3423:
    cmpq $0, %rax
    je .L3424
    leaq -96(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3424:
.L3421:
    movq -96(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3426
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3426
    xorl %eax, %eax
    jmp .L3427
.L3426:
    movl $1, %eax
.L3427:
    cmpq $0, %rax
    je .L3428
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3430
    leaq .Lstr587(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3431
.L3430:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3432
    leaq .Lstr588(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3433
.L3432:
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3434
    leaq .Lstr589(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3435
.L3434:
    leaq .Lstr590(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3435:
.L3433:
.L3431:
    movq -80(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3436
    leaq .Lstr591(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3437
.L3436:
    movq -80(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3438
    leaq .Lstr592(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3439
.L3438:
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3440
    leaq .Lstr593(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3441
.L3440:
    leaq .Lstr594(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3441:
.L3439:
.L3437:
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3442
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3444
    leaq .Lstr595(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3445
.L3444:
    leaq .Lstr596(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3445:
    leaq .Lstr597(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3443
.L3442:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3446
    leaq .Lstr598(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3447
.L3446:
    leaq .Lstr599(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3447:
    leaq .Lstr600(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3443:
    jmp .L3429
.L3428:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3448
    leaq .Lstr601(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3449
.L3448:
    leaq .Lstr602(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr603(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3449:
.L3429:
    leaq expr_type(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3412
.L3413:
    leave
    ret
    .globl shift_expr
shift_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call additive_expr
    movq %r12, %rsp
    popq %r12
.L3456:
    movq tok(%rip), %rax
    pushq %rax
    movq $294, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3458
    movq tok(%rip), %rax
    pushq %rax
    movq $295, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3458
    xorl %eax, %eax
    jmp .L3459
.L3458:
    movl $1, %eax
.L3459:
    cmpq $0, %rax
    je .L3457
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr610(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call shift_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr611(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr612(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr613(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq $294, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3460
    leaq .Lstr614(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3461
.L3460:
    leaq .Lstr615(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3461:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_type(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3456
.L3457:
    leave
    ret
    .globl relational_expr
relational_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call shift_expr
    movq %r12, %rsp
    popq %r12
.L3508:
    movq tok(%rip), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3510
    movq tok(%rip), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3510
    xorl %eax, %eax
    jmp .L3511
.L3510:
    movl $1, %eax
.L3511:
    testq %rax, %rax
    jne .L3512
    movq tok(%rip), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3512
    xorl %eax, %eax
    jmp .L3513
.L3512:
    movl $1, %eax
.L3513:
    testq %rax, %rax
    jne .L3514
    movq tok(%rip), %rax
    pushq %rax
    movq $275, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3514
    xorl %eax, %eax
    jmp .L3515
.L3514:
    movl $1, %eax
.L3515:
    cmpq $0, %rax
    je .L3509
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr639(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    movq %rax, -32(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call additive_expr
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    movq %rax, -48(%rbp)
    leaq .Lstr640(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    movq %rax, -64(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3516
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3516
    xorl %eax, %eax
    jmp .L3517
.L3516:
    movl $1, %eax
.L3517:
    cmpq $0, %rax
    je .L3518
    leaq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3519
.L3518:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3520
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3520
    xorl %eax, %eax
    jmp .L3521
.L3520:
    movl $1, %eax
.L3521:
    cmpq $0, %rax
    je .L3522
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3522:
.L3519:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3524
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3524
    xorl %eax, %eax
    jmp .L3525
.L3524:
    movl $1, %eax
.L3525:
    cmpq $0, %rax
    je .L3526
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3528
    leaq .Lstr641(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3529
.L3528:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3530
    leaq .Lstr642(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3531
.L3530:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3532
    leaq .Lstr643(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3533
.L3532:
    leaq .Lstr644(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3533:
.L3531:
.L3529:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3534
    leaq .Lstr645(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3535
.L3534:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3536
    leaq .Lstr646(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3537
.L3536:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3538
    leaq .Lstr647(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3539
.L3538:
    leaq .Lstr648(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3539:
.L3537:
.L3535:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3540
    leaq .Lstr649(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3541
.L3540:
    leaq .Lstr650(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3541:
    movq -16(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3542
    leaq .Lstr651(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3543
.L3542:
    movq -16(%rbp), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3544
    leaq .Lstr652(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3545
.L3544:
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3546
    leaq .Lstr653(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3547
.L3546:
    leaq .Lstr654(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3547:
.L3545:
.L3543:
    leaq .Lstr655(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3527
.L3526:
    leaq .Lstr656(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3548
    leaq .Lstr657(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3549
.L3548:
    movq -16(%rbp), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3550
    leaq .Lstr658(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3551
.L3550:
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3552
    leaq .Lstr659(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3553
.L3552:
    leaq .Lstr660(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3553:
.L3551:
.L3549:
    leaq .Lstr661(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3527:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3508
.L3509:
    leave
    ret
    .globl equality_expr
equality_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call relational_expr
    movq %r12, %rsp
    popq %r12
.L3588:
    movq tok(%rip), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3590
    movq tok(%rip), %rax
    pushq %rax
    movq $277, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3590
    xorl %eax, %eax
    jmp .L3591
.L3590:
    movl $1, %eax
.L3591:
    cmpq $0, %rax
    je .L3589
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr681(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    movq %rax, -32(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call relational_expr
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    movq %rax, -48(%rbp)
    leaq .Lstr682(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    movq %rax, -64(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3592
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3592
    xorl %eax, %eax
    jmp .L3593
.L3592:
    movl $1, %eax
.L3593:
    cmpq $0, %rax
    je .L3594
    leaq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3595
.L3594:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3596
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3596
    xorl %eax, %eax
    jmp .L3597
.L3596:
    movl $1, %eax
.L3597:
    cmpq $0, %rax
    je .L3598
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3598:
.L3595:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3600
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3600
    xorl %eax, %eax
    jmp .L3601
.L3600:
    movl $1, %eax
.L3601:
    cmpq $0, %rax
    je .L3602
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3604
    leaq .Lstr683(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3605
.L3604:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3606
    leaq .Lstr684(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3607
.L3606:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3608
    leaq .Lstr685(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3609
.L3608:
    leaq .Lstr686(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3609:
.L3607:
.L3605:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3610
    leaq .Lstr687(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3611
.L3610:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3612
    leaq .Lstr688(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3613
.L3612:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3614
    leaq .Lstr689(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3615
.L3614:
    leaq .Lstr690(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3615:
.L3613:
.L3611:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3616
    leaq .Lstr691(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3617
.L3616:
    leaq .Lstr692(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3617:
    movq -16(%rbp), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3618
    leaq .Lstr693(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3619
.L3618:
    leaq .Lstr694(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3619:
    leaq .Lstr695(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3603
.L3602:
    leaq .Lstr696(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3620
    leaq .Lstr697(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3621
.L3620:
    leaq .Lstr698(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3621:
    leaq .Lstr699(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3603:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3588
.L3589:
    leave
    ret
    .globl bitwise_and_expr
bitwise_and_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call equality_expr
    movq %r12, %rsp
    popq %r12
.L3624:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3625
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr703(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call equality_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr704(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr705(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3624
.L3625:
    leave
    ret
    .globl bitwise_xor_expr
bitwise_xor_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call bitwise_and_expr
    movq %r12, %rsp
    popq %r12
.L3628:
    movq tok(%rip), %rax
    pushq %rax
    movq $94, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3629
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr709(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call bitwise_and_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr710(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr711(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3628
.L3629:
    leave
    ret
    .globl bitwise_or_expr
bitwise_or_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call bitwise_xor_expr
    movq %r12, %rsp
    popq %r12
.L3632:
    movq tok(%rip), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3633
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr715(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call bitwise_xor_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr716(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr717(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3632
.L3633:
    leave
    ret
    .globl logical_and_expr
logical_and_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call bitwise_or_expr
    movq %r12, %rsp
    popq %r12
.L3636:
    movq tok(%rip), %rax
    pushq %rax
    movq $278, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3637
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq .Lstr725(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr726(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call bitwise_or_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr727(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr728(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    leaq .Lstr729(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr730(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq .Lstr731(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3636
.L3637:
    leave
    ret
    .globl logical_or_expr
logical_or_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call logical_and_expr
    movq %r12, %rsp
    popq %r12
.L3640:
    movq tok(%rip), %rax
    pushq %rax
    movq $279, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3641
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq .Lstr739(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr740(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call logical_and_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr741(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr742(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    leaq .Lstr743(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr744(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq .Lstr745(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3640
.L3641:
    leave
    ret
    .globl conditional_expr
conditional_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call logical_or_expr
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $63, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3644
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr749(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr750(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr751(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3644:
    leave
    ret
    .globl emit_compound_op
emit_compound_op:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $296, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3682
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3684
    leaq .Lstr777(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3685
.L3684:
    leaq .Lstr778(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3685:
    jmp .L3683
.L3682:
    movq -16(%rbp), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3686
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3686
    xorl %eax, %eax
    jmp .L3687
.L3686:
    movl $1, %eax
.L3687:
    cmpq $0, %rax
    je .L3688
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3690
    leaq .Lstr779(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr780(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr781(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr782(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3692
    leaq .Lstr783(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3692:
    jmp .L3691
.L3690:
    leaq .Lstr784(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr785(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr786(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr787(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3694
    leaq .Lstr788(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3694:
.L3691:
    jmp .L3689
.L3688:
    movq -16(%rbp), %rax
    pushq %rax
    movq $299, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3696
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3698
    leaq .Lstr789(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3699
.L3698:
    leaq .Lstr790(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3699:
    jmp .L3697
.L3696:
    movq -16(%rbp), %rax
    pushq %rax
    movq $300, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3700
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3702
    leaq .Lstr791(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3703
.L3702:
    leaq .Lstr792(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3703:
    jmp .L3701
.L3700:
    movq -16(%rbp), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3704
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3706
    leaq .Lstr793(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3707
.L3706:
    leaq .Lstr794(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3707:
    jmp .L3705
.L3704:
    movq -16(%rbp), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3708
    movq -16(%rbp), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3708
    xorl %eax, %eax
    jmp .L3709
.L3708:
    movl $1, %eax
.L3709:
    cmpq $0, %rax
    je .L3710
    leaq .Lstr795(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr796(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr797(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3712
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3714
    leaq .Lstr798(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3715
.L3714:
    leaq .Lstr799(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3715:
    jmp .L3713
.L3712:
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3716
    leaq .Lstr800(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3717
.L3716:
    leaq .Lstr801(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3717:
.L3713:
.L3710:
.L3705:
.L3701:
.L3697:
.L3689:
.L3683:
    leave
    ret
    .globl assignment_expr
assignment_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $800, %rsp
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    leaq -272(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq input_ptr(%rip), %rax
    movq %rax, -288(%rbp)
    movq line(%rip), %rax
    movq %rax, -304(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3926
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3926
    movl $1, %eax
    jmp .L3927
.L3926:
    xorl %eax, %eax
.L3927:
    cmpq $0, %rax
    je .L3928
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L3928:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3930
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq input_ptr(%rip), %rax
    movq %rax, -320(%rbp)
    movq line(%rip), %rax
    movq %rax, -336(%rbp)
    movq tok(%rip), %rax
    movq %rax, -352(%rbp)
    leaq -608(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -624(%rbp)
.L3932:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3934
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3934
    xorl %eax, %eax
    jmp .L3935
.L3934:
    movl $1, %eax
.L3935:
    testq %rax, %rax
    jne .L3936
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3936
    xorl %eax, %eax
    jmp .L3937
.L3936:
    movl $1, %eax
.L3937:
    testq %rax, %rax
    jne .L3938
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3938
    xorl %eax, %eax
    jmp .L3939
.L3938:
    movl $1, %eax
.L3939:
    cmpq $0, %rax
    je .L3933
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3940
    movq $1, %rax
    movq %rax, -640(%rbp)
.L3942:
    movq -640(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3944
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3944
    movl $1, %eax
    jmp .L3945
.L3944:
    xorl %eax, %eax
.L3945:
    cmpq $0, %rax
    je .L3943
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3946
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3947
.L3946:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3948
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L3948:
.L3947:
    jmp .L3942
.L3943:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L3941
.L3940:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3950
    movq $1, %rax
    movq %rax, -640(%rbp)
.L3952:
    movq -640(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3954
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3954
    movl $1, %eax
    jmp .L3955
.L3954:
    xorl %eax, %eax
.L3955:
    cmpq $0, %rax
    je .L3953
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3956
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3957
.L3956:
    movq tok(%rip), %rax
    pushq %rax
    movq $93, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3958
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L3958:
.L3957:
    jmp .L3952
.L3953:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L3951
.L3950:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L3951:
.L3941:
    jmp .L3932
.L3933:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3960
    leaq -624(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3961
.L3960:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3962
    leaq -624(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3963
.L3962:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3964
    leaq -624(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3965
.L3964:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3966
    leaq -624(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3967
.L3966:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3968
    leaq -624(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3969
.L3968:
    movq tok(%rip), %rax
    pushq %rax
    movq $296, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3970
    leaq -624(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3971
.L3970:
    movq tok(%rip), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3972
    leaq -624(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3973
.L3972:
    movq tok(%rip), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3974
    leaq -624(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3975
.L3974:
    movq tok(%rip), %rax
    pushq %rax
    movq $299, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3976
    leaq -624(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3977
.L3976:
    movq tok(%rip), %rax
    pushq %rax
    movq $300, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3978
    leaq -624(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3979
.L3978:
    movq tok(%rip), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3980
    leaq -624(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3981
.L3980:
    movq tok(%rip), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3982
    leaq -624(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3983
.L3982:
    movq tok(%rip), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3984
    leaq -624(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3985
.L3984:
    leaq -624(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3985:
.L3983:
.L3981:
.L3979:
.L3977:
.L3975:
.L3973:
.L3971:
.L3969:
.L3967:
.L3965:
.L3963:
.L3961:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -320(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -336(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -352(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -608(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq -624(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3986
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -272(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -288(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -304(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    movq $61, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq .Lstr936(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    movq %rax, -640(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr937(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -640(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3988
    leaq .Lstr938(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3989
.L3988:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3990
    leaq .Lstr939(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3991
.L3990:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3992
    leaq .Lstr940(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3993
.L3992:
    leaq .Lstr941(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3993:
.L3991:
.L3989:
    leave
    ret
    jmp .L3987
.L3986:
    movq -624(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3994
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -272(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -288(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -304(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr942(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3996
    leaq .Lstr943(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3997
.L3996:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3998
    leaq .Lstr944(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3999
.L3998:
    leaq .Lstr945(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3999:
.L3997:
    leaq .Lstr946(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr947(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4000
    leaq .Lstr948(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr949(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr950(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4001
.L4000:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4002
    leaq .Lstr951(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr952(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr953(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4003
.L4002:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4004
    leaq .Lstr954(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr955(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr956(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4005
.L4004:
    leaq .Lstr957(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr958(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr959(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4005:
.L4003:
.L4001:
    leave
    ret
    jmp .L3995
.L3994:
    movq -624(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4006
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -272(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -288(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -304(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr960(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4008
    leaq .Lstr961(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4009
.L4008:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4010
    leaq .Lstr962(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4011
.L4010:
    leaq .Lstr963(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4011:
.L4009:
    leaq .Lstr964(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr965(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4012
    leaq .Lstr966(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr967(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr968(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr969(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4013
.L4012:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4014
    leaq .Lstr970(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr971(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr972(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr973(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4015
.L4014:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4016
    leaq .Lstr974(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr975(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr976(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr977(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4017
.L4016:
    leaq .Lstr978(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr979(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr980(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr981(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4017:
.L4015:
.L4013:
    leave
    ret
    jmp .L4007
.L4006:
    movq -624(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4018
    movq $0, %rax
    movq %rax, -640(%rbp)
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -272(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -288(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -304(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr982(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4020
    leaq .Lstr983(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4021
.L4020:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4022
    leaq .Lstr984(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4023
.L4022:
    leaq .Lstr985(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4023:
.L4021:
    leaq .Lstr986(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq -640(%rbp), %rax
    pushq %rax
    movq tok(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr987(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -640(%rbp), %rax
    pushq %rax
    movq assign_size(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_compound_op
    movq %r12, %rsp
    popq %r12
    leaq .Lstr988(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4024
    leaq .Lstr989(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4025
.L4024:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4026
    leaq .Lstr990(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4027
.L4026:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4028
    leaq .Lstr991(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4029
.L4028:
    leaq .Lstr992(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4029:
.L4027:
.L4025:
    leave
    ret
    jmp .L4019
.L4018:
    movq -624(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4030
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4032
    movq $271, %rax
    jmp .L4033
.L4032:
    movq $272, %rax
.L4033:
    movq %rax, -640(%rbp)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -288(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -304(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -272(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4034
    leaq .Lstr993(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4035
.L4034:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4036
    leaq .Lstr994(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4037
.L4036:
    leaq .Lstr995(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4037:
.L4035:
    movq -640(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4038
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4040
    leaq .Lstr996(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4041
.L4040:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4042
    leaq .Lstr997(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4043
.L4042:
    leaq .Lstr998(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4043:
.L4041:
    jmp .L4039
.L4038:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4044
    leaq .Lstr999(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4045
.L4044:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4046
    leaq .Lstr1000(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4047
.L4046:
    leaq .Lstr1001(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4047:
.L4045:
.L4039:
    leaq .Lstr1002(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leave
    ret
    jmp .L4031
.L4030:
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -272(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -288(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -304(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L4031:
.L4019:
.L4007:
.L3995:
.L3987:
    jmp .L3931
.L3930:
    movq input_ptr(%rip), %rax
    movq %rax, -320(%rbp)
    movq line(%rip), %rax
    movq %rax, -336(%rbp)
    movq tok(%rip), %rax
    movq %rax, -352(%rbp)
    leaq -608(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    movq %rax, -624(%rbp)
    movq expr_pointed(%rip), %rax
    movq %rax, -640(%rbp)
    movq current_elem_size(%rip), %rax
    movq %rax, -656(%rbp)
    movq current_elem_size2(%rip), %rax
    movq %rax, -672(%rbp)
    movq current_elem_unsigned(%rip), %rax
    movq %rax, -688(%rbp)
    movq deref_w(%rip), %rax
    movq %rax, -704(%rbp)
    movq deref_u(%rip), %rax
    movq %rax, -720(%rbp)
    movq no_postfix_deref(%rip), %rax
    movq %rax, -736(%rbp)
    movq emit_enabled(%rip), %rax
    movq %rax, -752(%rbp)
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq -752(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -624(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -640(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -656(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -672(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -688(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_w(%rip), %rax
    pushq %rax
    movq -704(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq deref_u(%rip), %rax
    pushq %rax
    movq -720(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq -736(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    movq %rax, -768(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4048
    leaq -768(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4049
.L4048:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4050
    leaq -768(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4051
.L4050:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4052
    leaq -768(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4053
.L4052:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4054
    leaq -768(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4055
.L4054:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4056
    leaq -768(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4057
.L4056:
    movq tok(%rip), %rax
    pushq %rax
    movq $296, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4058
    leaq -768(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4059
.L4058:
    movq tok(%rip), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4060
    leaq -768(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4061
.L4060:
    movq tok(%rip), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4062
    leaq -768(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4063
.L4062:
    movq tok(%rip), %rax
    pushq %rax
    movq $299, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4064
    leaq -768(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4065
.L4064:
    movq tok(%rip), %rax
    pushq %rax
    movq $300, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4066
    leaq -768(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4067
.L4066:
    movq tok(%rip), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4068
    leaq -768(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4069
.L4068:
    movq tok(%rip), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4070
    leaq -768(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4071
.L4070:
    movq tok(%rip), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4072
    leaq -768(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4072:
.L4071:
.L4069:
.L4067:
.L4065:
.L4063:
.L4061:
.L4059:
.L4057:
.L4055:
.L4053:
.L4051:
.L4049:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -320(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -336(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -352(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -608(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq -768(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4074
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    movq $61, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1003(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    movq %rax, -784(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1004(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -784(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4076
    leaq .Lstr1005(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4077
.L4076:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4078
    leaq .Lstr1006(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4079
.L4078:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4080
    leaq .Lstr1007(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4081
.L4080:
    leaq .Lstr1008(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4081:
.L4079:
.L4077:
    leave
    ret
    jmp .L4075
.L4074:
    movq -768(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4082
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1009(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4084
    leaq .Lstr1010(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4085
.L4084:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4086
    leaq .Lstr1011(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4087
.L4086:
    leaq .Lstr1012(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4087:
.L4085:
    leaq .Lstr1013(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1014(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4088
    leaq .Lstr1015(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1016(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1017(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4089
.L4088:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4090
    leaq .Lstr1018(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1019(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1020(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4091
.L4090:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4092
    leaq .Lstr1021(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1022(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1023(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4093
.L4092:
    leaq .Lstr1024(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1025(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1026(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4093:
.L4091:
.L4089:
    leave
    ret
    jmp .L4083
.L4082:
    movq -768(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4094
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1027(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4096
    leaq .Lstr1028(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4097
.L4096:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4098
    leaq .Lstr1029(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4099
.L4098:
    leaq .Lstr1030(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4099:
.L4097:
    leaq .Lstr1031(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1032(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4100
    leaq .Lstr1033(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1034(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1035(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1036(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4101
.L4100:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4102
    leaq .Lstr1037(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1038(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1039(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1040(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4103
.L4102:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4104
    leaq .Lstr1041(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1042(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1043(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1044(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4105
.L4104:
    leaq .Lstr1045(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1046(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1047(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1048(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4105:
.L4103:
.L4101:
    leave
    ret
    jmp .L4095
.L4094:
    movq -768(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4106
    movq $0, %rax
    movq %rax, -784(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1049(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4108
    leaq .Lstr1050(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4109
.L4108:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4110
    leaq .Lstr1051(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4111
.L4110:
    leaq .Lstr1052(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4111:
.L4109:
    leaq .Lstr1053(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq -784(%rbp), %rax
    pushq %rax
    movq tok(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1054(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -784(%rbp), %rax
    pushq %rax
    movq assign_size(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_compound_op
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1055(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4112
    leaq .Lstr1056(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4113
.L4112:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4114
    leaq .Lstr1057(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4115
.L4114:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4116
    leaq .Lstr1058(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4117
.L4116:
    leaq .Lstr1059(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4117:
.L4115:
.L4113:
    leave
    ret
    jmp .L4107
.L4106:
    movq -768(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4118
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4120
    leaq .Lstr1060(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4121
.L4120:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4122
    leaq .Lstr1061(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4123
.L4122:
    leaq .Lstr1062(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4123:
.L4121:
    movq -768(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4124
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4126
    leaq .Lstr1063(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4127
.L4126:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4128
    leaq .Lstr1064(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4129
.L4128:
    leaq .Lstr1065(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4129:
.L4127:
    jmp .L4125
.L4124:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4130
    leaq .Lstr1066(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4131
.L4130:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4132
    leaq .Lstr1067(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4133
.L4132:
    leaq .Lstr1068(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4133:
.L4131:
.L4125:
    leaq .Lstr1069(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leave
    ret
    jmp .L4119
.L4118:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L4119:
.L4107:
.L4095:
.L4083:
.L4075:
.L3931:
    leave
    ret
    .bss
asm_tmpl:
    .space 1024
    .text
    .bss
asm_text:
    .space 512
    .text
    .bss
asm_mem:
    .space 512
    .text
    .bss
asm_is_out:
    .space 64
    .text
    .bss
asm_home:
    .space 64
    .text
    .bss
asm_slot:
    .space 64
    .text
    .bss
asm_size:
    .space 64
    .text
    .bss
asm_nops:
    .space 8
    .text
    .bss
asm_nslots:
    .space 8
    .text
    .data
asm_unique:
    .quad 0
    .text
    .globl asm_scratch
asm_scratch:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4144
    leaq .Lstr1076(%rip), %rax
    leave
    ret
.L4144:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4146
    leaq .Lstr1077(%rip), %rax
    leave
    ret
.L4146:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4148
    leaq .Lstr1078(%rip), %rax
    leave
    ret
.L4148:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4150
    leaq .Lstr1079(%rip), %rax
    leave
    ret
.L4150:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4152
    leaq .Lstr1080(%rip), %rax
    leave
    ret
.L4152:
    leaq .Lstr1081(%rip), %rax
    leave
    ret
    leave
    ret
    .globl asm_home_text
asm_home_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4162
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr1086(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4163
.L4162:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4164
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr1087(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4165
.L4164:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4166
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr1088(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4167
.L4166:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4168
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr1089(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4169
.L4168:
    movq -32(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_scratch
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
.L4169:
.L4167:
.L4165:
.L4163:
    leave
    ret
    .globl asm_reg_sized
asm_reg_sized:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4224
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4226
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1117(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4227
.L4226:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4228
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1118(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4229
.L4228:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4230
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1119(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4231
.L4230:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4232
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1120(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4233
.L4232:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4234
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1121(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4235
.L4234:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4236
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1122(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4237
.L4236:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4238
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1123(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4239
.L4238:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4240
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1124(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4241
.L4240:
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1125(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
.L4241:
.L4239:
.L4237:
.L4235:
.L4233:
.L4231:
.L4229:
.L4227:
    jmp .L4225
.L4224:
    movq -32(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4242
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4244
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1126(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4245
.L4244:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4246
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1127(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4247
.L4246:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4248
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1128(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4249
.L4248:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4250
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1129(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4251
.L4250:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4252
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1130(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4253
.L4252:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4254
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1131(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4255
.L4254:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4256
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1132(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4257
.L4256:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4258
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1133(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4259
.L4258:
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1134(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
.L4259:
.L4257:
.L4255:
.L4253:
.L4251:
.L4249:
.L4247:
.L4245:
    jmp .L4243
.L4242:
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4260
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4262
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1135(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4263
.L4262:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4264
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1136(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4265
.L4264:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4266
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1137(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4267
.L4266:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4268
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1138(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4269
.L4268:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4270
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1139(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4271
.L4270:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4272
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1140(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4273
.L4272:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4274
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1141(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4275
.L4274:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4276
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1142(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    jmp .L4277
.L4276:
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1143(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
.L4277:
.L4275:
.L4273:
.L4271:
.L4269:
.L4267:
.L4265:
.L4263:
    jmp .L4261
.L4260:
    movq -16(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_home_text
    movq %r12, %rsp
    popq %r12
.L4261:
.L4243:
.L4225:
    leave
    ret
    .globl asm_fixed_home
asm_fixed_home:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4286
    movq $0, %rax
    leave
    ret
.L4286:
    movq -16(%rbp), %rax
    pushq %rax
    movq $98, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4288
    movq $1, %rax
    leave
    ret
.L4288:
    movq -16(%rbp), %rax
    pushq %rax
    movq $99, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4290
    movq $2, %rax
    leave
    ret
.L4290:
    movq -16(%rbp), %rax
    pushq %rax
    movq $100, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4292
    movq $3, %rax
    leave
    ret
.L4292:
    movq $1, %rax
    negq %rax
    leave
    ret
    leave
    ret
    .globl asm_emit_template
asm_emit_template:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    leaq asm_tmpl(%rip), %rax
    movq %rax, -16(%rbp)
.L4312:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L4313
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4314
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4316
    movq $37, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4317
.L4316:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4318
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1147(%rip), %rax
    pushq %rax
    movq asm_unique(%rip), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4319
.L4318:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4322
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4322
    movl $1, %eax
    jmp .L4323
.L4322:
    xorl %eax, %eax
.L4323:
    cmpq $0, %rax
    je .L4324
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4326
    movq -32(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4326
    xorl %eax, %eax
    jmp .L4327
.L4326:
    movl $1, %eax
.L4327:
    cmpq $0, %rax
    je .L4328
    leaq .Lstr1148(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4328:
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputs
    movq %r12, %rsp
    popq %r12
    jmp .L4325
.L4324:
    leaq .Lstr1149(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4325:
.L4319:
.L4317:
    jmp .L4315
.L4314:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L4315:
    jmp .L4312
.L4313:
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl asm_parse_mem
asm_parse_mem:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4360
    movq input_ptr(%rip), %rax
    movq %rax, -80(%rbp)
    movq line(%rip), %rax
    movq %rax, -96(%rbp)
    movq tok(%rip), %rax
    movq %rax, -112(%rbp)
    leaq -368(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq -384(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4362:
    movq -384(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4364
    leaq token(%rip), %rax
    pushq %rax
    movq -384(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L4364
    movl $1, %eax
    jmp .L4365
.L4364:
    xorl %eax, %eax
.L4365:
    cmpq $0, %rax
    je .L4363
    leaq -64(%rbp), %rax
    pushq %rax
    movq -384(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -384(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -384(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4362
.L4363:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -384(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4366
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4366
    xorl %eax, %eax
    jmp .L4367
.L4366:
    movl $1, %eax
.L4367:
    testq %rax, %rax
    jne .L4368
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4368
    xorl %eax, %eax
    jmp .L4369
.L4368:
    movl $1, %eax
.L4369:
    cmpq $0, %rax
    je .L4370
    leaq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4372
    leaq .Lstr1157(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4372:
    leaq -416(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $44, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -416(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4374
    leaq -416(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4374:
    leaq asm_slot(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -416(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $4, %rax
    negq %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4376
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L4378
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1158(%rip), %rax
    pushq %rax
    leaq -64(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
    jmp .L4379
.L4378:
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1159(%rip), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
.L4379:
    jmp .L4377
.L4376:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L4380
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1160(%rip), %rax
    pushq %rax
    leaq -64(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
    jmp .L4381
.L4380:
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1161(%rip), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
.L4381:
.L4377:
    leave
    ret
.L4370:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -368(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
.L4360:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L4382
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $4, %rax
    negq %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4382
    movl $1, %eax
    jmp .L4383
.L4382:
    xorl %eax, %eax
.L4383:
    cmpq $0, %rax
    je .L4384
    leaq .Lstr1162(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4384:
    leaq .Lstr1163(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq asm_slot(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq asm_nslots(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_nslots(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq assign_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4386
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4386:
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4388
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $2, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
.L4388:
    leave
    ret
    .globl asm_emit_ss
asm_emit_ss:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4392
    leave
    ret
.L4392:
    movq output(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl asm_parse_one
asm_parse_one:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4458
    leaq .Lstr1175(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4458:
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4460:
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L4462
    movq -64(%rbp), %rax
    pushq %rax
    movq $15, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4462
    movl $1, %eax
    jmp .L4463
.L4462:
    xorl %eax, %eax
.L4463:
    cmpq $0, %rax
    je .L4461
    leaq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4460
.L4461:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq asm_nops(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4464
    leaq .Lstr1176(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4464:
    leaq asm_is_out(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_slot(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L4466
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4468
    leaq -96(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4468:
    movq -96(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4470
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4470
    xorl %eax, %eax
    jmp .L4471
.L4470:
    movl $1, %eax
.L4471:
    testq %rax, %rax
    jne .L4472
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4472
    xorl %eax, %eax
    jmp .L4473
.L4472:
    movl $1, %eax
.L4473:
    cmpq $0, %rax
    je .L4474
    leaq .Lstr1177(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4474:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $114, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4476
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4476
    xorl %eax, %eax
    jmp .L4477
.L4476:
    movl $1, %eax
.L4477:
    testq %rax, %rax
    jne .L4478
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $98, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4478
    xorl %eax, %eax
    jmp .L4479
.L4478:
    movl $1, %eax
.L4479:
    testq %rax, %rax
    jne .L4480
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $99, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4480
    xorl %eax, %eax
    jmp .L4481
.L4480:
    movl $1, %eax
.L4481:
    testq %rax, %rax
    jne .L4482
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $100, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4482
    xorl %eax, %eax
    jmp .L4483
.L4482:
    movl $1, %eax
.L4483:
    cmpq $0, %rax
    je .L4484
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $3, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    jmp .L4485
.L4484:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $109, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4486
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $4, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4487
.L4486:
    leaq .Lstr1178(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4487:
.L4485:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4488
    leaq .Lstr1179(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4488:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_parse_mem
    movq %r12, %rsp
    popq %r12
    jmp .L4467
.L4466:
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4490
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4490
    xorl %eax, %eax
    jmp .L4491
.L4490:
    movl $1, %eax
.L4491:
    cmpq $0, %rax
    je .L4492
    leaq .Lstr1180(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4492:
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $114, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4494
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4494
    xorl %eax, %eax
    jmp .L4495
.L4494:
    movl $1, %eax
.L4495:
    testq %rax, %rax
    jne .L4496
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $98, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4496
    xorl %eax, %eax
    jmp .L4497
.L4496:
    movl $1, %eax
.L4497:
    testq %rax, %rax
    jne .L4498
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $99, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4498
    xorl %eax, %eax
    jmp .L4499
.L4498:
    movl $1, %eax
.L4499:
    testq %rax, %rax
    jne .L4500
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $100, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4500
    xorl %eax, %eax
    jmp .L4501
.L4500:
    movl $1, %eax
.L4501:
    testq %rax, %rax
    je .L4502
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4502
    movl $1, %eax
    jmp .L4503
.L4502:
    xorl %eax, %eax
.L4503:
    cmpq $0, %rax
    je .L4504
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $3, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1181(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq asm_slot(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq asm_nslots(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_nslots(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4505
.L4504:
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $109, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4506
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4506
    movl $1, %eax
    jmp .L4507
.L4506:
    xorl %eax, %eax
.L4507:
    cmpq $0, %rax
    je .L4508
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $4, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_parse_mem
    movq %r12, %rsp
    popq %r12
    jmp .L4509
.L4508:
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $78, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4510
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $100, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4510
    movl $1, %eax
    jmp .L4511
.L4510:
    xorl %eax, %eax
.L4511:
    testq %rax, %rax
    je .L4512
    leaq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4512
    movl $1, %eax
    jmp .L4513
.L4512:
    xorl %eax, %eax
.L4513:
    cmpq $0, %rax
    je .L4514
    leaq -80(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_const_int
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4516
    leaq .Lstr1182(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4516:
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4518
    movq -80(%rbp), %rax
    pushq %rax
    movq $255, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4518
    xorl %eax, %eax
    jmp .L4519
.L4518:
    movl $1, %eax
.L4519:
    cmpq $0, %rax
    je .L4520
    leaq .Lstr1183(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4520:
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1184(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
    jmp .L4515
.L4514:
    leaq .Lstr1185(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4515:
.L4509:
.L4505:
.L4467:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl asm_assign_homes
asm_assign_homes:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4542:
    movq -96(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4543
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $3, %rax
    negq %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4544
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_fixed_home
    movq %r12, %rsp
    popq %r12
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4546
    movq -80(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4548
    leaq .Lstr1191(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4548:
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4547
.L4546:
    leaq asm_is_out(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4550
    leaq -32(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4552
    leaq .Lstr1192(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4552:
    leaq -32(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4551
.L4550:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4554
    leaq .Lstr1193(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4554:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4551:
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L4547:
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_home_text
    movq %r12, %rsp
    popq %r12
    jmp .L4545
.L4544:
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $4, %rax
    negq %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4556
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4557
.L4556:
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    negq %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4558
    movq -80(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4560
    leaq .Lstr1194(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4560:
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1195(%rip), %rax
    pushq %rax
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_scratch
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq %r12, %rsp
    popq %r12
.L4558:
.L4557:
.L4545:
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4542
.L4543:
    leave
    ret
    .globl asm_emit_all
asm_emit_all:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    leaq .Lstr1210(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4592:
    movq -16(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4593
    leaq asm_is_out(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4594
    leaq asm_slot(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4594
    movl $1, %eax
    jmp .L4595
.L4594:
    xorl %eax, %eax
.L4595:
    testq %rax, %rax
    je .L4596
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4596
    movl $1, %eax
    jmp .L4597
.L4596:
    xorl %eax, %eax
.L4597:
    cmpq $0, %rax
    je .L4598
    movq asm_nslots(%rip), %rax
    pushq %rax
    leaq asm_slot(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    imulq %rcx, %rax
    movq %rax, -96(%rbp)
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_home_text
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1211(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_is
    movq %r12, %rsp
    popq %r12
.L4598:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4592
.L4593:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_emit_template
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4600:
    movq -16(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4601
    leaq asm_is_out(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    testq %rax, %rax
    je .L4602
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4602
    movl $1, %eax
    jmp .L4603
.L4602:
    xorl %eax, %eax
.L4603:
    cmpq $0, %rax
    je .L4604
    leaq asm_home(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_reg_sized
    movq %r12, %rsp
    popq %r12
    leaq asm_slot(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4606
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4608
    leaq .Lstr1212(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_emit_ss
    movq %r12, %rsp
    popq %r12
    jmp .L4609
.L4608:
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4610
    leaq .Lstr1213(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_emit_ss
    movq %r12, %rsp
    popq %r12
    jmp .L4611
.L4610:
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4612
    leaq .Lstr1214(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_emit_ss
    movq %r12, %rsp
    popq %r12
    jmp .L4613
.L4612:
    leaq .Lstr1215(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_emit_ss
    movq %r12, %rsp
    popq %r12
.L4613:
.L4611:
.L4609:
    jmp .L4607
.L4606:
    movq asm_nslots(%rip), %rax
    pushq %rax
    leaq asm_slot(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    imulq %rcx, %rax
    movq %rax, -96(%rbp)
    leaq .Lstr1216(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    leaq .Lstr1217(%rip), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_is
    movq %r12, %rsp
    popq %r12
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4614
    leaq .Lstr1218(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L4615
.L4614:
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4616
    leaq .Lstr1219(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L4617
.L4616:
    leaq asm_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4618
    leaq .Lstr1220(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L4619
.L4618:
    leaq .Lstr1221(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L4619:
.L4617:
.L4615:
.L4607:
.L4604:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4600
.L4601:
    movq asm_nslots(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4620
    leaq .Lstr1222(%rip), %rax
    pushq %rax
    movq asm_nslots(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L4620:
    leaq .Lstr1223(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl parse_asm_block
parse_asm_block:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4672:
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4673
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4672
.L4673:
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4674
    leaq .Lstr1229(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4674:
    leaq -16(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1024, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4676
    leaq .Lstr1230(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4676:
    leaq asm_tmpl(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq $1024, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4678
    movq emit_enabled(%rip), %rax
    cmpq $0, %rax
    je .L4680
    leaq asm_tmpl(%rip), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputs
    movq %r12, %rsp
    popq %r12
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq %r12, %rsp
    popq %r12
.L4680:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L4678:
    leaq asm_nops(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_nslots(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq asm_unique(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4682
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4682
    movl $1, %eax
    jmp .L4683
.L4682:
    xorl %eax, %eax
.L4683:
    cmpq $0, %rax
    je .L4684
    jmp .L4687
.L4686:
    movq asm_nops(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_parse_one
    movq %r12, %rsp
    popq %r12
    leaq asm_nops(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4689
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4687
.L4689:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4691
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4691
    xorl %eax, %eax
    jmp .L4692
.L4691:
    movl $1, %eax
.L4692:
    cmpq $0, %rax
    je .L4693
    jmp .L4688
.L4693:
    leaq .Lstr1231(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4687:
    jmp .L4686
.L4688:
.L4684:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4695
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4697
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4697
    movl $1, %eax
    jmp .L4698
.L4697:
    xorl %eax, %eax
.L4698:
    cmpq $0, %rax
    je .L4699
    jmp .L4702
.L4701:
    movq asm_nops(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_parse_one
    movq %r12, %rsp
    popq %r12
    leaq asm_nops(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4704
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4702
.L4704:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4706
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4706
    xorl %eax, %eax
    jmp .L4707
.L4706:
    movl $1, %eax
.L4707:
    cmpq $0, %rax
    je .L4708
    jmp .L4703
.L4708:
    leaq .Lstr1232(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4702:
    jmp .L4701
.L4703:
.L4699:
.L4695:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4710
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4712:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4714
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4714
    movl $1, %eax
    jmp .L4715
.L4714:
    xorl %eax, %eax
.L4715:
    cmpq $0, %rax
    je .L4713
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4716
    leaq .Lstr1233(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L4716:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4718
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4718:
    jmp .L4712
.L4713:
.L4710:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_assign_homes
    movq %r12, %rsp
    popq %r12
    movq emit_enabled(%rip), %rax
    cmpq $0, %rax
    je .L4720
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_emit_all
    movq %r12, %rsp
    popq %r12
.L4720:
    leave
    ret
    .globl statement
statement:
    pushq %rbp
    movq %rsp, %rbp
    subq $1184, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $304, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5118
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_asm_block
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5118:
    movq tok(%rip), %rax
    pushq %rax
    movq $258, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5120
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq .Lstr1303(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1304(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $259, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5122
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1305(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    jmp .L5123
.L5122:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
.L5123:
    leave
    ret
.L5120:
    movq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5124
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call push_scope
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5126
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5126
    xorl %eax, %eax
    jmp .L5127
.L5126:
    movl $1, %eax
.L5127:
    cmpq $0, %rax
    je .L5128
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5128:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5130
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1306(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5132
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1307(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5132
    xorl %eax, %eax
    jmp .L5133
.L5132:
    movl $1, %eax
.L5133:
    testq %rax, %rax
    je .L5130
    movl $1, %eax
    jmp .L5131
.L5130:
    xorl %eax, %eax
.L5131:
    cmpq $0, %rax
    je .L5134
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1308(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5136:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5138
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1309(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5140
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1310(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5140
    xorl %eax, %eax
    jmp .L5141
.L5140:
    movl $1, %eax
.L5141:
    testq %rax, %rax
    je .L5138
    movl $1, %eax
    jmp .L5139
.L5138:
    xorl %eax, %eax
.L5139:
    cmpq $0, %rax
    je .L5137
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5136
.L5137:
.L5134:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5142
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5142
    xorl %eax, %eax
    jmp .L5143
.L5142:
    movl $1, %eax
.L5143:
    testq %rax, %rax
    jne .L5144
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5144
    xorl %eax, %eax
    jmp .L5145
.L5144:
    movl $1, %eax
.L5145:
    testq %rax, %rax
    jne .L5146
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5146
    xorl %eax, %eax
    jmp .L5147
.L5146:
    movl $1, %eax
.L5147:
    cmpq $0, %rax
    je .L5148
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5150:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5152
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1311(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5154
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1312(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5154
    xorl %eax, %eax
    jmp .L5155
.L5154:
    movl $1, %eax
.L5155:
    testq %rax, %rax
    je .L5152
    movl $1, %eax
    jmp .L5153
.L5152:
    xorl %eax, %eax
.L5153:
    cmpq $0, %rax
    je .L5151
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5150
.L5151:
.L5156:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5158
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5158
    movl $1, %eax
    jmp .L5159
.L5158:
    xorl %eax, %eax
.L5159:
    cmpq $0, %rax
    je .L5157
    movq $0, %rax
    movq %rax, -32(%rbp)
.L5160:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5161
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5160
.L5161:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    movq %rax, -48(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5162
    leaq .Lstr1313(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5162:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5164
    leaq -96(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5164:
    leaq -80(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    leaq -80(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L5166
    movq $8, %rax
    jmp .L5167
.L5166:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5168
    movq $1, %rax
    jmp .L5169
.L5168:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5170
    movq $4, %rax
    jmp .L5171
.L5170:
    movq $8, %rax
.L5171:
.L5169:
.L5167:
    movq %rax, -112(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5172
    movq $0, %rax
    jmp .L5173
.L5172:
    movq -16(%rbp), %rax
.L5173:
    movq %rax, -128(%rbp)
    leaq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L5174
    movq -16(%rbp), %rax
    jmp .L5175
.L5174:
    movq $0, %rax
.L5175:
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L5176
    movq -32(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5178
    movq $8, %rax
    jmp .L5179
.L5178:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5180
    movq $1, %rax
    jmp .L5181
.L5180:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5182
    movq $4, %rax
    jmp .L5183
.L5182:
    movq $8, %rax
.L5183:
.L5181:
.L5179:
    jmp .L5177
.L5176:
    movq $0, %rax
.L5177:
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq %r12, %rsp
    popq %r12
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $72, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5184
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq -80(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -144(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L5186
    movq -160(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5188
    leaq .Lstr1314(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L5189
.L5188:
    leaq .Lstr1315(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L5189:
    jmp .L5187
.L5186:
    movq -160(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5190
    leaq .Lstr1316(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5191
.L5190:
    leaq .Lstr1317(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5191:
.L5187:
.L5184:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5192
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5193
.L5192:
    jmp .L5157
.L5193:
    jmp .L5156
.L5157:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    jmp .L5149
.L5148:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5194
.L5196:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5198
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5198
    movl $1, %eax
    jmp .L5199
.L5198:
    xorl %eax, %eax
.L5199:
    cmpq $0, %rax
    je .L5197
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5200
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5201
.L5200:
    jmp .L5197
.L5201:
    jmp .L5196
.L5197:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    jmp .L5195
.L5194:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
.L5195:
.L5149:
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq line(%rip), %rax
    movq %rax, -32(%rbp)
    movq tok(%rip), %rax
    movq %rax, -48(%rbp)
    leaq -304(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rax
    cmpq $0, %rax
    je .L5202
.L5204:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5206
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5206
    movl $1, %eax
    jmp .L5207
.L5206:
    xorl %eax, %eax
.L5207:
    cmpq $0, %rax
    je .L5205
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5204
.L5205:
.L5202:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq input_ptr(%rip), %rax
    movq %rax, -336(%rbp)
    movq line(%rip), %rax
    movq %rax, -352(%rbp)
    movq tok(%rip), %rax
    movq %rax, -368(%rbp)
    leaq -624(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    movq %rax, -640(%rbp)
    movq -640(%rbp), %rax
    cmpq $0, %rax
    je .L5208
.L5210:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5212
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5212
    movl $1, %eax
    jmp .L5213
.L5212:
    xorl %eax, %eax
.L5213:
    cmpq $0, %rax
    je .L5211
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5210
.L5211:
.L5208:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -656(%rbp)
    movq -640(%rbp), %rax
    testq %rax, %rax
    je .L5214
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5215
.L5214:
    movq $0, %rax
.L5215:
    movq %rax, -672(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -688(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -704(%rbp)
    movq -640(%rbp), %rax
    testq %rax, %rax
    je .L5216
    movq -672(%rbp), %rax
    jmp .L5217
.L5216:
    movq -688(%rbp), %rax
.L5217:
    movq %rax, -720(%rbp)
    leaq .Lstr1318(%rip), %rax
    pushq %rax
    movq -688(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -656(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    movq continue_target(%rip), %rax
    movq %rax, -736(%rbp)
    movq continue_target_valid(%rip), %rax
    movq %rax, -752(%rbp)
    movq break_target(%rip), %rax
    movq %rax, -768(%rbp)
    movq break_target_valid(%rip), %rax
    movq %rax, -784(%rbp)
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -720(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -704(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -736(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq -752(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -768(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -784(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq input_ptr(%rip), %rax
    movq %rax, -736(%rbp)
    movq line(%rip), %rax
    movq %rax, -752(%rbp)
    movq tok(%rip), %rax
    movq %rax, -768(%rbp)
    leaq -1024(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq -640(%rbp), %rax
    cmpq $0, %rax
    je .L5218
    movq -672(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -336(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -352(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -368(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -624(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq -1136(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call save_parser_state
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -1152(%rbp)
.L5220:
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5221
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5222
    leaq -1152(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5223
.L5222:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5224
    movq -1152(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5226
    jmp .L5221
.L5226:
    leaq -1152(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L5224:
.L5223:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5228
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5229
.L5228:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5230
    movq -1152(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5230
    movl $1, %eax
    jmp .L5231
.L5230:
    xorl %eax, %eax
.L5231:
    cmpq $0, %rax
    je .L5232
    jmp .L5221
    jmp .L5233
.L5232:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5234
    jmp .L5221
.L5234:
.L5233:
.L5229:
    jmp .L5220
.L5221:
    leaq -1136(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call restore_parser_state
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1319(%rip), %rax
    pushq %rax
    movq -688(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5218:
    movq -688(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    movq -320(%rbp), %rax
    cmpq $0, %rax
    je .L5236
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -304(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq -1136(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call save_parser_state
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -1152(%rbp)
    movq $0, %rax
    movq %rax, -1168(%rbp)
.L5238:
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5240
    movq -1152(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5240
    movl $1, %eax
    jmp .L5241
.L5240:
    xorl %eax, %eax
.L5241:
    cmpq $0, %rax
    je .L5239
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5242
    leaq -1168(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5243
.L5242:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5244
    leaq -1168(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    jmp .L5245
.L5244:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5246
    movq -1168(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5246
    movl $1, %eax
    jmp .L5247
.L5246:
    xorl %eax, %eax
.L5247:
    cmpq $0, %rax
    je .L5248
    leaq -1152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5239
.L5248:
.L5245:
.L5243:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5250
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5251
.L5250:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5252
    movq -1168(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5252
    movl $1, %eax
    jmp .L5253
.L5252:
    xorl %eax, %eax
.L5253:
    cmpq $0, %rax
    je .L5254
    jmp .L5239
.L5254:
.L5251:
    jmp .L5238
.L5239:
    leaq -1136(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call restore_parser_state
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1320(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1321(%rip), %rax
    pushq %rax
    movq -656(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5237
.L5236:
    leaq .Lstr1322(%rip), %rax
    pushq %rax
    movq -656(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5237:
    movq -704(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -736(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -752(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -768(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -1024(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call pop_scope
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5124:
    movq tok(%rip), %rax
    pushq %rax
    movq $292, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5256
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    movq continue_target(%rip), %rax
    movq %rax, -48(%rbp)
    movq continue_target_valid(%rip), %rax
    movq %rax, -64(%rbp)
    movq break_target(%rip), %rax
    movq %rax, -80(%rbp)
    movq break_target_valid(%rip), %rax
    movq %rax, -96(%rbp)
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5258
    leaq .Lstr1323(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5258:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1324(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1325(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L5256:
    movq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5260
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    movq continue_target(%rip), %rax
    movq %rax, -48(%rbp)
    movq continue_target_valid(%rip), %rax
    movq %rax, -64(%rbp)
    movq break_target(%rip), %rax
    movq %rax, -80(%rbp)
    movq break_target_valid(%rip), %rax
    movq %rax, -96(%rbp)
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1326(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1327(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1328(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L5260:
    movq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5262
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq .Lstr1329(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1330(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1331(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq break_target(%rip), %rax
    movq %rax, -48(%rbp)
    movq break_target_valid(%rip), %rax
    movq %rax, -64(%rbp)
    movq switch_case_count(%rip), %rax
    movq %rax, -80(%rbp)
    movq switch_has_default(%rip), %rax
    movq %rax, -96(%rbp)
    movq switch_default_label(%rip), %rax
    movq %rax, -112(%rbp)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_has_default(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_default_label(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $123, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
.L5264:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5266
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5266
    movl $1, %eax
    jmp .L5267
.L5266:
    xorl %eax, %eax
.L5267:
    cmpq $0, %rax
    je .L5265
    movq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5268
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strtoll
    movq %r12, %rsp
    popq %r12
    movq %rax, -128(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -144(%rbp)
    leaq switch_case_values(%rip), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_labels(%rip), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    jmp .L5269
.L5268:
    movq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5270
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq switch_has_default(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_default_label(%rip), %rax
    pushq %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq switch_default_label(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    jmp .L5271
.L5270:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
.L5271:
.L5269:
    jmp .L5264
.L5265:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1332(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1333(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -128(%rbp)
    jmp .L5274
.L5272:
    leaq .Lstr1334(%rip), %rax
    pushq %rax
    leaq switch_case_values(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1335(%rip), %rax
    pushq %rax
    leaq switch_case_labels(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5273:
    leaq -128(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5274
.L5274:
    movq -128(%rbp), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L5272
.L5275:
    movq switch_has_default(%rip), %rax
    cmpq $0, %rax
    je .L5276
    leaq .Lstr1336(%rip), %rax
    pushq %rax
    movq switch_default_label(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5276:
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1337(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq break_target(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_count(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_has_default(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_default_label(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L5262:
    movq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5278
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq break_target_valid(%rip), %rax
    cmpq $0, %rax
    je .L5280
    leaq .Lstr1338(%rip), %rax
    pushq %rax
    movq break_target(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5280:
    leave
    ret
.L5278:
    movq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5282
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq continue_target_valid(%rip), %rax
    cmpq $0, %rax
    je .L5284
    leaq .Lstr1339(%rip), %rax
    pushq %rax
    movq continue_target(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5284:
    leave
    ret
.L5282:
    movq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5286
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5288
    leaq .Lstr1340(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5288:
    leaq .Lstr1341(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5286:
    movq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5290
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5292
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
.L5292:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1342(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1343(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5290:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5294
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call push_scope
    movq %r12, %rsp
    popq %r12
.L5296:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5298
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5298
    movl $1, %eax
    jmp .L5299
.L5298:
    xorl %eax, %eax
.L5299:
    cmpq $0, %rax
    je .L5297
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5300
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1344(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5302
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1345(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5302
    xorl %eax, %eax
    jmp .L5303
.L5302:
    movl $1, %eax
.L5303:
    testq %rax, %rax
    je .L5300
    movl $1, %eax
    jmp .L5301
.L5300:
    xorl %eax, %eax
.L5301:
    cmpq $0, %rax
    je .L5304
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1346(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5306:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5308
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1347(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5310
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1348(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5310
    xorl %eax, %eax
    jmp .L5311
.L5310:
    movl $1, %eax
.L5311:
    testq %rax, %rax
    je .L5308
    movl $1, %eax
    jmp .L5309
.L5308:
    xorl %eax, %eax
.L5309:
    cmpq $0, %rax
    je .L5307
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5306
.L5307:
.L5304:
    movq tok(%rip), %rax
    pushq %rax
    movq $308, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5312
    leaq extern_flag(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5312:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5314
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5296
    jmp .L5315
.L5314:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5316
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5296
    jmp .L5317
.L5316:
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5318
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5296
    jmp .L5319
.L5318:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5320
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5296
    jmp .L5321
.L5320:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5322
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_typedef
    movq %r12, %rsp
    popq %r12
    jmp .L5323
.L5322:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5324
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5324
    xorl %eax, %eax
    jmp .L5325
.L5324:
    movl $1, %eax
.L5325:
    cmpq $0, %rax
    je .L5326
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_struct
    movq %r12, %rsp
    popq %r12
    jmp .L5327
.L5326:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5328
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
.L5330:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L5338
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5342
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5342
    xorl %eax, %eax
    jmp .L5343
.L5342:
    movl $1, %eax
.L5343:
    testq %rax, %rax
    je .L5338
    movl $1, %eax
    jmp .L5339
.L5338:
    xorl %eax, %eax
.L5339:
    cmpq $0, %rax
    je .L5331
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5330
.L5331:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5344
    leaq .Lstr1349(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5296
.L5344:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5346
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5346
    xorl %eax, %eax
    jmp .L5347
.L5346:
    movl $1, %eax
.L5347:
    cmpq $0, %rax
    je .L5348
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    jmp .L5296
.L5348:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $56, %rax
    movslq (%rax), %rax
    movq %rax, -32(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $80, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L5350
    leaq unsigned_type(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5350:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
restart_typedef:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L5352:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5353
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5352
.L5353:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    movq %rax, -64(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5354
    leaq .Lstr1350(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5354:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5356
    leaq -112(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5356:
    leaq -96(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5358
    movq $8, %rax
    jmp .L5359
.L5358:
    movq -32(%rbp), %rax
.L5359:
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5360
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5360
    movl $1, %eax
    jmp .L5361
.L5360:
    xorl %eax, %eax
.L5361:
    testq %rax, %rax
    je .L5362
    movq $8, %rax
    jmp .L5363
.L5362:
    movq -32(%rbp), %rax
.L5363:
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L5364:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5365
    leaq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -208(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5366
    leaq -208(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strtoll
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5367
.L5366:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5368
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5370
    leaq -208(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5371
.L5370:
    leaq .Lstr1351(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5371:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5368:
.L5367:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq -128(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5372
    movq -208(%rbp), %rax
    jmp .L5373
.L5372:
    movq $1, %rax
.L5373:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5374
    leaq -176(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -160(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5376
    movq -208(%rbp), %rax
    jmp .L5377
.L5376:
    movq $1, %rax
.L5377:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5374:
    jmp .L5364
.L5365:
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5378
    movq -144(%rbp), %rax
    testq %rax, %rax
    je .L5378
    movl $1, %eax
    jmp .L5379
.L5378:
    xorl %eax, %eax
.L5379:
    cmpq $0, %rax
    je .L5380
    leaq -160(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5380:
    leaq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5382
    movq $262, %rax
    jmp .L5383
.L5382:
    movq $0, %rax
.L5383:
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq %r12, %rsp
    popq %r12
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5384
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
.L5384:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5386
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5388
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -208(%rbp)
.L5390:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5391
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -224(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -160(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5392
    leaq .Lstr1352(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5393
.L5392:
    movq -160(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5394
    leaq .Lstr1353(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5395
.L5394:
    movq -160(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5396
    leaq .Lstr1354(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5397
.L5396:
    leaq .Lstr1355(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5397:
.L5395:
.L5393:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5398
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5398:
    leaq -208(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5390
.L5391:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq -144(%rbp), %rax
    testq %rax, %rax
    je .L5400
    movq -128(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5400
    movl $1, %eax
    jmp .L5401
.L5400:
    xorl %eax, %eax
.L5401:
    cmpq $0, %rax
    je .L5402
    leaq -128(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -224(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $16, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -128(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $16, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -272(%rbp)
    movq -240(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -240(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movl (%rax), %eax
    pushq %rax
    movq -272(%rbp), %rax
    pushq %rax
    movq -256(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    subl %eax, %ecx
    movl %ecx, %eax
    popq %rcx
    movl %eax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -272(%rbp), %rax
    pushq %rax
    movq -256(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq stack_size(%rip), %rax
    pushq %rax
    movq max_func_stack(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5404
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5404:
.L5402:
    jmp .L5389
.L5388:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -208(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L5406
    movq -224(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5408
    leaq .Lstr1356(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L5409
.L5408:
    leaq .Lstr1357(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L5409:
    jmp .L5407
.L5406:
    movq -224(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5410
    leaq .Lstr1358(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5411
.L5410:
    leaq .Lstr1359(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5411:
.L5407:
.L5389:
.L5386:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5412
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp restart_typedef
.L5412:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    jmp .L5329
.L5328:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5414
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5414
    xorl %eax, %eax
    jmp .L5415
.L5414:
    movl $1, %eax
.L5415:
    testq %rax, %rax
    jne .L5416
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5416
    xorl %eax, %eax
    jmp .L5417
.L5416:
    movl $1, %eax
.L5417:
    testq %rax, %rax
    jne .L5418
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5418
    xorl %eax, %eax
    jmp .L5419
.L5418:
    movl $1, %eax
.L5419:
    testq %rax, %rax
    jne .L5420
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5420
    xorl %eax, %eax
    jmp .L5421
.L5420:
    movl $1, %eax
.L5421:
    cmpq $0, %rax
    je .L5422
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5424:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5426
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1360(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5428
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1361(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5428
    xorl %eax, %eax
    jmp .L5429
.L5428:
    movl $1, %eax
.L5429:
    testq %rax, %rax
    je .L5426
    movl $1, %eax
    jmp .L5427
.L5426:
    xorl %eax, %eax
.L5427:
    cmpq $0, %rax
    je .L5425
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5424
.L5425:
restart_int:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L5430:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5431
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5430
.L5431:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    movq %rax, -64(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5432
    leaq .Lstr1362(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5432:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5434
    leaq -112(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5434:
    leaq -96(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5436
    movq $8, %rax
    jmp .L5437
.L5436:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5438
    movq $1, %rax
    jmp .L5439
.L5438:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5440
    movq $4, %rax
    jmp .L5441
.L5440:
    movq $8, %rax
.L5441:
.L5439:
.L5437:
    movq %rax, -128(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5442
    movq -16(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5442
    xorl %eax, %eax
    jmp .L5443
.L5442:
    movl $1, %eax
.L5443:
    testq %rax, %rax
    je .L5444
    movq $0, %rax
    jmp .L5445
.L5444:
    movq -16(%rbp), %rax
.L5445:
    movq %rax, -144(%rbp)
    movq $0, %rax
    movq %rax, -160(%rbp)
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5446
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5448
    movq $8, %rax
    jmp .L5449
.L5448:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5450
    movq $1, %rax
    jmp .L5451
.L5450:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5452
    movq $4, %rax
    jmp .L5453
.L5452:
    movq $8, %rax
.L5453:
.L5451:
.L5449:
    jmp .L5447
.L5446:
    movq -128(%rbp), %rax
.L5447:
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L5454:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5455
    leaq -160(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -208(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5456
    leaq -208(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strtoll
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5457
.L5456:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5458
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5460
    leaq -208(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5461
.L5460:
    leaq .Lstr1363(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5461:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5458:
.L5457:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq -128(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5462
    movq -208(%rbp), %rax
    jmp .L5463
.L5462:
    movq $1, %rax
.L5463:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5464
    leaq -192(%rbp), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -176(%rbp), %rax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5466
    movq -208(%rbp), %rax
    jmp .L5467
.L5466:
    movq $1, %rax
.L5467:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5464:
    jmp .L5454
.L5455:
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5468
    movq -160(%rbp), %rax
    testq %rax, %rax
    je .L5468
    movl $1, %eax
    jmp .L5469
.L5468:
    xorl %eax, %eax
.L5469:
    cmpq $0, %rax
    je .L5470
    leaq -176(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5470:
    leaq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5472
    movq -16(%rbp), %rax
    jmp .L5473
.L5472:
    movq $0, %rax
.L5473:
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq %r12, %rsp
    popq %r12
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $72, %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5474
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq -192(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
.L5474:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5476
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5478
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -208(%rbp)
.L5480:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5481
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -224(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5482
    leaq .Lstr1364(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5483
.L5482:
    movq -176(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5484
    leaq .Lstr1365(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5485
.L5484:
    movq -176(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5486
    leaq .Lstr1366(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5487
.L5486:
    leaq .Lstr1367(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5487:
.L5485:
.L5483:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5488
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5488:
    leaq -208(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5480
.L5481:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq -160(%rbp), %rax
    testq %rax, %rax
    je .L5490
    movq -128(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5490
    movl $1, %eax
    jmp .L5491
.L5490:
    xorl %eax, %eax
.L5491:
    cmpq $0, %rax
    je .L5492
    leaq -128(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -224(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $16, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -128(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $16, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -272(%rbp)
    movq -240(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -240(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movl (%rax), %eax
    pushq %rax
    movq -272(%rbp), %rax
    pushq %rax
    movq -256(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    subl %eax, %ecx
    movl %ecx, %eax
    popq %rcx
    movl %eax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -272(%rbp), %rax
    pushq %rax
    movq -256(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq stack_size(%rip), %rax
    pushq %rax
    movq max_func_stack(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5494
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5494:
.L5492:
    jmp .L5479
.L5478:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -208(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L5496
    movq -224(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5498
    leaq .Lstr1368(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    jmp .L5499
.L5498:
    leaq .Lstr1369(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L5499:
    jmp .L5497
.L5496:
    movq -224(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5500
    leaq .Lstr1370(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    jmp .L5501
.L5500:
    leaq .Lstr1371(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5501:
.L5497:
.L5479:
.L5476:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5502
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp restart_int
.L5502:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    jmp .L5423
.L5422:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5504
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_enum
    movq %r12, %rsp
    popq %r12
    jmp .L5505
.L5504:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
.L5505:
.L5423:
.L5329:
.L5327:
.L5323:
.L5321:
.L5319:
.L5317:
.L5315:
    jmp .L5296
.L5297:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call pop_scope
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5294:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5506
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq line(%rip), %rax
    movq %rax, -32(%rbp)
    movq tok(%rip), %rax
    movq %rax, -48(%rbp)
    leaq -304(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5508
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5510
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5510:
.L5508:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -304(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
.L5506:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5512
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5512:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl parse_function
parse_function:
    pushq %rbp
    movq %rsp, %rbp
    subq $66592, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq -32(%rbp), %rax
    movq stack_size(%rip), %rax
    movq %rax, -48(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call push_scope
    movq %r12, %rsp
    popq %r12
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -65600(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5624
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5625
.L5624:
.L5626:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5628
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5628
    movl $1, %eax
    jmp .L5629
.L5628:
    xorl %eax, %eax
.L5629:
    cmpq $0, %rax
    je .L5627
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5630
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5630
    xorl %eax, %eax
    jmp .L5631
.L5630:
    movl $1, %eax
.L5631:
    cmpq $0, %rax
    je .L5632
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5626
.L5632:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5634
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1389(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5636
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1390(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5636
    xorl %eax, %eax
    jmp .L5637
.L5636:
    movl $1, %eax
.L5637:
    testq %rax, %rax
    je .L5634
    movl $1, %eax
    jmp .L5635
.L5634:
    xorl %eax, %eax
.L5635:
    cmpq $0, %rax
    je .L5638
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1391(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5640:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5642
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1392(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5644
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1393(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5644
    xorl %eax, %eax
    jmp .L5645
.L5644:
    movl $1, %eax
.L5645:
    testq %rax, %rax
    je .L5642
    movl $1, %eax
    jmp .L5643
.L5642:
    xorl %eax, %eax
.L5643:
    cmpq $0, %rax
    je .L5641
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5640
.L5641:
.L5638:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5646
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5646
    xorl %eax, %eax
    jmp .L5647
.L5646:
    movl $1, %eax
.L5647:
    testq %rax, %rax
    jne .L5648
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5648
    xorl %eax, %eax
    jmp .L5649
.L5648:
    movl $1, %eax
.L5649:
    testq %rax, %rax
    jne .L5650
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5650
    xorl %eax, %eax
    jmp .L5651
.L5650:
    movl $1, %eax
.L5651:
    testq %rax, %rax
    jne .L5652
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5652
    xorl %eax, %eax
    jmp .L5653
.L5652:
    movl $1, %eax
.L5653:
    testq %rax, %rax
    jne .L5654
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5654
    xorl %eax, %eax
    jmp .L5655
.L5654:
    movl $1, %eax
.L5655:
    cmpq $0, %rax
    je .L5656
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5658
    movq $262, %rax
    jmp .L5659
.L5658:
    movq tok(%rip), %rax
.L5659:
    movq %rax, -65616(%rbp)
    movq $8, %rax
    movq %rax, -65632(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5660
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -65648(%rbp)
    movq -65648(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5662
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L5662
    movl $1, %eax
    jmp .L5663
.L5662:
    xorl %eax, %eax
.L5663:
    cmpq $0, %rax
    je .L5664
    leaq -65616(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $65536, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5666
    leaq -65632(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $56, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $80, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L5668
    leaq unsigned_type(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5668:
.L5666:
.L5664:
.L5660:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5670:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5672
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1394(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5674
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1395(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5674
    xorl %eax, %eax
    jmp .L5675
.L5674:
    movl $1, %eax
.L5675:
    testq %rax, %rax
    je .L5672
    movl $1, %eax
    jmp .L5673
.L5672:
    xorl %eax, %eax
.L5673:
    cmpq $0, %rax
    je .L5671
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5670
.L5671:
    movq $0, %rax
    movq %rax, -65648(%rbp)
.L5676:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5677
    leaq -65648(%rbp), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5676
.L5677:
    movq -65648(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    movq %rax, -65664(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5678
    leaq .Lstr1396(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5678:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -65680(%rbp)
    movq -65680(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5680
    leaq -65680(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5680:
    leaq -65584(%rbp), %rax
    pushq %rax
    movq -65600(%rbp), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -65680(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    leaq -65584(%rbp), %rax
    pushq %rax
    movq -65600(%rbp), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    movq -65680(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -65664(%rbp), %rax
    testq %rax, %rax
    je .L5682
    movq $8, %rax
    jmp .L5683
.L5682:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5684
    movq $1, %rax
    jmp .L5685
.L5684:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5686
    movq $4, %rax
    jmp .L5687
.L5686:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5688
    movq -65632(%rbp), %rax
    jmp .L5689
.L5688:
    movq $8, %rax
.L5689:
.L5687:
.L5685:
.L5683:
    movq %rax, -65696(%rbp)
    movq $0, %rax
    movq %rax, -65712(%rbp)
    movq -65616(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5690
    movq -65616(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5690
    xorl %eax, %eax
    jmp .L5691
.L5690:
    movl $1, %eax
.L5691:
    testq %rax, %rax
    je .L5692
    movq $0, %rax
    jmp .L5693
.L5692:
    movq -65616(%rbp), %rax
.L5693:
    movq %rax, -65728(%rbp)
    movq -65648(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5694
    leaq -65712(%rbp), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5694:
    leaq token(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -65696(%rbp), %rax
    pushq %rax
    movq -65712(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -65664(%rbp), %rax
    testq %rax, %rax
    je .L5696
    movq -65648(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5698
    movq $8, %rax
    jmp .L5699
.L5698:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5700
    movq $1, %rax
    jmp .L5701
.L5700:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5702
    movq $4, %rax
    jmp .L5703
.L5702:
    movq -65632(%rbp), %rax
.L5703:
.L5701:
.L5699:
    jmp .L5697
.L5696:
    movq $0, %rax
.L5697:
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq %r12, %rsp
    popq %r12
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $72, %rax
    pushq %rax
    movq -65728(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $76, %rax
    pushq %rax
    movq -65648(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq -65600(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5704
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5704:
    jmp .L5657
.L5656:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5706
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5708
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5708:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5710
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5710:
    jmp .L5627
    jmp .L5707
.L5706:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5707:
.L5657:
    jmp .L5626
.L5627:
.L5625:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5712
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call pop_scope
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5712:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5714
    leaq .Lstr1397(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5714:
    movq stack_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -65616(%rbp)
    movq input_ptr(%rip), %rax
    movq %rax, -65632(%rbp)
    movq line(%rip), %rax
    movq %rax, -65648(%rbp)
    movq tok(%rip), %rax
    movq %rax, -65664(%rbp)
    leaq -65920(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    movq symbol_count(%rip), %rax
    movq %rax, -65936(%rbp)
    movq macro_count(%rip), %rax
    movq %rax, -65952(%rbp)
    movq if_depth(%rip), %rax
    movq %rax, -65968(%rbp)
    movq processed_count(%rip), %rax
    movq %rax, -66496(%rbp)
    movq $0, %rax
    movq %rax, -66512(%rbp)
.L5716:
    movq -66512(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5717
    leaq -66480(%rbp), %rax
    pushq %rax
    movq -66512(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq if_nest(%rip), %rax
    pushq %rax
    movq -66512(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -66512(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5716
.L5717:
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq lex_pass_top(%rip), %rax
    pushq %rax
    movq ctx_top(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    movq max_func_stack(%rip), %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $16, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -66512(%rbp)
    movq -66512(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5718
    leaq -66512(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5718:
    movq -65936(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call truncate_symbols
    movq %r12, %rsp
    popq %r12
    leaq macro_count(%rip), %rax
    pushq %rax
    movq -65952(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq if_depth(%rip), %rax
    pushq %rax
    movq -65968(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    movq %rax, -66528(%rbp)
.L5720:
    movq -66528(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5721
    leaq if_nest(%rip), %rax
    pushq %rax
    movq -66528(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq -66480(%rbp), %rax
    pushq %rax
    movq -66528(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -66528(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5720
.L5721:
.L5722:
    movq processed_count(%rip), %rax
    pushq %rax
    movq -66496(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5723
    leaq processed_count(%rip), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    leaq processed_files(%rip), %rax
    pushq %rax
    movq processed_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
    jmp .L5722
.L5723:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -65632(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -65664(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -65920(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq %r12, %rsp
    popq %r12
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq lex_pass_top(%rip), %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq .Lstr1398(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1399(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1400(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1401(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -66512(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $16, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $16, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -66528(%rbp)
    movq -66528(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5724
    leaq .Lstr1402(%rip), %rax
    pushq %rax
    movq -66528(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L5724:
    movq $0, %rax
    movq %rax, -66544(%rbp)
    jmp .L5728
.L5726:
    leaq -65584(%rbp), %rax
    pushq %rax
    movq -66544(%rbp), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -66560(%rbp)
    movq -66560(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5730
    leaq symbols(%rip), %rax
    pushq %rax
    movq -66560(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -66576(%rbp)
    leaq .Lstr1403(%rip), %rax
    pushq %rax
    movq -66544(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call arg_reg
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq -66576(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_si
    movq %r12, %rsp
    popq %r12
.L5730:
.L5727:
    leaq -66544(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5728
.L5728:
    movq -66544(%rbp), %rax
    pushq %rax
    movq -65600(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5732
    movq -66544(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5732
    movl $1, %eax
    jmp .L5733
.L5732:
    xorl %eax, %eax
.L5733:
    cmpq $0, %rax
    jne .L5726
.L5729:
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1404(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1405(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call pop_scope
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl parse_enum
parse_enum:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5754
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5754:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5756
    leaq .Lstr1410(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5756:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -16(%rbp)
.L5758:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5760
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5760
    movl $1, %eax
    jmp .L5761
.L5760:
    xorl %eax, %eax
.L5761:
    cmpq $0, %rax
    je .L5759
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5762
    leaq .Lstr1411(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5762:
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5764
    leaq .Lstr1412(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5764:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    movq %rax, -48(%rbp)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5766
    leaq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5766:
    movq -48(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -32(%rbp), %rax
    addq $52, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    addq $36, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    addq $60, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    addq $84, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    movq -32(%rbp), %rax
    addq $84, %rax
    pushq %rax
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5768
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5770
    leaq .Lstr1413(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5770:
    leaq -16(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strtoll
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5768:
    movq -32(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5772
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5772:
    jmp .L5758
.L5759:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl skip_struct_fields
skip_struct_fields:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
.L5792:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5794
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5794
    movl $1, %eax
    jmp .L5795
.L5794:
    xorl %eax, %eax
.L5795:
    testq %rax, %rax
    je .L5796
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5796
    movl $1, %eax
    jmp .L5797
.L5796:
    xorl %eax, %eax
.L5797:
    cmpq $0, %rax
    je .L5793
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5798
    movq struct_member_count(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5800
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5802
    leaq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5802:
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq struct_member_offsets(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_sizes(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_elem_sizes(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_unsigned(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_is_float(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L5800:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5804
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    movq %rax, -64(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5806
    leaq -64(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strtoll
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5806:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq struct_member_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5808
    leaq struct_member_sizes(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5808:
    jmp .L5805
.L5804:
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5805:
    jmp .L5799
.L5798:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5799:
    jmp .L5792
.L5793:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl skip_struct
skip_struct:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5860
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5860:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5862
    leaq .Lstr1418(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5862:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    movq %rax, -16(%rbp)
.L5864:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5866
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5866
    movl $1, %eax
    jmp .L5867
.L5866:
    xorl %eax, %eax
.L5867:
    cmpq $0, %rax
    je .L5865
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5868
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1419(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5870
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1420(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5870
    xorl %eax, %eax
    jmp .L5871
.L5870:
    movl $1, %eax
.L5871:
    testq %rax, %rax
    je .L5868
    movl $1, %eax
    jmp .L5869
.L5868:
    xorl %eax, %eax
.L5869:
    cmpq $0, %rax
    je .L5872
    leaq -16(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1421(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5872:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5874
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5874
    xorl %eax, %eax
    jmp .L5875
.L5874:
    movl $1, %eax
.L5875:
    testq %rax, %rax
    jne .L5876
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5876
    xorl %eax, %eax
    jmp .L5877
.L5876:
    movl $1, %eax
.L5877:
    testq %rax, %rax
    jne .L5878
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5878
    xorl %eax, %eax
    jmp .L5879
.L5878:
    movl $1, %eax
.L5879:
    cmpq $0, %rax
    je .L5880
    movq tok(%rip), %rax
    movq %rax, -32(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -48(%rbp)
.L5882:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5883
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5882
.L5883:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L5884
    leaq -64(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5885
.L5884:
    movq -32(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5886
    leaq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5887
.L5886:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5888
    leaq -64(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5889
.L5888:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5890
    leaq -64(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5891
.L5890:
    leaq -64(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5891:
.L5889:
.L5887:
.L5885:
    movq -64(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5892
    movq $1, %rax
    jmp .L5893
.L5892:
    movq $0, %rax
.L5893:
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_struct_fields
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5881
.L5880:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5894
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5896
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5896
    xorl %eax, %eax
    jmp .L5897
.L5896:
    movl $1, %eax
.L5897:
    testq %rax, %rax
    jne .L5898
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $65536, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5898
    xorl %eax, %eax
    jmp .L5899
.L5898:
    movl $1, %eax
.L5899:
    cmpq $0, %rax
    je .L5900
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5864
.L5900:
    leaq -48(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $56, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5902
    leaq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5902:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    testq %rax, %rax
    jne .L5904
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $80, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    jne .L5904
    xorl %eax, %eax
    jmp .L5905
.L5904:
    movl $1, %eax
.L5905:
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5906:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5907
    leaq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5906
.L5907:
    movq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_struct_fields
    movq %r12, %rsp
    popq %r12
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5895
.L5894:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5908
    jmp .L5865
    jmp .L5909
.L5908:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5909:
.L5895:
.L5881:
    jmp .L5864
.L5865:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl skip_typedef
skip_typedef:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5946
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_struct
    movq %r12, %rsp
    popq %r12
    jmp .L5947
.L5946:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5948
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5948
    xorl %eax, %eax
    jmp .L5949
.L5948:
    movl $1, %eax
.L5949:
    testq %rax, %rax
    jne .L5950
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5950
    xorl %eax, %eax
    jmp .L5951
.L5950:
    movl $1, %eax
.L5951:
    testq %rax, %rax
    jne .L5952
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5952
    xorl %eax, %eax
    jmp .L5953
.L5952:
    movl $1, %eax
.L5953:
    testq %rax, %rax
    jne .L5954
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5954
    xorl %eax, %eax
    jmp .L5955
.L5954:
    movl $1, %eax
.L5955:
    cmpq $0, %rax
    je .L5956
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5958:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5959
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5958
.L5959:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5960
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5960:
.L5956:
.L5947:
    leaq .Lstr1426(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L5962:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5964
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5964
    movl $1, %eax
    jmp .L5965
.L5964:
    xorl %eax, %eax
.L5965:
    cmpq $0, %rax
    je .L5963
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5966
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1427(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5968
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5968:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1428(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5970
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5970:
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5972
    leaq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5972:
    leaq -32(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    leaq -32(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L5966:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5962
.L5963:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L5974
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5976
    leaq .Lstr1429(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L5976:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    movq %rax, -80(%rbp)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5978
    leaq -96(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5978:
    movq -80(%rbp), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    movq -80(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -64(%rbp), %rax
    addq $52, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $36, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $60, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $80, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq $65536, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $84, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -64(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq struct_total_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5980
    movq -64(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
.L5980:
    leaq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -112(%rbp)
    movq -64(%rbp), %rax
    addq $84, %rax
    pushq %rax
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5974:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl data_directive
data_directive:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5988
    leaq .Lstr1434(%rip), %rax
    leave
    ret
.L5988:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5990
    leaq .Lstr1435(%rip), %rax
    leave
    ret
.L5990:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5992
    leaq .Lstr1436(%rip), %rax
    leave
    ret
.L5992:
    leaq .Lstr1437(%rip), %rax
    leave
    ret
    leave
    ret
    .globl emit_global_bss
emit_global_bss:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    leaq .Lstr1443(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5998
    leaq .Lstr1444(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L5998:
    leaq .Lstr1445(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6000
    leaq .Lstr1446(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L6000:
    leaq .Lstr1447(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl emit_global_data_head
emit_global_data_head:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    leaq .Lstr1451(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6004
    leaq .Lstr1452(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L6004:
    leaq .Lstr1453(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
    leave
    ret
    .globl parse_const_int
parse_const_int:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6020
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6021
.L6020:
    movq tok(%rip), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6022
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6022:
.L6021:
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6024
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strtoll
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6026
    movq -48(%rbp), %rax
    negq %rax
    jmp .L6027
.L6026:
    movq -48(%rbp), %rax
.L6027:
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    leave
    ret
.L6024:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6028
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6030
    leaq macros(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    movq %rax, -64(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6032
    movq -64(%rbp), %rax
    negq %rax
    jmp .L6033
.L6032:
    movq -64(%rbp), %rax
.L6033:
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    leave
    ret
.L6030:
.L6028:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl intern_string
intern_string:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    leaq str_label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    movq string_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6036
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    leaq string_pool(%rip), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    leaq string_pool(%rip), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    leaq string_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L6036:
    movq -32(%rbp), %rax
    leave
    ret
    leave
    ret
    .globl emit_global_initializer
emit_global_initializer:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq %rcx, -64(%rbp)
    movq %r8, -80(%rbp)
    movq %r9, -96(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
    movq -80(%rbp), %rax
    testq %rax, %rax
    je .L6084
    movq -96(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6084
    movl $1, %eax
    jmp .L6085
.L6084:
    xorl %eax, %eax
.L6085:
    testq %rax, %rax
    je .L6086
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6086
    movl $1, %eax
    jmp .L6087
.L6086:
    xorl %eax, %eax
.L6087:
    testq %rax, %rax
    je .L6088
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6088
    movl $1, %eax
    jmp .L6089
.L6088:
    xorl %eax, %eax
.L6089:
    cmpq $0, %rax
    je .L6090
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -128(%rbp)
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6092
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6092:
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_global_data_head
    movq %r12, %rsp
    popq %r12
    movq emit_enabled(%rip), %rax
    cmpq $0, %rax
    je .L6094
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1466(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_asciz_body
    movq %r12, %rsp
    popq %r12
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1467(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
.L6094:
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6096
    leaq .Lstr1468(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L6096:
    leaq .Lstr1469(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    leave
    ret
.L6090:
    movq -96(%rbp), %rax
    testq %rax, %rax
    je .L6098
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6098
    movl $1, %eax
    jmp .L6099
.L6098:
    xorl %eax, %eax
.L6099:
    cmpq $0, %rax
    je .L6100
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call intern_string
    movq %r12, %rsp
    popq %r12
    movq %rax, -128(%rbp)
    movq ptr_init_count(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6102
    leaq .Lstr1470(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6102:
    leaq ptr_init_name(%rip), %rax
    pushq %rax
    movq ptr_init_count(%rip), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strcpy
    movq %r12, %rsp
    popq %r12
    leaq ptr_init_label(%rip), %rax
    pushq %rax
    movq ptr_init_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq ptr_init_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_global_data_head
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1471(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1472(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    leave
    ret
.L6100:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6104
    movq $0, %rax
    movq %rax, -128(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6106
    movq -64(%rbp), %rax
    jmp .L6107
.L6106:
    movq $8, %rax
.L6107:
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6108
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, %r8
    movq %rcx, %rax
    cqto
    idivq %r8
    jmp .L6109
.L6108:
    movq $0, %rax
.L6109:
    movq %rax, -160(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_global_data_head
    movq %r12, %rsp
    popq %r12
.L6110:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6112
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6112
    movl $1, %eax
    jmp .L6113
.L6112:
    xorl %eax, %eax
.L6113:
    cmpq $0, %rax
    je .L6111
    leaq -112(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_const_int
    movq %r12, %rsp
    popq %r12
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6114
    leaq .Lstr1473(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6114:
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6116
    movq -128(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6116
    xorl %eax, %eax
    jmp .L6117
.L6116:
    movl $1, %eax
.L6117:
    cmpq $0, %rax
    je .L6118
    movq -144(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call data_directive
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L6118:
    leaq -128(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6120
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6121
.L6120:
    jmp .L6111
.L6121:
    jmp .L6110
.L6111:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6122
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6123
.L6122:
    leaq .Lstr1474(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6123:
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6124
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L6125
.L6124:
    movq -128(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6126
    leaq .Lstr1475(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
.L6126:
.L6125:
    leaq .Lstr1476(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    leave
    ret
.L6104:
    leaq -112(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_const_int
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L6128
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_global_data_head
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call data_directive
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1477(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    leave
    ret
.L6128:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl parse_program
parse_program:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6292:
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6293
.L6294:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6296
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6296
    xorl %eax, %eax
    jmp .L6297
.L6296:
    movl $1, %eax
.L6297:
    cmpq $0, %rax
    je .L6295
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6294
.L6295:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6298
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1492(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6300
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1493(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6300
    xorl %eax, %eax
    jmp .L6301
.L6300:
    movl $1, %eax
.L6301:
    testq %rax, %rax
    je .L6298
    movl $1, %eax
    jmp .L6299
.L6298:
    xorl %eax, %eax
.L6299:
    cmpq $0, %rax
    je .L6302
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1494(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6304:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6306
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1495(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6308
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1496(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6308
    xorl %eax, %eax
    jmp .L6309
.L6308:
    movl $1, %eax
.L6309:
    testq %rax, %rax
    je .L6306
    movl $1, %eax
    jmp .L6307
.L6306:
    xorl %eax, %eax
.L6307:
    cmpq $0, %rax
    je .L6305
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6304
.L6305:
.L6302:
    movq tok(%rip), %rax
    pushq %rax
    movq $308, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6310
    leaq extern_flag(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6310:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6312
    leaq static_flag(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6312:
.L6314:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6316
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6316
    xorl %eax, %eax
    jmp .L6317
.L6316:
    movl $1, %eax
.L6317:
    cmpq $0, %rax
    je .L6315
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6314
.L6315:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6318
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6292
    jmp .L6319
.L6318:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6320
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_typedef
    movq %r12, %rsp
    popq %r12
    jmp .L6321
.L6320:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6322
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6322
    xorl %eax, %eax
    jmp .L6323
.L6322:
    movl $1, %eax
.L6323:
    cmpq $0, %rax
    je .L6324
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_struct
    movq %r12, %rsp
    popq %r12
    jmp .L6325
.L6324:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6326
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_enum
    movq %r12, %rsp
    popq %r12
    jmp .L6327
.L6326:
    movq tok(%rip), %rax
    pushq %rax
    movq $304, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6328
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_asm_block
    movq %r12, %rsp
    popq %r12
    jmp .L6329
.L6328:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6330
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6330
    xorl %eax, %eax
    jmp .L6331
.L6330:
    movl $1, %eax
.L6331:
    testq %rax, %rax
    jne .L6332
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6332
    xorl %eax, %eax
    jmp .L6333
.L6332:
    movl $1, %eax
.L6333:
    testq %rax, %rax
    jne .L6334
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6334
    xorl %eax, %eax
    jmp .L6335
.L6334:
    movl $1, %eax
.L6335:
    testq %rax, %rax
    jne .L6336
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6336
    xorl %eax, %eax
    jmp .L6337
.L6336:
    movl $1, %eax
.L6337:
    cmpq $0, %rax
    je .L6338
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6340:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6342
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1497(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6344
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1498(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6344
    xorl %eax, %eax
    jmp .L6345
.L6344:
    movl $1, %eax
.L6345:
    testq %rax, %rax
    je .L6342
    movl $1, %eax
    jmp .L6343
.L6342:
    xorl %eax, %eax
.L6343:
    cmpq $0, %rax
    je .L6341
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6340
.L6341:
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L6346:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6347
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6346
.L6347:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6348
    leaq .Lstr1499(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6348:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6350
    leaq -96(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6350:
    leaq -80(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    leaq -80(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6352
    leaq -80(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_function
    movq %r12, %rsp
    popq %r12
    jmp .L6353
.L6352:
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6354
    movq $8, %rax
    jmp .L6355
.L6354:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6356
    movq $1, %rax
    jmp .L6357
.L6356:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6358
    movq $4, %rax
    jmp .L6359
.L6358:
    movq $8, %rax
.L6359:
.L6357:
.L6355:
    movq %rax, -112(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6360
    movq -16(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6360
    xorl %eax, %eax
    jmp .L6361
.L6360:
    movl $1, %eax
.L6361:
    testq %rax, %rax
    je .L6362
    movq $0, %rax
    jmp .L6363
.L6362:
    movq -16(%rbp), %rax
.L6363:
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6364
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6366
    movq $8, %rax
    jmp .L6367
.L6366:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6368
    movq $1, %rax
    jmp .L6369
.L6368:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6370
    movq $4, %rax
    jmp .L6371
.L6370:
    movq $8, %rax
.L6371:
.L6369:
.L6367:
    jmp .L6365
.L6364:
    movq -112(%rbp), %rax
.L6365:
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L6372:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6373
    leaq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -208(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6374
    leaq -208(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strtoll
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6375
.L6374:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6376
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6378
    leaq -208(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L6379
.L6378:
    leaq .Lstr1500(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6379:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6376:
.L6375:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq -112(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6380
    movq -208(%rbp), %rax
    jmp .L6381
.L6380:
    movq $1, %rax
.L6381:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6382
    leaq -176(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -160(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6384
    movq -208(%rbp), %rax
    jmp .L6385
.L6384:
    movq $1, %rax
.L6385:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6382:
    jmp .L6372
.L6373:
    movq extern_flag(%rip), %rax
    movq %rax, -208(%rbp)
    movq static_flag(%rip), %rax
    movq %rax, -224(%rbp)
    leaq global_emit_deferred(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6386
    movq -144(%rbp), %rax
    testq %rax, %rax
    je .L6386
    movl $1, %eax
    jmp .L6387
.L6386:
    xorl %eax, %eax
.L6387:
    cmpq $0, %rax
    je .L6388
    leaq -160(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6388:
    leaq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6390
    movq -16(%rbp), %rax
    jmp .L6391
.L6390:
    movq $0, %rax
.L6391:
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq %r12, %rsp
    popq %r12
    leaq global_emit_deferred(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $72, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6392
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
.L6392:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6394
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -208(%rbp), %rax
    cmpq $0, %rax
    je .L6396
.L6398:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6400
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6400
    movl $1, %eax
    jmp .L6401
.L6400:
    xorl %eax, %eax
.L6401:
    cmpq $0, %rax
    je .L6399
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6398
.L6399:
    jmp .L6397
.L6396:
    leaq -80(%rbp), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    leaq -112(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_global_initializer
    movq %r12, %rsp
    popq %r12
    cmpq $0, %rax
    je .L6402
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $44, %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    jmp .L6403
.L6402:
.L6404:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6406
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6406
    movl $1, %eax
    jmp .L6407
.L6406:
    xorl %eax, %eax
.L6407:
    cmpq $0, %rax
    je .L6405
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6404
.L6405:
    leaq -80(%rbp), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_global_bss
    movq %r12, %rsp
    popq %r12
.L6403:
.L6397:
    jmp .L6395
.L6394:
    movq -208(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6408
    leaq -80(%rbp), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_global_bss
    movq %r12, %rsp
    popq %r12
.L6408:
.L6395:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6410
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6411
.L6410:
    leaq .Lstr1501(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6411:
.L6353:
    jmp .L6339
.L6338:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6412
    movq $8, %rax
    movq %rax, -16(%rbp)
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %r12, %rsp
    popq %r12
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6414
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L6414
    movl $1, %eax
    jmp .L6415
.L6414:
    xorl %eax, %eax
.L6415:
    cmpq $0, %rax
    je .L6416
    leaq -16(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $56, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $80, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L6418
    leaq unsigned_type(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6418:
.L6416:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -48(%rbp)
.L6420:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6421
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6420
.L6421:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    movq %rax, -64(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6422
    leaq .Lstr1502(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6422:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6424
    leaq -112(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6424:
    leaq -96(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6426
    leaq static_flag(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq extern_flag(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -96(%rbp), %rax
    pushq %rax
    movq $262, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_function
    movq %r12, %rsp
    popq %r12
    jmp .L6427
.L6426:
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L6428
    movq $8, %rax
    jmp .L6429
.L6428:
    movq -16(%rbp), %rax
.L6429:
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L6430:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6431
    leaq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -208(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6432
    leaq -208(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_strtoll
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6433
.L6432:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6434
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq %r12, %rsp
    popq %r12
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6436
    leaq -208(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L6437
.L6436:
    leaq .Lstr1503(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6437:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6434:
.L6433:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq %r12, %rsp
    popq %r12
    leaq -128(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6438
    movq -208(%rbp), %rax
    jmp .L6439
.L6438:
    movq $1, %rax
.L6439:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6440
    leaq -176(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -160(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6442
    movq -208(%rbp), %rax
    jmp .L6443
.L6442:
    movq $1, %rax
.L6443:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6440:
    jmp .L6430
.L6431:
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L6444
    movq -144(%rbp), %rax
    testq %rax, %rax
    je .L6444
    movl $1, %eax
    jmp .L6445
.L6444:
    xorl %eax, %eax
.L6445:
    cmpq $0, %rax
    je .L6446
    leaq -160(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6446:
    leaq -96(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L6448
    movq $262, %rax
    jmp .L6449
.L6448:
    movq $0, %rax
.L6449:
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq %r12, %rsp
    popq %r12
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6450
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
.L6450:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6452
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6453
.L6452:
    leaq .Lstr1504(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6453:
.L6427:
    jmp .L6413
.L6412:
    leaq .Lstr1505(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq %r12, %rsp
    popq %r12
.L6413:
.L6339:
.L6329:
.L6327:
.L6325:
.L6321:
.L6319:
    jmp .L6292
.L6293:
    leave
    ret
    .globl emit_float_consts
emit_float_consts:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6462
    leave
    ret
.L6462:
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L6466
.L6464:
    leaq float_const_is_float(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L6468
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1508(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    leaq float_const_str(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $256, %rax
    addq %rcx, %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    jmp .L6469
.L6468:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1509(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    leaq float_const_str(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $256, %rax
    addq %rcx, %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
.L6469:
.L6465:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6466
.L6466:
    movq -16(%rbp), %rax
    pushq %rax
    movq float_const_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L6464
.L6467:
    leave
    ret
    .globl emit_string_pool
emit_string_pool:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6476
    leave
    ret
.L6476:
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L6480
.L6478:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1512(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    leaq string_pool(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_asciz_body
    movq %r12, %rsp
    popq %r12
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1513(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    leaq string_pool(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
.L6479:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6480
.L6480:
    movq -16(%rbp), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L6478
.L6481:
    leave
    ret
    .globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_init
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lex_init_keywords
    movq %r12, %rsp
    popq %r12
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6528
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1546(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    leave
    ret
.L6528:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr1547(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fopen
    movq %r12, %rsp
    popq %r12
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6530
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1548(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    leave
    ret
.L6530:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fseek
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call ftell
    movq %r12, %rsp
    popq %r12
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6532
    movq -64(%rbp), %rax
    pushq %rax
    movq $1048576, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6532
    xorl %eax, %eax
    jmp .L6533
.L6532:
    movl $1, %eax
.L6533:
    cmpq $0, %rax
    je .L6534
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1549(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    leave
    ret
.L6534:
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call rewind
    movq %r12, %rsp
    popq %r12
    leaq source_start(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq source_start(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fread
    movq %r12, %rsp
    popq %r12
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6536
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1550(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq %r12, %rsp
    popq %r12
    movq source_start(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq %r12, %rsp
    popq %r12
    movq $1, %rax
    leave
    ret
.L6536:
    movq source_start(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq %r12, %rsp
    popq %r12
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq source_start(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq output(%rip), %rax
    pushq %rax
    movq stdout(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -96(%rbp)
    leaq current_file(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    movq %rax, -112(%rbp)
.L6538:
    movq -112(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6539
    movq current_file(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -112(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6538
.L6539:
    leaq .Lstr1551(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1552(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1553(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1554(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1555(%rip), %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1556(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -96(%rbp)
.L6540:
    movq $1, %rax
    cmpq $0, %rax
    je .L6541
    movq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call libc_global_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6542
    jmp .L6541
.L6542:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq %rax, -144(%rbp)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6544
    leaq -160(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6544:
    movq -144(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    movq -144(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -128(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $36, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $52, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    leaq .Lstr1557(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6546
    movq -112(%rbp), %rax
    pushq %rax
    leaq .Lstr1558(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6546
    xorl %eax, %eax
    jmp .L6547
.L6546:
    movl $1, %eax
.L6547:
    testq %rax, %rax
    jne .L6548
    movq -112(%rbp), %rax
    pushq %rax
    leaq .Lstr1559(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6548
    xorl %eax, %eax
    jmp .L6549
.L6548:
    movl $1, %eax
.L6549:
    testq %rax, %rax
    je .L6550
    movq $1, %rax
    jmp .L6551
.L6550:
    movq $0, %rax
.L6551:
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $60, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $80, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    leaq .Lstr1560(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq %r12, %rsp
    popq %r12
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6552
    movq $1, %rax
    jmp .L6553
.L6552:
    movq $0, %rax
.L6553:
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq -128(%rbp), %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L6554
    movq $65536, %rax
    jmp .L6555
.L6554:
    movq $0, %rax
.L6555:
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $84, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -112(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -176(%rbp)
    movq -128(%rbp), %rax
    addq $84, %rax
    pushq %rax
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6540
.L6541:
    movq $0, %rax
    movq %rax, -96(%rbp)
.L6556:
    movq $1, %rax
    cmpq $0, %rax
    je .L6557
    movq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call typedef_name
    movq %r12, %rsp
    popq %r12
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6558
    jmp .L6557
.L6558:
    leaq -128(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call typedef_size
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    leaq -144(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call typedef_uns
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    leaq -160(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -176(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -192(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -192(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6560
    leaq -192(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6560:
    movq -176(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq %r12, %rsp
    popq %r12
    movq -176(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -160(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $36, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $52, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $60, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $80, %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq $65536, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    addq $84, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq -208(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call hash_name
    movq %r12, %rsp
    popq %r12
    popq %rcx
    movq %rax, (%rcx)
    movq -160(%rbp), %rax
    addq $84, %rax
    pushq %rax
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6556
.L6557:
    leaq .Lstr1561(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_program
    movq %r12, %rsp
    popq %r12
    movq string_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6562
    movq float_const_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6562
    xorl %eax, %eax
    jmp .L6563
.L6562:
    movl $1, %eax
.L6563:
    cmpq $0, %rax
    je .L6564
    leaq .Lstr1562(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_float_consts
    movq %r12, %rsp
    popq %r12
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_string_pool
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1563(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L6564:
    leaq .Lstr1564(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1565(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1566(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1567(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -96(%rbp)
    jmp .L6568
.L6566:
    leaq .Lstr1568(%rip), %rax
    pushq %rax
    leaq ptr_init_label(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1569(%rip), %rax
    pushq %rax
    leaq ptr_init_name(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq %r12, %rsp
    popq %r12
.L6567:
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6568
.L6568:
    movq -96(%rbp), %rax
    pushq %rax
    movq ptr_init_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L6566
.L6569:
    leaq .Lstr1570(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1571(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1572(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1573(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1574(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1575(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1576(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1577(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq source_start(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -96(%rbp)
.L6570:
    movq -96(%rbp), %rax
    pushq %rax
    movq processed_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6571
    leaq processed_files(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6570
.L6571:
    movq current_file(%rip), %rax
    cmpq $0, %rax
    je .L6572
    movq current_file(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq %r12, %rsp
    popq %r12
.L6572:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .section .rodata
.Lstr0:
    .asciz "too many macros"
.Lstr1:
    .asciz "too many macros"
.Lstr2:
    .asciz "%s:%d: Error at token '%s': %s\n"
.Lstr3:
    .asciz "(unknown)"
.Lstr4:
    .asciz "%s:%d: Error at token '%s': %s\n"
.Lstr5:
    .asciz "(unknown)"
.Lstr6:
    .asciz "Out of memory\n"
.Lstr7:
    .asciz "Out of memory\n"
.Lstr8:
    .asciz "Warning: too many processed files\n"
.Lstr9:
    .asciz "Warning: too many processed files\n"
.Lstr10:
    .asciz "r"
.Lstr11:
    .asciz "r"
.Lstr12:
    .asciz "r"
.Lstr13:
    .asciz "r"
.Lstr14:
    .asciz "r"
.Lstr15:
    .asciz "r"
.Lstr16:
    .asciz "scope depth exceeded"
.Lstr17:
    .asciz "scope depth exceeded"
.Lstr18:
    .asciz "scope underflow"
.Lstr19:
    .asciz "scope underflow"
.Lstr20:
    .asciz "keyword table full"
.Lstr21:
    .asciz "keyword table full"
.Lstr22:
    .asciz "if"
.Lstr23:
    .asciz "else"
.Lstr24:
    .asciz "while"
.Lstr25:
    .asciz "return"
.Lstr26:
    .asciz "int"
.Lstr27:
    .asciz "long"
.Lstr28:
    .asciz "char"
.Lstr29:
    .asciz "void"
.Lstr30:
    .asciz "enum"
.Lstr31:
    .asciz "static"
.Lstr32:
    .asciz "typedef"
.Lstr33:
    .asciz "struct"
.Lstr34:
    .asciz "const"
.Lstr35:
    .asciz "for"
.Lstr36:
    .asciz "switch"
.Lstr37:
    .asciz "case"
.Lstr38:
    .asciz "default"
.Lstr39:
    .asciz "break"
.Lstr40:
    .asciz "continue"
.Lstr41:
    .asciz "goto"
.Lstr42:
    .asciz "float"
.Lstr43:
    .asciz "double"
.Lstr44:
    .asciz "do"
.Lstr45:
    .asciz "sizeof"
.Lstr46:
    .asciz "union"
.Lstr47:
    .asciz "extern"
.Lstr48:
    .asciz "asm"
.Lstr49:
    .asciz "__asm"
.Lstr50:
    .asciz "__asm__"
.Lstr51:
    .asciz "volatile"
.Lstr52:
    .asciz "__volatile__"
.Lstr53:
    .asciz "inline"
.Lstr54:
    .asciz "__inline"
.Lstr55:
    .asciz "__inline__"
.Lstr56:
    .asciz "if"
.Lstr57:
    .asciz "else"
.Lstr58:
    .asciz "while"
.Lstr59:
    .asciz "return"
.Lstr60:
    .asciz "int"
.Lstr61:
    .asciz "long"
.Lstr62:
    .asciz "char"
.Lstr63:
    .asciz "void"
.Lstr64:
    .asciz "enum"
.Lstr65:
    .asciz "static"
.Lstr66:
    .asciz "typedef"
.Lstr67:
    .asciz "struct"
.Lstr68:
    .asciz "const"
.Lstr69:
    .asciz "for"
.Lstr70:
    .asciz "switch"
.Lstr71:
    .asciz "case"
.Lstr72:
    .asciz "default"
.Lstr73:
    .asciz "break"
.Lstr74:
    .asciz "continue"
.Lstr75:
    .asciz "goto"
.Lstr76:
    .asciz "float"
.Lstr77:
    .asciz "double"
.Lstr78:
    .asciz "do"
.Lstr79:
    .asciz "sizeof"
.Lstr80:
    .asciz "union"
.Lstr81:
    .asciz "extern"
.Lstr82:
    .asciz "asm"
.Lstr83:
    .asciz "__asm"
.Lstr84:
    .asciz "__asm__"
.Lstr85:
    .asciz "volatile"
.Lstr86:
    .asciz "__volatile__"
.Lstr87:
    .asciz "inline"
.Lstr88:
    .asciz "__inline"
.Lstr89:
    .asciz "__inline__"
.Lstr90:
    .asciz "invalid hex constant"
.Lstr91:
    .asciz "%ld"
.Lstr92:
    .asciz "invalid octal constant"
.Lstr93:
    .asciz "%ld"
.Lstr94:
    .asciz "invalid float constant"
.Lstr95:
    .asciz "numeric constant too long"
.Lstr96:
    .asciz "invalid float constant"
.Lstr97:
    .asciz "numeric constant too long"
.Lstr98:
    .asciz "%ld"
.Lstr99:
    .asciz "invalid hex constant"
.Lstr100:
    .asciz "%ld"
.Lstr101:
    .asciz "invalid octal constant"
.Lstr102:
    .asciz "%ld"
.Lstr103:
    .asciz "invalid float constant"
.Lstr104:
    .asciz "numeric constant too long"
.Lstr105:
    .asciz "invalid float constant"
.Lstr106:
    .asciz "numeric constant too long"
.Lstr107:
    .asciz "%ld"
.Lstr108:
    .asciz "ifdef"
.Lstr109:
    .asciz "ifndef"
.Lstr110:
    .asciz "if"
.Lstr111:
    .asciz "#if nesting too deep"
.Lstr112:
    .asciz "else"
.Lstr113:
    .asciz "endif"
.Lstr114:
    .asciz "unterminated comment"
.Lstr115:
    .asciz "define"
.Lstr116:
    .asciz "include"
.Lstr117:
    .asciz "include depth exceeded"
.Lstr118:
    .asciz "Warning: could not read included file: %s\n"
.Lstr119:
    .asciz "Warning: could not find included file: %s\n"
.Lstr120:
    .asciz "ifdef"
.Lstr121:
    .asciz "#if nesting too deep"
.Lstr122:
    .asciz "ifndef"
.Lstr123:
    .asciz "#if nesting too deep"
.Lstr124:
    .asciz "if"
.Lstr125:
    .asciz "#if nesting too deep"
.Lstr126:
    .asciz "else"
.Lstr127:
    .asciz "#else without #if"
.Lstr128:
    .asciz "endif"
.Lstr129:
    .asciz "#endif without #if"
.Lstr130:
    .asciz "identifier too long"
.Lstr131:
    .asciz "%d"
.Lstr132:
    .asciz "unterminated string literal"
.Lstr133:
    .asciz "invalid hex escape"
.Lstr134:
    .asciz "unterminated char literal"
.Lstr135:
    .asciz "%d"
.Lstr136:
    .asciz "<<="
.Lstr137:
    .asciz "<<"
.Lstr138:
    .asciz "<="
.Lstr139:
    .asciz ">>="
.Lstr140:
    .asciz ">>"
.Lstr141:
    .asciz ">="
.Lstr142:
    .asciz "=="
.Lstr143:
    .asciz "!="
.Lstr144:
    .asciz "&&"
.Lstr145:
    .asciz "&="
.Lstr146:
    .asciz "||"
.Lstr147:
    .asciz "|="
.Lstr148:
    .asciz "++"
.Lstr149:
    .asciz "+="
.Lstr150:
    .asciz "--"
.Lstr151:
    .asciz "-="
.Lstr152:
    .asciz "->"
.Lstr153:
    .asciz "*="
.Lstr154:
    .asciz "/="
.Lstr155:
    .asciz "%="
.Lstr156:
    .asciz "^="
.Lstr157:
    .asciz "ifdef"
.Lstr158:
    .asciz "ifndef"
.Lstr159:
    .asciz "if"
.Lstr160:
    .asciz "#if nesting too deep"
.Lstr161:
    .asciz "else"
.Lstr162:
    .asciz "endif"
.Lstr163:
    .asciz "unterminated comment"
.Lstr164:
    .asciz "define"
.Lstr165:
    .asciz "include"
.Lstr166:
    .asciz "include depth exceeded"
.Lstr167:
    .asciz "Warning: could not read included file: %s\n"
.Lstr168:
    .asciz "Warning: could not find included file: %s\n"
.Lstr169:
    .asciz "ifdef"
.Lstr170:
    .asciz "#if nesting too deep"
.Lstr171:
    .asciz "ifndef"
.Lstr172:
    .asciz "#if nesting too deep"
.Lstr173:
    .asciz "if"
.Lstr174:
    .asciz "#if nesting too deep"
.Lstr175:
    .asciz "else"
.Lstr176:
    .asciz "#else without #if"
.Lstr177:
    .asciz "endif"
.Lstr178:
    .asciz "#endif without #if"
.Lstr179:
    .asciz "identifier too long"
.Lstr180:
    .asciz "%d"
.Lstr181:
    .asciz "unterminated string literal"
.Lstr182:
    .asciz "invalid hex escape"
.Lstr183:
    .asciz "unterminated char literal"
.Lstr184:
    .asciz "%d"
.Lstr185:
    .asciz "<<="
.Lstr186:
    .asciz "<<"
.Lstr187:
    .asciz "<="
.Lstr188:
    .asciz ">>="
.Lstr189:
    .asciz ">>"
.Lstr190:
    .asciz ">="
.Lstr191:
    .asciz "=="
.Lstr192:
    .asciz "!="
.Lstr193:
    .asciz "&&"
.Lstr194:
    .asciz "&="
.Lstr195:
    .asciz "||"
.Lstr196:
    .asciz "|="
.Lstr197:
    .asciz "++"
.Lstr198:
    .asciz "+="
.Lstr199:
    .asciz "--"
.Lstr200:
    .asciz "-="
.Lstr201:
    .asciz "->"
.Lstr202:
    .asciz "*="
.Lstr203:
    .asciz "/="
.Lstr204:
    .asciz "%="
.Lstr205:
    .asciz "^="
.Lstr206:
    .asciz "unexpected token"
.Lstr207:
    .asciz "unexpected token"
.Lstr208:
    .asciz "\\n"
.Lstr209:
    .asciz "\\t"
.Lstr210:
    .asciz "\\\\"
.Lstr211:
    .asciz "\\\""
.Lstr212:
    .asciz "\\r"
.Lstr213:
    .asciz "\\f"
.Lstr214:
    .asciz "\\v"
.Lstr215:
    .asciz "\\a"
.Lstr216:
    .asciz "\\b"
.Lstr217:
    .asciz "\\%03o"
.Lstr218:
    .asciz "\\n"
.Lstr219:
    .asciz "\\t"
.Lstr220:
    .asciz "\\\\"
.Lstr221:
    .asciz "\\\""
.Lstr222:
    .asciz "\\r"
.Lstr223:
    .asciz "\\f"
.Lstr224:
    .asciz "\\v"
.Lstr225:
    .asciz "\\a"
.Lstr226:
    .asciz "\\b"
.Lstr227:
    .asciz "\\%03o"
.Lstr228:
    .asciz ".L%d:\n"
.Lstr229:
    .asciz ".L%d:\n"
.Lstr230:
    .asciz "too many symbols"
.Lstr231:
    .asciz "    .bss"
.Lstr232:
    .asciz "    .globl %s"
.Lstr233:
    .asciz "%s:"
.Lstr234:
    .asciz "    .space %d"
.Lstr235:
    .asciz "    .text"
.Lstr236:
    .asciz "too many symbols"
.Lstr237:
    .asciz "    .bss"
.Lstr238:
    .asciz "    .globl %s"
.Lstr239:
    .asciz "%s:"
.Lstr240:
    .asciz "    .space %d"
.Lstr241:
    .asciz "    .text"
.Lstr242:
    .asciz "%rdi"
.Lstr243:
    .asciz "%rsi"
.Lstr244:
    .asciz "%rdx"
.Lstr245:
    .asciz "%rcx"
.Lstr246:
    .asciz "%r8"
.Lstr247:
    .asciz "%r9"
.Lstr248:
    .asciz "%rdi"
.Lstr249:
    .asciz "%rsi"
.Lstr250:
    .asciz "%rdx"
.Lstr251:
    .asciz "%rcx"
.Lstr252:
    .asciz "%r8"
.Lstr253:
    .asciz "%r9"
.Lstr254:
    .asciz "stderr"
.Lstr255:
    .asciz "stdin"
.Lstr256:
    .asciz "stdout"
.Lstr257:
    .asciz "optarg"
.Lstr258:
    .asciz "optind"
.Lstr259:
    .asciz "errno"
.Lstr260:
    .asciz "size_t"
.Lstr261:
    .asciz "va_list"
.Lstr262:
    .asciz "FILE"
.Lstr263:
    .asciz "stderr"
.Lstr264:
    .asciz "stdin"
.Lstr265:
    .asciz "stdout"
.Lstr266:
    .asciz "optarg"
.Lstr267:
    .asciz "optind"
.Lstr268:
    .asciz "errno"
.Lstr269:
    .asciz "size_t"
.Lstr270:
    .asciz "va_list"
.Lstr271:
    .asciz "FILE"
.Lstr272:
    .asciz "int8_t"
.Lstr273:
    .asciz "uint8_t"
.Lstr274:
    .asciz "int16_t"
.Lstr275:
    .asciz "uint16_t"
.Lstr276:
    .asciz "int32_t"
.Lstr277:
    .asciz "uint32_t"
.Lstr278:
    .asciz "int64_t"
.Lstr279:
    .asciz "uint64_t"
.Lstr280:
    .asciz "uintptr_t"
.Lstr281:
    .asciz "intptr_t"
.Lstr282:
    .asciz "short"
.Lstr283:
    .asciz "int8_t"
.Lstr284:
    .asciz "uint8_t"
.Lstr285:
    .asciz "int16_t"
.Lstr286:
    .asciz "uint16_t"
.Lstr287:
    .asciz "int32_t"
.Lstr288:
    .asciz "uint32_t"
.Lstr289:
    .asciz "int64_t"
.Lstr290:
    .asciz "uint64_t"
.Lstr291:
    .asciz "uintptr_t"
.Lstr292:
    .asciz "intptr_t"
.Lstr293:
    .asciz "short"
.Lstr294:
    .asciz "    movq $%s, %%rax"
.Lstr295:
    .asciz "    leaq .LCf%d(%%rip), %%rax"
.Lstr296:
    .asciz "    movss (%%rax), %%xmm0"
.Lstr297:
    .asciz "    movd %%xmm0, %%eax"
.Lstr298:
    .asciz "    movsd (%%rax), %%xmm0"
.Lstr299:
    .asciz "    movq %%xmm0, %%rax"
.Lstr300:
    .asciz "    pushq %%rax"
.Lstr301:
    .asciz "    movq %d(%%rsp), %s"
.Lstr302:
    .asciz "too many function arguments (max 6)"
.Lstr303:
    .asciz "    addq $%d, %%rsp"
.Lstr304:
    .asciz "    pushq %%r12"
.Lstr305:
    .asciz "    movq %%rsp, %%r12"
.Lstr306:
    .asciz "    andq $-16, %%rsp"
.Lstr307:
    .asciz "    xorl %%eax, %%eax"
.Lstr308:
    .asciz "    call %s"
.Lstr309:
    .asciz "    movq %%r12, %%rsp"
.Lstr310:
    .asciz "    popq %%r12"
.Lstr311:
    .asciz "undefined variable"
.Lstr312:
    .asciz "    movq $%d, %%rax"
.Lstr313:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr314:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr315:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr316:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr317:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr318:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr319:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr320:
    .asciz "    movzbq %s(%%rip), %%rax"
.Lstr321:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr322:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr323:
    .asciz "    movzbq %d(%%rbp), %%rax"
.Lstr324:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr325:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr326:
    .asciz "    movzwq %s(%%rip), %%rax"
.Lstr327:
    .asciz "    movswq %s(%%rip), %%rax"
.Lstr328:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr329:
    .asciz "    movzwq %d(%%rbp), %%rax"
.Lstr330:
    .asciz "    movswq %d(%%rbp), %%rax"
.Lstr331:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr332:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr333:
    .asciz "    movslq %s(%%rip), %%rax"
.Lstr334:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr335:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr336:
    .asciz "    movslq %d(%%rbp), %%rax"
.Lstr337:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr338:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr339:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr340:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr341:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr342:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr343:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr344:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr345:
    .asciz "    movswq (%%rax), %%rax"
.Lstr346:
    .asciz "    movl (%%rax), %%eax"
.Lstr347:
    .asciz "    movslq (%%rax), %%rax"
.Lstr348:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr349:
    .asciz "    movl (%%rax), %%eax"
.Lstr350:
    .asciz "    movq (%%rax), %%rax"
.Lstr351:
    .asciz "    movq (%%rax), %%rax"
.Lstr352:
    .asciz "expected identifier after '&'"
.Lstr353:
    .asciz "undefined variable"
.Lstr354:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr355:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr356:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr357:
    .asciz "    xorl $0x80000000, %%eax"
.Lstr358:
    .asciz "    xorq $0x8000000000000000, %%rax"
.Lstr359:
    .asciz "    negq %%rax"
.Lstr360:
    .asciz "    testq %%rax, %%rax"
.Lstr361:
    .asciz "    sete %%al"
.Lstr362:
    .asciz "    movzbq %%al, %%rax"
.Lstr363:
    .asciz "    notq %%rax"
.Lstr364:
    .asciz "unsigned"
.Lstr365:
    .asciz "signed"
.Lstr366:
    .asciz "sizeof: undefined variable"
.Lstr367:
    .asciz "    movq $%d, %%rax"
.Lstr368:
    .asciz "invalid primary expression"
.Lstr369:
    .asciz "    movq $%s, %%rax"
.Lstr370:
    .asciz "    leaq .LCf%d(%%rip), %%rax"
.Lstr371:
    .asciz "    movss (%%rax), %%xmm0"
.Lstr372:
    .asciz "    movd %%xmm0, %%eax"
.Lstr373:
    .asciz "    movsd (%%rax), %%xmm0"
.Lstr374:
    .asciz "    movq %%xmm0, %%rax"
.Lstr375:
    .asciz "    pushq %%rax"
.Lstr376:
    .asciz "    movq %d(%%rsp), %s"
.Lstr377:
    .asciz "too many function arguments (max 6)"
.Lstr378:
    .asciz "    addq $%d, %%rsp"
.Lstr379:
    .asciz "    pushq %%r12"
.Lstr380:
    .asciz "    movq %%rsp, %%r12"
.Lstr381:
    .asciz "    andq $-16, %%rsp"
.Lstr382:
    .asciz "    xorl %%eax, %%eax"
.Lstr383:
    .asciz "    call %s"
.Lstr384:
    .asciz "    movq %%r12, %%rsp"
.Lstr385:
    .asciz "    popq %%r12"
.Lstr386:
    .asciz "undefined variable"
.Lstr387:
    .asciz "    movq $%d, %%rax"
.Lstr388:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr389:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr390:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr391:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr392:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr393:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr394:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr395:
    .asciz "    movzbq %s(%%rip), %%rax"
.Lstr396:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr397:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr398:
    .asciz "    movzbq %d(%%rbp), %%rax"
.Lstr399:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr400:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr401:
    .asciz "    movzwq %s(%%rip), %%rax"
.Lstr402:
    .asciz "    movswq %s(%%rip), %%rax"
.Lstr403:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr404:
    .asciz "    movzwq %d(%%rbp), %%rax"
.Lstr405:
    .asciz "    movswq %d(%%rbp), %%rax"
.Lstr406:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr407:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr408:
    .asciz "    movslq %s(%%rip), %%rax"
.Lstr409:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr410:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr411:
    .asciz "    movslq %d(%%rbp), %%rax"
.Lstr412:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr413:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr414:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr415:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr416:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr417:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr418:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr419:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr420:
    .asciz "    movswq (%%rax), %%rax"
.Lstr421:
    .asciz "    movl (%%rax), %%eax"
.Lstr422:
    .asciz "    movslq (%%rax), %%rax"
.Lstr423:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr424:
    .asciz "    movl (%%rax), %%eax"
.Lstr425:
    .asciz "    movq (%%rax), %%rax"
.Lstr426:
    .asciz "    movq (%%rax), %%rax"
.Lstr427:
    .asciz "expected identifier after '&'"
.Lstr428:
    .asciz "undefined variable"
.Lstr429:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr430:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr431:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr432:
    .asciz "    xorl $0x80000000, %%eax"
.Lstr433:
    .asciz "    xorq $0x8000000000000000, %%rax"
.Lstr434:
    .asciz "    negq %%rax"
.Lstr435:
    .asciz "    testq %%rax, %%rax"
.Lstr436:
    .asciz "    sete %%al"
.Lstr437:
    .asciz "    movzbq %%al, %%rax"
.Lstr438:
    .asciz "    notq %%rax"
.Lstr439:
    .asciz "unsigned"
.Lstr440:
    .asciz "signed"
.Lstr441:
    .asciz "sizeof: undefined variable"
.Lstr442:
    .asciz "    movq $%d, %%rax"
.Lstr443:
    .asciz "invalid primary expression"
.Lstr444:
    .asciz "undefined variable"
.Lstr445:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr446:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr447:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr448:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr449:
    .asciz "lvalue required"
.Lstr450:
    .asciz "undefined variable"
.Lstr451:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr452:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr453:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr454:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr455:
    .asciz "lvalue required"
.Lstr456:
    .asciz "    pushq %%rax"
.Lstr457:
    .asciz "    popq %%rcx"
.Lstr458:
    .asciz "    imulq $%d, %%rax"
.Lstr459:
    .asciz "    addq %%rcx, %%rax"
.Lstr460:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr461:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr462:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr463:
    .asciz "    movswq (%%rax), %%rax"
.Lstr464:
    .asciz "    movl (%%rax), %%eax"
.Lstr465:
    .asciz "    movslq (%%rax), %%rax"
.Lstr466:
    .asciz "    movq (%%rax), %%rax"
.Lstr467:
    .asciz "    addq $%d, %%rax"
.Lstr468:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr469:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr470:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr471:
    .asciz "    movswq (%%rax), %%rax"
.Lstr472:
    .asciz "    movl (%%rax), %%eax"
.Lstr473:
    .asciz "    movslq (%%rax), %%rax"
.Lstr474:
    .asciz "    movq (%%rax), %%rax"
.Lstr475:
    .asciz "    addq $%d, %%rax"
.Lstr476:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr477:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr478:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr479:
    .asciz "    movswq (%%rax), %%rax"
.Lstr480:
    .asciz "    movl (%%rax), %%eax"
.Lstr481:
    .asciz "    movslq (%%rax), %%rax"
.Lstr482:
    .asciz "    movq (%%rax), %%rax"
.Lstr483:
    .asciz "    pushq %%rax"
.Lstr484:
    .asciz "    popq %%rcx"
.Lstr485:
    .asciz "    imulq $%d, %%rax"
.Lstr486:
    .asciz "    addq %%rcx, %%rax"
.Lstr487:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr488:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr489:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr490:
    .asciz "    movswq (%%rax), %%rax"
.Lstr491:
    .asciz "    movl (%%rax), %%eax"
.Lstr492:
    .asciz "    movslq (%%rax), %%rax"
.Lstr493:
    .asciz "    movq (%%rax), %%rax"
.Lstr494:
    .asciz "    addq $%d, %%rax"
.Lstr495:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr496:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr497:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr498:
    .asciz "    movswq (%%rax), %%rax"
.Lstr499:
    .asciz "    movl (%%rax), %%eax"
.Lstr500:
    .asciz "    movslq (%%rax), %%rax"
.Lstr501:
    .asciz "    movq (%%rax), %%rax"
.Lstr502:
    .asciz "    addq $%d, %%rax"
.Lstr503:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr504:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr505:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr506:
    .asciz "    movswq (%%rax), %%rax"
.Lstr507:
    .asciz "    movl (%%rax), %%eax"
.Lstr508:
    .asciz "    movslq (%%rax), %%rax"
.Lstr509:
    .asciz "    movq (%%rax), %%rax"
.Lstr510:
    .asciz "    pushq %%rax"
.Lstr511:
    .asciz "    popq %%rcx"
.Lstr512:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr513:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr514:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr515:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr516:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr517:
    .asciz "    movd %%eax, %%xmm1"
.Lstr518:
    .asciz "    movq %%rax, %%xmm1"
.Lstr519:
    .asciz "    movq %%rax, %%xmm1"
.Lstr520:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr521:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr522:
    .asciz "    mulsd %%xmm1, %%xmm0"
.Lstr523:
    .asciz "    divsd %%xmm1, %%xmm0"
.Lstr524:
    .asciz "    movq %%xmm0, %%rax"
.Lstr525:
    .asciz "    mulss %%xmm1, %%xmm0"
.Lstr526:
    .asciz "    divss %%xmm1, %%xmm0"
.Lstr527:
    .asciz "    movd %%xmm0, %%eax"
.Lstr528:
    .asciz "    movq %%rax, %%r8"
.Lstr529:
    .asciz "    movq %%rcx, %%rax"
.Lstr530:
    .asciz "    cqto"
.Lstr531:
    .asciz "    idivq %%r8"
.Lstr532:
    .asciz "    movq %%rdx, %%rax"
.Lstr533:
    .asciz "    imulq %%rcx, %%rax"
.Lstr534:
    .asciz "    movq %%rax, %%r8"
.Lstr535:
    .asciz "    movq %%rcx, %%rax"
.Lstr536:
    .asciz "    cqto"
.Lstr537:
    .asciz "    idivq %%r8"
.Lstr538:
    .asciz "    pushq %%rax"
.Lstr539:
    .asciz "    popq %%rcx"
.Lstr540:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr541:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr542:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr543:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr544:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr545:
    .asciz "    movd %%eax, %%xmm1"
.Lstr546:
    .asciz "    movq %%rax, %%xmm1"
.Lstr547:
    .asciz "    movq %%rax, %%xmm1"
.Lstr548:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr549:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr550:
    .asciz "    mulsd %%xmm1, %%xmm0"
.Lstr551:
    .asciz "    divsd %%xmm1, %%xmm0"
.Lstr552:
    .asciz "    movq %%xmm0, %%rax"
.Lstr553:
    .asciz "    mulss %%xmm1, %%xmm0"
.Lstr554:
    .asciz "    divss %%xmm1, %%xmm0"
.Lstr555:
    .asciz "    movd %%xmm0, %%eax"
.Lstr556:
    .asciz "    movq %%rax, %%r8"
.Lstr557:
    .asciz "    movq %%rcx, %%rax"
.Lstr558:
    .asciz "    cqto"
.Lstr559:
    .asciz "    idivq %%r8"
.Lstr560:
    .asciz "    movq %%rdx, %%rax"
.Lstr561:
    .asciz "    imulq %%rcx, %%rax"
.Lstr562:
    .asciz "    movq %%rax, %%r8"
.Lstr563:
    .asciz "    movq %%rcx, %%rax"
.Lstr564:
    .asciz "    cqto"
.Lstr565:
    .asciz "    idivq %%r8"
.Lstr566:
    .asciz "    pushq %%rax"
.Lstr567:
    .asciz "    popq %%rcx"
.Lstr568:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr569:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr570:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr571:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr572:
    .asciz "    movd %%eax, %%xmm1"
.Lstr573:
    .asciz "    movq %%rax, %%xmm1"
.Lstr574:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr575:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr576:
    .asciz "    addsd %%xmm1, %%xmm0"
.Lstr577:
    .asciz "    subsd %%xmm1, %%xmm0"
.Lstr578:
    .asciz "    movq %%xmm0, %%rax"
.Lstr579:
    .asciz "    addss %%xmm1, %%xmm0"
.Lstr580:
    .asciz "    subss %%xmm1, %%xmm0"
.Lstr581:
    .asciz "    movd %%xmm0, %%eax"
.Lstr582:
    .asciz "    addq %%rcx, %%rax"
.Lstr583:
    .asciz "    subq %%rax, %%rcx"
.Lstr584:
    .asciz "    movq %%rcx, %%rax"
.Lstr585:
    .asciz "    pushq %%rax"
.Lstr586:
    .asciz "    popq %%rcx"
.Lstr587:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr588:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr589:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr590:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr591:
    .asciz "    movd %%eax, %%xmm1"
.Lstr592:
    .asciz "    movq %%rax, %%xmm1"
.Lstr593:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr594:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr595:
    .asciz "    addsd %%xmm1, %%xmm0"
.Lstr596:
    .asciz "    subsd %%xmm1, %%xmm0"
.Lstr597:
    .asciz "    movq %%xmm0, %%rax"
.Lstr598:
    .asciz "    addss %%xmm1, %%xmm0"
.Lstr599:
    .asciz "    subss %%xmm1, %%xmm0"
.Lstr600:
    .asciz "    movd %%xmm0, %%eax"
.Lstr601:
    .asciz "    addq %%rcx, %%rax"
.Lstr602:
    .asciz "    subq %%rax, %%rcx"
.Lstr603:
    .asciz "    movq %%rcx, %%rax"
.Lstr604:
    .asciz "    pushq %%rax"
.Lstr605:
    .asciz "    pushq %%rax"
.Lstr606:
    .asciz "    popq %%rcx"
.Lstr607:
    .asciz "    popq %%rax"
.Lstr608:
    .asciz "    salq %%cl, %%rax"
.Lstr609:
    .asciz "    sarq %%cl, %%rax"
.Lstr610:
    .asciz "    pushq %%rax"
.Lstr611:
    .asciz "    pushq %%rax"
.Lstr612:
    .asciz "    popq %%rcx"
.Lstr613:
    .asciz "    popq %%rax"
.Lstr614:
    .asciz "    salq %%cl, %%rax"
.Lstr615:
    .asciz "    sarq %%cl, %%rax"
.Lstr616:
    .asciz "    pushq %%rax"
.Lstr617:
    .asciz "    popq %%rcx"
.Lstr618:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr619:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr620:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr621:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr622:
    .asciz "    movd %%eax, %%xmm1"
.Lstr623:
    .asciz "    movq %%rax, %%xmm1"
.Lstr624:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr625:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr626:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr627:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr628:
    .asciz "    setb %%al"
.Lstr629:
    .asciz "    setbe %%al"
.Lstr630:
    .asciz "    seta %%al"
.Lstr631:
    .asciz "    setae %%al"
.Lstr632:
    .asciz "    movzbq %%al, %%rax"
.Lstr633:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr634:
    .asciz "    setl %%al"
.Lstr635:
    .asciz "    setle %%al"
.Lstr636:
    .asciz "    setg %%al"
.Lstr637:
    .asciz "    setge %%al"
.Lstr638:
    .asciz "    movzbq %%al, %%rax"
.Lstr639:
    .asciz "    pushq %%rax"
.Lstr640:
    .asciz "    popq %%rcx"
.Lstr641:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr642:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr643:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr644:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr645:
    .asciz "    movd %%eax, %%xmm1"
.Lstr646:
    .asciz "    movq %%rax, %%xmm1"
.Lstr647:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr648:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr649:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr650:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr651:
    .asciz "    setb %%al"
.Lstr652:
    .asciz "    setbe %%al"
.Lstr653:
    .asciz "    seta %%al"
.Lstr654:
    .asciz "    setae %%al"
.Lstr655:
    .asciz "    movzbq %%al, %%rax"
.Lstr656:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr657:
    .asciz "    setl %%al"
.Lstr658:
    .asciz "    setle %%al"
.Lstr659:
    .asciz "    setg %%al"
.Lstr660:
    .asciz "    setge %%al"
.Lstr661:
    .asciz "    movzbq %%al, %%rax"
.Lstr662:
    .asciz "    pushq %%rax"
.Lstr663:
    .asciz "    popq %%rcx"
.Lstr664:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr665:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr666:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr667:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr668:
    .asciz "    movd %%eax, %%xmm1"
.Lstr669:
    .asciz "    movq %%rax, %%xmm1"
.Lstr670:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr671:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr672:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr673:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr674:
    .asciz "    sete %%al"
.Lstr675:
    .asciz "    setne %%al"
.Lstr676:
    .asciz "    movzbq %%al, %%rax"
.Lstr677:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr678:
    .asciz "    sete %%al"
.Lstr679:
    .asciz "    setne %%al"
.Lstr680:
    .asciz "    movzbq %%al, %%rax"
.Lstr681:
    .asciz "    pushq %%rax"
.Lstr682:
    .asciz "    popq %%rcx"
.Lstr683:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr684:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr685:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr686:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr687:
    .asciz "    movd %%eax, %%xmm1"
.Lstr688:
    .asciz "    movq %%rax, %%xmm1"
.Lstr689:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr690:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr691:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr692:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr693:
    .asciz "    sete %%al"
.Lstr694:
    .asciz "    setne %%al"
.Lstr695:
    .asciz "    movzbq %%al, %%rax"
.Lstr696:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr697:
    .asciz "    sete %%al"
.Lstr698:
    .asciz "    setne %%al"
.Lstr699:
    .asciz "    movzbq %%al, %%rax"
.Lstr700:
    .asciz "    pushq %%rax"
.Lstr701:
    .asciz "    popq %%rcx"
.Lstr702:
    .asciz "    andq %%rcx, %%rax"
.Lstr703:
    .asciz "    pushq %%rax"
.Lstr704:
    .asciz "    popq %%rcx"
.Lstr705:
    .asciz "    andq %%rcx, %%rax"
.Lstr706:
    .asciz "    pushq %%rax"
.Lstr707:
    .asciz "    popq %%rcx"
.Lstr708:
    .asciz "    xorq %%rcx, %%rax"
.Lstr709:
    .asciz "    pushq %%rax"
.Lstr710:
    .asciz "    popq %%rcx"
.Lstr711:
    .asciz "    xorq %%rcx, %%rax"
.Lstr712:
    .asciz "    pushq %%rax"
.Lstr713:
    .asciz "    popq %%rcx"
.Lstr714:
    .asciz "    orq %%rcx, %%rax"
.Lstr715:
    .asciz "    pushq %%rax"
.Lstr716:
    .asciz "    popq %%rcx"
.Lstr717:
    .asciz "    orq %%rcx, %%rax"
.Lstr718:
    .asciz "    testq %%rax, %%rax"
.Lstr719:
    .asciz "    je .L%d"
.Lstr720:
    .asciz "    testq %%rax, %%rax"
.Lstr721:
    .asciz "    je .L%d"
.Lstr722:
    .asciz "    movl $1, %%eax"
.Lstr723:
    .asciz "    jmp .L%d"
.Lstr724:
    .asciz "    xorl %%eax, %%eax"
.Lstr725:
    .asciz "    testq %%rax, %%rax"
.Lstr726:
    .asciz "    je .L%d"
.Lstr727:
    .asciz "    testq %%rax, %%rax"
.Lstr728:
    .asciz "    je .L%d"
.Lstr729:
    .asciz "    movl $1, %%eax"
.Lstr730:
    .asciz "    jmp .L%d"
.Lstr731:
    .asciz "    xorl %%eax, %%eax"
.Lstr732:
    .asciz "    testq %%rax, %%rax"
.Lstr733:
    .asciz "    jne .L%d"
.Lstr734:
    .asciz "    testq %%rax, %%rax"
.Lstr735:
    .asciz "    jne .L%d"
.Lstr736:
    .asciz "    xorl %%eax, %%eax"
.Lstr737:
    .asciz "    jmp .L%d"
.Lstr738:
    .asciz "    movl $1, %%eax"
.Lstr739:
    .asciz "    testq %%rax, %%rax"
.Lstr740:
    .asciz "    jne .L%d"
.Lstr741:
    .asciz "    testq %%rax, %%rax"
.Lstr742:
    .asciz "    jne .L%d"
.Lstr743:
    .asciz "    xorl %%eax, %%eax"
.Lstr744:
    .asciz "    jmp .L%d"
.Lstr745:
    .asciz "    movl $1, %%eax"
.Lstr746:
    .asciz "    testq %%rax, %%rax"
.Lstr747:
    .asciz "    je .L%d"
.Lstr748:
    .asciz "    jmp .L%d"
.Lstr749:
    .asciz "    testq %%rax, %%rax"
.Lstr750:
    .asciz "    je .L%d"
.Lstr751:
    .asciz "    jmp .L%d"
.Lstr752:
    .asciz "    imull %%ecx, %%eax"
.Lstr753:
    .asciz "    imulq %%rcx, %%rax"
.Lstr754:
    .asciz "    movl %%eax, %%r8d"
.Lstr755:
    .asciz "    movl %%ecx, %%eax"
.Lstr756:
    .asciz "    cltd"
.Lstr757:
    .asciz "    idivl %%r8d"
.Lstr758:
    .asciz "    movl %%edx, %%eax"
.Lstr759:
    .asciz "    movq %%rax, %%r8"
.Lstr760:
    .asciz "    movq %%rcx, %%rax"
.Lstr761:
    .asciz "    cqto"
.Lstr762:
    .asciz "    idivq %%r8"
.Lstr763:
    .asciz "    movq %%rdx, %%rax"
.Lstr764:
    .asciz "    andl %%ecx, %%eax"
.Lstr765:
    .asciz "    andq %%rcx, %%rax"
.Lstr766:
    .asciz "    orl %%ecx, %%eax"
.Lstr767:
    .asciz "    orq %%rcx, %%rax"
.Lstr768:
    .asciz "    xorl %%ecx, %%eax"
.Lstr769:
    .asciz "    xorq %%rcx, %%rax"
.Lstr770:
    .asciz "    movq %%rax, %%r8"
.Lstr771:
    .asciz "    movq %%rcx, %%rax"
.Lstr772:
    .asciz "    movq %%r8, %%rcx"
.Lstr773:
    .asciz "    sall %%cl, %%eax"
.Lstr774:
    .asciz "    salq %%cl, %%rax"
.Lstr775:
    .asciz "    sarl %%cl, %%eax"
.Lstr776:
    .asciz "    sarq %%cl, %%rax"
.Lstr777:
    .asciz "    imull %%ecx, %%eax"
.Lstr778:
    .asciz "    imulq %%rcx, %%rax"
.Lstr779:
    .asciz "    movl %%eax, %%r8d"
.Lstr780:
    .asciz "    movl %%ecx, %%eax"
.Lstr781:
    .asciz "    cltd"
.Lstr782:
    .asciz "    idivl %%r8d"
.Lstr783:
    .asciz "    movl %%edx, %%eax"
.Lstr784:
    .asciz "    movq %%rax, %%r8"
.Lstr785:
    .asciz "    movq %%rcx, %%rax"
.Lstr786:
    .asciz "    cqto"
.Lstr787:
    .asciz "    idivq %%r8"
.Lstr788:
    .asciz "    movq %%rdx, %%rax"
.Lstr789:
    .asciz "    andl %%ecx, %%eax"
.Lstr790:
    .asciz "    andq %%rcx, %%rax"
.Lstr791:
    .asciz "    orl %%ecx, %%eax"
.Lstr792:
    .asciz "    orq %%rcx, %%rax"
.Lstr793:
    .asciz "    xorl %%ecx, %%eax"
.Lstr794:
    .asciz "    xorq %%rcx, %%rax"
.Lstr795:
    .asciz "    movq %%rax, %%r8"
.Lstr796:
    .asciz "    movq %%rcx, %%rax"
.Lstr797:
    .asciz "    movq %%r8, %%rcx"
.Lstr798:
    .asciz "    sall %%cl, %%eax"
.Lstr799:
    .asciz "    salq %%cl, %%rax"
.Lstr800:
    .asciz "    sarl %%cl, %%eax"
.Lstr801:
    .asciz "    sarq %%cl, %%rax"
.Lstr802:
    .asciz "    pushq %%rax"
.Lstr803:
    .asciz "    popq %%rcx"
.Lstr804:
    .asciz "    movb %%al, (%%rcx)"
.Lstr805:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr806:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr807:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr808:
    .asciz "    pushq %%rax"
.Lstr809:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr810:
    .asciz "    movl (%%rax), %%eax"
.Lstr811:
    .asciz "    movq (%%rax), %%rax"
.Lstr812:
    .asciz "    pushq %%rax"
.Lstr813:
    .asciz "    popq %%rcx"
.Lstr814:
    .asciz "    addq %%rcx, %%rax"
.Lstr815:
    .asciz "    popq %%rcx"
.Lstr816:
    .asciz "    movb %%al, (%%rcx)"
.Lstr817:
    .asciz "    addq %%rcx, %%rax"
.Lstr818:
    .asciz "    popq %%rcx"
.Lstr819:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr820:
    .asciz "    addl %%ecx, %%eax"
.Lstr821:
    .asciz "    popq %%rcx"
.Lstr822:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr823:
    .asciz "    addq %%rcx, %%rax"
.Lstr824:
    .asciz "    popq %%rcx"
.Lstr825:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr826:
    .asciz "    pushq %%rax"
.Lstr827:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr828:
    .asciz "    movl (%%rax), %%eax"
.Lstr829:
    .asciz "    movq (%%rax), %%rax"
.Lstr830:
    .asciz "    pushq %%rax"
.Lstr831:
    .asciz "    popq %%rcx"
.Lstr832:
    .asciz "    subq %%rax, %%rcx"
.Lstr833:
    .asciz "    movq %%rcx, %%rax"
.Lstr834:
    .asciz "    popq %%rcx"
.Lstr835:
    .asciz "    movb %%al, (%%rcx)"
.Lstr836:
    .asciz "    subq %%rax, %%rcx"
.Lstr837:
    .asciz "    movq %%rcx, %%rax"
.Lstr838:
    .asciz "    popq %%rcx"
.Lstr839:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr840:
    .asciz "    subl %%eax, %%ecx"
.Lstr841:
    .asciz "    movl %%ecx, %%eax"
.Lstr842:
    .asciz "    popq %%rcx"
.Lstr843:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr844:
    .asciz "    subq %%rax, %%rcx"
.Lstr845:
    .asciz "    movq %%rcx, %%rax"
.Lstr846:
    .asciz "    popq %%rcx"
.Lstr847:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr848:
    .asciz "    pushq %%rax"
.Lstr849:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr850:
    .asciz "    movl (%%rax), %%eax"
.Lstr851:
    .asciz "    movq (%%rax), %%rax"
.Lstr852:
    .asciz "    pushq %%rax"
.Lstr853:
    .asciz "    popq %%rcx"
.Lstr854:
    .asciz "    popq %%rcx"
.Lstr855:
    .asciz "    movb %%al, (%%rcx)"
.Lstr856:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr857:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr858:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr859:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr860:
    .asciz "    movl (%%rax), %%ecx"
.Lstr861:
    .asciz "    movq (%%rax), %%rcx"
.Lstr862:
    .asciz "    addb $1, (%%rax)"
.Lstr863:
    .asciz "    addl $1, (%%rax)"
.Lstr864:
    .asciz "    addq $1, (%%rax)"
.Lstr865:
    .asciz "    subb $1, (%%rax)"
.Lstr866:
    .asciz "    subl $1, (%%rax)"
.Lstr867:
    .asciz "    subq $1, (%%rax)"
.Lstr868:
    .asciz "    movq %%rcx, %%rax"
.Lstr869:
    .asciz "    pushq %%rax"
.Lstr870:
    .asciz "    popq %%rcx"
.Lstr871:
    .asciz "    movb %%al, (%%rcx)"
.Lstr872:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr873:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr874:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr875:
    .asciz "    pushq %%rax"
.Lstr876:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr877:
    .asciz "    movl (%%rax), %%eax"
.Lstr878:
    .asciz "    movq (%%rax), %%rax"
.Lstr879:
    .asciz "    pushq %%rax"
.Lstr880:
    .asciz "    popq %%rcx"
.Lstr881:
    .asciz "    addq %%rcx, %%rax"
.Lstr882:
    .asciz "    popq %%rcx"
.Lstr883:
    .asciz "    movb %%al, (%%rcx)"
.Lstr884:
    .asciz "    addq %%rcx, %%rax"
.Lstr885:
    .asciz "    popq %%rcx"
.Lstr886:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr887:
    .asciz "    addl %%ecx, %%eax"
.Lstr888:
    .asciz "    popq %%rcx"
.Lstr889:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr890:
    .asciz "    addq %%rcx, %%rax"
.Lstr891:
    .asciz "    popq %%rcx"
.Lstr892:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr893:
    .asciz "    pushq %%rax"
.Lstr894:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr895:
    .asciz "    movl (%%rax), %%eax"
.Lstr896:
    .asciz "    movq (%%rax), %%rax"
.Lstr897:
    .asciz "    pushq %%rax"
.Lstr898:
    .asciz "    popq %%rcx"
.Lstr899:
    .asciz "    subq %%rax, %%rcx"
.Lstr900:
    .asciz "    movq %%rcx, %%rax"
.Lstr901:
    .asciz "    popq %%rcx"
.Lstr902:
    .asciz "    movb %%al, (%%rcx)"
.Lstr903:
    .asciz "    subq %%rax, %%rcx"
.Lstr904:
    .asciz "    movq %%rcx, %%rax"
.Lstr905:
    .asciz "    popq %%rcx"
.Lstr906:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr907:
    .asciz "    subl %%eax, %%ecx"
.Lstr908:
    .asciz "    movl %%ecx, %%eax"
.Lstr909:
    .asciz "    popq %%rcx"
.Lstr910:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr911:
    .asciz "    subq %%rax, %%rcx"
.Lstr912:
    .asciz "    movq %%rcx, %%rax"
.Lstr913:
    .asciz "    popq %%rcx"
.Lstr914:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr915:
    .asciz "    pushq %%rax"
.Lstr916:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr917:
    .asciz "    movl (%%rax), %%eax"
.Lstr918:
    .asciz "    movq (%%rax), %%rax"
.Lstr919:
    .asciz "    pushq %%rax"
.Lstr920:
    .asciz "    popq %%rcx"
.Lstr921:
    .asciz "    popq %%rcx"
.Lstr922:
    .asciz "    movb %%al, (%%rcx)"
.Lstr923:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr924:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr925:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr926:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr927:
    .asciz "    movl (%%rax), %%ecx"
.Lstr928:
    .asciz "    movq (%%rax), %%rcx"
.Lstr929:
    .asciz "    addb $1, (%%rax)"
.Lstr930:
    .asciz "    addl $1, (%%rax)"
.Lstr931:
    .asciz "    addq $1, (%%rax)"
.Lstr932:
    .asciz "    subb $1, (%%rax)"
.Lstr933:
    .asciz "    subl $1, (%%rax)"
.Lstr934:
    .asciz "    subq $1, (%%rax)"
.Lstr935:
    .asciz "    movq %%rcx, %%rax"
.Lstr936:
    .asciz "    pushq %%rax"
.Lstr937:
    .asciz "    popq %%rcx"
.Lstr938:
    .asciz "    movb %%al, (%%rcx)"
.Lstr939:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr940:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr941:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr942:
    .asciz "    pushq %%rax"
.Lstr943:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr944:
    .asciz "    movl (%%rax), %%eax"
.Lstr945:
    .asciz "    movq (%%rax), %%rax"
.Lstr946:
    .asciz "    pushq %%rax"
.Lstr947:
    .asciz "    popq %%rcx"
.Lstr948:
    .asciz "    addq %%rcx, %%rax"
.Lstr949:
    .asciz "    popq %%rcx"
.Lstr950:
    .asciz "    movb %%al, (%%rcx)"
.Lstr951:
    .asciz "    addq %%rcx, %%rax"
.Lstr952:
    .asciz "    popq %%rcx"
.Lstr953:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr954:
    .asciz "    addl %%ecx, %%eax"
.Lstr955:
    .asciz "    popq %%rcx"
.Lstr956:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr957:
    .asciz "    addq %%rcx, %%rax"
.Lstr958:
    .asciz "    popq %%rcx"
.Lstr959:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr960:
    .asciz "    pushq %%rax"
.Lstr961:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr962:
    .asciz "    movl (%%rax), %%eax"
.Lstr963:
    .asciz "    movq (%%rax), %%rax"
.Lstr964:
    .asciz "    pushq %%rax"
.Lstr965:
    .asciz "    popq %%rcx"
.Lstr966:
    .asciz "    subq %%rax, %%rcx"
.Lstr967:
    .asciz "    movq %%rcx, %%rax"
.Lstr968:
    .asciz "    popq %%rcx"
.Lstr969:
    .asciz "    movb %%al, (%%rcx)"
.Lstr970:
    .asciz "    subq %%rax, %%rcx"
.Lstr971:
    .asciz "    movq %%rcx, %%rax"
.Lstr972:
    .asciz "    popq %%rcx"
.Lstr973:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr974:
    .asciz "    subl %%eax, %%ecx"
.Lstr975:
    .asciz "    movl %%ecx, %%eax"
.Lstr976:
    .asciz "    popq %%rcx"
.Lstr977:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr978:
    .asciz "    subq %%rax, %%rcx"
.Lstr979:
    .asciz "    movq %%rcx, %%rax"
.Lstr980:
    .asciz "    popq %%rcx"
.Lstr981:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr982:
    .asciz "    pushq %%rax"
.Lstr983:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr984:
    .asciz "    movl (%%rax), %%eax"
.Lstr985:
    .asciz "    movq (%%rax), %%rax"
.Lstr986:
    .asciz "    pushq %%rax"
.Lstr987:
    .asciz "    popq %%rcx"
.Lstr988:
    .asciz "    popq %%rcx"
.Lstr989:
    .asciz "    movb %%al, (%%rcx)"
.Lstr990:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr991:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr992:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr993:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr994:
    .asciz "    movl (%%rax), %%ecx"
.Lstr995:
    .asciz "    movq (%%rax), %%rcx"
.Lstr996:
    .asciz "    addb $1, (%%rax)"
.Lstr997:
    .asciz "    addl $1, (%%rax)"
.Lstr998:
    .asciz "    addq $1, (%%rax)"
.Lstr999:
    .asciz "    subb $1, (%%rax)"
.Lstr1000:
    .asciz "    subl $1, (%%rax)"
.Lstr1001:
    .asciz "    subq $1, (%%rax)"
.Lstr1002:
    .asciz "    movq %%rcx, %%rax"
.Lstr1003:
    .asciz "    pushq %%rax"
.Lstr1004:
    .asciz "    popq %%rcx"
.Lstr1005:
    .asciz "    movb %%al, (%%rcx)"
.Lstr1006:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr1007:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr1008:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr1009:
    .asciz "    pushq %%rax"
.Lstr1010:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr1011:
    .asciz "    movl (%%rax), %%eax"
.Lstr1012:
    .asciz "    movq (%%rax), %%rax"
.Lstr1013:
    .asciz "    pushq %%rax"
.Lstr1014:
    .asciz "    popq %%rcx"
.Lstr1015:
    .asciz "    addq %%rcx, %%rax"
.Lstr1016:
    .asciz "    popq %%rcx"
.Lstr1017:
    .asciz "    movb %%al, (%%rcx)"
.Lstr1018:
    .asciz "    addq %%rcx, %%rax"
.Lstr1019:
    .asciz "    popq %%rcx"
.Lstr1020:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr1021:
    .asciz "    addl %%ecx, %%eax"
.Lstr1022:
    .asciz "    popq %%rcx"
.Lstr1023:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr1024:
    .asciz "    addq %%rcx, %%rax"
.Lstr1025:
    .asciz "    popq %%rcx"
.Lstr1026:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr1027:
    .asciz "    pushq %%rax"
.Lstr1028:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr1029:
    .asciz "    movl (%%rax), %%eax"
.Lstr1030:
    .asciz "    movq (%%rax), %%rax"
.Lstr1031:
    .asciz "    pushq %%rax"
.Lstr1032:
    .asciz "    popq %%rcx"
.Lstr1033:
    .asciz "    subq %%rax, %%rcx"
.Lstr1034:
    .asciz "    movq %%rcx, %%rax"
.Lstr1035:
    .asciz "    popq %%rcx"
.Lstr1036:
    .asciz "    movb %%al, (%%rcx)"
.Lstr1037:
    .asciz "    subq %%rax, %%rcx"
.Lstr1038:
    .asciz "    movq %%rcx, %%rax"
.Lstr1039:
    .asciz "    popq %%rcx"
.Lstr1040:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr1041:
    .asciz "    subl %%eax, %%ecx"
.Lstr1042:
    .asciz "    movl %%ecx, %%eax"
.Lstr1043:
    .asciz "    popq %%rcx"
.Lstr1044:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr1045:
    .asciz "    subq %%rax, %%rcx"
.Lstr1046:
    .asciz "    movq %%rcx, %%rax"
.Lstr1047:
    .asciz "    popq %%rcx"
.Lstr1048:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr1049:
    .asciz "    pushq %%rax"
.Lstr1050:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr1051:
    .asciz "    movl (%%rax), %%eax"
.Lstr1052:
    .asciz "    movq (%%rax), %%rax"
.Lstr1053:
    .asciz "    pushq %%rax"
.Lstr1054:
    .asciz "    popq %%rcx"
.Lstr1055:
    .asciz "    popq %%rcx"
.Lstr1056:
    .asciz "    movb %%al, (%%rcx)"
.Lstr1057:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr1058:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr1059:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr1060:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr1061:
    .asciz "    movl (%%rax), %%ecx"
.Lstr1062:
    .asciz "    movq (%%rax), %%rcx"
.Lstr1063:
    .asciz "    addb $1, (%%rax)"
.Lstr1064:
    .asciz "    addl $1, (%%rax)"
.Lstr1065:
    .asciz "    addq $1, (%%rax)"
.Lstr1066:
    .asciz "    subb $1, (%%rax)"
.Lstr1067:
    .asciz "    subl $1, (%%rax)"
.Lstr1068:
    .asciz "    subq $1, (%%rax)"
.Lstr1069:
    .asciz "    movq %%rcx, %%rax"
.Lstr1070:
    .asciz "%r10"
.Lstr1071:
    .asciz "%r8"
.Lstr1072:
    .asciz "%r9"
.Lstr1073:
    .asciz "%rsi"
.Lstr1074:
    .asciz "%rdi"
.Lstr1075:
    .asciz "%r10"
.Lstr1076:
    .asciz "%r10"
.Lstr1077:
    .asciz "%r8"
.Lstr1078:
    .asciz "%r9"
.Lstr1079:
    .asciz "%rsi"
.Lstr1080:
    .asciz "%rdi"
.Lstr1081:
    .asciz "%r10"
.Lstr1082:
    .asciz "%rax"
.Lstr1083:
    .asciz "%rbx"
.Lstr1084:
    .asciz "%rcx"
.Lstr1085:
    .asciz "%rdx"
.Lstr1086:
    .asciz "%rax"
.Lstr1087:
    .asciz "%rbx"
.Lstr1088:
    .asciz "%rcx"
.Lstr1089:
    .asciz "%rdx"
.Lstr1090:
    .asciz "%al"
.Lstr1091:
    .asciz "%bl"
.Lstr1092:
    .asciz "%cl"
.Lstr1093:
    .asciz "%dl"
.Lstr1094:
    .asciz "%r10b"
.Lstr1095:
    .asciz "%r8b"
.Lstr1096:
    .asciz "%r9b"
.Lstr1097:
    .asciz "%sil"
.Lstr1098:
    .asciz "%dil"
.Lstr1099:
    .asciz "%ax"
.Lstr1100:
    .asciz "%bx"
.Lstr1101:
    .asciz "%cx"
.Lstr1102:
    .asciz "%dx"
.Lstr1103:
    .asciz "%r10w"
.Lstr1104:
    .asciz "%r8w"
.Lstr1105:
    .asciz "%r9w"
.Lstr1106:
    .asciz "%si"
.Lstr1107:
    .asciz "%di"
.Lstr1108:
    .asciz "%eax"
.Lstr1109:
    .asciz "%ebx"
.Lstr1110:
    .asciz "%ecx"
.Lstr1111:
    .asciz "%edx"
.Lstr1112:
    .asciz "%r10d"
.Lstr1113:
    .asciz "%r8d"
.Lstr1114:
    .asciz "%r9d"
.Lstr1115:
    .asciz "%esi"
.Lstr1116:
    .asciz "%edi"
.Lstr1117:
    .asciz "%al"
.Lstr1118:
    .asciz "%bl"
.Lstr1119:
    .asciz "%cl"
.Lstr1120:
    .asciz "%dl"
.Lstr1121:
    .asciz "%r10b"
.Lstr1122:
    .asciz "%r8b"
.Lstr1123:
    .asciz "%r9b"
.Lstr1124:
    .asciz "%sil"
.Lstr1125:
    .asciz "%dil"
.Lstr1126:
    .asciz "%ax"
.Lstr1127:
    .asciz "%bx"
.Lstr1128:
    .asciz "%cx"
.Lstr1129:
    .asciz "%dx"
.Lstr1130:
    .asciz "%r10w"
.Lstr1131:
    .asciz "%r8w"
.Lstr1132:
    .asciz "%r9w"
.Lstr1133:
    .asciz "%si"
.Lstr1134:
    .asciz "%di"
.Lstr1135:
    .asciz "%eax"
.Lstr1136:
    .asciz "%ebx"
.Lstr1137:
    .asciz "%ecx"
.Lstr1138:
    .asciz "%edx"
.Lstr1139:
    .asciz "%r10d"
.Lstr1140:
    .asciz "%r8d"
.Lstr1141:
    .asciz "%r9d"
.Lstr1142:
    .asciz "%esi"
.Lstr1143:
    .asciz "%edi"
.Lstr1144:
    .asciz "%d"
.Lstr1145:
    .asciz "asm operand number out of range"
.Lstr1146:
    .asciz "unsupported asm template modifier"
.Lstr1147:
    .asciz "%d"
.Lstr1148:
    .asciz "asm operand number out of range"
.Lstr1149:
    .asciz "unsupported asm template modifier"
.Lstr1150:
    .asciz "undefined variable in asm"
.Lstr1151:
    .asciz "%s(%%rip)"
.Lstr1152:
    .asciz "%d(%%rbp)"
.Lstr1153:
    .asciz "%s(%%rip)"
.Lstr1154:
    .asciz "%d(%%rbp)"
.Lstr1155:
    .asciz "complex asm output address needs a register constraint"
.Lstr1156:
    .asciz "    pushq %%rax"
.Lstr1157:
    .asciz "undefined variable in asm"
.Lstr1158:
    .asciz "%s(%%rip)"
.Lstr1159:
    .asciz "%d(%%rbp)"
.Lstr1160:
    .asciz "%s(%%rip)"
.Lstr1161:
    .asciz "%d(%%rbp)"
.Lstr1162:
    .asciz "complex asm output address needs a register constraint"
.Lstr1163:
    .asciz "    pushq %%rax"
.Lstr1164:
    .asciz "expected constraint string in asm"
.Lstr1165:
    .asciz "too many asm operands"
.Lstr1166:
    .asciz "unsupported asm output constraint"
.Lstr1167:
    .asciz "unsupported asm output constraint"
.Lstr1168:
    .asciz "unsupported asm output constraint"
.Lstr1169:
    .asciz "read-write asm operands are not supported"
.Lstr1170:
    .asciz "    pushq %%rax"
.Lstr1171:
    .asciz "asm Nd operand needs an integer constant"
.Lstr1172:
    .asciz "asm Nd operand out of range"
.Lstr1173:
    .asciz "$%d"
.Lstr1174:
    .asciz "unsupported asm input constraint"
.Lstr1175:
    .asciz "expected constraint string in asm"
.Lstr1176:
    .asciz "too many asm operands"
.Lstr1177:
    .asciz "unsupported asm output constraint"
.Lstr1178:
    .asciz "unsupported asm output constraint"
.Lstr1179:
    .asciz "unsupported asm output constraint"
.Lstr1180:
    .asciz "read-write asm operands are not supported"
.Lstr1181:
    .asciz "    pushq %%rax"
.Lstr1182:
    .asciz "asm Nd operand needs an integer constant"
.Lstr1183:
    .asciz "asm Nd operand out of range"
.Lstr1184:
    .asciz "$%d"
.Lstr1185:
    .asciz "unsupported asm input constraint"
.Lstr1186:
    .asciz "too many register asm operands"
.Lstr1187:
    .asciz "duplicate asm register"
.Lstr1188:
    .asciz "duplicate asm register"
.Lstr1189:
    .asciz "too many register asm operands"
.Lstr1190:
    .asciz "(%s)"
.Lstr1191:
    .asciz "too many register asm operands"
.Lstr1192:
    .asciz "duplicate asm register"
.Lstr1193:
    .asciz "duplicate asm register"
.Lstr1194:
    .asciz "too many register asm operands"
.Lstr1195:
    .asciz "(%s)"
.Lstr1196:
    .asciz "    pushq %%rbx"
.Lstr1197:
    .asciz "    movq %d(%%rsp), %s"
.Lstr1198:
    .asciz "    movb %s, %s"
.Lstr1199:
    .asciz "    movw %s, %s"
.Lstr1200:
    .asciz "    movl %s, %s"
.Lstr1201:
    .asciz "    movq %s, %s"
.Lstr1202:
    .asciz "    movq %d(%%rsp), %%r11"
.Lstr1203:
    .asciz ""
.Lstr1204:
    .asciz "    movb %s, (%%r11)"
.Lstr1205:
    .asciz "    movw %s, (%%r11)"
.Lstr1206:
    .asciz "    movl %s, (%%r11)"
.Lstr1207:
    .asciz "    movq %s, (%%r11)"
.Lstr1208:
    .asciz "    addq $%d, %%rsp"
.Lstr1209:
    .asciz "    popq %%rbx"
.Lstr1210:
    .asciz "    pushq %%rbx"
.Lstr1211:
    .asciz "    movq %d(%%rsp), %s"
.Lstr1212:
    .asciz "    movb %s, %s"
.Lstr1213:
    .asciz "    movw %s, %s"
.Lstr1214:
    .asciz "    movl %s, %s"
.Lstr1215:
    .asciz "    movq %s, %s"
.Lstr1216:
    .asciz "    movq %d(%%rsp), %%r11"
.Lstr1217:
    .asciz ""
.Lstr1218:
    .asciz "    movb %s, (%%r11)"
.Lstr1219:
    .asciz "    movw %s, (%%r11)"
.Lstr1220:
    .asciz "    movl %s, (%%r11)"
.Lstr1221:
    .asciz "    movq %s, (%%r11)"
.Lstr1222:
    .asciz "    addq $%d, %%rsp"
.Lstr1223:
    .asciz "    popq %%rbx"
.Lstr1224:
    .asciz "expected string literal in asm"
.Lstr1225:
    .asciz "asm template too long"
.Lstr1226:
    .asciz "expected ',' or ':' in asm"
.Lstr1227:
    .asciz "expected ',' or ':' in asm"
.Lstr1228:
    .asciz "expected clobber string in asm"
.Lstr1229:
    .asciz "expected string literal in asm"
.Lstr1230:
    .asciz "asm template too long"
.Lstr1231:
    .asciz "expected ',' or ':' in asm"
.Lstr1232:
    .asciz "expected ',' or ':' in asm"
.Lstr1233:
    .asciz "expected clobber string in asm"
.Lstr1234:
    .asciz "    cmpq $0, %%rax"
.Lstr1235:
    .asciz "    je .L%d"
.Lstr1236:
    .asciz "    jmp .L%d"
.Lstr1237:
    .asciz "unsigned"
.Lstr1238:
    .asciz "signed"
.Lstr1239:
    .asciz "unsigned"
.Lstr1240:
    .asciz "long"
.Lstr1241:
    .asciz "int"
.Lstr1242:
    .asciz "long"
.Lstr1243:
    .asciz "int"
.Lstr1244:
    .asciz "expected variable name"
.Lstr1245:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1246:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1247:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1248:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1249:
    .asciz "    jmp .L%d"
.Lstr1250:
    .asciz "    jmp .L%d"
.Lstr1251:
    .asciz "    cmpq $0, %%rax"
.Lstr1252:
    .asciz "    jne .L%d"
.Lstr1253:
    .asciz "    jmp .L%d"
.Lstr1254:
    .asciz "expected 'while' after do body"
.Lstr1255:
    .asciz "    cmpq $0, %%rax"
.Lstr1256:
    .asciz "    jne .L%d"
.Lstr1257:
    .asciz "    cmpq $0, %%rax"
.Lstr1258:
    .asciz "    je .L%d"
.Lstr1259:
    .asciz "    jmp .L%d"
.Lstr1260:
    .asciz "    pushq %%rax"
.Lstr1261:
    .asciz "    pushq $0"
.Lstr1262:
    .asciz "    jmp .L%d"
.Lstr1263:
    .asciz "    jmp .L%d"
.Lstr1264:
    .asciz "    movq 8(%%rsp), %%rax"
.Lstr1265:
    .asciz "    cmpq $%d, %%rax"
.Lstr1266:
    .asciz "    je .L%d"
.Lstr1267:
    .asciz "    jmp .L%d"
.Lstr1268:
    .asciz "    addq $16, %%rsp"
.Lstr1269:
    .asciz "    jmp .L%d"
.Lstr1270:
    .asciz "    jmp .L%d"
.Lstr1271:
    .asciz "expected label name"
.Lstr1272:
    .asciz "    jmp %s"
.Lstr1273:
    .asciz "    leave"
.Lstr1274:
    .asciz "    ret"
.Lstr1275:
    .asciz "unsigned"
.Lstr1276:
    .asciz "signed"
.Lstr1277:
    .asciz "unsigned"
.Lstr1278:
    .asciz "long"
.Lstr1279:
    .asciz "int"
.Lstr1280:
    .asciz "%s:"
.Lstr1281:
    .asciz "expected variable name"
.Lstr1282:
    .asciz "undefined macro"
.Lstr1283:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1284:
    .asciz "    movw %%ax, %d(%%rbp)"
.Lstr1285:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1286:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1287:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1288:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1289:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1290:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1291:
    .asciz "long"
.Lstr1292:
    .asciz "int"
.Lstr1293:
    .asciz "expected variable name"
.Lstr1294:
    .asciz "undefined macro"
.Lstr1295:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1296:
    .asciz "    movw %%ax, %d(%%rbp)"
.Lstr1297:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1298:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1299:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1300:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1301:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1302:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1303:
    .asciz "    cmpq $0, %%rax"
.Lstr1304:
    .asciz "    je .L%d"
.Lstr1305:
    .asciz "    jmp .L%d"
.Lstr1306:
    .asciz "unsigned"
.Lstr1307:
    .asciz "signed"
.Lstr1308:
    .asciz "unsigned"
.Lstr1309:
    .asciz "long"
.Lstr1310:
    .asciz "int"
.Lstr1311:
    .asciz "long"
.Lstr1312:
    .asciz "int"
.Lstr1313:
    .asciz "expected variable name"
.Lstr1314:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1315:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1316:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1317:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1318:
    .asciz "    jmp .L%d"
.Lstr1319:
    .asciz "    jmp .L%d"
.Lstr1320:
    .asciz "    cmpq $0, %%rax"
.Lstr1321:
    .asciz "    jne .L%d"
.Lstr1322:
    .asciz "    jmp .L%d"
.Lstr1323:
    .asciz "expected 'while' after do body"
.Lstr1324:
    .asciz "    cmpq $0, %%rax"
.Lstr1325:
    .asciz "    jne .L%d"
.Lstr1326:
    .asciz "    cmpq $0, %%rax"
.Lstr1327:
    .asciz "    je .L%d"
.Lstr1328:
    .asciz "    jmp .L%d"
.Lstr1329:
    .asciz "    pushq %%rax"
.Lstr1330:
    .asciz "    pushq $0"
.Lstr1331:
    .asciz "    jmp .L%d"
.Lstr1332:
    .asciz "    jmp .L%d"
.Lstr1333:
    .asciz "    movq 8(%%rsp), %%rax"
.Lstr1334:
    .asciz "    cmpq $%d, %%rax"
.Lstr1335:
    .asciz "    je .L%d"
.Lstr1336:
    .asciz "    jmp .L%d"
.Lstr1337:
    .asciz "    addq $16, %%rsp"
.Lstr1338:
    .asciz "    jmp .L%d"
.Lstr1339:
    .asciz "    jmp .L%d"
.Lstr1340:
    .asciz "expected label name"
.Lstr1341:
    .asciz "    jmp %s"
.Lstr1342:
    .asciz "    leave"
.Lstr1343:
    .asciz "    ret"
.Lstr1344:
    .asciz "unsigned"
.Lstr1345:
    .asciz "signed"
.Lstr1346:
    .asciz "unsigned"
.Lstr1347:
    .asciz "long"
.Lstr1348:
    .asciz "int"
.Lstr1349:
    .asciz "%s:"
.Lstr1350:
    .asciz "expected variable name"
.Lstr1351:
    .asciz "undefined macro"
.Lstr1352:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1353:
    .asciz "    movw %%ax, %d(%%rbp)"
.Lstr1354:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1355:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1356:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1357:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1358:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1359:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1360:
    .asciz "long"
.Lstr1361:
    .asciz "int"
.Lstr1362:
    .asciz "expected variable name"
.Lstr1363:
    .asciz "undefined macro"
.Lstr1364:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1365:
    .asciz "    movw %%ax, %d(%%rbp)"
.Lstr1366:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1367:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1368:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1369:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1370:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1371:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1372:
    .asciz "unsigned"
.Lstr1373:
    .asciz "signed"
.Lstr1374:
    .asciz "unsigned"
.Lstr1375:
    .asciz "long"
.Lstr1376:
    .asciz "int"
.Lstr1377:
    .asciz "long"
.Lstr1378:
    .asciz "int"
.Lstr1379:
    .asciz "expected parameter name"
.Lstr1380:
    .asciz "expected function body"
.Lstr1381:
    .asciz "    .globl %s"
.Lstr1382:
    .asciz "%s:"
.Lstr1383:
    .asciz "    pushq %%rbp"
.Lstr1384:
    .asciz "    movq %%rsp, %%rbp"
.Lstr1385:
    .asciz "    subq $%d, %%rsp"
.Lstr1386:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr1387:
    .asciz "    leave"
.Lstr1388:
    .asciz "    ret"
.Lstr1389:
    .asciz "unsigned"
.Lstr1390:
    .asciz "signed"
.Lstr1391:
    .asciz "unsigned"
.Lstr1392:
    .asciz "long"
.Lstr1393:
    .asciz "int"
.Lstr1394:
    .asciz "long"
.Lstr1395:
    .asciz "int"
.Lstr1396:
    .asciz "expected parameter name"
.Lstr1397:
    .asciz "expected function body"
.Lstr1398:
    .asciz "    .globl %s"
.Lstr1399:
    .asciz "%s:"
.Lstr1400:
    .asciz "    pushq %%rbp"
.Lstr1401:
    .asciz "    movq %%rsp, %%rbp"
.Lstr1402:
    .asciz "    subq $%d, %%rsp"
.Lstr1403:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr1404:
    .asciz "    leave"
.Lstr1405:
    .asciz "    ret"
.Lstr1406:
    .asciz "expected '{' after enum"
.Lstr1407:
    .asciz "expected enumerator name"
.Lstr1408:
    .asciz "too many symbols"
.Lstr1409:
    .asciz "expected integer constant"
.Lstr1410:
    .asciz "expected '{' after enum"
.Lstr1411:
    .asciz "expected enumerator name"
.Lstr1412:
    .asciz "too many symbols"
.Lstr1413:
    .asciz "expected integer constant"
.Lstr1414:
    .asciz "expected '{' in struct"
.Lstr1415:
    .asciz "unsigned"
.Lstr1416:
    .asciz "signed"
.Lstr1417:
    .asciz "unsigned"
.Lstr1418:
    .asciz "expected '{' in struct"
.Lstr1419:
    .asciz "unsigned"
.Lstr1420:
    .asciz "signed"
.Lstr1421:
    .asciz "unsigned"
.Lstr1422:
    .asciz ""
.Lstr1423:
    .asciz "unsigned"
.Lstr1424:
    .asciz "signed"
.Lstr1425:
    .asciz "too many symbols"
.Lstr1426:
    .asciz ""
.Lstr1427:
    .asciz "unsigned"
.Lstr1428:
    .asciz "signed"
.Lstr1429:
    .asciz "too many symbols"
.Lstr1430:
    .asciz "    .byte %d"
.Lstr1431:
    .asciz "    .word %d"
.Lstr1432:
    .asciz "    .long %d"
.Lstr1433:
    .asciz "    .quad %d"
.Lstr1434:
    .asciz "    .byte %d"
.Lstr1435:
    .asciz "    .word %d"
.Lstr1436:
    .asciz "    .long %d"
.Lstr1437:
    .asciz "    .quad %d"
.Lstr1438:
    .asciz "    .bss"
.Lstr1439:
    .asciz "    .globl %s"
.Lstr1440:
    .asciz "%s:"
.Lstr1441:
    .asciz "    .space %d"
.Lstr1442:
    .asciz "    .text"
.Lstr1443:
    .asciz "    .bss"
.Lstr1444:
    .asciz "    .globl %s"
.Lstr1445:
    .asciz "%s:"
.Lstr1446:
    .asciz "    .space %d"
.Lstr1447:
    .asciz "    .text"
.Lstr1448:
    .asciz "    .data"
.Lstr1449:
    .asciz "    .globl %s"
.Lstr1450:
    .asciz "%s:"
.Lstr1451:
    .asciz "    .data"
.Lstr1452:
    .asciz "    .globl %s"
.Lstr1453:
    .asciz "%s:"
.Lstr1454:
    .asciz "    .asciz \""
.Lstr1455:
    .asciz "\"\n"
.Lstr1456:
    .asciz "    .space %d"
.Lstr1457:
    .asciz "    .text"
.Lstr1458:
    .asciz "too many pointer initializers"
.Lstr1459:
    .asciz "    .quad 0"
.Lstr1460:
    .asciz "    .text"
.Lstr1461:
    .asciz "unsupported global initializer"
.Lstr1462:
    .asciz "expected '}' in global initializer"
.Lstr1463:
    .asciz "    .space %d"
.Lstr1464:
    .asciz "    .text"
.Lstr1465:
    .asciz "    .text"
.Lstr1466:
    .asciz "    .asciz \""
.Lstr1467:
    .asciz "\"\n"
.Lstr1468:
    .asciz "    .space %d"
.Lstr1469:
    .asciz "    .text"
.Lstr1470:
    .asciz "too many pointer initializers"
.Lstr1471:
    .asciz "    .quad 0"
.Lstr1472:
    .asciz "    .text"
.Lstr1473:
    .asciz "unsupported global initializer"
.Lstr1474:
    .asciz "expected '}' in global initializer"
.Lstr1475:
    .asciz "    .space %d"
.Lstr1476:
    .asciz "    .text"
.Lstr1477:
    .asciz "    .text"
.Lstr1478:
    .asciz "unsigned"
.Lstr1479:
    .asciz "signed"
.Lstr1480:
    .asciz "unsigned"
.Lstr1481:
    .asciz "long"
.Lstr1482:
    .asciz "int"
.Lstr1483:
    .asciz "long"
.Lstr1484:
    .asciz "int"
.Lstr1485:
    .asciz "expected identifier"
.Lstr1486:
    .asciz "undefined macro"
.Lstr1487:
    .asciz "expected ';' or '(' after global"
.Lstr1488:
    .asciz "expected identifier"
.Lstr1489:
    .asciz "undefined macro"
.Lstr1490:
    .asciz "expected ';' or '(' after global"
.Lstr1491:
    .asciz "global must be int, char, float, or double"
.Lstr1492:
    .asciz "unsigned"
.Lstr1493:
    .asciz "signed"
.Lstr1494:
    .asciz "unsigned"
.Lstr1495:
    .asciz "long"
.Lstr1496:
    .asciz "int"
.Lstr1497:
    .asciz "long"
.Lstr1498:
    .asciz "int"
.Lstr1499:
    .asciz "expected identifier"
.Lstr1500:
    .asciz "undefined macro"
.Lstr1501:
    .asciz "expected ';' or '(' after global"
.Lstr1502:
    .asciz "expected identifier"
.Lstr1503:
    .asciz "undefined macro"
.Lstr1504:
    .asciz "expected ';' or '(' after global"
.Lstr1505:
    .asciz "global must be int, char, float, or double"
.Lstr1506:
    .asciz ".LCf%d:\n    .float %s\n"
.Lstr1507:
    .asciz ".LCf%d:\n    .double %s\n"
.Lstr1508:
    .asciz ".LCf%d:\n    .float %s\n"
.Lstr1509:
    .asciz ".LCf%d:\n    .double %s\n"
.Lstr1510:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr1511:
    .asciz "\"\n"
.Lstr1512:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr1513:
    .asciz "\"\n"
.Lstr1514:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr1515:
    .asciz "r"
.Lstr1516:
    .asciz "Cannot open input file: %s\n"
.Lstr1517:
    .asciz "Invalid file size\n"
.Lstr1518:
    .asciz "Error reading file\n"
.Lstr1519:
    .asciz "EXIT_FAILURE"
.Lstr1520:
    .asciz "EXIT_SUCCESS"
.Lstr1521:
    .asciz "SEEK_SET"
.Lstr1522:
    .asciz "SEEK_CUR"
.Lstr1523:
    .asciz "SEEK_END"
.Lstr1524:
    .asciz "NULL"
.Lstr1525:
    .asciz "size_t"
.Lstr1526:
    .asciz "va_list"
.Lstr1527:
    .asciz "FILE"
.Lstr1528:
    .asciz "size_t"
.Lstr1529:
    .asciz "    .section .text"
.Lstr1530:
    .asciz "    .section .rodata"
.Lstr1531:
    .asciz "    .section .text"
.Lstr1532:
    .asciz "    .weak _start"
.Lstr1533:
    .asciz "    .globl _start"
.Lstr1534:
    .asciz "_start:"
.Lstr1535:
    .asciz "    subq $8, %rsp"
.Lstr1536:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr1537:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1538:
    .asciz "    movq 8(%rsp), %rdi"
.Lstr1539:
    .asciz "    leaq 16(%rsp), %rsi"
.Lstr1540:
    .asciz "    leaq 24(%rsp,%rdi,8), %rdx"
.Lstr1541:
    .asciz "    call main"
.Lstr1542:
    .asciz "    addq $8, %rsp"
.Lstr1543:
    .asciz "    movq %rax, %rdi"
.Lstr1544:
    .asciz "    movq $60, %rax"
.Lstr1545:
    .asciz "    syscall"
.Lstr1546:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr1547:
    .asciz "r"
.Lstr1548:
    .asciz "Cannot open input file: %s\n"
.Lstr1549:
    .asciz "Invalid file size\n"
.Lstr1550:
    .asciz "Error reading file\n"
.Lstr1551:
    .asciz "EXIT_FAILURE"
.Lstr1552:
    .asciz "EXIT_SUCCESS"
.Lstr1553:
    .asciz "SEEK_SET"
.Lstr1554:
    .asciz "SEEK_CUR"
.Lstr1555:
    .asciz "SEEK_END"
.Lstr1556:
    .asciz "NULL"
.Lstr1557:
    .asciz "size_t"
.Lstr1558:
    .asciz "va_list"
.Lstr1559:
    .asciz "FILE"
.Lstr1560:
    .asciz "size_t"
.Lstr1561:
    .asciz "    .section .text"
.Lstr1562:
    .asciz "    .section .rodata"
.Lstr1563:
    .asciz "    .section .text"
.Lstr1564:
    .asciz "    .weak _start"
.Lstr1565:
    .asciz "    .globl _start"
.Lstr1566:
    .asciz "_start:"
.Lstr1567:
    .asciz "    subq $8, %rsp"
.Lstr1568:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr1569:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1570:
    .asciz "    movq 8(%rsp), %rdi"
.Lstr1571:
    .asciz "    leaq 16(%rsp), %rsi"
.Lstr1572:
    .asciz "    leaq 24(%rsp,%rdi,8), %rdx"
.Lstr1573:
    .asciz "    call main"
.Lstr1574:
    .asciz "    addq $8, %rsp"
.Lstr1575:
    .asciz "    movq %rax, %rdi"
.Lstr1576:
    .asciz "    movq $60, %rax"
.Lstr1577:
    .asciz "    syscall"
    .section .text
    .weak _start
    .globl _start
_start:
    subq $8, %rsp
    movq 8(%rsp), %rdi
    leaq 16(%rsp), %rsi
    leaq 24(%rsp,%rdi,8), %rdx
    call main
    addq $8, %rsp
    movq %rax, %rdi
    movq $60, %rax
    syscall
