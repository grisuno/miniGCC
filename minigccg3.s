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
    .data
pending_align:
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
    leaq .Lstr58(%rip), %rax
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
    leaq .Lstr59(%rip), %rax
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
    leaq .Lstr60(%rip), %rax
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
    leaq .Lstr61(%rip), %rax
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
    leaq .Lstr62(%rip), %rax
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
    leaq .Lstr63(%rip), %rax
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
    leaq .Lstr64(%rip), %rax
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
    leaq .Lstr65(%rip), %rax
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
    leaq .Lstr66(%rip), %rax
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
    leaq .Lstr67(%rip), %rax
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
    leaq .Lstr68(%rip), %rax
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
    leaq .Lstr69(%rip), %rax
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
    leaq .Lstr70(%rip), %rax
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
    leaq .Lstr71(%rip), %rax
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
    leaq .Lstr72(%rip), %rax
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
    leaq .Lstr73(%rip), %rax
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
    leaq .Lstr74(%rip), %rax
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
    leaq .Lstr75(%rip), %rax
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
    leaq .Lstr76(%rip), %rax
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
    leaq .Lstr77(%rip), %rax
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
    leaq .Lstr78(%rip), %rax
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
    leaq .Lstr79(%rip), %rax
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
    leaq .Lstr80(%rip), %rax
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
    leaq .Lstr81(%rip), %rax
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
    leaq .Lstr82(%rip), %rax
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
    leaq .Lstr83(%rip), %rax
    pushq %rax
    movq $309, %rax
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
    leaq .Lstr86(%rip), %rax
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
    leaq .Lstr87(%rip), %rax
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
    leaq .Lstr88(%rip), %rax
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
    leaq .Lstr90(%rip), %rax
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
    leaq .Lstr91(%rip), %rax
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
    leaq .Lstr92(%rip), %rax
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
    leaq .Lstr93(%rip), %rax
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
    leaq .Lstr103(%rip), %rax
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
    leaq .Lstr104(%rip), %rax
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
    leaq .Lstr105(%rip), %rax
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
    leaq .Lstr106(%rip), %rax
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
    leaq .Lstr107(%rip), %rax
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
    leaq .Lstr108(%rip), %rax
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
    leaq .Lstr109(%rip), %rax
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
    leaq .Lstr110(%rip), %rax
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
    leaq .Lstr111(%rip), %rax
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
    leaq .Lstr161(%rip), %rax
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
    leaq .Lstr162(%rip), %rax
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
    leaq .Lstr163(%rip), %rax
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
    leaq .Lstr164(%rip), %rax
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
    leaq .Lstr165(%rip), %rax
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
    leaq .Lstr166(%rip), %rax
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
    movq $310, %rax
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
    leaq .Lstr167(%rip), %rax
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
    leaq .Lstr168(%rip), %rax
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
    leaq .Lstr169(%rip), %rax
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
    leaq .Lstr171(%rip), %rax
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
    leaq .Lstr172(%rip), %rax
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
    leaq .Lstr173(%rip), %rax
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
    leaq .Lstr175(%rip), %rax
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
    leaq .Lstr177(%rip), %rax
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
    leaq .Lstr179(%rip), %rax
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
    leaq .Lstr180(%rip), %rax
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
    leaq .Lstr181(%rip), %rax
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
    leaq .Lstr183(%rip), %rax
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
    leaq .Lstr184(%rip), %rax
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
    leaq .Lstr185(%rip), %rax
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
    leaq .Lstr186(%rip), %rax
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
    leaq .Lstr187(%rip), %rax
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
    leaq .Lstr188(%rip), %rax
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
    leaq .Lstr189(%rip), %rax
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
    leaq .Lstr190(%rip), %rax
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
    leaq .Lstr191(%rip), %rax
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
    leaq .Lstr192(%rip), %rax
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
    leaq .Lstr193(%rip), %rax
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
    leaq .Lstr194(%rip), %rax
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
    leaq .Lstr195(%rip), %rax
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
    leaq .Lstr196(%rip), %rax
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
    leaq .Lstr197(%rip), %rax
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
    leaq .Lstr198(%rip), %rax
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
    leaq .Lstr199(%rip), %rax
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
    leaq .Lstr200(%rip), %rax
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
    leaq .Lstr201(%rip), %rax
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
    leaq .Lstr202(%rip), %rax
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
    leaq .Lstr203(%rip), %rax
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
    leaq .Lstr204(%rip), %rax
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
    leaq .Lstr205(%rip), %rax
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
    leaq .Lstr206(%rip), %rax
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
    leaq .Lstr207(%rip), %rax
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
    leaq .Lstr208(%rip), %rax
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
    leaq .Lstr209(%rip), %rax
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
    leaq .Lstr211(%rip), %rax
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
    leaq .Lstr227(%rip), %rax
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
    leaq .Lstr228(%rip), %rax
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
    leaq .Lstr229(%rip), %rax
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
    leaq .Lstr230(%rip), %rax
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
    leaq .Lstr231(%rip), %rax
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
    leaq .Lstr233(%rip), %rax
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
    je .L2250
    leaq .Lstr241(%rip), %rax
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
.L2250:
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
    je .L2252
    movq -112(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq extern_flag(%rip), %rax
    cmpq $0, %rax
    je .L2254
    leaq extern_flag(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq pending_align(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2255
.L2254:
    movq global_emit_deferred(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2256
    leaq .Lstr242(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq pending_align(%rip), %rax
    cmpq $0, %rax
    je .L2258
    leaq .Lstr243(%rip), %rax
    pushq %rax
    movq pending_align(%rip), %rax
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
    leaq pending_align(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2258:
    movq -112(%rbp), %rax
    addq $40, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2260
    leaq .Lstr244(%rip), %rax
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
.L2260:
    leaq .Lstr245(%rip), %rax
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
    je .L2262
    leaq .Lstr246(%rip), %rax
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
.L2262:
    leaq .Lstr247(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2256:
.L2255:
    jmp .L2253
.L2252:
    leaq pending_align(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
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
    je .L2264
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2264:
.L2253:
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
    je .L2276
    leaq .Lstr254(%rip), %rax
    leave
    ret
.L2276:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2278
    leaq .Lstr255(%rip), %rax
    leave
    ret
.L2278:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2280
    leaq .Lstr256(%rip), %rax
    leave
    ret
.L2280:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2282
    leaq .Lstr257(%rip), %rax
    leave
    ret
.L2282:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2284
    leaq .Lstr258(%rip), %rax
    leave
    ret
.L2284:
    leaq .Lstr259(%rip), %rax
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
    je .L2304
    leaq .Lstr269(%rip), %rax
    leave
    ret
.L2304:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2306
    leaq .Lstr270(%rip), %rax
    leave
    ret
.L2306:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2308
    leaq .Lstr271(%rip), %rax
    leave
    ret
.L2308:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2310
    leaq .Lstr272(%rip), %rax
    leave
    ret
.L2310:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2312
    leaq .Lstr273(%rip), %rax
    leave
    ret
.L2312:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2314
    leaq .Lstr274(%rip), %rax
    leave
    ret
.L2314:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2316
    leaq .Lstr275(%rip), %rax
    leave
    ret
.L2316:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2318
    leaq .Lstr276(%rip), %rax
    leave
    ret
.L2318:
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2320
    leaq .Lstr277(%rip), %rax
    leave
    ret
.L2320:
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
    je .L2344
    leaq .Lstr289(%rip), %rax
    leave
    ret
.L2344:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2346
    leaq .Lstr290(%rip), %rax
    leave
    ret
.L2346:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2348
    leaq .Lstr291(%rip), %rax
    leave
    ret
.L2348:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2350
    leaq .Lstr292(%rip), %rax
    leave
    ret
.L2350:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2352
    leaq .Lstr293(%rip), %rax
    leave
    ret
.L2352:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2354
    leaq .Lstr294(%rip), %rax
    leave
    ret
.L2354:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2356
    leaq .Lstr295(%rip), %rax
    leave
    ret
.L2356:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2358
    leaq .Lstr296(%rip), %rax
    leave
    ret
.L2358:
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2360
    leaq .Lstr297(%rip), %rax
    leave
    ret
.L2360:
    movq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2362
    leaq .Lstr298(%rip), %rax
    leave
    ret
.L2362:
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2364
    leaq .Lstr299(%rip), %rax
    leave
    ret
.L2364:
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
    je .L2388
    movq $1, %rax
    leave
    ret
.L2388:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2390
    movq $1, %rax
    leave
    ret
.L2390:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2392
    movq $2, %rax
    leave
    ret
.L2392:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2394
    movq $2, %rax
    leave
    ret
.L2394:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2396
    movq $4, %rax
    leave
    ret
.L2396:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2398
    movq $4, %rax
    leave
    ret
.L2398:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
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
    movq $7, %rax
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
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2404
    movq $8, %rax
    leave
    ret
.L2404:
    movq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2406
    movq $8, %rax
    leave
    ret
.L2406:
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2408
    movq $2, %rax
    leave
    ret
.L2408:
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
    je .L2420
    movq $1, %rax
    leave
    ret
.L2420:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
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
    movq $5, %rax
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2426
    movq $1, %rax
    leave
    ret
.L2426:
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2428
    movq $1, %rax
    leave
    ret
.L2428:
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
    je .L2692
    leaq .Lstr375(%rip), %rax
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
    jmp .L2693
.L2692:
    movq tok(%rip), %rax
    pushq %rax
    movq $291, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2694
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
    leaq .Lstr376(%rip), %rax
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
    je .L2696
    leaq .Lstr377(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr378(%rip), %rax
    pushq %rax
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
    jmp .L2697
.L2696:
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
    leaq expr_type(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2697:
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
    jmp .L2695
.L2694:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2698
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
    je .L2700
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
    je .L2702
.L2704:
    movq $1, %rax
    cmpq $0, %rax
    je .L2705
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
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
    je .L2706
    jmp .L2705
.L2706:
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
    jmp .L2704
.L2705:
.L2702:
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
    jmp .L2710
.L2708:
    leaq .Lstr382(%rip), %rax
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
.L2709:
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2710
.L2710:
    movq -64(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2712
    movq -64(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2712
    movl $1, %eax
    jmp .L2713
.L2712:
    xorl %eax, %eax
.L2713:
    cmpq $0, %rax
    jne .L2708
.L2711:
    movq -48(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2714
    leaq .Lstr383(%rip), %rax
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
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2716
    leaq .Lstr384(%rip), %rax
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
.L2716:
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
    leaq .Lstr386(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr387(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr388(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr389(%rip), %rax
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
    leaq .Lstr390(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr391(%rip), %rax
    pushq %rax
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
    jmp .L2701
.L2700:
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
    je .L2718
    leaq .Lstr392(%rip), %rax
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
.L2718:
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
    je .L2720
    movq -64(%rbp), %rax
    addq $56, %rax
    movslq (%rax), %rax
    movq %rax, -96(%rbp)
    leaq .Lstr393(%rip), %rax
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
    jmp .L2721
.L2720:
    movq -64(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    jne .L2722
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2724
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
    je .L2724
    movl $1, %eax
    jmp .L2725
.L2724:
    xorl %eax, %eax
.L2725:
    testq %rax, %rax
    jne .L2722
    xorl %eax, %eax
    jmp .L2723
.L2722:
    movl $1, %eax
.L2723:
    cmpq $0, %rax
    je .L2726
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
    je .L2728
    movq -64(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2729
.L2728:
    movq $8, %rax
.L2729:
    movq %rax, -128(%rbp)
    movq -112(%rbp), %rax
    testq %rax, %rax
    je .L2730
    movq -64(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L2731
.L2730:
    movq $0, %rax
.L2731:
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
    je .L2732
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
    jmp .L2733
.L2732:
    leaq .Lstr395(%rip), %rax
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
.L2733:
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
    je .L2734
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
    je .L2734
    movl $1, %eax
    jmp .L2735
.L2734:
    xorl %eax, %eax
.L2735:
    testq %rax, %rax
    je .L2736
    movq $0, %rax
    jmp .L2737
.L2736:
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2738
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    jmp .L2739
.L2738:
    movq $262, %rax
.L2739:
.L2737:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2727
.L2726:
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
    je .L2740
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2740
    movl $1, %eax
    jmp .L2741
.L2740:
    xorl %eax, %eax
.L2741:
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
    je .L2742
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
    je .L2744
    movq -64(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2745
.L2744:
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
    je .L2746
    movq -64(%rbp), %rax
    addq $76, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2746
    movl $1, %eax
    jmp .L2747
.L2746:
    xorl %eax, %eax
.L2747:
    testq %rax, %rax
    je .L2748
    movq $1, %rax
    jmp .L2749
.L2748:
    movq $8, %rax
.L2749:
.L2745:
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
    jmp .L2743
.L2742:
.L2743:
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
    je .L2750
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2752
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2754
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
    jmp .L2755
.L2754:
    leaq .Lstr397(%rip), %rax
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
.L2755:
    jmp .L2753
.L2752:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2756
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
    jmp .L2757
.L2756:
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
.L2757:
.L2753:
    jmp .L2751
.L2750:
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2758
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2760
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2762
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
    jmp .L2763
.L2762:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2764
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
    jmp .L2765
.L2764:
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
.L2765:
.L2763:
    jmp .L2761
.L2760:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2766
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
    jmp .L2767
.L2766:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2768
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
    jmp .L2769
.L2768:
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
.L2769:
.L2767:
.L2761:
    jmp .L2759
.L2758:
    movq -112(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2770
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2772
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2774
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
    jmp .L2775
.L2774:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2776
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
    jmp .L2777
.L2776:
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
.L2777:
.L2775:
    jmp .L2773
.L2772:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2778
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
    jmp .L2779
.L2778:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2780
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
    jmp .L2781
.L2780:
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
.L2781:
.L2779:
.L2773:
    jmp .L2771
.L2770:
    movq -112(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2782
    movq -128(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2782
    movl $1, %eax
    jmp .L2783
.L2782:
    xorl %eax, %eax
.L2783:
    cmpq $0, %rax
    je .L2784
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2786
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2788
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
    jmp .L2789
.L2788:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2790
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
    jmp .L2791
.L2790:
    leaq .Lstr414(%rip), %rax
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
.L2791:
.L2789:
    jmp .L2787
.L2786:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2792
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
    jmp .L2793
.L2792:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2794
    leaq .Lstr416(%rip), %rax
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
    jmp .L2795
.L2794:
    leaq .Lstr417(%rip), %rax
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
.L2795:
.L2793:
.L2787:
    jmp .L2785
.L2784:
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2796
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2798
    leaq .Lstr418(%rip), %rax
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
    jmp .L2799
.L2798:
    leaq .Lstr419(%rip), %rax
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
.L2799:
    jmp .L2797
.L2796:
    movq -160(%rbp), %rax
    cmpq $0, %rax
    je .L2800
    leaq .Lstr420(%rip), %rax
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
    jmp .L2801
.L2800:
    leaq .Lstr421(%rip), %rax
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
.L2801:
.L2797:
.L2785:
.L2771:
.L2759:
.L2751:
.L2727:
.L2721:
.L2701:
    jmp .L2699
.L2698:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2802
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
    je .L2804
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
    je .L2806
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2806
    movl $1, %eax
    jmp .L2807
.L2806:
    xorl %eax, %eax
.L2807:
    cmpq $0, %rax
    je .L2808
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2810:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2811
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2810
.L2811:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2812
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2812:
.L2808:
    jmp .L2805
.L2804:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2814
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
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
    testq %rax, %rax
    jne .L2816
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2816
    xorl %eax, %eax
    jmp .L2817
.L2816:
    movl $1, %eax
.L2817:
    testq %rax, %rax
    jne .L2818
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2818
    xorl %eax, %eax
    jmp .L2819
.L2818:
    movl $1, %eax
.L2819:
    cmpq $0, %rax
    je .L2820
    movq tok(%rip), %rax
    movq %rax, -64(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2822:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2823
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2822
.L2823:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2824
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2824:
    movq -48(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2826
    leaq tok(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2826:
.L2820:
.L2805:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L2828
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
    jmp .L2829
.L2828:
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
.L2829:
    jmp .L2803
.L2802:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2830
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
    je .L2832
    movq deref_w(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2832
    movl $1, %eax
    jmp .L2833
.L2832:
    xorl %eax, %eax
.L2833:
    cmpq $0, %rax
    je .L2834
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
    jmp .L2835
.L2834:
    movq deref_w(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2836
    movq deref_u(%rip), %rax
    cmpq $0, %rax
    je .L2838
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
    jmp .L2839
.L2838:
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
.L2839:
    jmp .L2837
.L2836:
    movq deref_w(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2840
    movq deref_u(%rip), %rax
    cmpq $0, %rax
    je .L2842
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
    jmp .L2843
.L2842:
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
.L2843:
    jmp .L2841
.L2840:
    movq deref_w(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2844
    movq deref_u(%rip), %rax
    cmpq $0, %rax
    je .L2846
    leaq .Lstr427(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2847
.L2846:
    leaq .Lstr428(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2847:
    jmp .L2845
.L2844:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2848
    leaq .Lstr429(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2849
.L2848:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2850
    leaq .Lstr430(%rip), %rax
    pushq %rax
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
    jmp .L2851
.L2850:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2852
    leaq .Lstr431(%rip), %rax
    pushq %rax
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
    jmp .L2853
.L2852:
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
.L2853:
.L2851:
.L2849:
.L2845:
.L2841:
.L2837:
.L2835:
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
    jmp .L2831
.L2830:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2854
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
    je .L2856
    leaq .Lstr433(%rip), %rax
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
.L2856:
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
    je .L2858
    leaq .Lstr434(%rip), %rax
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
.L2858:
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
    je .L2860
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2861
.L2860:
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
    je .L2862
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2863
.L2862:
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
    je .L2864
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2865
.L2864:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2865:
.L2863:
.L2861:
    leaq deref_w(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2866
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2867
.L2866:
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
    je .L2868
    movq $8, %rax
    jmp .L2869
.L2868:
    movq -32(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
.L2869:
.L2867:
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
    je .L2870
    movq deref_w(%rip), %rax
    pushq %rax
    movq $2, %rax
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
    testq %rax, %rax
    je .L2872
    movq deref_w(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2872
    movl $1, %eax
    jmp .L2873
.L2872:
    xorl %eax, %eax
.L2873:
    testq %rax, %rax
    je .L2874
    movq deref_w(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2874
    movl $1, %eax
    jmp .L2875
.L2874:
    xorl %eax, %eax
.L2875:
    cmpq $0, %rax
    je .L2876
    leaq deref_w(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2876:
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
    je .L2878
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2879
.L2878:
    movq $0, %rax
.L2879:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2880
    movq -32(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L2881
.L2880:
    movq $0, %rax
.L2881:
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
    je .L2882
    leaq .Lstr435(%rip), %rax
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
    jmp .L2883
.L2882:
    leaq .Lstr436(%rip), %rax
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
.L2883:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2855
.L2854:
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2884
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
    je .L2886
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
.L2886:
    leaq .Lstr437(%rip), %rax
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
    jmp .L2885
.L2884:
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2888
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
    je .L2890
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
    jmp .L2891
.L2890:
    movq expr_type(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2892
    leaq .Lstr439(%rip), %rax
    pushq %rax
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
    leaq .Lstr440(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2893:
.L2891:
    jmp .L2889
.L2888:
    movq tok(%rip), %rax
    pushq %rax
    movq $33, %rax
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
    leaq .Lstr441(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr442(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr443(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2895
.L2894:
    movq tok(%rip), %rax
    pushq %rax
    movq $126, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2896
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
    leaq .Lstr444(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2897
.L2896:
    movq tok(%rip), %rax
    pushq %rax
    movq $293, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2898
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
    je .L2900
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
.L2900:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2902
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr445(%rip), %rax
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
    jne .L2904
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr446(%rip), %rax
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
    jne .L2904
    xorl %eax, %eax
    jmp .L2905
.L2904:
    movl $1, %eax
.L2905:
    testq %rax, %rax
    je .L2902
    movl $1, %eax
    jmp .L2903
.L2902:
    xorl %eax, %eax
.L2903:
    cmpq $0, %rax
    je .L2906
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
    jne .L2908
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
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
    testq %rax, %rax
    jne .L2910
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2910
    xorl %eax, %eax
    jmp .L2911
.L2910:
    movl $1, %eax
.L2911:
    testq %rax, %rax
    jne .L2912
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2912
    xorl %eax, %eax
    jmp .L2913
.L2912:
    movl $1, %eax
.L2913:
    cmpq $0, %rax
    je .L2914
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2914:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2907
.L2906:
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2916
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
    jmp .L2917
.L2916:
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2918
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
    jmp .L2919
.L2918:
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
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
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2922
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
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
    jmp .L2925
.L2924:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2926
    movq tok(%rip), %rax
    pushq %rax
    movq $308, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2926
    xorl %eax, %eax
    jmp .L2927
.L2926:
    movl $1, %eax
.L2927:
    cmpq $0, %rax
    je .L2928
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
    je .L2930
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
    je .L2932
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2932
    movl $1, %eax
    jmp .L2933
.L2932:
    xorl %eax, %eax
.L2933:
    testq %rax, %rax
    je .L2934
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
    je .L2934
    movl $1, %eax
    jmp .L2935
.L2934:
    xorl %eax, %eax
.L2935:
    cmpq $0, %rax
    je .L2936
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
.L2936:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2930:
    jmp .L2929
.L2928:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2938
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
    je .L2940
    leaq .Lstr447(%rip), %rax
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
.L2940:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2942
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
    je .L2942
    movl $1, %eax
    jmp .L2943
.L2942:
    xorl %eax, %eax
.L2943:
    cmpq $0, %rax
    je .L2944
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
    jmp .L2945
.L2944:
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
.L2945:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2939
.L2938:
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
    je .L2946
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2947
.L2946:
    movq expr_type(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2948
    leaq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2949
.L2948:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2949:
.L2947:
.L2939:
.L2929:
.L2925:
.L2921:
.L2919:
.L2917:
.L2907:
.L2950:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2951
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
    jmp .L2950
.L2951:
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L2952
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
.L2952:
    leaq .Lstr448(%rip), %rax
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
    jmp .L2899
.L2898:
    leaq .Lstr449(%rip), %rax
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
.L2899:
.L2897:
.L2895:
.L2889:
.L2885:
.L2855:
.L2831:
.L2803:
.L2699:
.L2695:
.L2693:
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
    je .L3006
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
    je .L3008
    leaq .Lstr456(%rip), %rax
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
.L3008:
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
    jne .L3010
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3012
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
    je .L3012
    movl $1, %eax
    jmp .L3013
.L3012:
    xorl %eax, %eax
.L3013:
    testq %rax, %rax
    jne .L3010
    xorl %eax, %eax
    jmp .L3011
.L3010:
    movl $1, %eax
.L3011:
    cmpq $0, %rax
    je .L3014
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3016
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L3017
.L3016:
    movq $8, %rax
.L3017:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3018
    movq -32(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L3019
.L3018:
    movq $0, %rax
.L3019:
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
    je .L3020
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    jmp .L3021
.L3020:
    movq $262, %rax
.L3021:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3015
.L3014:
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
    je .L3022
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
    je .L3024
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L3025
.L3024:
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
    je .L3026
    movq -32(%rbp), %rax
    addq $76, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3026
    movl $1, %eax
    jmp .L3027
.L3026:
    xorl %eax, %eax
.L3027:
    testq %rax, %rax
    je .L3028
    movq $1, %rax
    jmp .L3029
.L3028:
    movq $8, %rax
.L3029:
.L3025:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_unsigned(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3023
.L3022:
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
.L3023:
.L3015:
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L3030
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
    je .L3030
    movl $1, %eax
    jmp .L3031
.L3030:
    xorl %eax, %eax
.L3031:
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
    je .L3032
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3034
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
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
    jne .L3036
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3036
    xorl %eax, %eax
    jmp .L3037
.L3036:
    movl $1, %eax
.L3037:
    testq %rax, %rax
    jne .L3038
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3038
    xorl %eax, %eax
    jmp .L3039
.L3038:
    movl $1, %eax
.L3039:
    testq %rax, %rax
    je .L3032
    movl $1, %eax
    jmp .L3033
.L3032:
    xorl %eax, %eax
.L3033:
    cmpq $0, %rax
    je .L3040
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3041
.L3040:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L3042
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3042:
.L3041:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L3044
    movq -32(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L3046
    leaq .Lstr457(%rip), %rax
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
    jmp .L3047
.L3046:
    leaq .Lstr458(%rip), %rax
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
.L3047:
    jmp .L3045
.L3044:
    movq -32(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L3048
    leaq .Lstr459(%rip), %rax
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
    jmp .L3049
.L3048:
    leaq .Lstr460(%rip), %rax
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
.L3049:
.L3045:
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
    jmp .L3007
.L3006:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3050
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
    je .L3052
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3054
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3055
.L3054:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3056
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3057
.L3056:
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3057:
.L3055:
.L3052:
    jmp .L3051
.L3050:
    leaq .Lstr461(%rip), %rax
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
.L3051:
.L3007:
    leave
    ret
    .globl handle_postfix
handle_postfix:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -16(%rbp)
.L3178:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3180
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3180
    xorl %eax, %eax
    jmp .L3181
.L3180:
    movl $1, %eax
.L3181:
    testq %rax, %rax
    jne .L3182
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3182
    xorl %eax, %eax
    jmp .L3183
.L3182:
    movl $1, %eax
.L3183:
    cmpq $0, %rax
    je .L3179
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3184
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    je .L3186
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
    je .L3188
    movq $1, %rax
    jmp .L3189
.L3188:
    movq $8, %rax
.L3189:
    popq %rcx
    movq %rax, (%rcx)
    leaq -144(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3186:
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3190
    leaq .Lstr491(%rip), %rax
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
.L3190:
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
    je .L3192
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
    jmp .L3193
.L3192:
    movq -16(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3194
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3194
    movl $1, %eax
    jmp .L3195
.L3194:
    xorl %eax, %eax
.L3195:
    testq %rax, %rax
    je .L3196
    movq -128(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3196
    movl $1, %eax
    jmp .L3197
.L3196:
    xorl %eax, %eax
.L3197:
    cmpq $0, %rax
    je .L3198
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3200
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L3202
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
    jmp .L3203
.L3202:
    leaq .Lstr494(%rip), %rax
    pushq %rax
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
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3204
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L3206
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
    jmp .L3207
.L3206:
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
.L3207:
    jmp .L3205
.L3204:
    movq -128(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3208
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L3210
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
    jmp .L3211
.L3210:
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
.L3211:
    jmp .L3209
.L3208:
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
.L3209:
.L3205:
.L3201:
    movq -128(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3212
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L3212
    movl $1, %eax
    jmp .L3213
.L3212:
    xorl %eax, %eax
.L3213:
    cmpq $0, %rax
    je .L3214
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
    je .L3216
    movq $1, %rax
    jmp .L3217
.L3216:
    movq $8, %rax
.L3217:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3215
.L3214:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3215:
.L3198:
.L3193:
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
    jmp .L3185
.L3184:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3218
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
    jmp .L3222
.L3220:
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
    je .L3224
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
    jmp .L3223
.L3224:
.L3221:
    leaq -112(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3222
.L3222:
    movq -112(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L3220
.L3223:
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
    je .L3226
    leaq .Lstr500(%rip), %rax
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
.L3226:
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
    jne .L3228
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    jne .L3228
    xorl %eax, %eax
    jmp .L3229
.L3228:
    movl $1, %eax
.L3229:
    cmpq $0, %rax
    je .L3230
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3232
    movq -80(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
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
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3235
.L3234:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3236
    movq -96(%rbp), %rax
    testq %rax, %rax
    je .L3236
    movl $1, %eax
    jmp .L3237
.L3236:
    xorl %eax, %eax
.L3237:
    cmpq $0, %rax
    je .L3238
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3239
.L3238:
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
    je .L3240
    movq $262, %rax
    jmp .L3241
.L3240:
    movq $0, %rax
.L3241:
    popq %rcx
    movq %rax, (%rcx)
.L3239:
.L3235:
    jmp .L3231
.L3230:
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3242
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
    je .L3244
    movq $262, %rax
    jmp .L3245
.L3244:
    movq $0, %rax
.L3245:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3243
.L3242:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3246
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3248
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
    jmp .L3249
.L3248:
    leaq .Lstr502(%rip), %rax
    pushq %rax
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
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3250
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3252
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
    jmp .L3253
.L3252:
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
.L3253:
    jmp .L3251
.L3250:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3254
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3256
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
    jmp .L3257
.L3256:
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
.L3257:
    jmp .L3255
.L3254:
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
.L3255:
.L3251:
.L3247:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3243:
.L3231:
    jmp .L3219
.L3218:
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3258
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
    jmp .L3262
.L3260:
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
    je .L3264
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
    jmp .L3263
.L3264:
.L3261:
    leaq -112(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3262
.L3262:
    movq -112(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L3260
.L3263:
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
    je .L3266
    leaq .Lstr508(%rip), %rax
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
.L3266:
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
    jne .L3268
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    jne .L3268
    xorl %eax, %eax
    jmp .L3269
.L3268:
    movl $1, %eax
.L3269:
    cmpq $0, %rax
    je .L3270
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3272
    movq -80(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
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
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3275
.L3274:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3276
    movq -96(%rbp), %rax
    testq %rax, %rax
    je .L3276
    movl $1, %eax
    jmp .L3277
.L3276:
    xorl %eax, %eax
.L3277:
    cmpq $0, %rax
    je .L3278
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3279
.L3278:
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
    je .L3280
    movq $262, %rax
    jmp .L3281
.L3280:
    movq $0, %rax
.L3281:
    popq %rcx
    movq %rax, (%rcx)
.L3279:
.L3275:
    jmp .L3271
.L3270:
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3282
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
    je .L3284
    movq $262, %rax
    jmp .L3285
.L3284:
    movq $0, %rax
.L3285:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3283
.L3282:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3286
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3288
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
    jmp .L3289
.L3288:
    leaq .Lstr510(%rip), %rax
    pushq %rax
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
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3290
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3292
    leaq .Lstr511(%rip), %rax
    pushq %rax
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
    leaq .Lstr512(%rip), %rax
    pushq %rax
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
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3294
    movq -80(%rbp), %rax
    cmpq $0, %rax
    je .L3296
    leaq .Lstr513(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3297
.L3296:
    leaq .Lstr514(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3297:
    jmp .L3295
.L3294:
    leaq .Lstr515(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3295:
.L3291:
.L3287:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3283:
.L3271:
.L3258:
.L3219:
.L3185:
    jmp .L3178
.L3179:
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
.L3338:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3340
    movq tok(%rip), %rax
    pushq %rax
    movq $47, %rax
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
    testq %rax, %rax
    jne .L3342
    movq tok(%rip), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3342
    xorl %eax, %eax
    jmp .L3343
.L3342:
    movl $1, %eax
.L3343:
    cmpq $0, %rax
    je .L3339
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    jne .L3344
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
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
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3347
.L3346:
    movq -32(%rbp), %rax
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
    movq $289, %rax
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
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3350:
.L3347:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3352
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3352
    xorl %eax, %eax
    jmp .L3353
.L3352:
    movl $1, %eax
.L3353:
    cmpq $0, %rax
    je .L3354
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3356
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
    jmp .L3357
.L3356:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3358
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
    jmp .L3359
.L3358:
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
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3360
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
    jmp .L3361
.L3360:
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
.L3361:
.L3359:
.L3357:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3362
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
    jmp .L3363
.L3362:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3364
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
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3366
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
    jmp .L3367
.L3366:
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
.L3367:
.L3365:
.L3363:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3368
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
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
    jmp .L3371
.L3370:
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
.L3371:
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
    jmp .L3369
.L3368:
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3372
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
    jmp .L3373
.L3372:
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
.L3373:
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
.L3369:
    jmp .L3355
.L3354:
    movq -16(%rbp), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3374
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
    leaq .Lstr566(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3375
.L3374:
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3376
    leaq .Lstr567(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3377
.L3376:
    leaq .Lstr568(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr569(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr570(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr571(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3377:
.L3375:
.L3355:
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
    jmp .L3338
.L3339:
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
.L3416:
    movq tok(%rip), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3418
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
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
    je .L3417
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    je .L3420
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
.L3420:
    movq expr_type(%rip), %rax
    movq %rax, -80(%rbp)
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
    jne .L3422
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
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
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3425
.L3424:
    movq -32(%rbp), %rax
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
    movq $289, %rax
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
    leaq -96(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3428:
.L3425:
    movq -96(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3430
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3430
    xorl %eax, %eax
    jmp .L3431
.L3430:
    movl $1, %eax
.L3431:
    cmpq $0, %rax
    je .L3432
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3434
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
    jmp .L3435
.L3434:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3436
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
    jmp .L3437
.L3436:
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3438
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
    jmp .L3439
.L3438:
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
.L3439:
.L3437:
.L3435:
    movq -80(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3440
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
    jmp .L3441
.L3440:
    movq -80(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3442
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
    jmp .L3443
.L3442:
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3444
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
    jmp .L3445
.L3444:
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
.L3445:
.L3443:
.L3441:
    movq -96(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3446
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
.L3449:
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
    jmp .L3447
.L3446:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3450
    leaq .Lstr604(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3451
.L3450:
    leaq .Lstr605(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3451:
    leaq .Lstr606(%rip), %rax
    pushq %rax
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
    jmp .L3433
.L3432:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3452
    leaq .Lstr607(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3453
.L3452:
    leaq .Lstr608(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr609(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3453:
.L3433:
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
    jmp .L3416
.L3417:
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
.L3460:
    movq tok(%rip), %rax
    pushq %rax
    movq $294, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3462
    movq tok(%rip), %rax
    pushq %rax
    movq $295, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3462
    xorl %eax, %eax
    jmp .L3463
.L3462:
    movl $1, %eax
.L3463:
    cmpq $0, %rax
    je .L3461
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr616(%rip), %rax
    pushq %rax
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
    leaq .Lstr617(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr618(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr619(%rip), %rax
    pushq %rax
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
    je .L3464
    leaq .Lstr620(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3465
.L3464:
    leaq .Lstr621(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3465:
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
    jmp .L3460
.L3461:
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
.L3512:
    movq tok(%rip), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3514
    movq tok(%rip), %rax
    pushq %rax
    movq $274, %rax
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
    testq %rax, %rax
    jne .L3516
    movq tok(%rip), %rax
    pushq %rax
    movq $62, %rax
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
    testq %rax, %rax
    jne .L3518
    movq tok(%rip), %rax
    pushq %rax
    movq $275, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3518
    xorl %eax, %eax
    jmp .L3519
.L3518:
    movl $1, %eax
.L3519:
    cmpq $0, %rax
    je .L3513
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    jne .L3520
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
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
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3523
.L3522:
    movq -32(%rbp), %rax
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
    movq $289, %rax
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
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3526:
.L3523:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3528
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3528
    xorl %eax, %eax
    jmp .L3529
.L3528:
    movl $1, %eax
.L3529:
    cmpq $0, %rax
    je .L3530
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3532
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
    jmp .L3533
.L3532:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3534
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
    jmp .L3535
.L3534:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3536
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
    jmp .L3537
.L3536:
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
.L3537:
.L3535:
.L3533:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3538
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
    jmp .L3539
.L3538:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3540
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
    jmp .L3541
.L3540:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3542
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
    jmp .L3543
.L3542:
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
.L3543:
.L3541:
.L3539:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3544
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
    jmp .L3545
.L3544:
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
.L3545:
    movq -16(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3546
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
    jmp .L3547
.L3546:
    movq -16(%rbp), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3548
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
    jmp .L3549
.L3548:
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3550
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
    jmp .L3551
.L3550:
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
.L3551:
.L3549:
.L3547:
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
    jmp .L3531
.L3530:
    leaq .Lstr662(%rip), %rax
    pushq %rax
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
    je .L3552
    leaq .Lstr663(%rip), %rax
    pushq %rax
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3554
    leaq .Lstr664(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3555
.L3554:
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3556
    leaq .Lstr665(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3557
.L3556:
    leaq .Lstr666(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3557:
.L3555:
.L3553:
    leaq .Lstr667(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3531:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3512
.L3513:
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
.L3592:
    movq tok(%rip), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3594
    movq tok(%rip), %rax
    pushq %rax
    movq $277, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3594
    xorl %eax, %eax
    jmp .L3595
.L3594:
    movl $1, %eax
.L3595:
    cmpq $0, %rax
    je .L3593
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    jne .L3596
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
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
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3599
.L3598:
    movq -32(%rbp), %rax
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
    movq $289, %rax
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
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3602:
.L3599:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3604
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3604
    xorl %eax, %eax
    jmp .L3605
.L3604:
    movl $1, %eax
.L3605:
    cmpq $0, %rax
    je .L3606
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3608
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
    jmp .L3609
.L3608:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3610
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
    jmp .L3611
.L3610:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3612
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
    jmp .L3613
.L3612:
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
.L3613:
.L3611:
.L3609:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3614
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
    jmp .L3615
.L3614:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3616
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
    jmp .L3617
.L3616:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3618
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
    jmp .L3619
.L3618:
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
.L3619:
.L3617:
.L3615:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3622
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
    jmp .L3623
.L3622:
    leaq .Lstr700(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3623:
    leaq .Lstr701(%rip), %rax
    pushq %rax
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
    leaq .Lstr702(%rip), %rax
    pushq %rax
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
    je .L3624
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
    jmp .L3625
.L3624:
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
.L3625:
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
.L3607:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3592
.L3593:
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
.L3628:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
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
    call equality_expr
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
.L3632:
    movq tok(%rip), %rax
    pushq %rax
    movq $94, %rax
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
    call bitwise_and_expr
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
.L3636:
    movq tok(%rip), %rax
    pushq %rax
    movq $124, %rax
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
    leaq .Lstr721(%rip), %rax
    pushq %rax
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
    leaq .Lstr722(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr723(%rip), %rax
    pushq %rax
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
    jmp .L3636
.L3637:
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
.L3640:
    movq tok(%rip), %rax
    pushq %rax
    movq $278, %rax
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
    leaq .Lstr732(%rip), %rax
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
    leaq .Lstr733(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr734(%rip), %rax
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
    leaq .Lstr735(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr736(%rip), %rax
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
    leaq .Lstr737(%rip), %rax
    pushq %rax
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
.L3644:
    movq tok(%rip), %rax
    pushq %rax
    movq $279, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3645
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
    leaq .Lstr746(%rip), %rax
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
    leaq .Lstr747(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr748(%rip), %rax
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
    leaq .Lstr751(%rip), %rax
    pushq %rax
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
    jmp .L3644
.L3645:
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
    je .L3648
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
    leaq .Lstr755(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr756(%rip), %rax
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
    leaq .Lstr757(%rip), %rax
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
.L3648:
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
    je .L3686
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3688
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
    jmp .L3689
.L3688:
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
.L3689:
    jmp .L3687
.L3686:
    movq -16(%rbp), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3690
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3690
    xorl %eax, %eax
    jmp .L3691
.L3690:
    movl $1, %eax
.L3691:
    cmpq $0, %rax
    je .L3692
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3694
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3696
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
.L3696:
    jmp .L3695
.L3694:
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3698
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
.L3698:
.L3695:
    jmp .L3693
.L3692:
    movq -16(%rbp), %rax
    pushq %rax
    movq $299, %rax
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
    jmp .L3703
.L3702:
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
.L3703:
    jmp .L3701
.L3700:
    movq -16(%rbp), %rax
    pushq %rax
    movq $300, %rax
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
    jmp .L3707
.L3706:
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
.L3707:
    jmp .L3705
.L3704:
    movq -16(%rbp), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3708
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3710
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
    jmp .L3711
.L3710:
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
.L3711:
    jmp .L3709
.L3708:
    movq -16(%rbp), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3712
    movq -16(%rbp), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3712
    xorl %eax, %eax
    jmp .L3713
.L3712:
    movl $1, %eax
.L3713:
    cmpq $0, %rax
    je .L3714
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
    leaq .Lstr802(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr803(%rip), %rax
    pushq %rax
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
    je .L3716
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3718
    leaq .Lstr804(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3719
.L3718:
    leaq .Lstr805(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3719:
    jmp .L3717
.L3716:
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3720
    leaq .Lstr806(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3721
.L3720:
    leaq .Lstr807(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3721:
.L3717:
.L3714:
.L3709:
.L3705:
.L3701:
.L3693:
.L3687:
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
    je .L3930
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3930
    movl $1, %eax
    jmp .L3931
.L3930:
    xorl %eax, %eax
.L3931:
    cmpq $0, %rax
    je .L3932
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L3932:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3934
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
.L3936:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3938
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
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
    testq %rax, %rax
    jne .L3940
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3940
    xorl %eax, %eax
    jmp .L3941
.L3940:
    movl $1, %eax
.L3941:
    testq %rax, %rax
    jne .L3942
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3942
    xorl %eax, %eax
    jmp .L3943
.L3942:
    movl $1, %eax
.L3943:
    cmpq $0, %rax
    je .L3937
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3944
    movq $1, %rax
    movq %rax, -640(%rbp)
.L3946:
    movq -640(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3948
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3948
    movl $1, %eax
    jmp .L3949
.L3948:
    xorl %eax, %eax
.L3949:
    cmpq $0, %rax
    je .L3947
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
    je .L3950
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3951
.L3950:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3952
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L3952:
.L3951:
    jmp .L3946
.L3947:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L3945
.L3944:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3954
    movq $1, %rax
    movq %rax, -640(%rbp)
.L3956:
    movq -640(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3958
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3958
    movl $1, %eax
    jmp .L3959
.L3958:
    xorl %eax, %eax
.L3959:
    cmpq $0, %rax
    je .L3957
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
    je .L3960
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3961
.L3960:
    movq tok(%rip), %rax
    pushq %rax
    movq $93, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3962
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L3962:
.L3961:
    jmp .L3956
.L3957:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L3955
.L3954:
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
.L3955:
.L3945:
    jmp .L3936
.L3937:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3964
    leaq -624(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3965
.L3964:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3966
    leaq -624(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3967
.L3966:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3968
    leaq -624(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3969
.L3968:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3970
    leaq -624(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3971
.L3970:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3972
    leaq -624(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3973
.L3972:
    movq tok(%rip), %rax
    pushq %rax
    movq $296, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3974
    leaq -624(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3975
.L3974:
    movq tok(%rip), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3976
    leaq -624(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3977
.L3976:
    movq tok(%rip), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3978
    leaq -624(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3979
.L3978:
    movq tok(%rip), %rax
    pushq %rax
    movq $299, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3980
    leaq -624(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3981
.L3980:
    movq tok(%rip), %rax
    pushq %rax
    movq $300, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3982
    leaq -624(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3983
.L3982:
    movq tok(%rip), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3984
    leaq -624(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3985
.L3984:
    movq tok(%rip), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3986
    leaq -624(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3987
.L3986:
    movq tok(%rip), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3988
    leaq -624(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3989
.L3988:
    leaq -624(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3989:
.L3987:
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
    je .L3990
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
    movq %rax, -640(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
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
    je .L3992
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
    jmp .L3993
.L3992:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3994
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
    jmp .L3995
.L3994:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3996
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
    jmp .L3997
.L3996:
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
.L3997:
.L3995:
.L3993:
    leave
    ret
    jmp .L3991
.L3990:
    movq -624(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3998
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4000
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
    jmp .L4001
.L4000:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4002
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
    jmp .L4003
.L4002:
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
.L4003:
.L4001:
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4006
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
    jmp .L4007
.L4006:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4008
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
    jmp .L4009
.L4008:
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
.L4009:
.L4007:
.L4005:
    leave
    ret
    jmp .L3999
.L3998:
    movq -624(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4010
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4012
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
    jmp .L4013
.L4012:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4014
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
    jmp .L4015
.L4014:
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
.L4015:
.L4013:
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4016
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
    jmp .L4017
.L4016:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4018
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
    jmp .L4019
.L4018:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4020
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
.L4021:
.L4019:
.L4017:
    leave
    ret
    jmp .L4011
.L4010:
    movq -624(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4022
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
    movq $4, %rax
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
.L4027:
.L4025:
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4028
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
    jmp .L4029
.L4028:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4030
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
    jmp .L4031
.L4030:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4032
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
    jmp .L4033
.L4032:
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
.L4033:
.L4031:
.L4029:
    leave
    ret
    jmp .L4023
.L4022:
    movq -624(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4034
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4036
    movq $271, %rax
    jmp .L4037
.L4036:
    movq $272, %rax
.L4037:
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
    je .L4038
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
    jmp .L4039
.L4038:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4040
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
    jmp .L4041
.L4040:
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
.L4041:
.L4039:
    movq -640(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4042
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4044
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
    jmp .L4047
.L4046:
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
.L4047:
.L4045:
    jmp .L4043
.L4042:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4048
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
    jmp .L4049
.L4048:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4050
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
    jmp .L4051
.L4050:
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
.L4051:
.L4049:
.L4043:
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
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leave
    ret
    jmp .L4035
.L4034:
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
.L4035:
.L4023:
.L4011:
.L3999:
.L3991:
    jmp .L3935
.L3934:
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
    je .L4052
    leaq -768(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4053
.L4052:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4054
    leaq -768(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4055
.L4054:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4056
    leaq -768(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4057
.L4056:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4058
    leaq -768(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4059
.L4058:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4060
    leaq -768(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4061
.L4060:
    movq tok(%rip), %rax
    pushq %rax
    movq $296, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4062
    leaq -768(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4063
.L4062:
    movq tok(%rip), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4064
    leaq -768(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4065
.L4064:
    movq tok(%rip), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4066
    leaq -768(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4067
.L4066:
    movq tok(%rip), %rax
    pushq %rax
    movq $299, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4068
    leaq -768(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4069
.L4068:
    movq tok(%rip), %rax
    pushq %rax
    movq $300, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4070
    leaq -768(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4071
.L4070:
    movq tok(%rip), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4072
    leaq -768(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4073
.L4072:
    movq tok(%rip), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4074
    leaq -768(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4075
.L4074:
    movq tok(%rip), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4076
    leaq -768(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4076:
.L4075:
.L4073:
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
    je .L4078
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
    movq %rax, -784(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
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
    je .L4080
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
    jmp .L4081
.L4080:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4082
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
    jmp .L4083
.L4082:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4084
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
    jmp .L4085
.L4084:
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
.L4085:
.L4083:
.L4081:
    leave
    ret
    jmp .L4079
.L4078:
    movq -768(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4086
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4088
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
    jmp .L4089
.L4088:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4090
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
    jmp .L4091
.L4090:
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
.L4091:
.L4089:
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4094
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
    jmp .L4095
.L4094:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4096
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
    jmp .L4097
.L4096:
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
.L4097:
.L4095:
.L4093:
    leave
    ret
    jmp .L4087
.L4086:
    movq -768(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4098
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4100
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
    jmp .L4101
.L4100:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4102
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
    jmp .L4103
.L4102:
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
.L4103:
.L4101:
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4104
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
    jmp .L4105
.L4104:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4106
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
    jmp .L4107
.L4106:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4108
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
.L4109:
.L4107:
.L4105:
    leave
    ret
    jmp .L4099
.L4098:
    movq -768(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4110
    movq $0, %rax
    movq %rax, -784(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
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
    movq $4, %rax
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
.L4115:
.L4113:
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4116
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
    jmp .L4117
.L4116:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4118
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
    jmp .L4119
.L4118:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4120
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
    jmp .L4121
.L4120:
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
.L4121:
.L4119:
.L4117:
    leave
    ret
    jmp .L4111
.L4110:
    movq -768(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4122
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
    je .L4124
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
    jmp .L4125
.L4124:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4126
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
    jmp .L4127
.L4126:
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
.L4127:
.L4125:
    movq -768(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4128
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4130
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
    leaq .Lstr1070(%rip), %rax
    pushq %rax
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
    leaq .Lstr1071(%rip), %rax
    pushq %rax
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
    jmp .L4129
.L4128:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4134
    leaq .Lstr1072(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4135
.L4134:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4136
    leaq .Lstr1073(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L4137
.L4136:
    leaq .Lstr1074(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L4137:
.L4135:
.L4129:
    leaq .Lstr1075(%rip), %rax
    pushq %rax
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
    jmp .L4123
.L4122:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L4123:
.L4111:
.L4099:
.L4087:
.L4079:
.L3935:
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
    je .L4148
    leaq .Lstr1082(%rip), %rax
    leave
    ret
.L4148:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4150
    leaq .Lstr1083(%rip), %rax
    leave
    ret
.L4150:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4152
    leaq .Lstr1084(%rip), %rax
    leave
    ret
.L4152:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4154
    leaq .Lstr1085(%rip), %rax
    leave
    ret
.L4154:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4156
    leaq .Lstr1086(%rip), %rax
    leave
    ret
.L4156:
    leaq .Lstr1087(%rip), %rax
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
    je .L4166
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr1092(%rip), %rax
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
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4168
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr1093(%rip), %rax
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4170
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr1094(%rip), %rax
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
    jmp .L4171
.L4170:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4172
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr1095(%rip), %rax
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
    jmp .L4173
.L4172:
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
.L4173:
.L4171:
.L4169:
.L4167:
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
    je .L4228
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4230
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
    jmp .L4231
.L4230:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4232
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
    jmp .L4233
.L4232:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4234
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
    jmp .L4235
.L4234:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4236
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
    jmp .L4237
.L4236:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4238
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
    jmp .L4239
.L4238:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4240
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
    jmp .L4241
.L4240:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4242
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
    jmp .L4243
.L4242:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4244
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
    jmp .L4245
.L4244:
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
.L4245:
.L4243:
.L4241:
.L4239:
.L4237:
.L4235:
.L4233:
.L4231:
    jmp .L4229
.L4228:
    movq -32(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4246
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4248
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
    jmp .L4249
.L4248:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4250
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
    jmp .L4251
.L4250:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4252
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
    jmp .L4253
.L4252:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4254
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
    jmp .L4255
.L4254:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4256
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
    jmp .L4257
.L4256:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4258
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
    jmp .L4259
.L4258:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4260
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
    jmp .L4261
.L4260:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4262
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
    jmp .L4263
.L4262:
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
.L4263:
.L4261:
.L4259:
.L4257:
.L4255:
.L4253:
.L4251:
.L4249:
    jmp .L4247
.L4246:
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4264
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4266
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
    jmp .L4267
.L4266:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4268
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
    jmp .L4269
.L4268:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4270
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
    jmp .L4271
.L4270:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4272
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1144(%rip), %rax
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
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4274
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1145(%rip), %rax
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
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4276
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1146(%rip), %rax
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4278
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1147(%rip), %rax
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
    jmp .L4279
.L4278:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4280
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1148(%rip), %rax
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
    jmp .L4281
.L4280:
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1149(%rip), %rax
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
.L4281:
.L4279:
.L4277:
.L4275:
.L4273:
.L4271:
.L4269:
.L4267:
    jmp .L4265
.L4264:
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
.L4265:
.L4247:
.L4229:
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
    je .L4290
    movq $0, %rax
    leave
    ret
.L4290:
    movq -16(%rbp), %rax
    pushq %rax
    movq $98, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4292
    movq $1, %rax
    leave
    ret
.L4292:
    movq -16(%rbp), %rax
    pushq %rax
    movq $99, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4294
    movq $2, %rax
    leave
    ret
.L4294:
    movq -16(%rbp), %rax
    pushq %rax
    movq $100, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4296
    movq $3, %rax
    leave
    ret
.L4296:
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
.L4316:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L4317
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4318
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
    je .L4320
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
    jmp .L4321
.L4320:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4322
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1153(%rip), %rax
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
    jmp .L4323
.L4322:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4326
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4326
    movl $1, %eax
    jmp .L4327
.L4326:
    xorl %eax, %eax
.L4327:
    cmpq $0, %rax
    je .L4328
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
    jne .L4330
    movq -32(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4330
    xorl %eax, %eax
    jmp .L4331
.L4330:
    movl $1, %eax
.L4331:
    cmpq $0, %rax
    je .L4332
    leaq .Lstr1154(%rip), %rax
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
.L4332:
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
    jmp .L4329
.L4328:
    leaq .Lstr1155(%rip), %rax
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
.L4329:
.L4323:
.L4321:
    jmp .L4319
.L4318:
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
.L4319:
    jmp .L4316
.L4317:
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
    je .L4364
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
.L4366:
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
    je .L4368
    leaq token(%rip), %rax
    pushq %rax
    movq -384(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L4368
    movl $1, %eax
    jmp .L4369
.L4368:
    xorl %eax, %eax
.L4369:
    cmpq $0, %rax
    je .L4367
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
    jmp .L4366
.L4367:
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
    jne .L4370
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4370
    xorl %eax, %eax
    jmp .L4371
.L4370:
    movl $1, %eax
.L4371:
    testq %rax, %rax
    jne .L4372
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4372
    xorl %eax, %eax
    jmp .L4373
.L4372:
    movl $1, %eax
.L4373:
    cmpq $0, %rax
    je .L4374
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
    je .L4376
    leaq .Lstr1163(%rip), %rax
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
.L4376:
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
    je .L4378
    leaq -416(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4378:
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
    je .L4380
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L4382
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1164(%rip), %rax
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
    jmp .L4383
.L4382:
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1165(%rip), %rax
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
.L4383:
    jmp .L4381
.L4380:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L4384
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1166(%rip), %rax
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
    jmp .L4385
.L4384:
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1167(%rip), %rax
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
.L4385:
.L4381:
    leave
    ret
.L4374:
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
.L4364:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L4386
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
    je .L4386
    movl $1, %eax
    jmp .L4387
.L4386:
    xorl %eax, %eax
.L4387:
    cmpq $0, %rax
    je .L4388
    leaq .Lstr1168(%rip), %rax
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
.L4388:
    leaq .Lstr1169(%rip), %rax
    pushq %rax
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
    je .L4390
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
.L4390:
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4392
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
.L4392:
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
    je .L4396
    leave
    ret
.L4396:
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
    je .L4462
    leaq .Lstr1181(%rip), %rax
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
.L4462:
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4464:
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L4466
    movq -64(%rbp), %rax
    pushq %rax
    movq $15, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4466
    movl $1, %eax
    jmp .L4467
.L4466:
    xorl %eax, %eax
.L4467:
    cmpq $0, %rax
    je .L4465
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
    jmp .L4464
.L4465:
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
    je .L4468
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
.L4468:
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
    je .L4470
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
    je .L4472
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
.L4472:
    movq -96(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4474
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
    jne .L4474
    xorl %eax, %eax
    jmp .L4475
.L4474:
    movl $1, %eax
.L4475:
    testq %rax, %rax
    jne .L4476
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
    jne .L4476
    xorl %eax, %eax
    jmp .L4477
.L4476:
    movl $1, %eax
.L4477:
    cmpq $0, %rax
    je .L4478
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
.L4478:
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
    jne .L4480
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
    movq $98, %rax
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
    testq %rax, %rax
    jne .L4484
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
    jne .L4484
    xorl %eax, %eax
    jmp .L4485
.L4484:
    movl $1, %eax
.L4485:
    testq %rax, %rax
    jne .L4486
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
    jne .L4486
    xorl %eax, %eax
    jmp .L4487
.L4486:
    movl $1, %eax
.L4487:
    cmpq $0, %rax
    je .L4488
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
    jmp .L4489
.L4488:
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
    je .L4490
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
    jmp .L4491
.L4490:
    leaq .Lstr1184(%rip), %rax
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
.L4491:
.L4489:
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
    je .L4492
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
.L4492:
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
    jmp .L4471
.L4470:
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
    jne .L4494
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
    jne .L4494
    xorl %eax, %eax
    jmp .L4495
.L4494:
    movl $1, %eax
.L4495:
    cmpq $0, %rax
    je .L4496
    leaq .Lstr1186(%rip), %rax
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
.L4496:
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
    jne .L4498
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
    movq $98, %rax
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
    jne .L4502
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
    jne .L4502
    xorl %eax, %eax
    jmp .L4503
.L4502:
    movl $1, %eax
.L4503:
    testq %rax, %rax
    jne .L4504
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
    jne .L4504
    xorl %eax, %eax
    jmp .L4505
.L4504:
    movl $1, %eax
.L4505:
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
    leaq .Lstr1187(%rip), %rax
    pushq %rax
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
    jmp .L4509
.L4508:
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
    je .L4510
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
    je .L4510
    movl $1, %eax
    jmp .L4511
.L4510:
    xorl %eax, %eax
.L4511:
    cmpq $0, %rax
    je .L4512
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
    jmp .L4513
.L4512:
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
    je .L4514
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
    je .L4514
    movl $1, %eax
    jmp .L4515
.L4514:
    xorl %eax, %eax
.L4515:
    testq %rax, %rax
    je .L4516
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
    je .L4516
    movl $1, %eax
    jmp .L4517
.L4516:
    xorl %eax, %eax
.L4517:
    cmpq $0, %rax
    je .L4518
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
    je .L4520
    leaq .Lstr1188(%rip), %rax
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
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4522
    movq -80(%rbp), %rax
    pushq %rax
    movq $255, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4522
    xorl %eax, %eax
    jmp .L4523
.L4522:
    movl $1, %eax
.L4523:
    cmpq $0, %rax
    je .L4524
    leaq .Lstr1189(%rip), %rax
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
.L4524:
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1190(%rip), %rax
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
    jmp .L4519
.L4518:
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
.L4519:
.L4513:
.L4509:
.L4471:
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
.L4546:
    movq -96(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4547
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
    je .L4548
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
    je .L4550
    movq -80(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4552
    leaq .Lstr1197(%rip), %rax
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
    jmp .L4551
.L4550:
    leaq asm_is_out(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4554
    leaq -32(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4556
    leaq .Lstr1198(%rip), %rax
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
.L4556:
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
    jmp .L4555
.L4554:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4558
    leaq .Lstr1199(%rip), %rax
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
.L4558:
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
.L4555:
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
.L4551:
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
    jmp .L4549
.L4548:
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
    je .L4560
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
    jmp .L4561
.L4560:
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
    je .L4562
    movq -80(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4564
    leaq .Lstr1200(%rip), %rax
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
.L4564:
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
    leaq .Lstr1201(%rip), %rax
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
.L4562:
.L4561:
.L4549:
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4546
.L4547:
    leave
    ret
    .globl asm_emit_all
asm_emit_all:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    leaq .Lstr1216(%rip), %rax
    pushq %rax
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
.L4596:
    movq -16(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4597
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
    je .L4598
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
    je .L4598
    movl $1, %eax
    jmp .L4599
.L4598:
    xorl %eax, %eax
.L4599:
    testq %rax, %rax
    je .L4600
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
    je .L4600
    movl $1, %eax
    jmp .L4601
.L4600:
    xorl %eax, %eax
.L4601:
    cmpq $0, %rax
    je .L4602
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
    leaq .Lstr1217(%rip), %rax
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
.L4602:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4596
.L4597:
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
.L4604:
    movq -16(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4605
    leaq asm_is_out(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    testq %rax, %rax
    je .L4606
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
    je .L4606
    movl $1, %eax
    jmp .L4607
.L4606:
    xorl %eax, %eax
.L4607:
    cmpq $0, %rax
    je .L4608
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
    je .L4610
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
    je .L4612
    leaq .Lstr1218(%rip), %rax
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
    je .L4614
    leaq .Lstr1219(%rip), %rax
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
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4616
    leaq .Lstr1220(%rip), %rax
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
    jmp .L4617
.L4616:
    leaq .Lstr1221(%rip), %rax
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
.L4617:
.L4615:
.L4613:
    jmp .L4611
.L4610:
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
    leaq .Lstr1222(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    leaq .Lstr1223(%rip), %rax
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
    je .L4618
    leaq .Lstr1224(%rip), %rax
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
    je .L4620
    leaq .Lstr1225(%rip), %rax
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
    jmp .L4621
.L4620:
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
    je .L4622
    leaq .Lstr1226(%rip), %rax
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
    jmp .L4623
.L4622:
    leaq .Lstr1227(%rip), %rax
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
.L4623:
.L4621:
.L4619:
.L4611:
.L4608:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4604
.L4605:
    movq asm_nslots(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4624
    leaq .Lstr1228(%rip), %rax
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
.L4624:
    leaq .Lstr1229(%rip), %rax
    pushq %rax
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
    .globl skip_gcc_attribute
skip_gcc_attribute:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq $0, %rax
    movq %rax, -16(%rbp)
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
    jmp .L4664
.L4663:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4666
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1239(%rip), %rax
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
    je .L4668
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4669
.L4668:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1240(%rip), %rax
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
    je .L4670
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $1, %rax
    movq %rax, -48(%rbp)
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
    leaq -32(%rbp), %rax
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
    je .L4672
    leaq .Lstr1241(%rip), %rax
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
.L4672:
.L4674:
    movq -48(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4675
    leaq -48(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4674
.L4675:
    movq -48(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4676
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4676
    xorl %eax, %eax
    jmp .L4677
.L4676:
    movl $1, %eax
.L4677:
    cmpq $0, %rax
    je .L4678
    leaq .Lstr1242(%rip), %rax
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
.L4678:
    leaq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
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
    jmp .L4671
.L4670:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1243(%rip), %rax
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
    jne .L4680
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1244(%rip), %rax
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
    jne .L4680
    xorl %eax, %eax
    jmp .L4681
.L4680:
    movl $1, %eax
.L4681:
    testq %rax, %rax
    jne .L4682
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1245(%rip), %rax
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
    jne .L4682
    xorl %eax, %eax
    jmp .L4683
.L4682:
    movl $1, %eax
.L4683:
    cmpq $0, %rax
    je .L4684
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4685
.L4684:
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1246(%rip), %rax
    pushq %rax
    movq current_file(%rip), %rax
    testq %rax, %rax
    je .L4686
    movq current_file(%rip), %rax
    jmp .L4687
.L4686:
    leaq .Lstr1247(%rip), %rax
.L4687:
    pushq %rax
    movq line(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 32(%rsp), %rdi
    movq 24(%rsp), %rsi
    movq 16(%rsp), %rdx
    movq 8(%rsp), %rcx
    movq 0(%rsp), %r8
    addq $40, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
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
    je .L4688
    movq $0, %rax
    movq %rax, -32(%rbp)
.L4690:
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4691
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4692
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4693
.L4692:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4694
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4696
    jmp .L4691
.L4696:
.L4694:
.L4693:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4690
.L4691:
.L4688:
.L4685:
.L4671:
.L4669:
    jmp .L4667
.L4666:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4698
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4699
.L4698:
    jmp .L4665
.L4699:
.L4667:
.L4664:
    jmp .L4663
.L4665:
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
    movq -16(%rbp), %rax
    leave
    ret
    leave
    ret
    .globl parse_trailing_align
parse_trailing_align:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
.L4704:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4705
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_gcc_attribute
    movq %r12, %rsp
    popq %r12
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4706
    leaq pending_align(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L4706:
    jmp .L4704
.L4705:
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
.L4758:
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4759
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4758
.L4759:
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
    je .L4760
    leaq .Lstr1253(%rip), %rax
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
.L4760:
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
    je .L4762
    leaq .Lstr1254(%rip), %rax
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
.L4762:
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
    je .L4764
    movq emit_enabled(%rip), %rax
    cmpq $0, %rax
    je .L4766
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
.L4766:
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
.L4764:
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
    je .L4768
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4768
    movl $1, %eax
    jmp .L4769
.L4768:
    xorl %eax, %eax
.L4769:
    cmpq $0, %rax
    je .L4770
    jmp .L4773
.L4772:
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
    je .L4775
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4773
.L4775:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4777
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4777
    xorl %eax, %eax
    jmp .L4778
.L4777:
    movl $1, %eax
.L4778:
    cmpq $0, %rax
    je .L4779
    jmp .L4774
.L4779:
    leaq .Lstr1255(%rip), %rax
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
.L4773:
    jmp .L4772
.L4774:
.L4770:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4781
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
    je .L4783
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4783
    movl $1, %eax
    jmp .L4784
.L4783:
    xorl %eax, %eax
.L4784:
    cmpq $0, %rax
    je .L4785
    jmp .L4788
.L4787:
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
    je .L4790
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4788
.L4790:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4792
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4792
    xorl %eax, %eax
    jmp .L4793
.L4792:
    movl $1, %eax
.L4793:
    cmpq $0, %rax
    je .L4794
    jmp .L4789
.L4794:
    leaq .Lstr1256(%rip), %rax
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
.L4788:
    jmp .L4787
.L4789:
.L4785:
.L4781:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4796
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4798:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4800
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4800
    movl $1, %eax
    jmp .L4801
.L4800:
    xorl %eax, %eax
.L4801:
    cmpq $0, %rax
    je .L4799
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4802
    leaq .Lstr1257(%rip), %rax
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
.L4802:
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
    je .L4804
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4804:
    jmp .L4798
.L4799:
.L4796:
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
    je .L4806
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_emit_all
    movq %r12, %rsp
    popq %r12
.L4806:
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
    je .L5208
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_asm_block
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5208:
    movq tok(%rip), %rax
    pushq %rax
    movq $258, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5210
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
    leaq .Lstr1327(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
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
    je .L5212
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1329(%rip), %rax
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
    jmp .L5213
.L5212:
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
.L5213:
    leave
    ret
.L5210:
    movq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5214
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
    jne .L5216
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5216
    xorl %eax, %eax
    jmp .L5217
.L5216:
    movl $1, %eax
.L5217:
    cmpq $0, %rax
    je .L5218
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5218:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5220
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1330(%rip), %rax
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
    jne .L5222
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1331(%rip), %rax
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
    jne .L5222
    xorl %eax, %eax
    jmp .L5223
.L5222:
    movl $1, %eax
.L5223:
    testq %rax, %rax
    je .L5220
    movl $1, %eax
    jmp .L5221
.L5220:
    xorl %eax, %eax
.L5221:
    cmpq $0, %rax
    je .L5224
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1332(%rip), %rax
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
.L5226:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5228
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1333(%rip), %rax
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
    jne .L5230
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1334(%rip), %rax
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
    jne .L5230
    xorl %eax, %eax
    jmp .L5231
.L5230:
    movl $1, %eax
.L5231:
    testq %rax, %rax
    je .L5228
    movl $1, %eax
    jmp .L5229
.L5228:
    xorl %eax, %eax
.L5229:
    cmpq $0, %rax
    je .L5227
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5226
.L5227:
.L5224:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5232
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5232
    xorl %eax, %eax
    jmp .L5233
.L5232:
    movl $1, %eax
.L5233:
    testq %rax, %rax
    jne .L5234
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5234
    xorl %eax, %eax
    jmp .L5235
.L5234:
    movl $1, %eax
.L5235:
    testq %rax, %rax
    jne .L5236
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5236
    xorl %eax, %eax
    jmp .L5237
.L5236:
    movl $1, %eax
.L5237:
    cmpq $0, %rax
    je .L5238
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5240:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5242
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1335(%rip), %rax
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
    jne .L5244
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1336(%rip), %rax
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
    jne .L5244
    xorl %eax, %eax
    jmp .L5245
.L5244:
    movl $1, %eax
.L5245:
    testq %rax, %rax
    je .L5242
    movl $1, %eax
    jmp .L5243
.L5242:
    xorl %eax, %eax
.L5243:
    cmpq $0, %rax
    je .L5241
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5240
.L5241:
.L5246:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5248
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5248
    movl $1, %eax
    jmp .L5249
.L5248:
    xorl %eax, %eax
.L5249:
    cmpq $0, %rax
    je .L5247
    movq $0, %rax
    movq %rax, -32(%rbp)
.L5250:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5251
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
    jmp .L5250
.L5251:
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
    je .L5252
    leaq .Lstr1337(%rip), %rax
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
.L5252:
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
    je .L5254
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
.L5254:
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
    je .L5256
    movq $8, %rax
    jmp .L5257
.L5256:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5258
    movq $1, %rax
    jmp .L5259
.L5258:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5260
    movq $4, %rax
    jmp .L5261
.L5260:
    movq $8, %rax
.L5261:
.L5259:
.L5257:
    movq %rax, -112(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5262
    movq $0, %rax
    jmp .L5263
.L5262:
    movq -16(%rbp), %rax
.L5263:
    movq %rax, -128(%rbp)
    leaq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L5264
    movq -16(%rbp), %rax
    jmp .L5265
.L5264:
    movq $0, %rax
.L5265:
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L5266
    movq -32(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5268
    movq $8, %rax
    jmp .L5269
.L5268:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5270
    movq $1, %rax
    jmp .L5271
.L5270:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5272
    movq $4, %rax
    jmp .L5273
.L5272:
    movq $8, %rax
.L5273:
.L5271:
.L5269:
    jmp .L5267
.L5266:
    movq $0, %rax
.L5267:
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
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_trailing_align
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
    je .L5274
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
    je .L5276
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
    je .L5278
    leaq .Lstr1338(%rip), %rax
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
    jmp .L5279
.L5278:
    leaq .Lstr1339(%rip), %rax
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
.L5279:
    jmp .L5277
.L5276:
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
    je .L5280
    leaq .Lstr1340(%rip), %rax
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
    jmp .L5281
.L5280:
    leaq .Lstr1341(%rip), %rax
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
.L5281:
.L5277:
.L5274:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
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
    jmp .L5283
.L5282:
    jmp .L5247
.L5283:
    jmp .L5246
.L5247:
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
    jmp .L5239
.L5238:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5284
.L5286:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5288
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5288
    movl $1, %eax
    jmp .L5289
.L5288:
    xorl %eax, %eax
.L5289:
    cmpq $0, %rax
    je .L5287
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
    je .L5290
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5291
.L5290:
    jmp .L5287
.L5291:
    jmp .L5286
.L5287:
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
    jmp .L5285
.L5284:
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
.L5285:
.L5239:
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
    je .L5292
.L5294:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5296
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5296
    movl $1, %eax
    jmp .L5297
.L5296:
    xorl %eax, %eax
.L5297:
    cmpq $0, %rax
    je .L5295
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5294
.L5295:
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
    je .L5298
.L5300:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5302
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5302
    movl $1, %eax
    jmp .L5303
.L5302:
    xorl %eax, %eax
.L5303:
    cmpq $0, %rax
    je .L5301
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5300
.L5301:
.L5298:
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
    je .L5304
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5305
.L5304:
    movq $0, %rax
.L5305:
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
    je .L5306
    movq -672(%rbp), %rax
    jmp .L5307
.L5306:
    movq -688(%rbp), %rax
.L5307:
    movq %rax, -720(%rbp)
    leaq .Lstr1342(%rip), %rax
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
    je .L5308
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
.L5310:
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5311
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5312
    leaq -1152(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5313
.L5312:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5314
    movq -1152(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5316
    jmp .L5311
.L5316:
    leaq -1152(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L5314:
.L5313:
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
    je .L5318
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5319
.L5318:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5320
    movq -1152(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5320
    movl $1, %eax
    jmp .L5321
.L5320:
    xorl %eax, %eax
.L5321:
    cmpq $0, %rax
    je .L5322
    jmp .L5311
    jmp .L5323
.L5322:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5324
    jmp .L5311
.L5324:
.L5323:
.L5319:
    jmp .L5310
.L5311:
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
    leaq .Lstr1343(%rip), %rax
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
.L5308:
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
    je .L5326
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
.L5328:
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5330
    movq -1152(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5330
    movl $1, %eax
    jmp .L5331
.L5330:
    xorl %eax, %eax
.L5331:
    cmpq $0, %rax
    je .L5329
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5332
    leaq -1168(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5333
.L5332:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5334
    leaq -1168(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    jmp .L5335
.L5334:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5336
    movq -1168(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5336
    movl $1, %eax
    jmp .L5337
.L5336:
    xorl %eax, %eax
.L5337:
    cmpq $0, %rax
    je .L5338
    leaq -1152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5329
.L5338:
.L5335:
.L5333:
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
    je .L5340
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5341
.L5340:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5342
    movq -1168(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5342
    movl $1, %eax
    jmp .L5343
.L5342:
    xorl %eax, %eax
.L5343:
    cmpq $0, %rax
    je .L5344
    jmp .L5329
.L5344:
.L5341:
    jmp .L5328
.L5329:
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
    leaq .Lstr1344(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1345(%rip), %rax
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
    jmp .L5327
.L5326:
    leaq .Lstr1346(%rip), %rax
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
.L5327:
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
.L5214:
    movq tok(%rip), %rax
    pushq %rax
    movq $292, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5346
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
    je .L5348
    leaq .Lstr1347(%rip), %rax
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
.L5348:
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
    leaq .Lstr1348(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1349(%rip), %rax
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
.L5346:
    movq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5350
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
    leaq .Lstr1350(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1351(%rip), %rax
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
    leaq .Lstr1352(%rip), %rax
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
.L5350:
    movq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5352
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
    leaq .Lstr1353(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1354(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1355(%rip), %rax
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
.L5354:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5356
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5356
    movl $1, %eax
    jmp .L5357
.L5356:
    xorl %eax, %eax
.L5357:
    cmpq $0, %rax
    je .L5355
    movq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5358
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
    jmp .L5359
.L5358:
    movq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5360
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
    jmp .L5361
.L5360:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
.L5361:
.L5359:
    jmp .L5354
.L5355:
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
    leaq .Lstr1356(%rip), %rax
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
    leaq .Lstr1357(%rip), %rax
    pushq %rax
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
    jmp .L5364
.L5362:
    leaq .Lstr1358(%rip), %rax
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
    leaq .Lstr1359(%rip), %rax
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
.L5363:
    leaq -128(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5364
.L5364:
    movq -128(%rbp), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L5362
.L5365:
    movq switch_has_default(%rip), %rax
    cmpq $0, %rax
    je .L5366
    leaq .Lstr1360(%rip), %rax
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
.L5366:
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
    leaq .Lstr1361(%rip), %rax
    pushq %rax
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
.L5352:
    movq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5368
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
    je .L5370
    leaq .Lstr1362(%rip), %rax
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
.L5370:
    leave
    ret
.L5368:
    movq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5372
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
    je .L5374
    leaq .Lstr1363(%rip), %rax
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
.L5374:
    leave
    ret
.L5372:
    movq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5376
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
    je .L5378
    leaq .Lstr1364(%rip), %rax
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
.L5378:
    leaq .Lstr1365(%rip), %rax
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
.L5376:
    movq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5380
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
    je .L5382
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
.L5382:
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
    leaq .Lstr1366(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1367(%rip), %rax
    pushq %rax
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
.L5380:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5384
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
.L5386:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5388
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5388
    movl $1, %eax
    jmp .L5389
.L5388:
    xorl %eax, %eax
.L5389:
    cmpq $0, %rax
    je .L5387
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5390
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1368(%rip), %rax
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
    jne .L5392
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1369(%rip), %rax
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
    jne .L5392
    xorl %eax, %eax
    jmp .L5393
.L5392:
    movl $1, %eax
.L5393:
    testq %rax, %rax
    je .L5390
    movl $1, %eax
    jmp .L5391
.L5390:
    xorl %eax, %eax
.L5391:
    cmpq $0, %rax
    je .L5394
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1370(%rip), %rax
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
.L5396:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5398
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1371(%rip), %rax
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
    jne .L5400
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1372(%rip), %rax
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
    jne .L5400
    xorl %eax, %eax
    jmp .L5401
.L5400:
    movl $1, %eax
.L5401:
    testq %rax, %rax
    je .L5398
    movl $1, %eax
    jmp .L5399
.L5398:
    xorl %eax, %eax
.L5399:
    cmpq $0, %rax
    je .L5397
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5396
.L5397:
.L5394:
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5402
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
.L5402:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5404
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5386
    jmp .L5405
.L5404:
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5406
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5386
    jmp .L5407
.L5406:
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5408
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5386
    jmp .L5409
.L5408:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5410
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_gcc_attribute
    movq %r12, %rsp
    popq %r12
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5412
    leaq pending_align(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5412:
    jmp .L5386
    jmp .L5411
.L5410:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5414
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5386
    jmp .L5415
.L5414:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5416
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_typedef
    movq %r12, %rsp
    popq %r12
    jmp .L5417
.L5416:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5418
    movq tok(%rip), %rax
    pushq %rax
    movq $308, %rax
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
    cmpq $0, %rax
    je .L5420
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
    jmp .L5421
.L5420:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5422
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
.L5424:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L5432
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5436
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5436
    xorl %eax, %eax
    jmp .L5437
.L5436:
    movl $1, %eax
.L5437:
    testq %rax, %rax
    je .L5432
    movl $1, %eax
    jmp .L5433
.L5432:
    xorl %eax, %eax
.L5433:
    cmpq $0, %rax
    je .L5425
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5424
.L5425:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5438
    leaq .Lstr1373(%rip), %rax
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
    jmp .L5386
.L5438:
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
    jne .L5440
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
    jne .L5440
    xorl %eax, %eax
    jmp .L5441
.L5440:
    movl $1, %eax
.L5441:
    cmpq $0, %rax
    je .L5442
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    jmp .L5386
.L5442:
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
    je .L5444
    leaq unsigned_type(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5444:
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
.L5446:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5447
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
    jmp .L5446
.L5447:
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
    je .L5448
    leaq .Lstr1374(%rip), %rax
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
.L5448:
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
    je .L5450
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
.L5450:
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
    je .L5452
    movq $8, %rax
    jmp .L5453
.L5452:
    movq -32(%rbp), %rax
.L5453:
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5454
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5454
    movl $1, %eax
    jmp .L5455
.L5454:
    xorl %eax, %eax
.L5455:
    testq %rax, %rax
    je .L5456
    movq $8, %rax
    jmp .L5457
.L5456:
    movq -32(%rbp), %rax
.L5457:
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L5458:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5459
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
    je .L5460
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
    jmp .L5461
.L5460:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5462
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
    je .L5464
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
    jmp .L5465
.L5464:
    leaq .Lstr1375(%rip), %rax
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
.L5465:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5462:
.L5461:
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
    je .L5468
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
    je .L5470
    movq -208(%rbp), %rax
    jmp .L5471
.L5470:
    movq $1, %rax
.L5471:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5468:
    jmp .L5458
.L5459:
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5472
    movq -144(%rbp), %rax
    testq %rax, %rax
    je .L5472
    movl $1, %eax
    jmp .L5473
.L5472:
    xorl %eax, %eax
.L5473:
    cmpq $0, %rax
    je .L5474
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
.L5474:
    leaq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5476
    movq $262, %rax
    jmp .L5477
.L5476:
    movq $0, %rax
.L5477:
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
    je .L5478
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
.L5478:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_trailing_align
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
    je .L5480
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
    je .L5482
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -208(%rbp)
.L5484:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5485
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
    je .L5486
    leaq .Lstr1376(%rip), %rax
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
    movq -160(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5488
    leaq .Lstr1377(%rip), %rax
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
    jmp .L5489
.L5488:
    movq -160(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5490
    leaq .Lstr1378(%rip), %rax
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
    jmp .L5491
.L5490:
    leaq .Lstr1379(%rip), %rax
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
.L5491:
.L5489:
.L5487:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5492
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5492:
    leaq -208(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5484
.L5485:
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
    je .L5494
    movq -128(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5494
    movl $1, %eax
    jmp .L5495
.L5494:
    xorl %eax, %eax
.L5495:
    cmpq $0, %rax
    je .L5496
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
    je .L5498
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5498:
.L5496:
    jmp .L5483
.L5482:
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
    je .L5500
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
    je .L5502
    leaq .Lstr1380(%rip), %rax
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
    jmp .L5503
.L5502:
    leaq .Lstr1381(%rip), %rax
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
.L5503:
    jmp .L5501
.L5500:
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
    je .L5504
    leaq .Lstr1382(%rip), %rax
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
    jmp .L5505
.L5504:
    leaq .Lstr1383(%rip), %rax
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
.L5505:
.L5501:
.L5483:
.L5480:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5506
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp restart_typedef
.L5506:
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
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5508
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5508
    xorl %eax, %eax
    jmp .L5509
.L5508:
    movl $1, %eax
.L5509:
    testq %rax, %rax
    jne .L5510
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5510
    xorl %eax, %eax
    jmp .L5511
.L5510:
    movl $1, %eax
.L5511:
    testq %rax, %rax
    jne .L5512
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5512
    xorl %eax, %eax
    jmp .L5513
.L5512:
    movl $1, %eax
.L5513:
    testq %rax, %rax
    jne .L5514
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5514
    xorl %eax, %eax
    jmp .L5515
.L5514:
    movl $1, %eax
.L5515:
    cmpq $0, %rax
    je .L5516
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
.L5518:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5520
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1384(%rip), %rax
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
    jne .L5522
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1385(%rip), %rax
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
    jne .L5522
    xorl %eax, %eax
    jmp .L5523
.L5522:
    movl $1, %eax
.L5523:
    testq %rax, %rax
    je .L5520
    movl $1, %eax
    jmp .L5521
.L5520:
    xorl %eax, %eax
.L5521:
    cmpq $0, %rax
    je .L5519
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5518
.L5519:
restart_int:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L5524:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5525
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
    jmp .L5524
.L5525:
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
    je .L5526
    leaq .Lstr1386(%rip), %rax
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
.L5526:
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
    je .L5528
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
.L5528:
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
    je .L5530
    movq $8, %rax
    jmp .L5531
.L5530:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5532
    movq $1, %rax
    jmp .L5533
.L5532:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5534
    movq $4, %rax
    jmp .L5535
.L5534:
    movq $8, %rax
.L5535:
.L5533:
.L5531:
    movq %rax, -128(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5536
    movq -16(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5536
    xorl %eax, %eax
    jmp .L5537
.L5536:
    movl $1, %eax
.L5537:
    testq %rax, %rax
    je .L5538
    movq $0, %rax
    jmp .L5539
.L5538:
    movq -16(%rbp), %rax
.L5539:
    movq %rax, -144(%rbp)
    movq $0, %rax
    movq %rax, -160(%rbp)
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5540
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5542
    movq $8, %rax
    jmp .L5543
.L5542:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5544
    movq $1, %rax
    jmp .L5545
.L5544:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5546
    movq $4, %rax
    jmp .L5547
.L5546:
    movq $8, %rax
.L5547:
.L5545:
.L5543:
    jmp .L5541
.L5540:
    movq -128(%rbp), %rax
.L5541:
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L5548:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5549
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
    je .L5550
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
    jmp .L5551
.L5550:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5552
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
    je .L5554
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
    jmp .L5555
.L5554:
    leaq .Lstr1387(%rip), %rax
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
.L5555:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5552:
.L5551:
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
    je .L5556
    movq -208(%rbp), %rax
    jmp .L5557
.L5556:
    movq $1, %rax
.L5557:
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
    je .L5558
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
    je .L5560
    movq -208(%rbp), %rax
    jmp .L5561
.L5560:
    movq $1, %rax
.L5561:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5558:
    jmp .L5548
.L5549:
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5562
    movq -160(%rbp), %rax
    testq %rax, %rax
    je .L5562
    movl $1, %eax
    jmp .L5563
.L5562:
    xorl %eax, %eax
.L5563:
    cmpq $0, %rax
    je .L5564
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
.L5564:
    leaq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L5566
    movq -16(%rbp), %rax
    jmp .L5567
.L5566:
    movq $0, %rax
.L5567:
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
    je .L5568
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
.L5568:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_trailing_align
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
    je .L5570
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
    je .L5572
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -208(%rbp)
.L5574:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5575
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
    je .L5576
    leaq .Lstr1388(%rip), %rax
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
    jmp .L5577
.L5576:
    movq -176(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5578
    leaq .Lstr1389(%rip), %rax
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
    jmp .L5579
.L5578:
    movq -176(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5580
    leaq .Lstr1390(%rip), %rax
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
    jmp .L5581
.L5580:
    leaq .Lstr1391(%rip), %rax
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
.L5581:
.L5579:
.L5577:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5582
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5582:
    leaq -208(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5574
.L5575:
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
    je .L5584
    movq -128(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5584
    movl $1, %eax
    jmp .L5585
.L5584:
    xorl %eax, %eax
.L5585:
    cmpq $0, %rax
    je .L5586
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
    je .L5588
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5588:
.L5586:
    jmp .L5573
.L5572:
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
    je .L5590
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
    je .L5592
    leaq .Lstr1392(%rip), %rax
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
    jmp .L5593
.L5592:
    leaq .Lstr1393(%rip), %rax
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
.L5593:
    jmp .L5591
.L5590:
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
    je .L5594
    leaq .Lstr1394(%rip), %rax
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
    jmp .L5595
.L5594:
    leaq .Lstr1395(%rip), %rax
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
.L5595:
.L5591:
.L5573:
.L5570:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5596
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp restart_int
.L5596:
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
    jmp .L5517
.L5516:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5598
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_enum
    movq %r12, %rsp
    popq %r12
    jmp .L5599
.L5598:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
.L5599:
.L5517:
.L5423:
.L5421:
.L5417:
.L5415:
.L5411:
.L5409:
.L5407:
.L5405:
    jmp .L5386
.L5387:
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
.L5384:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5600
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
    je .L5602
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
    je .L5604
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
.L5604:
.L5602:
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
.L5600:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5606
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5606:
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
    je .L5720
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5721
.L5720:
.L5722:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5724
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5724
    movl $1, %eax
    jmp .L5725
.L5724:
    xorl %eax, %eax
.L5725:
    cmpq $0, %rax
    je .L5723
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5726
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5726
    xorl %eax, %eax
    jmp .L5727
.L5726:
    movl $1, %eax
.L5727:
    cmpq $0, %rax
    je .L5728
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5722
.L5728:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5730
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1413(%rip), %rax
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
    jne .L5732
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1414(%rip), %rax
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
    jne .L5732
    xorl %eax, %eax
    jmp .L5733
.L5732:
    movl $1, %eax
.L5733:
    testq %rax, %rax
    je .L5730
    movl $1, %eax
    jmp .L5731
.L5730:
    xorl %eax, %eax
.L5731:
    cmpq $0, %rax
    je .L5734
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1415(%rip), %rax
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
.L5736:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5738
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1416(%rip), %rax
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
    jne .L5740
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1417(%rip), %rax
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
    jne .L5740
    xorl %eax, %eax
    jmp .L5741
.L5740:
    movl $1, %eax
.L5741:
    testq %rax, %rax
    je .L5738
    movl $1, %eax
    jmp .L5739
.L5738:
    xorl %eax, %eax
.L5739:
    cmpq $0, %rax
    je .L5737
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5736
.L5737:
.L5734:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5742
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5742
    xorl %eax, %eax
    jmp .L5743
.L5742:
    movl $1, %eax
.L5743:
    testq %rax, %rax
    jne .L5744
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5744
    xorl %eax, %eax
    jmp .L5745
.L5744:
    movl $1, %eax
.L5745:
    testq %rax, %rax
    jne .L5746
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5746
    xorl %eax, %eax
    jmp .L5747
.L5746:
    movl $1, %eax
.L5747:
    testq %rax, %rax
    jne .L5748
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5748
    xorl %eax, %eax
    jmp .L5749
.L5748:
    movl $1, %eax
.L5749:
    testq %rax, %rax
    jne .L5750
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5750
    xorl %eax, %eax
    jmp .L5751
.L5750:
    movl $1, %eax
.L5751:
    cmpq $0, %rax
    je .L5752
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5754
    movq $262, %rax
    jmp .L5755
.L5754:
    movq tok(%rip), %rax
.L5755:
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
    je .L5756
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
    je .L5758
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L5758
    movl $1, %eax
    jmp .L5759
.L5758:
    xorl %eax, %eax
.L5759:
    cmpq $0, %rax
    je .L5760
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
    je .L5762
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
    je .L5764
    leaq unsigned_type(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5764:
.L5762:
.L5760:
.L5756:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5766:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5768
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1418(%rip), %rax
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
    jne .L5770
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
    jne .L5770
    xorl %eax, %eax
    jmp .L5771
.L5770:
    movl $1, %eax
.L5771:
    testq %rax, %rax
    je .L5768
    movl $1, %eax
    jmp .L5769
.L5768:
    xorl %eax, %eax
.L5769:
    cmpq $0, %rax
    je .L5767
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5766
.L5767:
    movq $0, %rax
    movq %rax, -65648(%rbp)
.L5772:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5773
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
    jmp .L5772
.L5773:
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
    je .L5774
    leaq .Lstr1420(%rip), %rax
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
.L5774:
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
    je .L5776
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
.L5776:
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
    je .L5778
    movq $8, %rax
    jmp .L5779
.L5778:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5780
    movq $1, %rax
    jmp .L5781
.L5780:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5782
    movq $4, %rax
    jmp .L5783
.L5782:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5784
    movq -65632(%rbp), %rax
    jmp .L5785
.L5784:
    movq $8, %rax
.L5785:
.L5783:
.L5781:
.L5779:
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
    jne .L5786
    movq -65616(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5786
    xorl %eax, %eax
    jmp .L5787
.L5786:
    movl $1, %eax
.L5787:
    testq %rax, %rax
    je .L5788
    movq $0, %rax
    jmp .L5789
.L5788:
    movq -65616(%rbp), %rax
.L5789:
    movq %rax, -65728(%rbp)
    movq -65648(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5790
    leaq -65712(%rbp), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5790:
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
    je .L5792
    movq -65648(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5794
    movq $8, %rax
    jmp .L5795
.L5794:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5796
    movq $1, %rax
    jmp .L5797
.L5796:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5798
    movq $4, %rax
    jmp .L5799
.L5798:
    movq -65632(%rbp), %rax
.L5799:
.L5797:
.L5795:
    jmp .L5793
.L5792:
    movq $0, %rax
.L5793:
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
    je .L5800
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5800:
    jmp .L5753
.L5752:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5802
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
    je .L5804
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5804:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5806
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5806:
    jmp .L5723
    jmp .L5803
.L5802:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5803:
.L5753:
    jmp .L5722
.L5723:
.L5721:
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
.L5808:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5809
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_gcc_attribute
    movq %r12, %rsp
    popq %r12
    jmp .L5808
.L5809:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5810
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
.L5810:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5812
    leaq .Lstr1421(%rip), %rax
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
.L5812:
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
.L5814:
    movq -66512(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5815
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
    jmp .L5814
.L5815:
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
    je .L5816
    leaq -66512(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5816:
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
.L5818:
    movq -66528(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5819
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
    jmp .L5818
.L5819:
.L5820:
    movq processed_count(%rip), %rax
    pushq %rax
    movq -66496(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5821
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
    jmp .L5820
.L5821:
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
    leaq .Lstr1422(%rip), %rax
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
    leaq .Lstr1423(%rip), %rax
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
    leaq .Lstr1424(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1425(%rip), %rax
    pushq %rax
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
    je .L5822
    leaq .Lstr1426(%rip), %rax
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
.L5822:
    movq $0, %rax
    movq %rax, -66544(%rbp)
    jmp .L5826
.L5824:
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
    je .L5828
    leaq symbols(%rip), %rax
    pushq %rax
    movq -66560(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -66576(%rbp)
    leaq .Lstr1427(%rip), %rax
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
.L5828:
.L5825:
    leaq -66544(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5826
.L5826:
    movq -66544(%rbp), %rax
    pushq %rax
    movq -65600(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5830
    movq -66544(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5830
    movl $1, %eax
    jmp .L5831
.L5830:
    xorl %eax, %eax
.L5831:
    cmpq $0, %rax
    jne .L5824
.L5827:
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
    leaq .Lstr1428(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1429(%rip), %rax
    pushq %rax
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
    je .L5854
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5854:
.L5856:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5857
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_gcc_attribute
    movq %r12, %rsp
    popq %r12
    jmp .L5856
.L5857:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5858
    leaq .Lstr1434(%rip), %rax
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
.L5858:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -16(%rbp)
.L5860:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5862
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5862
    movl $1, %eax
    jmp .L5863
.L5862:
    xorl %eax, %eax
.L5863:
    cmpq $0, %rax
    je .L5861
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5864
    leaq .Lstr1435(%rip), %rax
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
.L5864:
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5866
    leaq .Lstr1436(%rip), %rax
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
.L5866:
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
    je .L5868
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
.L5868:
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
    je .L5870
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
    je .L5872
    leaq .Lstr1437(%rip), %rax
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
.L5872:
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
.L5870:
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
    je .L5874
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5874:
    jmp .L5860
.L5861:
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
.L5894:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5896
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5896
    movl $1, %eax
    jmp .L5897
.L5896:
    xorl %eax, %eax
.L5897:
    testq %rax, %rax
    je .L5898
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5898
    movl $1, %eax
    jmp .L5899
.L5898:
    xorl %eax, %eax
.L5899:
    cmpq $0, %rax
    je .L5895
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5900
    movq struct_member_count(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5902
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
    je .L5904
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
.L5904:
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
.L5902:
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
    je .L5906
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
    je .L5908
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
.L5908:
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
    je .L5910
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
.L5910:
    jmp .L5907
.L5906:
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5907:
    jmp .L5901
.L5900:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5901:
    jmp .L5894
.L5895:
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
.L5966:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5967
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_gcc_attribute
    movq %r12, %rsp
    popq %r12
    jmp .L5966
.L5967:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5968
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5968:
.L5970:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5971
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_gcc_attribute
    movq %r12, %rsp
    popq %r12
    jmp .L5970
.L5971:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5972
    leaq .Lstr1442(%rip), %rax
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
.L5972:
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
.L5974:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5976
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5976
    movl $1, %eax
    jmp .L5977
.L5976:
    xorl %eax, %eax
.L5977:
    cmpq $0, %rax
    je .L5975
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5978
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1443(%rip), %rax
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
    jne .L5980
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1444(%rip), %rax
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
    jne .L5980
    xorl %eax, %eax
    jmp .L5981
.L5980:
    movl $1, %eax
.L5981:
    testq %rax, %rax
    je .L5978
    movl $1, %eax
    jmp .L5979
.L5978:
    xorl %eax, %eax
.L5979:
    cmpq $0, %rax
    je .L5982
    leaq -16(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1445(%rip), %rax
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
.L5982:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5984
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5984
    xorl %eax, %eax
    jmp .L5985
.L5984:
    movl $1, %eax
.L5985:
    testq %rax, %rax
    jne .L5986
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5986
    xorl %eax, %eax
    jmp .L5987
.L5986:
    movl $1, %eax
.L5987:
    testq %rax, %rax
    jne .L5988
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5988
    xorl %eax, %eax
    jmp .L5989
.L5988:
    movl $1, %eax
.L5989:
    cmpq $0, %rax
    je .L5990
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
.L5992:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5993
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
    jmp .L5992
.L5993:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L5994
    leaq -64(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5995
.L5994:
    movq -32(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5996
    leaq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5997
.L5996:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5998
    leaq -64(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5999
.L5998:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6000
    leaq -64(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L6001
.L6000:
    leaq -64(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6001:
.L5999:
.L5997:
.L5995:
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
    je .L6002
    movq $1, %rax
    jmp .L6003
.L6002:
    movq $0, %rax
.L6003:
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
    jmp .L5991
.L5990:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6004
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
    jne .L6006
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
    jne .L6006
    xorl %eax, %eax
    jmp .L6007
.L6006:
    movl $1, %eax
.L6007:
    testq %rax, %rax
    jne .L6008
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
    jne .L6008
    xorl %eax, %eax
    jmp .L6009
.L6008:
    movl $1, %eax
.L6009:
    cmpq $0, %rax
    je .L6010
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
    jmp .L5974
.L6010:
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
    je .L6012
    leaq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6012:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    testq %rax, %rax
    jne .L6014
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $80, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    jne .L6014
    xorl %eax, %eax
    jmp .L6015
.L6014:
    movl $1, %eax
.L6015:
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6016:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6017
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
    jmp .L6016
.L6017:
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
    jmp .L6005
.L6004:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6018
    jmp .L5975
    jmp .L6019
.L6018:
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
.L6019:
.L6005:
.L5991:
    jmp .L5974
.L5975:
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
    je .L6056
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
    jmp .L6057
.L6056:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6058
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6058
    xorl %eax, %eax
    jmp .L6059
.L6058:
    movl $1, %eax
.L6059:
    testq %rax, %rax
    jne .L6060
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6060
    xorl %eax, %eax
    jmp .L6061
.L6060:
    movl $1, %eax
.L6061:
    testq %rax, %rax
    jne .L6062
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6062
    xorl %eax, %eax
    jmp .L6063
.L6062:
    movl $1, %eax
.L6063:
    testq %rax, %rax
    jne .L6064
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6064
    xorl %eax, %eax
    jmp .L6065
.L6064:
    movl $1, %eax
.L6065:
    cmpq $0, %rax
    je .L6066
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6068:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6069
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6068
.L6069:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6070
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6070:
.L6066:
.L6057:
    leaq .Lstr1450(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L6072:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6074
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6074
    movl $1, %eax
    jmp .L6075
.L6074:
    xorl %eax, %eax
.L6075:
    cmpq $0, %rax
    je .L6073
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6076
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
    leaq .Lstr1451(%rip), %rax
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
    je .L6078
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6078:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1452(%rip), %rax
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
    je .L6080
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6080:
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6082
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
.L6082:
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
.L6076:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6072
.L6073:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L6084
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6086
    leaq .Lstr1453(%rip), %rax
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
.L6086:
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
    je .L6088
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
.L6088:
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
    je .L6090
    movq -64(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
.L6090:
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
.L6084:
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
    je .L6098
    leaq .Lstr1458(%rip), %rax
    leave
    ret
.L6098:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6100
    leaq .Lstr1459(%rip), %rax
    leave
    ret
.L6100:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6102
    leaq .Lstr1460(%rip), %rax
    leave
    ret
.L6102:
    leaq .Lstr1461(%rip), %rax
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
    leaq .Lstr1468(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq pending_align(%rip), %rax
    cmpq $0, %rax
    je .L6110
    leaq .Lstr1469(%rip), %rax
    pushq %rax
    movq pending_align(%rip), %rax
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
    leaq pending_align(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6110:
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6112
    leaq .Lstr1470(%rip), %rax
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
.L6112:
    leaq .Lstr1471(%rip), %rax
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
    je .L6114
    leaq .Lstr1472(%rip), %rax
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
.L6114:
    leaq .Lstr1473(%rip), %rax
    pushq %rax
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
    leaq .Lstr1478(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq pending_align(%rip), %rax
    cmpq $0, %rax
    je .L6120
    leaq .Lstr1479(%rip), %rax
    pushq %rax
    movq pending_align(%rip), %rax
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
    leaq pending_align(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6120:
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6122
    leaq .Lstr1480(%rip), %rax
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
.L6122:
    leaq .Lstr1481(%rip), %rax
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
    je .L6138
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
    jmp .L6139
.L6138:
    movq tok(%rip), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6140
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6140:
.L6139:
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6142
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
    je .L6144
    movq -48(%rbp), %rax
    negq %rax
    jmp .L6145
.L6144:
    movq -48(%rbp), %rax
.L6145:
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    leave
    ret
.L6142:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6146
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
    je .L6148
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
    je .L6150
    movq -64(%rbp), %rax
    negq %rax
    jmp .L6151
.L6150:
    movq -64(%rbp), %rax
.L6151:
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    leave
    ret
.L6148:
.L6146:
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
    je .L6154
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
.L6154:
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
    je .L6202
    movq -96(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6202
    movl $1, %eax
    jmp .L6203
.L6202:
    xorl %eax, %eax
.L6203:
    testq %rax, %rax
    je .L6204
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6204
    movl $1, %eax
    jmp .L6205
.L6204:
    xorl %eax, %eax
.L6205:
    testq %rax, %rax
    je .L6206
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6206
    movl $1, %eax
    jmp .L6207
.L6206:
    xorl %eax, %eax
.L6207:
    cmpq $0, %rax
    je .L6208
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
    je .L6210
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6210:
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
    je .L6212
    movq output(%rip), %rax
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
    leaq .Lstr1495(%rip), %rax
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
.L6212:
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
    je .L6214
    leaq .Lstr1496(%rip), %rax
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
.L6214:
    leaq .Lstr1497(%rip), %rax
    pushq %rax
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
.L6208:
    movq -96(%rbp), %rax
    testq %rax, %rax
    je .L6216
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6216
    movl $1, %eax
    jmp .L6217
.L6216:
    xorl %eax, %eax
.L6217:
    cmpq $0, %rax
    je .L6218
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
    je .L6220
    leaq .Lstr1498(%rip), %rax
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
.L6220:
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
    leaq .Lstr1499(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1500(%rip), %rax
    pushq %rax
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
.L6218:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6222
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
    je .L6224
    movq -64(%rbp), %rax
    jmp .L6225
.L6224:
    movq $8, %rax
.L6225:
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6226
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, %r8
    movq %rcx, %rax
    cqto
    idivq %r8
    jmp .L6227
.L6226:
    movq $0, %rax
.L6227:
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
.L6228:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6230
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6230
    movl $1, %eax
    jmp .L6231
.L6230:
    xorl %eax, %eax
.L6231:
    cmpq $0, %rax
    je .L6229
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
    je .L6232
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
.L6232:
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6234
    movq -128(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6234
    xorl %eax, %eax
    jmp .L6235
.L6234:
    movl $1, %eax
.L6235:
    cmpq $0, %rax
    je .L6236
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
.L6236:
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
    je .L6238
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6239
.L6238:
    jmp .L6229
.L6239:
    jmp .L6228
.L6229:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6240
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6241
.L6240:
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
.L6241:
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6242
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L6243
.L6242:
    movq -128(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6244
    leaq .Lstr1503(%rip), %rax
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
.L6244:
.L6243:
    leaq .Lstr1504(%rip), %rax
    pushq %rax
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
.L6222:
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
    je .L6246
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
    leaq .Lstr1505(%rip), %rax
    pushq %rax
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
.L6246:
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
.L6416:
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6417
.L6418:
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6420
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6420
    xorl %eax, %eax
    jmp .L6421
.L6420:
    movl $1, %eax
.L6421:
    cmpq $0, %rax
    je .L6419
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6418
.L6419:
.L6422:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6423
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_gcc_attribute
    movq %r12, %rsp
    popq %r12
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6424
    leaq pending_align(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L6424:
    jmp .L6422
.L6423:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6426
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1520(%rip), %rax
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
    jne .L6428
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1521(%rip), %rax
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
    jne .L6428
    xorl %eax, %eax
    jmp .L6429
.L6428:
    movl $1, %eax
.L6429:
    testq %rax, %rax
    je .L6426
    movl $1, %eax
    jmp .L6427
.L6426:
    xorl %eax, %eax
.L6427:
    cmpq $0, %rax
    je .L6430
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1522(%rip), %rax
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
.L6432:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6434
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1523(%rip), %rax
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
    jne .L6436
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1524(%rip), %rax
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
    jne .L6436
    xorl %eax, %eax
    jmp .L6437
.L6436:
    movl $1, %eax
.L6437:
    testq %rax, %rax
    je .L6434
    movl $1, %eax
    jmp .L6435
.L6434:
    xorl %eax, %eax
.L6435:
    cmpq $0, %rax
    je .L6433
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6432
.L6433:
.L6430:
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6438
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
.L6438:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6440
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
.L6440:
.L6442:
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6444
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6444
    xorl %eax, %eax
    jmp .L6445
.L6444:
    movl $1, %eax
.L6445:
    cmpq $0, %rax
    je .L6443
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6442
.L6443:
.L6446:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6447
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_gcc_attribute
    movq %r12, %rsp
    popq %r12
    jmp .L6446
.L6447:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6448
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6416
    jmp .L6449
.L6448:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6450
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_typedef
    movq %r12, %rsp
    popq %r12
    jmp .L6451
.L6450:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6452
    movq tok(%rip), %rax
    pushq %rax
    movq $308, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6452
    xorl %eax, %eax
    jmp .L6453
.L6452:
    movl $1, %eax
.L6453:
    cmpq $0, %rax
    je .L6454
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
    jmp .L6455
.L6454:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6456
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_enum
    movq %r12, %rsp
    popq %r12
    jmp .L6457
.L6456:
    movq tok(%rip), %rax
    pushq %rax
    movq $304, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6458
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_asm_block
    movq %r12, %rsp
    popq %r12
    jmp .L6459
.L6458:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6460
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6460
    xorl %eax, %eax
    jmp .L6461
.L6460:
    movl $1, %eax
.L6461:
    testq %rax, %rax
    jne .L6462
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6462
    xorl %eax, %eax
    jmp .L6463
.L6462:
    movl $1, %eax
.L6463:
    testq %rax, %rax
    jne .L6464
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6464
    xorl %eax, %eax
    jmp .L6465
.L6464:
    movl $1, %eax
.L6465:
    testq %rax, %rax
    jne .L6466
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6466
    xorl %eax, %eax
    jmp .L6467
.L6466:
    movl $1, %eax
.L6467:
    cmpq $0, %rax
    je .L6468
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6470:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6472
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1525(%rip), %rax
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
    jne .L6474
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1526(%rip), %rax
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
    jne .L6474
    xorl %eax, %eax
    jmp .L6475
.L6474:
    movl $1, %eax
.L6475:
    testq %rax, %rax
    je .L6472
    movl $1, %eax
    jmp .L6473
.L6472:
    xorl %eax, %eax
.L6473:
    cmpq $0, %rax
    je .L6471
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6470
.L6471:
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L6476:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6477
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
    jmp .L6476
.L6477:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6478
    leaq .Lstr1527(%rip), %rax
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
.L6478:
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
    je .L6480
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
.L6480:
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
    je .L6482
    leaq pending_align(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
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
    jmp .L6483
.L6482:
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6484
    movq $8, %rax
    jmp .L6485
.L6484:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6486
    movq $1, %rax
    jmp .L6487
.L6486:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6488
    movq $4, %rax
    jmp .L6489
.L6488:
    movq $8, %rax
.L6489:
.L6487:
.L6485:
    movq %rax, -112(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6490
    movq -16(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6490
    xorl %eax, %eax
    jmp .L6491
.L6490:
    movl $1, %eax
.L6491:
    testq %rax, %rax
    je .L6492
    movq $0, %rax
    jmp .L6493
.L6492:
    movq -16(%rbp), %rax
.L6493:
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6494
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6496
    movq $8, %rax
    jmp .L6497
.L6496:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6498
    movq $1, %rax
    jmp .L6499
.L6498:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6500
    movq $4, %rax
    jmp .L6501
.L6500:
    movq $8, %rax
.L6501:
.L6499:
.L6497:
    jmp .L6495
.L6494:
    movq -112(%rbp), %rax
.L6495:
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L6502:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6503
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
    je .L6504
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
    jmp .L6505
.L6504:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6506
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
    je .L6508
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
    jmp .L6509
.L6508:
    leaq .Lstr1528(%rip), %rax
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
.L6509:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6506:
.L6505:
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
    je .L6510
    movq -208(%rbp), %rax
    jmp .L6511
.L6510:
    movq $1, %rax
.L6511:
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
    je .L6512
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
    je .L6514
    movq -208(%rbp), %rax
    jmp .L6515
.L6514:
    movq $1, %rax
.L6515:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6512:
    jmp .L6502
.L6503:
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
    je .L6516
    movq -144(%rbp), %rax
    testq %rax, %rax
    je .L6516
    movl $1, %eax
    jmp .L6517
.L6516:
    xorl %eax, %eax
.L6517:
    cmpq $0, %rax
    je .L6518
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
.L6518:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_trailing_align
    movq %r12, %rsp
    popq %r12
    leaq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L6520
    movq -16(%rbp), %rax
    jmp .L6521
.L6520:
    movq $0, %rax
.L6521:
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
    je .L6522
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
.L6522:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_trailing_align
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
    je .L6524
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -208(%rbp), %rax
    cmpq $0, %rax
    je .L6526
.L6528:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6530
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6530
    movl $1, %eax
    jmp .L6531
.L6530:
    xorl %eax, %eax
.L6531:
    cmpq $0, %rax
    je .L6529
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6528
.L6529:
    jmp .L6527
.L6526:
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
    je .L6532
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
    jmp .L6533
.L6532:
.L6534:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6536
    movq tok(%rip), %rax
    pushq %rax
    movq $310, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L6536
    movl $1, %eax
    jmp .L6537
.L6536:
    xorl %eax, %eax
.L6537:
    cmpq $0, %rax
    je .L6535
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6534
.L6535:
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
.L6533:
.L6527:
    jmp .L6525
.L6524:
    movq -208(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6538
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
.L6538:
.L6525:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6540
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6541
.L6540:
    leaq .Lstr1529(%rip), %rax
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
.L6541:
.L6483:
    jmp .L6469
.L6468:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6542
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
    je .L6544
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L6544
    movl $1, %eax
    jmp .L6545
.L6544:
    xorl %eax, %eax
.L6545:
    cmpq $0, %rax
    je .L6546
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
    je .L6548
    leaq unsigned_type(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6548:
.L6546:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -48(%rbp)
.L6550:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6551
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
    jmp .L6550
.L6551:
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
    je .L6552
    leaq .Lstr1530(%rip), %rax
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
.L6552:
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
    je .L6554
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
.L6554:
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
    je .L6556
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
    leaq pending_align(%rip), %rax
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
    jmp .L6557
.L6556:
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L6558
    movq $8, %rax
    jmp .L6559
.L6558:
    movq -16(%rbp), %rax
.L6559:
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L6560:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6561
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
    je .L6562
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
    jmp .L6563
.L6562:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6564
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
    je .L6566
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
    jmp .L6567
.L6566:
    leaq .Lstr1531(%rip), %rax
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
.L6567:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L6564:
.L6563:
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
    je .L6568
    movq -208(%rbp), %rax
    jmp .L6569
.L6568:
    movq $1, %rax
.L6569:
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
    je .L6570
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
    je .L6572
    movq -208(%rbp), %rax
    jmp .L6573
.L6572:
    movq $1, %rax
.L6573:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L6570:
    jmp .L6560
.L6561:
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L6574
    movq -144(%rbp), %rax
    testq %rax, %rax
    je .L6574
    movl $1, %eax
    jmp .L6575
.L6574:
    xorl %eax, %eax
.L6575:
    cmpq $0, %rax
    je .L6576
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
.L6576:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_trailing_align
    movq %r12, %rsp
    popq %r12
    leaq -96(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    testq %rax, %rax
    je .L6578
    movq $262, %rax
    jmp .L6579
.L6578:
    movq $0, %rax
.L6579:
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
    je .L6580
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
.L6580:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6582
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L6583
.L6582:
    leaq .Lstr1532(%rip), %rax
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
.L6583:
.L6557:
    jmp .L6543
.L6542:
    leaq .Lstr1533(%rip), %rax
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
.L6543:
.L6469:
.L6459:
.L6457:
.L6455:
.L6451:
.L6449:
    jmp .L6416
.L6417:
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
    je .L6592
    leave
    ret
.L6592:
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L6596
.L6594:
    leaq float_const_is_float(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L6598
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1536(%rip), %rax
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
    jmp .L6599
.L6598:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1537(%rip), %rax
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
.L6599:
.L6595:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6596
.L6596:
    movq -16(%rbp), %rax
    pushq %rax
    movq float_const_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L6594
.L6597:
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
    je .L6606
    leave
    ret
.L6606:
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L6610
.L6608:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1540(%rip), %rax
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
    leaq .Lstr1541(%rip), %rax
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
.L6609:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6610
.L6610:
    movq -16(%rbp), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L6608
.L6611:
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
    je .L6658
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1574(%rip), %rax
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
.L6658:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr1575(%rip), %rax
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
    je .L6660
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1576(%rip), %rax
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
.L6660:
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
    jne .L6662
    movq -64(%rbp), %rax
    pushq %rax
    movq $1048576, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6662
    xorl %eax, %eax
    jmp .L6663
.L6662:
    movl $1, %eax
.L6663:
    cmpq $0, %rax
    je .L6664
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1577(%rip), %rax
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
.L6664:
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
    je .L6666
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1578(%rip), %rax
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
.L6666:
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
.L6668:
    movq -112(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6669
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
    jmp .L6668
.L6669:
    leaq .Lstr1579(%rip), %rax
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
    leaq .Lstr1580(%rip), %rax
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
    leaq .Lstr1581(%rip), %rax
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
    leaq .Lstr1582(%rip), %rax
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
    leaq .Lstr1583(%rip), %rax
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
    leaq .Lstr1584(%rip), %rax
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
.L6670:
    movq $1, %rax
    cmpq $0, %rax
    je .L6671
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
    je .L6672
    jmp .L6671
.L6672:
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
    je .L6674
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
.L6674:
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
    leaq .Lstr1585(%rip), %rax
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
    jne .L6676
    movq -112(%rbp), %rax
    pushq %rax
    leaq .Lstr1586(%rip), %rax
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
    jne .L6676
    xorl %eax, %eax
    jmp .L6677
.L6676:
    movl $1, %eax
.L6677:
    testq %rax, %rax
    jne .L6678
    movq -112(%rbp), %rax
    pushq %rax
    leaq .Lstr1587(%rip), %rax
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
    jne .L6678
    xorl %eax, %eax
    jmp .L6679
.L6678:
    movl $1, %eax
.L6679:
    testq %rax, %rax
    je .L6680
    movq $1, %rax
    jmp .L6681
.L6680:
    movq $0, %rax
.L6681:
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
    leaq .Lstr1588(%rip), %rax
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
    je .L6682
    movq $1, %rax
    jmp .L6683
.L6682:
    movq $0, %rax
.L6683:
    popq %rcx
    movl %eax, (%rcx)
    movq -128(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq -128(%rbp), %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L6684
    movq $65536, %rax
    jmp .L6685
.L6684:
    movq $0, %rax
.L6685:
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
    jmp .L6670
.L6671:
    movq $0, %rax
    movq %rax, -96(%rbp)
.L6686:
    movq $1, %rax
    cmpq $0, %rax
    je .L6687
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
    je .L6688
    jmp .L6687
.L6688:
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
    je .L6690
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
.L6690:
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
    jmp .L6686
.L6687:
    leaq .Lstr1589(%rip), %rax
    pushq %rax
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
    jne .L6692
    movq float_const_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L6692
    xorl %eax, %eax
    jmp .L6693
.L6692:
    movl $1, %eax
.L6693:
    cmpq $0, %rax
    je .L6694
    leaq .Lstr1590(%rip), %rax
    pushq %rax
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
    leaq .Lstr1591(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L6694:
    leaq .Lstr1592(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1593(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1594(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1595(%rip), %rax
    pushq %rax
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
    jmp .L6698
.L6696:
    leaq .Lstr1596(%rip), %rax
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
    leaq .Lstr1597(%rip), %rax
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
.L6697:
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6698
.L6698:
    movq -96(%rbp), %rax
    pushq %rax
    movq ptr_init_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L6696
.L6699:
    leaq .Lstr1598(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1599(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1600(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1601(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1602(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1603(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1604(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1605(%rip), %rax
    pushq %rax
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
.L6700:
    movq -96(%rbp), %rax
    pushq %rax
    movq processed_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L6701
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
    jmp .L6700
.L6701:
    movq current_file(%rip), %rax
    cmpq $0, %rax
    je .L6702
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
.L6702:
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
    .asciz "__attribute__"
.Lstr54:
    .asciz "__attribute"
.Lstr55:
    .asciz "inline"
.Lstr56:
    .asciz "__inline"
.Lstr57:
    .asciz "__inline__"
.Lstr58:
    .asciz "if"
.Lstr59:
    .asciz "else"
.Lstr60:
    .asciz "while"
.Lstr61:
    .asciz "return"
.Lstr62:
    .asciz "int"
.Lstr63:
    .asciz "long"
.Lstr64:
    .asciz "char"
.Lstr65:
    .asciz "void"
.Lstr66:
    .asciz "enum"
.Lstr67:
    .asciz "static"
.Lstr68:
    .asciz "typedef"
.Lstr69:
    .asciz "struct"
.Lstr70:
    .asciz "const"
.Lstr71:
    .asciz "for"
.Lstr72:
    .asciz "switch"
.Lstr73:
    .asciz "case"
.Lstr74:
    .asciz "default"
.Lstr75:
    .asciz "break"
.Lstr76:
    .asciz "continue"
.Lstr77:
    .asciz "goto"
.Lstr78:
    .asciz "float"
.Lstr79:
    .asciz "double"
.Lstr80:
    .asciz "do"
.Lstr81:
    .asciz "sizeof"
.Lstr82:
    .asciz "union"
.Lstr83:
    .asciz "extern"
.Lstr84:
    .asciz "asm"
.Lstr85:
    .asciz "__asm"
.Lstr86:
    .asciz "__asm__"
.Lstr87:
    .asciz "volatile"
.Lstr88:
    .asciz "__volatile__"
.Lstr89:
    .asciz "__attribute__"
.Lstr90:
    .asciz "__attribute"
.Lstr91:
    .asciz "inline"
.Lstr92:
    .asciz "__inline"
.Lstr93:
    .asciz "__inline__"
.Lstr94:
    .asciz "invalid hex constant"
.Lstr95:
    .asciz "%ld"
.Lstr96:
    .asciz "invalid octal constant"
.Lstr97:
    .asciz "%ld"
.Lstr98:
    .asciz "invalid float constant"
.Lstr99:
    .asciz "numeric constant too long"
.Lstr100:
    .asciz "invalid float constant"
.Lstr101:
    .asciz "numeric constant too long"
.Lstr102:
    .asciz "%ld"
.Lstr103:
    .asciz "invalid hex constant"
.Lstr104:
    .asciz "%ld"
.Lstr105:
    .asciz "invalid octal constant"
.Lstr106:
    .asciz "%ld"
.Lstr107:
    .asciz "invalid float constant"
.Lstr108:
    .asciz "numeric constant too long"
.Lstr109:
    .asciz "invalid float constant"
.Lstr110:
    .asciz "numeric constant too long"
.Lstr111:
    .asciz "%ld"
.Lstr112:
    .asciz "ifdef"
.Lstr113:
    .asciz "ifndef"
.Lstr114:
    .asciz "if"
.Lstr115:
    .asciz "#if nesting too deep"
.Lstr116:
    .asciz "else"
.Lstr117:
    .asciz "endif"
.Lstr118:
    .asciz "unterminated comment"
.Lstr119:
    .asciz "define"
.Lstr120:
    .asciz "include"
.Lstr121:
    .asciz "include depth exceeded"
.Lstr122:
    .asciz "Warning: could not read included file: %s\n"
.Lstr123:
    .asciz "Warning: could not find included file: %s\n"
.Lstr124:
    .asciz "ifdef"
.Lstr125:
    .asciz "#if nesting too deep"
.Lstr126:
    .asciz "ifndef"
.Lstr127:
    .asciz "#if nesting too deep"
.Lstr128:
    .asciz "if"
.Lstr129:
    .asciz "#if nesting too deep"
.Lstr130:
    .asciz "else"
.Lstr131:
    .asciz "#else without #if"
.Lstr132:
    .asciz "endif"
.Lstr133:
    .asciz "#endif without #if"
.Lstr134:
    .asciz "identifier too long"
.Lstr135:
    .asciz "%d"
.Lstr136:
    .asciz "unterminated string literal"
.Lstr137:
    .asciz "invalid hex escape"
.Lstr138:
    .asciz "unterminated char literal"
.Lstr139:
    .asciz "%d"
.Lstr140:
    .asciz "<<="
.Lstr141:
    .asciz "<<"
.Lstr142:
    .asciz "<="
.Lstr143:
    .asciz ">>="
.Lstr144:
    .asciz ">>"
.Lstr145:
    .asciz ">="
.Lstr146:
    .asciz "=="
.Lstr147:
    .asciz "!="
.Lstr148:
    .asciz "&&"
.Lstr149:
    .asciz "&="
.Lstr150:
    .asciz "||"
.Lstr151:
    .asciz "|="
.Lstr152:
    .asciz "++"
.Lstr153:
    .asciz "+="
.Lstr154:
    .asciz "--"
.Lstr155:
    .asciz "-="
.Lstr156:
    .asciz "->"
.Lstr157:
    .asciz "*="
.Lstr158:
    .asciz "/="
.Lstr159:
    .asciz "%="
.Lstr160:
    .asciz "^="
.Lstr161:
    .asciz "ifdef"
.Lstr162:
    .asciz "ifndef"
.Lstr163:
    .asciz "if"
.Lstr164:
    .asciz "#if nesting too deep"
.Lstr165:
    .asciz "else"
.Lstr166:
    .asciz "endif"
.Lstr167:
    .asciz "unterminated comment"
.Lstr168:
    .asciz "define"
.Lstr169:
    .asciz "include"
.Lstr170:
    .asciz "include depth exceeded"
.Lstr171:
    .asciz "Warning: could not read included file: %s\n"
.Lstr172:
    .asciz "Warning: could not find included file: %s\n"
.Lstr173:
    .asciz "ifdef"
.Lstr174:
    .asciz "#if nesting too deep"
.Lstr175:
    .asciz "ifndef"
.Lstr176:
    .asciz "#if nesting too deep"
.Lstr177:
    .asciz "if"
.Lstr178:
    .asciz "#if nesting too deep"
.Lstr179:
    .asciz "else"
.Lstr180:
    .asciz "#else without #if"
.Lstr181:
    .asciz "endif"
.Lstr182:
    .asciz "#endif without #if"
.Lstr183:
    .asciz "identifier too long"
.Lstr184:
    .asciz "%d"
.Lstr185:
    .asciz "unterminated string literal"
.Lstr186:
    .asciz "invalid hex escape"
.Lstr187:
    .asciz "unterminated char literal"
.Lstr188:
    .asciz "%d"
.Lstr189:
    .asciz "<<="
.Lstr190:
    .asciz "<<"
.Lstr191:
    .asciz "<="
.Lstr192:
    .asciz ">>="
.Lstr193:
    .asciz ">>"
.Lstr194:
    .asciz ">="
.Lstr195:
    .asciz "=="
.Lstr196:
    .asciz "!="
.Lstr197:
    .asciz "&&"
.Lstr198:
    .asciz "&="
.Lstr199:
    .asciz "||"
.Lstr200:
    .asciz "|="
.Lstr201:
    .asciz "++"
.Lstr202:
    .asciz "+="
.Lstr203:
    .asciz "--"
.Lstr204:
    .asciz "-="
.Lstr205:
    .asciz "->"
.Lstr206:
    .asciz "*="
.Lstr207:
    .asciz "/="
.Lstr208:
    .asciz "%="
.Lstr209:
    .asciz "^="
.Lstr210:
    .asciz "unexpected token"
.Lstr211:
    .asciz "unexpected token"
.Lstr212:
    .asciz "\\n"
.Lstr213:
    .asciz "\\t"
.Lstr214:
    .asciz "\\\\"
.Lstr215:
    .asciz "\\\""
.Lstr216:
    .asciz "\\r"
.Lstr217:
    .asciz "\\f"
.Lstr218:
    .asciz "\\v"
.Lstr219:
    .asciz "\\a"
.Lstr220:
    .asciz "\\b"
.Lstr221:
    .asciz "\\%03o"
.Lstr222:
    .asciz "\\n"
.Lstr223:
    .asciz "\\t"
.Lstr224:
    .asciz "\\\\"
.Lstr225:
    .asciz "\\\""
.Lstr226:
    .asciz "\\r"
.Lstr227:
    .asciz "\\f"
.Lstr228:
    .asciz "\\v"
.Lstr229:
    .asciz "\\a"
.Lstr230:
    .asciz "\\b"
.Lstr231:
    .asciz "\\%03o"
.Lstr232:
    .asciz ".L%d:\n"
.Lstr233:
    .asciz ".L%d:\n"
.Lstr234:
    .asciz "too many symbols"
.Lstr235:
    .asciz "    .bss"
.Lstr236:
    .asciz "    .balign %d"
.Lstr237:
    .asciz "    .globl %s"
.Lstr238:
    .asciz "%s:"
.Lstr239:
    .asciz "    .space %d"
.Lstr240:
    .asciz "    .text"
.Lstr241:
    .asciz "too many symbols"
.Lstr242:
    .asciz "    .bss"
.Lstr243:
    .asciz "    .balign %d"
.Lstr244:
    .asciz "    .globl %s"
.Lstr245:
    .asciz "%s:"
.Lstr246:
    .asciz "    .space %d"
.Lstr247:
    .asciz "    .text"
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
    .asciz "%rdi"
.Lstr255:
    .asciz "%rsi"
.Lstr256:
    .asciz "%rdx"
.Lstr257:
    .asciz "%rcx"
.Lstr258:
    .asciz "%r8"
.Lstr259:
    .asciz "%r9"
.Lstr260:
    .asciz "stderr"
.Lstr261:
    .asciz "stdin"
.Lstr262:
    .asciz "stdout"
.Lstr263:
    .asciz "optarg"
.Lstr264:
    .asciz "optind"
.Lstr265:
    .asciz "errno"
.Lstr266:
    .asciz "size_t"
.Lstr267:
    .asciz "va_list"
.Lstr268:
    .asciz "FILE"
.Lstr269:
    .asciz "stderr"
.Lstr270:
    .asciz "stdin"
.Lstr271:
    .asciz "stdout"
.Lstr272:
    .asciz "optarg"
.Lstr273:
    .asciz "optind"
.Lstr274:
    .asciz "errno"
.Lstr275:
    .asciz "size_t"
.Lstr276:
    .asciz "va_list"
.Lstr277:
    .asciz "FILE"
.Lstr278:
    .asciz "int8_t"
.Lstr279:
    .asciz "uint8_t"
.Lstr280:
    .asciz "int16_t"
.Lstr281:
    .asciz "uint16_t"
.Lstr282:
    .asciz "int32_t"
.Lstr283:
    .asciz "uint32_t"
.Lstr284:
    .asciz "int64_t"
.Lstr285:
    .asciz "uint64_t"
.Lstr286:
    .asciz "uintptr_t"
.Lstr287:
    .asciz "intptr_t"
.Lstr288:
    .asciz "short"
.Lstr289:
    .asciz "int8_t"
.Lstr290:
    .asciz "uint8_t"
.Lstr291:
    .asciz "int16_t"
.Lstr292:
    .asciz "uint16_t"
.Lstr293:
    .asciz "int32_t"
.Lstr294:
    .asciz "uint32_t"
.Lstr295:
    .asciz "int64_t"
.Lstr296:
    .asciz "uint64_t"
.Lstr297:
    .asciz "uintptr_t"
.Lstr298:
    .asciz "intptr_t"
.Lstr299:
    .asciz "short"
.Lstr300:
    .asciz "    movq $%s, %%rax"
.Lstr301:
    .asciz "    leaq .LCf%d(%%rip), %%rax"
.Lstr302:
    .asciz "    movss (%%rax), %%xmm0"
.Lstr303:
    .asciz "    movd %%xmm0, %%eax"
.Lstr304:
    .asciz "    movsd (%%rax), %%xmm0"
.Lstr305:
    .asciz "    movq %%xmm0, %%rax"
.Lstr306:
    .asciz "    pushq %%rax"
.Lstr307:
    .asciz "    movq %d(%%rsp), %s"
.Lstr308:
    .asciz "too many function arguments (max 6)"
.Lstr309:
    .asciz "    addq $%d, %%rsp"
.Lstr310:
    .asciz "    pushq %%r12"
.Lstr311:
    .asciz "    movq %%rsp, %%r12"
.Lstr312:
    .asciz "    andq $-16, %%rsp"
.Lstr313:
    .asciz "    xorl %%eax, %%eax"
.Lstr314:
    .asciz "    call %s"
.Lstr315:
    .asciz "    movq %%r12, %%rsp"
.Lstr316:
    .asciz "    popq %%r12"
.Lstr317:
    .asciz "undefined variable"
.Lstr318:
    .asciz "    movq $%d, %%rax"
.Lstr319:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr320:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr321:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr322:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr323:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr324:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr325:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr326:
    .asciz "    movzbq %s(%%rip), %%rax"
.Lstr327:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr328:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr329:
    .asciz "    movzbq %d(%%rbp), %%rax"
.Lstr330:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr331:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr332:
    .asciz "    movzwq %s(%%rip), %%rax"
.Lstr333:
    .asciz "    movswq %s(%%rip), %%rax"
.Lstr334:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr335:
    .asciz "    movzwq %d(%%rbp), %%rax"
.Lstr336:
    .asciz "    movswq %d(%%rbp), %%rax"
.Lstr337:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr338:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr339:
    .asciz "    movslq %s(%%rip), %%rax"
.Lstr340:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr341:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr342:
    .asciz "    movslq %d(%%rbp), %%rax"
.Lstr343:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr344:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr345:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr346:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr347:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr348:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr349:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr350:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr351:
    .asciz "    movswq (%%rax), %%rax"
.Lstr352:
    .asciz "    movl (%%rax), %%eax"
.Lstr353:
    .asciz "    movslq (%%rax), %%rax"
.Lstr354:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr355:
    .asciz "    movl (%%rax), %%eax"
.Lstr356:
    .asciz "    movq (%%rax), %%rax"
.Lstr357:
    .asciz "    movq (%%rax), %%rax"
.Lstr358:
    .asciz "expected identifier after '&'"
.Lstr359:
    .asciz "undefined variable"
.Lstr360:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr361:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr362:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr363:
    .asciz "    xorl $0x80000000, %%eax"
.Lstr364:
    .asciz "    xorq $0x8000000000000000, %%rax"
.Lstr365:
    .asciz "    negq %%rax"
.Lstr366:
    .asciz "    testq %%rax, %%rax"
.Lstr367:
    .asciz "    sete %%al"
.Lstr368:
    .asciz "    movzbq %%al, %%rax"
.Lstr369:
    .asciz "    notq %%rax"
.Lstr370:
    .asciz "unsigned"
.Lstr371:
    .asciz "signed"
.Lstr372:
    .asciz "sizeof: undefined variable"
.Lstr373:
    .asciz "    movq $%d, %%rax"
.Lstr374:
    .asciz "invalid primary expression"
.Lstr375:
    .asciz "    movq $%s, %%rax"
.Lstr376:
    .asciz "    leaq .LCf%d(%%rip), %%rax"
.Lstr377:
    .asciz "    movss (%%rax), %%xmm0"
.Lstr378:
    .asciz "    movd %%xmm0, %%eax"
.Lstr379:
    .asciz "    movsd (%%rax), %%xmm0"
.Lstr380:
    .asciz "    movq %%xmm0, %%rax"
.Lstr381:
    .asciz "    pushq %%rax"
.Lstr382:
    .asciz "    movq %d(%%rsp), %s"
.Lstr383:
    .asciz "too many function arguments (max 6)"
.Lstr384:
    .asciz "    addq $%d, %%rsp"
.Lstr385:
    .asciz "    pushq %%r12"
.Lstr386:
    .asciz "    movq %%rsp, %%r12"
.Lstr387:
    .asciz "    andq $-16, %%rsp"
.Lstr388:
    .asciz "    xorl %%eax, %%eax"
.Lstr389:
    .asciz "    call %s"
.Lstr390:
    .asciz "    movq %%r12, %%rsp"
.Lstr391:
    .asciz "    popq %%r12"
.Lstr392:
    .asciz "undefined variable"
.Lstr393:
    .asciz "    movq $%d, %%rax"
.Lstr394:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr395:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr396:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr397:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr398:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr399:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr400:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr401:
    .asciz "    movzbq %s(%%rip), %%rax"
.Lstr402:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr403:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr404:
    .asciz "    movzbq %d(%%rbp), %%rax"
.Lstr405:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr406:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr407:
    .asciz "    movzwq %s(%%rip), %%rax"
.Lstr408:
    .asciz "    movswq %s(%%rip), %%rax"
.Lstr409:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr410:
    .asciz "    movzwq %d(%%rbp), %%rax"
.Lstr411:
    .asciz "    movswq %d(%%rbp), %%rax"
.Lstr412:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr413:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr414:
    .asciz "    movslq %s(%%rip), %%rax"
.Lstr415:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr416:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr417:
    .asciz "    movslq %d(%%rbp), %%rax"
.Lstr418:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr419:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr420:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr421:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr422:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr423:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr424:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr425:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr426:
    .asciz "    movswq (%%rax), %%rax"
.Lstr427:
    .asciz "    movl (%%rax), %%eax"
.Lstr428:
    .asciz "    movslq (%%rax), %%rax"
.Lstr429:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr430:
    .asciz "    movl (%%rax), %%eax"
.Lstr431:
    .asciz "    movq (%%rax), %%rax"
.Lstr432:
    .asciz "    movq (%%rax), %%rax"
.Lstr433:
    .asciz "expected identifier after '&'"
.Lstr434:
    .asciz "undefined variable"
.Lstr435:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr436:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr437:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr438:
    .asciz "    xorl $0x80000000, %%eax"
.Lstr439:
    .asciz "    xorq $0x8000000000000000, %%rax"
.Lstr440:
    .asciz "    negq %%rax"
.Lstr441:
    .asciz "    testq %%rax, %%rax"
.Lstr442:
    .asciz "    sete %%al"
.Lstr443:
    .asciz "    movzbq %%al, %%rax"
.Lstr444:
    .asciz "    notq %%rax"
.Lstr445:
    .asciz "unsigned"
.Lstr446:
    .asciz "signed"
.Lstr447:
    .asciz "sizeof: undefined variable"
.Lstr448:
    .asciz "    movq $%d, %%rax"
.Lstr449:
    .asciz "invalid primary expression"
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
    .asciz "undefined variable"
.Lstr457:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr458:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr459:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr460:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr461:
    .asciz "lvalue required"
.Lstr462:
    .asciz "    pushq %%rax"
.Lstr463:
    .asciz "    popq %%rcx"
.Lstr464:
    .asciz "    imulq $%d, %%rax"
.Lstr465:
    .asciz "    addq %%rcx, %%rax"
.Lstr466:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr467:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr468:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr469:
    .asciz "    movswq (%%rax), %%rax"
.Lstr470:
    .asciz "    movl (%%rax), %%eax"
.Lstr471:
    .asciz "    movslq (%%rax), %%rax"
.Lstr472:
    .asciz "    movq (%%rax), %%rax"
.Lstr473:
    .asciz "    addq $%d, %%rax"
.Lstr474:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr475:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr476:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr477:
    .asciz "    movswq (%%rax), %%rax"
.Lstr478:
    .asciz "    movl (%%rax), %%eax"
.Lstr479:
    .asciz "    movslq (%%rax), %%rax"
.Lstr480:
    .asciz "    movq (%%rax), %%rax"
.Lstr481:
    .asciz "    addq $%d, %%rax"
.Lstr482:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr483:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr484:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr485:
    .asciz "    movswq (%%rax), %%rax"
.Lstr486:
    .asciz "    movl (%%rax), %%eax"
.Lstr487:
    .asciz "    movslq (%%rax), %%rax"
.Lstr488:
    .asciz "    movq (%%rax), %%rax"
.Lstr489:
    .asciz "    pushq %%rax"
.Lstr490:
    .asciz "    popq %%rcx"
.Lstr491:
    .asciz "    imulq $%d, %%rax"
.Lstr492:
    .asciz "    addq %%rcx, %%rax"
.Lstr493:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr494:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr495:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr496:
    .asciz "    movswq (%%rax), %%rax"
.Lstr497:
    .asciz "    movl (%%rax), %%eax"
.Lstr498:
    .asciz "    movslq (%%rax), %%rax"
.Lstr499:
    .asciz "    movq (%%rax), %%rax"
.Lstr500:
    .asciz "    addq $%d, %%rax"
.Lstr501:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr502:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr503:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr504:
    .asciz "    movswq (%%rax), %%rax"
.Lstr505:
    .asciz "    movl (%%rax), %%eax"
.Lstr506:
    .asciz "    movslq (%%rax), %%rax"
.Lstr507:
    .asciz "    movq (%%rax), %%rax"
.Lstr508:
    .asciz "    addq $%d, %%rax"
.Lstr509:
    .asciz "    movzbq (%%rax), %%rax"
.Lstr510:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr511:
    .asciz "    movzwq (%%rax), %%rax"
.Lstr512:
    .asciz "    movswq (%%rax), %%rax"
.Lstr513:
    .asciz "    movl (%%rax), %%eax"
.Lstr514:
    .asciz "    movslq (%%rax), %%rax"
.Lstr515:
    .asciz "    movq (%%rax), %%rax"
.Lstr516:
    .asciz "    pushq %%rax"
.Lstr517:
    .asciz "    popq %%rcx"
.Lstr518:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr519:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr520:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr521:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr522:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr523:
    .asciz "    movd %%eax, %%xmm1"
.Lstr524:
    .asciz "    movq %%rax, %%xmm1"
.Lstr525:
    .asciz "    movq %%rax, %%xmm1"
.Lstr526:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr527:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr528:
    .asciz "    mulsd %%xmm1, %%xmm0"
.Lstr529:
    .asciz "    divsd %%xmm1, %%xmm0"
.Lstr530:
    .asciz "    movq %%xmm0, %%rax"
.Lstr531:
    .asciz "    mulss %%xmm1, %%xmm0"
.Lstr532:
    .asciz "    divss %%xmm1, %%xmm0"
.Lstr533:
    .asciz "    movd %%xmm0, %%eax"
.Lstr534:
    .asciz "    movq %%rax, %%r8"
.Lstr535:
    .asciz "    movq %%rcx, %%rax"
.Lstr536:
    .asciz "    cqto"
.Lstr537:
    .asciz "    idivq %%r8"
.Lstr538:
    .asciz "    movq %%rdx, %%rax"
.Lstr539:
    .asciz "    imulq %%rcx, %%rax"
.Lstr540:
    .asciz "    movq %%rax, %%r8"
.Lstr541:
    .asciz "    movq %%rcx, %%rax"
.Lstr542:
    .asciz "    cqto"
.Lstr543:
    .asciz "    idivq %%r8"
.Lstr544:
    .asciz "    pushq %%rax"
.Lstr545:
    .asciz "    popq %%rcx"
.Lstr546:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr547:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr548:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr549:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr550:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr551:
    .asciz "    movd %%eax, %%xmm1"
.Lstr552:
    .asciz "    movq %%rax, %%xmm1"
.Lstr553:
    .asciz "    movq %%rax, %%xmm1"
.Lstr554:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr555:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr556:
    .asciz "    mulsd %%xmm1, %%xmm0"
.Lstr557:
    .asciz "    divsd %%xmm1, %%xmm0"
.Lstr558:
    .asciz "    movq %%xmm0, %%rax"
.Lstr559:
    .asciz "    mulss %%xmm1, %%xmm0"
.Lstr560:
    .asciz "    divss %%xmm1, %%xmm0"
.Lstr561:
    .asciz "    movd %%xmm0, %%eax"
.Lstr562:
    .asciz "    movq %%rax, %%r8"
.Lstr563:
    .asciz "    movq %%rcx, %%rax"
.Lstr564:
    .asciz "    cqto"
.Lstr565:
    .asciz "    idivq %%r8"
.Lstr566:
    .asciz "    movq %%rdx, %%rax"
.Lstr567:
    .asciz "    imulq %%rcx, %%rax"
.Lstr568:
    .asciz "    movq %%rax, %%r8"
.Lstr569:
    .asciz "    movq %%rcx, %%rax"
.Lstr570:
    .asciz "    cqto"
.Lstr571:
    .asciz "    idivq %%r8"
.Lstr572:
    .asciz "    pushq %%rax"
.Lstr573:
    .asciz "    popq %%rcx"
.Lstr574:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr575:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr576:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr577:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr578:
    .asciz "    movd %%eax, %%xmm1"
.Lstr579:
    .asciz "    movq %%rax, %%xmm1"
.Lstr580:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr581:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr582:
    .asciz "    addsd %%xmm1, %%xmm0"
.Lstr583:
    .asciz "    subsd %%xmm1, %%xmm0"
.Lstr584:
    .asciz "    movq %%xmm0, %%rax"
.Lstr585:
    .asciz "    addss %%xmm1, %%xmm0"
.Lstr586:
    .asciz "    subss %%xmm1, %%xmm0"
.Lstr587:
    .asciz "    movd %%xmm0, %%eax"
.Lstr588:
    .asciz "    addq %%rcx, %%rax"
.Lstr589:
    .asciz "    subq %%rax, %%rcx"
.Lstr590:
    .asciz "    movq %%rcx, %%rax"
.Lstr591:
    .asciz "    pushq %%rax"
.Lstr592:
    .asciz "    popq %%rcx"
.Lstr593:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr594:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr595:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr596:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr597:
    .asciz "    movd %%eax, %%xmm1"
.Lstr598:
    .asciz "    movq %%rax, %%xmm1"
.Lstr599:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr600:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr601:
    .asciz "    addsd %%xmm1, %%xmm0"
.Lstr602:
    .asciz "    subsd %%xmm1, %%xmm0"
.Lstr603:
    .asciz "    movq %%xmm0, %%rax"
.Lstr604:
    .asciz "    addss %%xmm1, %%xmm0"
.Lstr605:
    .asciz "    subss %%xmm1, %%xmm0"
.Lstr606:
    .asciz "    movd %%xmm0, %%eax"
.Lstr607:
    .asciz "    addq %%rcx, %%rax"
.Lstr608:
    .asciz "    subq %%rax, %%rcx"
.Lstr609:
    .asciz "    movq %%rcx, %%rax"
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
    .asciz "    pushq %%rax"
.Lstr618:
    .asciz "    popq %%rcx"
.Lstr619:
    .asciz "    popq %%rax"
.Lstr620:
    .asciz "    salq %%cl, %%rax"
.Lstr621:
    .asciz "    sarq %%cl, %%rax"
.Lstr622:
    .asciz "    pushq %%rax"
.Lstr623:
    .asciz "    popq %%rcx"
.Lstr624:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr625:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr626:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr627:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr628:
    .asciz "    movd %%eax, %%xmm1"
.Lstr629:
    .asciz "    movq %%rax, %%xmm1"
.Lstr630:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr631:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr632:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr633:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr634:
    .asciz "    setb %%al"
.Lstr635:
    .asciz "    setbe %%al"
.Lstr636:
    .asciz "    seta %%al"
.Lstr637:
    .asciz "    setae %%al"
.Lstr638:
    .asciz "    movzbq %%al, %%rax"
.Lstr639:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr640:
    .asciz "    setl %%al"
.Lstr641:
    .asciz "    setle %%al"
.Lstr642:
    .asciz "    setg %%al"
.Lstr643:
    .asciz "    setge %%al"
.Lstr644:
    .asciz "    movzbq %%al, %%rax"
.Lstr645:
    .asciz "    pushq %%rax"
.Lstr646:
    .asciz "    popq %%rcx"
.Lstr647:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr648:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr649:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr650:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr651:
    .asciz "    movd %%eax, %%xmm1"
.Lstr652:
    .asciz "    movq %%rax, %%xmm1"
.Lstr653:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr654:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr655:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr656:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr657:
    .asciz "    setb %%al"
.Lstr658:
    .asciz "    setbe %%al"
.Lstr659:
    .asciz "    seta %%al"
.Lstr660:
    .asciz "    setae %%al"
.Lstr661:
    .asciz "    movzbq %%al, %%rax"
.Lstr662:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr663:
    .asciz "    setl %%al"
.Lstr664:
    .asciz "    setle %%al"
.Lstr665:
    .asciz "    setg %%al"
.Lstr666:
    .asciz "    setge %%al"
.Lstr667:
    .asciz "    movzbq %%al, %%rax"
.Lstr668:
    .asciz "    pushq %%rax"
.Lstr669:
    .asciz "    popq %%rcx"
.Lstr670:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr671:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr672:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr673:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr674:
    .asciz "    movd %%eax, %%xmm1"
.Lstr675:
    .asciz "    movq %%rax, %%xmm1"
.Lstr676:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr677:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr678:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr679:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr680:
    .asciz "    sete %%al"
.Lstr681:
    .asciz "    setne %%al"
.Lstr682:
    .asciz "    movzbq %%al, %%rax"
.Lstr683:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr684:
    .asciz "    sete %%al"
.Lstr685:
    .asciz "    setne %%al"
.Lstr686:
    .asciz "    movzbq %%al, %%rax"
.Lstr687:
    .asciz "    pushq %%rax"
.Lstr688:
    .asciz "    popq %%rcx"
.Lstr689:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr690:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr691:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr692:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr693:
    .asciz "    movd %%eax, %%xmm1"
.Lstr694:
    .asciz "    movq %%rax, %%xmm1"
.Lstr695:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr696:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr697:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr698:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr699:
    .asciz "    sete %%al"
.Lstr700:
    .asciz "    setne %%al"
.Lstr701:
    .asciz "    movzbq %%al, %%rax"
.Lstr702:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr703:
    .asciz "    sete %%al"
.Lstr704:
    .asciz "    setne %%al"
.Lstr705:
    .asciz "    movzbq %%al, %%rax"
.Lstr706:
    .asciz "    pushq %%rax"
.Lstr707:
    .asciz "    popq %%rcx"
.Lstr708:
    .asciz "    andq %%rcx, %%rax"
.Lstr709:
    .asciz "    pushq %%rax"
.Lstr710:
    .asciz "    popq %%rcx"
.Lstr711:
    .asciz "    andq %%rcx, %%rax"
.Lstr712:
    .asciz "    pushq %%rax"
.Lstr713:
    .asciz "    popq %%rcx"
.Lstr714:
    .asciz "    xorq %%rcx, %%rax"
.Lstr715:
    .asciz "    pushq %%rax"
.Lstr716:
    .asciz "    popq %%rcx"
.Lstr717:
    .asciz "    xorq %%rcx, %%rax"
.Lstr718:
    .asciz "    pushq %%rax"
.Lstr719:
    .asciz "    popq %%rcx"
.Lstr720:
    .asciz "    orq %%rcx, %%rax"
.Lstr721:
    .asciz "    pushq %%rax"
.Lstr722:
    .asciz "    popq %%rcx"
.Lstr723:
    .asciz "    orq %%rcx, %%rax"
.Lstr724:
    .asciz "    testq %%rax, %%rax"
.Lstr725:
    .asciz "    je .L%d"
.Lstr726:
    .asciz "    testq %%rax, %%rax"
.Lstr727:
    .asciz "    je .L%d"
.Lstr728:
    .asciz "    movl $1, %%eax"
.Lstr729:
    .asciz "    jmp .L%d"
.Lstr730:
    .asciz "    xorl %%eax, %%eax"
.Lstr731:
    .asciz "    testq %%rax, %%rax"
.Lstr732:
    .asciz "    je .L%d"
.Lstr733:
    .asciz "    testq %%rax, %%rax"
.Lstr734:
    .asciz "    je .L%d"
.Lstr735:
    .asciz "    movl $1, %%eax"
.Lstr736:
    .asciz "    jmp .L%d"
.Lstr737:
    .asciz "    xorl %%eax, %%eax"
.Lstr738:
    .asciz "    testq %%rax, %%rax"
.Lstr739:
    .asciz "    jne .L%d"
.Lstr740:
    .asciz "    testq %%rax, %%rax"
.Lstr741:
    .asciz "    jne .L%d"
.Lstr742:
    .asciz "    xorl %%eax, %%eax"
.Lstr743:
    .asciz "    jmp .L%d"
.Lstr744:
    .asciz "    movl $1, %%eax"
.Lstr745:
    .asciz "    testq %%rax, %%rax"
.Lstr746:
    .asciz "    jne .L%d"
.Lstr747:
    .asciz "    testq %%rax, %%rax"
.Lstr748:
    .asciz "    jne .L%d"
.Lstr749:
    .asciz "    xorl %%eax, %%eax"
.Lstr750:
    .asciz "    jmp .L%d"
.Lstr751:
    .asciz "    movl $1, %%eax"
.Lstr752:
    .asciz "    testq %%rax, %%rax"
.Lstr753:
    .asciz "    je .L%d"
.Lstr754:
    .asciz "    jmp .L%d"
.Lstr755:
    .asciz "    testq %%rax, %%rax"
.Lstr756:
    .asciz "    je .L%d"
.Lstr757:
    .asciz "    jmp .L%d"
.Lstr758:
    .asciz "    imull %%ecx, %%eax"
.Lstr759:
    .asciz "    imulq %%rcx, %%rax"
.Lstr760:
    .asciz "    movl %%eax, %%r8d"
.Lstr761:
    .asciz "    movl %%ecx, %%eax"
.Lstr762:
    .asciz "    cltd"
.Lstr763:
    .asciz "    idivl %%r8d"
.Lstr764:
    .asciz "    movl %%edx, %%eax"
.Lstr765:
    .asciz "    movq %%rax, %%r8"
.Lstr766:
    .asciz "    movq %%rcx, %%rax"
.Lstr767:
    .asciz "    cqto"
.Lstr768:
    .asciz "    idivq %%r8"
.Lstr769:
    .asciz "    movq %%rdx, %%rax"
.Lstr770:
    .asciz "    andl %%ecx, %%eax"
.Lstr771:
    .asciz "    andq %%rcx, %%rax"
.Lstr772:
    .asciz "    orl %%ecx, %%eax"
.Lstr773:
    .asciz "    orq %%rcx, %%rax"
.Lstr774:
    .asciz "    xorl %%ecx, %%eax"
.Lstr775:
    .asciz "    xorq %%rcx, %%rax"
.Lstr776:
    .asciz "    movq %%rax, %%r8"
.Lstr777:
    .asciz "    movq %%rcx, %%rax"
.Lstr778:
    .asciz "    movq %%r8, %%rcx"
.Lstr779:
    .asciz "    sall %%cl, %%eax"
.Lstr780:
    .asciz "    salq %%cl, %%rax"
.Lstr781:
    .asciz "    sarl %%cl, %%eax"
.Lstr782:
    .asciz "    sarq %%cl, %%rax"
.Lstr783:
    .asciz "    imull %%ecx, %%eax"
.Lstr784:
    .asciz "    imulq %%rcx, %%rax"
.Lstr785:
    .asciz "    movl %%eax, %%r8d"
.Lstr786:
    .asciz "    movl %%ecx, %%eax"
.Lstr787:
    .asciz "    cltd"
.Lstr788:
    .asciz "    idivl %%r8d"
.Lstr789:
    .asciz "    movl %%edx, %%eax"
.Lstr790:
    .asciz "    movq %%rax, %%r8"
.Lstr791:
    .asciz "    movq %%rcx, %%rax"
.Lstr792:
    .asciz "    cqto"
.Lstr793:
    .asciz "    idivq %%r8"
.Lstr794:
    .asciz "    movq %%rdx, %%rax"
.Lstr795:
    .asciz "    andl %%ecx, %%eax"
.Lstr796:
    .asciz "    andq %%rcx, %%rax"
.Lstr797:
    .asciz "    orl %%ecx, %%eax"
.Lstr798:
    .asciz "    orq %%rcx, %%rax"
.Lstr799:
    .asciz "    xorl %%ecx, %%eax"
.Lstr800:
    .asciz "    xorq %%rcx, %%rax"
.Lstr801:
    .asciz "    movq %%rax, %%r8"
.Lstr802:
    .asciz "    movq %%rcx, %%rax"
.Lstr803:
    .asciz "    movq %%r8, %%rcx"
.Lstr804:
    .asciz "    sall %%cl, %%eax"
.Lstr805:
    .asciz "    salq %%cl, %%rax"
.Lstr806:
    .asciz "    sarl %%cl, %%eax"
.Lstr807:
    .asciz "    sarq %%cl, %%rax"
.Lstr808:
    .asciz "    pushq %%rax"
.Lstr809:
    .asciz "    popq %%rcx"
.Lstr810:
    .asciz "    movb %%al, (%%rcx)"
.Lstr811:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr812:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr813:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr814:
    .asciz "    pushq %%rax"
.Lstr815:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr816:
    .asciz "    movl (%%rax), %%eax"
.Lstr817:
    .asciz "    movq (%%rax), %%rax"
.Lstr818:
    .asciz "    pushq %%rax"
.Lstr819:
    .asciz "    popq %%rcx"
.Lstr820:
    .asciz "    addq %%rcx, %%rax"
.Lstr821:
    .asciz "    popq %%rcx"
.Lstr822:
    .asciz "    movb %%al, (%%rcx)"
.Lstr823:
    .asciz "    addq %%rcx, %%rax"
.Lstr824:
    .asciz "    popq %%rcx"
.Lstr825:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr826:
    .asciz "    addl %%ecx, %%eax"
.Lstr827:
    .asciz "    popq %%rcx"
.Lstr828:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr829:
    .asciz "    addq %%rcx, %%rax"
.Lstr830:
    .asciz "    popq %%rcx"
.Lstr831:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr832:
    .asciz "    pushq %%rax"
.Lstr833:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr834:
    .asciz "    movl (%%rax), %%eax"
.Lstr835:
    .asciz "    movq (%%rax), %%rax"
.Lstr836:
    .asciz "    pushq %%rax"
.Lstr837:
    .asciz "    popq %%rcx"
.Lstr838:
    .asciz "    subq %%rax, %%rcx"
.Lstr839:
    .asciz "    movq %%rcx, %%rax"
.Lstr840:
    .asciz "    popq %%rcx"
.Lstr841:
    .asciz "    movb %%al, (%%rcx)"
.Lstr842:
    .asciz "    subq %%rax, %%rcx"
.Lstr843:
    .asciz "    movq %%rcx, %%rax"
.Lstr844:
    .asciz "    popq %%rcx"
.Lstr845:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr846:
    .asciz "    subl %%eax, %%ecx"
.Lstr847:
    .asciz "    movl %%ecx, %%eax"
.Lstr848:
    .asciz "    popq %%rcx"
.Lstr849:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr850:
    .asciz "    subq %%rax, %%rcx"
.Lstr851:
    .asciz "    movq %%rcx, %%rax"
.Lstr852:
    .asciz "    popq %%rcx"
.Lstr853:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr854:
    .asciz "    pushq %%rax"
.Lstr855:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr856:
    .asciz "    movl (%%rax), %%eax"
.Lstr857:
    .asciz "    movq (%%rax), %%rax"
.Lstr858:
    .asciz "    pushq %%rax"
.Lstr859:
    .asciz "    popq %%rcx"
.Lstr860:
    .asciz "    popq %%rcx"
.Lstr861:
    .asciz "    movb %%al, (%%rcx)"
.Lstr862:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr863:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr864:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr865:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr866:
    .asciz "    movl (%%rax), %%ecx"
.Lstr867:
    .asciz "    movq (%%rax), %%rcx"
.Lstr868:
    .asciz "    addb $1, (%%rax)"
.Lstr869:
    .asciz "    addl $1, (%%rax)"
.Lstr870:
    .asciz "    addq $1, (%%rax)"
.Lstr871:
    .asciz "    subb $1, (%%rax)"
.Lstr872:
    .asciz "    subl $1, (%%rax)"
.Lstr873:
    .asciz "    subq $1, (%%rax)"
.Lstr874:
    .asciz "    movq %%rcx, %%rax"
.Lstr875:
    .asciz "    pushq %%rax"
.Lstr876:
    .asciz "    popq %%rcx"
.Lstr877:
    .asciz "    movb %%al, (%%rcx)"
.Lstr878:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr879:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr880:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr881:
    .asciz "    pushq %%rax"
.Lstr882:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr883:
    .asciz "    movl (%%rax), %%eax"
.Lstr884:
    .asciz "    movq (%%rax), %%rax"
.Lstr885:
    .asciz "    pushq %%rax"
.Lstr886:
    .asciz "    popq %%rcx"
.Lstr887:
    .asciz "    addq %%rcx, %%rax"
.Lstr888:
    .asciz "    popq %%rcx"
.Lstr889:
    .asciz "    movb %%al, (%%rcx)"
.Lstr890:
    .asciz "    addq %%rcx, %%rax"
.Lstr891:
    .asciz "    popq %%rcx"
.Lstr892:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr893:
    .asciz "    addl %%ecx, %%eax"
.Lstr894:
    .asciz "    popq %%rcx"
.Lstr895:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr896:
    .asciz "    addq %%rcx, %%rax"
.Lstr897:
    .asciz "    popq %%rcx"
.Lstr898:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr899:
    .asciz "    pushq %%rax"
.Lstr900:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr901:
    .asciz "    movl (%%rax), %%eax"
.Lstr902:
    .asciz "    movq (%%rax), %%rax"
.Lstr903:
    .asciz "    pushq %%rax"
.Lstr904:
    .asciz "    popq %%rcx"
.Lstr905:
    .asciz "    subq %%rax, %%rcx"
.Lstr906:
    .asciz "    movq %%rcx, %%rax"
.Lstr907:
    .asciz "    popq %%rcx"
.Lstr908:
    .asciz "    movb %%al, (%%rcx)"
.Lstr909:
    .asciz "    subq %%rax, %%rcx"
.Lstr910:
    .asciz "    movq %%rcx, %%rax"
.Lstr911:
    .asciz "    popq %%rcx"
.Lstr912:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr913:
    .asciz "    subl %%eax, %%ecx"
.Lstr914:
    .asciz "    movl %%ecx, %%eax"
.Lstr915:
    .asciz "    popq %%rcx"
.Lstr916:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr917:
    .asciz "    subq %%rax, %%rcx"
.Lstr918:
    .asciz "    movq %%rcx, %%rax"
.Lstr919:
    .asciz "    popq %%rcx"
.Lstr920:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr921:
    .asciz "    pushq %%rax"
.Lstr922:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr923:
    .asciz "    movl (%%rax), %%eax"
.Lstr924:
    .asciz "    movq (%%rax), %%rax"
.Lstr925:
    .asciz "    pushq %%rax"
.Lstr926:
    .asciz "    popq %%rcx"
.Lstr927:
    .asciz "    popq %%rcx"
.Lstr928:
    .asciz "    movb %%al, (%%rcx)"
.Lstr929:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr930:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr931:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr932:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr933:
    .asciz "    movl (%%rax), %%ecx"
.Lstr934:
    .asciz "    movq (%%rax), %%rcx"
.Lstr935:
    .asciz "    addb $1, (%%rax)"
.Lstr936:
    .asciz "    addl $1, (%%rax)"
.Lstr937:
    .asciz "    addq $1, (%%rax)"
.Lstr938:
    .asciz "    subb $1, (%%rax)"
.Lstr939:
    .asciz "    subl $1, (%%rax)"
.Lstr940:
    .asciz "    subq $1, (%%rax)"
.Lstr941:
    .asciz "    movq %%rcx, %%rax"
.Lstr942:
    .asciz "    pushq %%rax"
.Lstr943:
    .asciz "    popq %%rcx"
.Lstr944:
    .asciz "    movb %%al, (%%rcx)"
.Lstr945:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr946:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr947:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr948:
    .asciz "    pushq %%rax"
.Lstr949:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr950:
    .asciz "    movl (%%rax), %%eax"
.Lstr951:
    .asciz "    movq (%%rax), %%rax"
.Lstr952:
    .asciz "    pushq %%rax"
.Lstr953:
    .asciz "    popq %%rcx"
.Lstr954:
    .asciz "    addq %%rcx, %%rax"
.Lstr955:
    .asciz "    popq %%rcx"
.Lstr956:
    .asciz "    movb %%al, (%%rcx)"
.Lstr957:
    .asciz "    addq %%rcx, %%rax"
.Lstr958:
    .asciz "    popq %%rcx"
.Lstr959:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr960:
    .asciz "    addl %%ecx, %%eax"
.Lstr961:
    .asciz "    popq %%rcx"
.Lstr962:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr963:
    .asciz "    addq %%rcx, %%rax"
.Lstr964:
    .asciz "    popq %%rcx"
.Lstr965:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr966:
    .asciz "    pushq %%rax"
.Lstr967:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr968:
    .asciz "    movl (%%rax), %%eax"
.Lstr969:
    .asciz "    movq (%%rax), %%rax"
.Lstr970:
    .asciz "    pushq %%rax"
.Lstr971:
    .asciz "    popq %%rcx"
.Lstr972:
    .asciz "    subq %%rax, %%rcx"
.Lstr973:
    .asciz "    movq %%rcx, %%rax"
.Lstr974:
    .asciz "    popq %%rcx"
.Lstr975:
    .asciz "    movb %%al, (%%rcx)"
.Lstr976:
    .asciz "    subq %%rax, %%rcx"
.Lstr977:
    .asciz "    movq %%rcx, %%rax"
.Lstr978:
    .asciz "    popq %%rcx"
.Lstr979:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr980:
    .asciz "    subl %%eax, %%ecx"
.Lstr981:
    .asciz "    movl %%ecx, %%eax"
.Lstr982:
    .asciz "    popq %%rcx"
.Lstr983:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr984:
    .asciz "    subq %%rax, %%rcx"
.Lstr985:
    .asciz "    movq %%rcx, %%rax"
.Lstr986:
    .asciz "    popq %%rcx"
.Lstr987:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr988:
    .asciz "    pushq %%rax"
.Lstr989:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr990:
    .asciz "    movl (%%rax), %%eax"
.Lstr991:
    .asciz "    movq (%%rax), %%rax"
.Lstr992:
    .asciz "    pushq %%rax"
.Lstr993:
    .asciz "    popq %%rcx"
.Lstr994:
    .asciz "    popq %%rcx"
.Lstr995:
    .asciz "    movb %%al, (%%rcx)"
.Lstr996:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr997:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr998:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr999:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr1000:
    .asciz "    movl (%%rax), %%ecx"
.Lstr1001:
    .asciz "    movq (%%rax), %%rcx"
.Lstr1002:
    .asciz "    addb $1, (%%rax)"
.Lstr1003:
    .asciz "    addl $1, (%%rax)"
.Lstr1004:
    .asciz "    addq $1, (%%rax)"
.Lstr1005:
    .asciz "    subb $1, (%%rax)"
.Lstr1006:
    .asciz "    subl $1, (%%rax)"
.Lstr1007:
    .asciz "    subq $1, (%%rax)"
.Lstr1008:
    .asciz "    movq %%rcx, %%rax"
.Lstr1009:
    .asciz "    pushq %%rax"
.Lstr1010:
    .asciz "    popq %%rcx"
.Lstr1011:
    .asciz "    movb %%al, (%%rcx)"
.Lstr1012:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr1013:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr1014:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr1015:
    .asciz "    pushq %%rax"
.Lstr1016:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr1017:
    .asciz "    movl (%%rax), %%eax"
.Lstr1018:
    .asciz "    movq (%%rax), %%rax"
.Lstr1019:
    .asciz "    pushq %%rax"
.Lstr1020:
    .asciz "    popq %%rcx"
.Lstr1021:
    .asciz "    addq %%rcx, %%rax"
.Lstr1022:
    .asciz "    popq %%rcx"
.Lstr1023:
    .asciz "    movb %%al, (%%rcx)"
.Lstr1024:
    .asciz "    addq %%rcx, %%rax"
.Lstr1025:
    .asciz "    popq %%rcx"
.Lstr1026:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr1027:
    .asciz "    addl %%ecx, %%eax"
.Lstr1028:
    .asciz "    popq %%rcx"
.Lstr1029:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr1030:
    .asciz "    addq %%rcx, %%rax"
.Lstr1031:
    .asciz "    popq %%rcx"
.Lstr1032:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr1033:
    .asciz "    pushq %%rax"
.Lstr1034:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr1035:
    .asciz "    movl (%%rax), %%eax"
.Lstr1036:
    .asciz "    movq (%%rax), %%rax"
.Lstr1037:
    .asciz "    pushq %%rax"
.Lstr1038:
    .asciz "    popq %%rcx"
.Lstr1039:
    .asciz "    subq %%rax, %%rcx"
.Lstr1040:
    .asciz "    movq %%rcx, %%rax"
.Lstr1041:
    .asciz "    popq %%rcx"
.Lstr1042:
    .asciz "    movb %%al, (%%rcx)"
.Lstr1043:
    .asciz "    subq %%rax, %%rcx"
.Lstr1044:
    .asciz "    movq %%rcx, %%rax"
.Lstr1045:
    .asciz "    popq %%rcx"
.Lstr1046:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr1047:
    .asciz "    subl %%eax, %%ecx"
.Lstr1048:
    .asciz "    movl %%ecx, %%eax"
.Lstr1049:
    .asciz "    popq %%rcx"
.Lstr1050:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr1051:
    .asciz "    subq %%rax, %%rcx"
.Lstr1052:
    .asciz "    movq %%rcx, %%rax"
.Lstr1053:
    .asciz "    popq %%rcx"
.Lstr1054:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr1055:
    .asciz "    pushq %%rax"
.Lstr1056:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr1057:
    .asciz "    movl (%%rax), %%eax"
.Lstr1058:
    .asciz "    movq (%%rax), %%rax"
.Lstr1059:
    .asciz "    pushq %%rax"
.Lstr1060:
    .asciz "    popq %%rcx"
.Lstr1061:
    .asciz "    popq %%rcx"
.Lstr1062:
    .asciz "    movb %%al, (%%rcx)"
.Lstr1063:
    .asciz "    movw %%ax, (%%rcx)"
.Lstr1064:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr1065:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr1066:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr1067:
    .asciz "    movl (%%rax), %%ecx"
.Lstr1068:
    .asciz "    movq (%%rax), %%rcx"
.Lstr1069:
    .asciz "    addb $1, (%%rax)"
.Lstr1070:
    .asciz "    addl $1, (%%rax)"
.Lstr1071:
    .asciz "    addq $1, (%%rax)"
.Lstr1072:
    .asciz "    subb $1, (%%rax)"
.Lstr1073:
    .asciz "    subl $1, (%%rax)"
.Lstr1074:
    .asciz "    subq $1, (%%rax)"
.Lstr1075:
    .asciz "    movq %%rcx, %%rax"
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
    .asciz "%r10"
.Lstr1083:
    .asciz "%r8"
.Lstr1084:
    .asciz "%r9"
.Lstr1085:
    .asciz "%rsi"
.Lstr1086:
    .asciz "%rdi"
.Lstr1087:
    .asciz "%r10"
.Lstr1088:
    .asciz "%rax"
.Lstr1089:
    .asciz "%rbx"
.Lstr1090:
    .asciz "%rcx"
.Lstr1091:
    .asciz "%rdx"
.Lstr1092:
    .asciz "%rax"
.Lstr1093:
    .asciz "%rbx"
.Lstr1094:
    .asciz "%rcx"
.Lstr1095:
    .asciz "%rdx"
.Lstr1096:
    .asciz "%al"
.Lstr1097:
    .asciz "%bl"
.Lstr1098:
    .asciz "%cl"
.Lstr1099:
    .asciz "%dl"
.Lstr1100:
    .asciz "%r10b"
.Lstr1101:
    .asciz "%r8b"
.Lstr1102:
    .asciz "%r9b"
.Lstr1103:
    .asciz "%sil"
.Lstr1104:
    .asciz "%dil"
.Lstr1105:
    .asciz "%ax"
.Lstr1106:
    .asciz "%bx"
.Lstr1107:
    .asciz "%cx"
.Lstr1108:
    .asciz "%dx"
.Lstr1109:
    .asciz "%r10w"
.Lstr1110:
    .asciz "%r8w"
.Lstr1111:
    .asciz "%r9w"
.Lstr1112:
    .asciz "%si"
.Lstr1113:
    .asciz "%di"
.Lstr1114:
    .asciz "%eax"
.Lstr1115:
    .asciz "%ebx"
.Lstr1116:
    .asciz "%ecx"
.Lstr1117:
    .asciz "%edx"
.Lstr1118:
    .asciz "%r10d"
.Lstr1119:
    .asciz "%r8d"
.Lstr1120:
    .asciz "%r9d"
.Lstr1121:
    .asciz "%esi"
.Lstr1122:
    .asciz "%edi"
.Lstr1123:
    .asciz "%al"
.Lstr1124:
    .asciz "%bl"
.Lstr1125:
    .asciz "%cl"
.Lstr1126:
    .asciz "%dl"
.Lstr1127:
    .asciz "%r10b"
.Lstr1128:
    .asciz "%r8b"
.Lstr1129:
    .asciz "%r9b"
.Lstr1130:
    .asciz "%sil"
.Lstr1131:
    .asciz "%dil"
.Lstr1132:
    .asciz "%ax"
.Lstr1133:
    .asciz "%bx"
.Lstr1134:
    .asciz "%cx"
.Lstr1135:
    .asciz "%dx"
.Lstr1136:
    .asciz "%r10w"
.Lstr1137:
    .asciz "%r8w"
.Lstr1138:
    .asciz "%r9w"
.Lstr1139:
    .asciz "%si"
.Lstr1140:
    .asciz "%di"
.Lstr1141:
    .asciz "%eax"
.Lstr1142:
    .asciz "%ebx"
.Lstr1143:
    .asciz "%ecx"
.Lstr1144:
    .asciz "%edx"
.Lstr1145:
    .asciz "%r10d"
.Lstr1146:
    .asciz "%r8d"
.Lstr1147:
    .asciz "%r9d"
.Lstr1148:
    .asciz "%esi"
.Lstr1149:
    .asciz "%edi"
.Lstr1150:
    .asciz "%d"
.Lstr1151:
    .asciz "asm operand number out of range"
.Lstr1152:
    .asciz "unsupported asm template modifier"
.Lstr1153:
    .asciz "%d"
.Lstr1154:
    .asciz "asm operand number out of range"
.Lstr1155:
    .asciz "unsupported asm template modifier"
.Lstr1156:
    .asciz "undefined variable in asm"
.Lstr1157:
    .asciz "%s(%%rip)"
.Lstr1158:
    .asciz "%d(%%rbp)"
.Lstr1159:
    .asciz "%s(%%rip)"
.Lstr1160:
    .asciz "%d(%%rbp)"
.Lstr1161:
    .asciz "complex asm output address needs a register constraint"
.Lstr1162:
    .asciz "    pushq %%rax"
.Lstr1163:
    .asciz "undefined variable in asm"
.Lstr1164:
    .asciz "%s(%%rip)"
.Lstr1165:
    .asciz "%d(%%rbp)"
.Lstr1166:
    .asciz "%s(%%rip)"
.Lstr1167:
    .asciz "%d(%%rbp)"
.Lstr1168:
    .asciz "complex asm output address needs a register constraint"
.Lstr1169:
    .asciz "    pushq %%rax"
.Lstr1170:
    .asciz "expected constraint string in asm"
.Lstr1171:
    .asciz "too many asm operands"
.Lstr1172:
    .asciz "unsupported asm output constraint"
.Lstr1173:
    .asciz "unsupported asm output constraint"
.Lstr1174:
    .asciz "unsupported asm output constraint"
.Lstr1175:
    .asciz "read-write asm operands are not supported"
.Lstr1176:
    .asciz "    pushq %%rax"
.Lstr1177:
    .asciz "asm Nd operand needs an integer constant"
.Lstr1178:
    .asciz "asm Nd operand out of range"
.Lstr1179:
    .asciz "$%d"
.Lstr1180:
    .asciz "unsupported asm input constraint"
.Lstr1181:
    .asciz "expected constraint string in asm"
.Lstr1182:
    .asciz "too many asm operands"
.Lstr1183:
    .asciz "unsupported asm output constraint"
.Lstr1184:
    .asciz "unsupported asm output constraint"
.Lstr1185:
    .asciz "unsupported asm output constraint"
.Lstr1186:
    .asciz "read-write asm operands are not supported"
.Lstr1187:
    .asciz "    pushq %%rax"
.Lstr1188:
    .asciz "asm Nd operand needs an integer constant"
.Lstr1189:
    .asciz "asm Nd operand out of range"
.Lstr1190:
    .asciz "$%d"
.Lstr1191:
    .asciz "unsupported asm input constraint"
.Lstr1192:
    .asciz "too many register asm operands"
.Lstr1193:
    .asciz "duplicate asm register"
.Lstr1194:
    .asciz "duplicate asm register"
.Lstr1195:
    .asciz "too many register asm operands"
.Lstr1196:
    .asciz "(%s)"
.Lstr1197:
    .asciz "too many register asm operands"
.Lstr1198:
    .asciz "duplicate asm register"
.Lstr1199:
    .asciz "duplicate asm register"
.Lstr1200:
    .asciz "too many register asm operands"
.Lstr1201:
    .asciz "(%s)"
.Lstr1202:
    .asciz "    pushq %%rbx"
.Lstr1203:
    .asciz "    movq %d(%%rsp), %s"
.Lstr1204:
    .asciz "    movb %s, %s"
.Lstr1205:
    .asciz "    movw %s, %s"
.Lstr1206:
    .asciz "    movl %s, %s"
.Lstr1207:
    .asciz "    movq %s, %s"
.Lstr1208:
    .asciz "    movq %d(%%rsp), %%r11"
.Lstr1209:
    .asciz ""
.Lstr1210:
    .asciz "    movb %s, (%%r11)"
.Lstr1211:
    .asciz "    movw %s, (%%r11)"
.Lstr1212:
    .asciz "    movl %s, (%%r11)"
.Lstr1213:
    .asciz "    movq %s, (%%r11)"
.Lstr1214:
    .asciz "    addq $%d, %%rsp"
.Lstr1215:
    .asciz "    popq %%rbx"
.Lstr1216:
    .asciz "    pushq %%rbx"
.Lstr1217:
    .asciz "    movq %d(%%rsp), %s"
.Lstr1218:
    .asciz "    movb %s, %s"
.Lstr1219:
    .asciz "    movw %s, %s"
.Lstr1220:
    .asciz "    movl %s, %s"
.Lstr1221:
    .asciz "    movq %s, %s"
.Lstr1222:
    .asciz "    movq %d(%%rsp), %%r11"
.Lstr1223:
    .asciz ""
.Lstr1224:
    .asciz "    movb %s, (%%r11)"
.Lstr1225:
    .asciz "    movw %s, (%%r11)"
.Lstr1226:
    .asciz "    movl %s, (%%r11)"
.Lstr1227:
    .asciz "    movq %s, (%%r11)"
.Lstr1228:
    .asciz "    addq $%d, %%rsp"
.Lstr1229:
    .asciz "    popq %%rbx"
.Lstr1230:
    .asciz "packed"
.Lstr1231:
    .asciz "aligned"
.Lstr1232:
    .asciz "aligned attribute needs an integer constant"
.Lstr1233:
    .asciz "aligned attribute needs a positive power of two"
.Lstr1234:
    .asciz "noreturn"
.Lstr1235:
    .asciz "returns_twice"
.Lstr1236:
    .asciz "always_inline"
.Lstr1237:
    .asciz "%s:%d: Warning: unknown attribute '%s'\n"
.Lstr1238:
    .asciz "(unknown)"
.Lstr1239:
    .asciz "packed"
.Lstr1240:
    .asciz "aligned"
.Lstr1241:
    .asciz "aligned attribute needs an integer constant"
.Lstr1242:
    .asciz "aligned attribute needs a positive power of two"
.Lstr1243:
    .asciz "noreturn"
.Lstr1244:
    .asciz "returns_twice"
.Lstr1245:
    .asciz "always_inline"
.Lstr1246:
    .asciz "%s:%d: Warning: unknown attribute '%s'\n"
.Lstr1247:
    .asciz "(unknown)"
.Lstr1248:
    .asciz "expected string literal in asm"
.Lstr1249:
    .asciz "asm template too long"
.Lstr1250:
    .asciz "expected ',' or ':' in asm"
.Lstr1251:
    .asciz "expected ',' or ':' in asm"
.Lstr1252:
    .asciz "expected clobber string in asm"
.Lstr1253:
    .asciz "expected string literal in asm"
.Lstr1254:
    .asciz "asm template too long"
.Lstr1255:
    .asciz "expected ',' or ':' in asm"
.Lstr1256:
    .asciz "expected ',' or ':' in asm"
.Lstr1257:
    .asciz "expected clobber string in asm"
.Lstr1258:
    .asciz "    cmpq $0, %%rax"
.Lstr1259:
    .asciz "    je .L%d"
.Lstr1260:
    .asciz "    jmp .L%d"
.Lstr1261:
    .asciz "unsigned"
.Lstr1262:
    .asciz "signed"
.Lstr1263:
    .asciz "unsigned"
.Lstr1264:
    .asciz "long"
.Lstr1265:
    .asciz "int"
.Lstr1266:
    .asciz "long"
.Lstr1267:
    .asciz "int"
.Lstr1268:
    .asciz "expected variable name"
.Lstr1269:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1270:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1271:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1272:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1273:
    .asciz "    jmp .L%d"
.Lstr1274:
    .asciz "    jmp .L%d"
.Lstr1275:
    .asciz "    cmpq $0, %%rax"
.Lstr1276:
    .asciz "    jne .L%d"
.Lstr1277:
    .asciz "    jmp .L%d"
.Lstr1278:
    .asciz "expected 'while' after do body"
.Lstr1279:
    .asciz "    cmpq $0, %%rax"
.Lstr1280:
    .asciz "    jne .L%d"
.Lstr1281:
    .asciz "    cmpq $0, %%rax"
.Lstr1282:
    .asciz "    je .L%d"
.Lstr1283:
    .asciz "    jmp .L%d"
.Lstr1284:
    .asciz "    pushq %%rax"
.Lstr1285:
    .asciz "    pushq $0"
.Lstr1286:
    .asciz "    jmp .L%d"
.Lstr1287:
    .asciz "    jmp .L%d"
.Lstr1288:
    .asciz "    movq 8(%%rsp), %%rax"
.Lstr1289:
    .asciz "    cmpq $%d, %%rax"
.Lstr1290:
    .asciz "    je .L%d"
.Lstr1291:
    .asciz "    jmp .L%d"
.Lstr1292:
    .asciz "    addq $16, %%rsp"
.Lstr1293:
    .asciz "    jmp .L%d"
.Lstr1294:
    .asciz "    jmp .L%d"
.Lstr1295:
    .asciz "expected label name"
.Lstr1296:
    .asciz "    jmp %s"
.Lstr1297:
    .asciz "    leave"
.Lstr1298:
    .asciz "    ret"
.Lstr1299:
    .asciz "unsigned"
.Lstr1300:
    .asciz "signed"
.Lstr1301:
    .asciz "unsigned"
.Lstr1302:
    .asciz "long"
.Lstr1303:
    .asciz "int"
.Lstr1304:
    .asciz "%s:"
.Lstr1305:
    .asciz "expected variable name"
.Lstr1306:
    .asciz "undefined macro"
.Lstr1307:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1308:
    .asciz "    movw %%ax, %d(%%rbp)"
.Lstr1309:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1310:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1311:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1312:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1313:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1314:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1315:
    .asciz "long"
.Lstr1316:
    .asciz "int"
.Lstr1317:
    .asciz "expected variable name"
.Lstr1318:
    .asciz "undefined macro"
.Lstr1319:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1320:
    .asciz "    movw %%ax, %d(%%rbp)"
.Lstr1321:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1322:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1323:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1324:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1325:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1326:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1327:
    .asciz "    cmpq $0, %%rax"
.Lstr1328:
    .asciz "    je .L%d"
.Lstr1329:
    .asciz "    jmp .L%d"
.Lstr1330:
    .asciz "unsigned"
.Lstr1331:
    .asciz "signed"
.Lstr1332:
    .asciz "unsigned"
.Lstr1333:
    .asciz "long"
.Lstr1334:
    .asciz "int"
.Lstr1335:
    .asciz "long"
.Lstr1336:
    .asciz "int"
.Lstr1337:
    .asciz "expected variable name"
.Lstr1338:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1339:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1340:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1341:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1342:
    .asciz "    jmp .L%d"
.Lstr1343:
    .asciz "    jmp .L%d"
.Lstr1344:
    .asciz "    cmpq $0, %%rax"
.Lstr1345:
    .asciz "    jne .L%d"
.Lstr1346:
    .asciz "    jmp .L%d"
.Lstr1347:
    .asciz "expected 'while' after do body"
.Lstr1348:
    .asciz "    cmpq $0, %%rax"
.Lstr1349:
    .asciz "    jne .L%d"
.Lstr1350:
    .asciz "    cmpq $0, %%rax"
.Lstr1351:
    .asciz "    je .L%d"
.Lstr1352:
    .asciz "    jmp .L%d"
.Lstr1353:
    .asciz "    pushq %%rax"
.Lstr1354:
    .asciz "    pushq $0"
.Lstr1355:
    .asciz "    jmp .L%d"
.Lstr1356:
    .asciz "    jmp .L%d"
.Lstr1357:
    .asciz "    movq 8(%%rsp), %%rax"
.Lstr1358:
    .asciz "    cmpq $%d, %%rax"
.Lstr1359:
    .asciz "    je .L%d"
.Lstr1360:
    .asciz "    jmp .L%d"
.Lstr1361:
    .asciz "    addq $16, %%rsp"
.Lstr1362:
    .asciz "    jmp .L%d"
.Lstr1363:
    .asciz "    jmp .L%d"
.Lstr1364:
    .asciz "expected label name"
.Lstr1365:
    .asciz "    jmp %s"
.Lstr1366:
    .asciz "    leave"
.Lstr1367:
    .asciz "    ret"
.Lstr1368:
    .asciz "unsigned"
.Lstr1369:
    .asciz "signed"
.Lstr1370:
    .asciz "unsigned"
.Lstr1371:
    .asciz "long"
.Lstr1372:
    .asciz "int"
.Lstr1373:
    .asciz "%s:"
.Lstr1374:
    .asciz "expected variable name"
.Lstr1375:
    .asciz "undefined macro"
.Lstr1376:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1377:
    .asciz "    movw %%ax, %d(%%rbp)"
.Lstr1378:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1379:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1380:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1381:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1382:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1383:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1384:
    .asciz "long"
.Lstr1385:
    .asciz "int"
.Lstr1386:
    .asciz "expected variable name"
.Lstr1387:
    .asciz "undefined macro"
.Lstr1388:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1389:
    .asciz "    movw %%ax, %d(%%rbp)"
.Lstr1390:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1391:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1392:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1393:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1394:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1395:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1396:
    .asciz "unsigned"
.Lstr1397:
    .asciz "signed"
.Lstr1398:
    .asciz "unsigned"
.Lstr1399:
    .asciz "long"
.Lstr1400:
    .asciz "int"
.Lstr1401:
    .asciz "long"
.Lstr1402:
    .asciz "int"
.Lstr1403:
    .asciz "expected parameter name"
.Lstr1404:
    .asciz "expected function body"
.Lstr1405:
    .asciz "    .globl %s"
.Lstr1406:
    .asciz "%s:"
.Lstr1407:
    .asciz "    pushq %%rbp"
.Lstr1408:
    .asciz "    movq %%rsp, %%rbp"
.Lstr1409:
    .asciz "    subq $%d, %%rsp"
.Lstr1410:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr1411:
    .asciz "    leave"
.Lstr1412:
    .asciz "    ret"
.Lstr1413:
    .asciz "unsigned"
.Lstr1414:
    .asciz "signed"
.Lstr1415:
    .asciz "unsigned"
.Lstr1416:
    .asciz "long"
.Lstr1417:
    .asciz "int"
.Lstr1418:
    .asciz "long"
.Lstr1419:
    .asciz "int"
.Lstr1420:
    .asciz "expected parameter name"
.Lstr1421:
    .asciz "expected function body"
.Lstr1422:
    .asciz "    .globl %s"
.Lstr1423:
    .asciz "%s:"
.Lstr1424:
    .asciz "    pushq %%rbp"
.Lstr1425:
    .asciz "    movq %%rsp, %%rbp"
.Lstr1426:
    .asciz "    subq $%d, %%rsp"
.Lstr1427:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr1428:
    .asciz "    leave"
.Lstr1429:
    .asciz "    ret"
.Lstr1430:
    .asciz "expected '{' after enum"
.Lstr1431:
    .asciz "expected enumerator name"
.Lstr1432:
    .asciz "too many symbols"
.Lstr1433:
    .asciz "expected integer constant"
.Lstr1434:
    .asciz "expected '{' after enum"
.Lstr1435:
    .asciz "expected enumerator name"
.Lstr1436:
    .asciz "too many symbols"
.Lstr1437:
    .asciz "expected integer constant"
.Lstr1438:
    .asciz "expected '{' in struct"
.Lstr1439:
    .asciz "unsigned"
.Lstr1440:
    .asciz "signed"
.Lstr1441:
    .asciz "unsigned"
.Lstr1442:
    .asciz "expected '{' in struct"
.Lstr1443:
    .asciz "unsigned"
.Lstr1444:
    .asciz "signed"
.Lstr1445:
    .asciz "unsigned"
.Lstr1446:
    .asciz ""
.Lstr1447:
    .asciz "unsigned"
.Lstr1448:
    .asciz "signed"
.Lstr1449:
    .asciz "too many symbols"
.Lstr1450:
    .asciz ""
.Lstr1451:
    .asciz "unsigned"
.Lstr1452:
    .asciz "signed"
.Lstr1453:
    .asciz "too many symbols"
.Lstr1454:
    .asciz "    .byte %d"
.Lstr1455:
    .asciz "    .word %d"
.Lstr1456:
    .asciz "    .long %d"
.Lstr1457:
    .asciz "    .quad %d"
.Lstr1458:
    .asciz "    .byte %d"
.Lstr1459:
    .asciz "    .word %d"
.Lstr1460:
    .asciz "    .long %d"
.Lstr1461:
    .asciz "    .quad %d"
.Lstr1462:
    .asciz "    .bss"
.Lstr1463:
    .asciz "    .balign %d"
.Lstr1464:
    .asciz "    .globl %s"
.Lstr1465:
    .asciz "%s:"
.Lstr1466:
    .asciz "    .space %d"
.Lstr1467:
    .asciz "    .text"
.Lstr1468:
    .asciz "    .bss"
.Lstr1469:
    .asciz "    .balign %d"
.Lstr1470:
    .asciz "    .globl %s"
.Lstr1471:
    .asciz "%s:"
.Lstr1472:
    .asciz "    .space %d"
.Lstr1473:
    .asciz "    .text"
.Lstr1474:
    .asciz "    .data"
.Lstr1475:
    .asciz "    .balign %d"
.Lstr1476:
    .asciz "    .globl %s"
.Lstr1477:
    .asciz "%s:"
.Lstr1478:
    .asciz "    .data"
.Lstr1479:
    .asciz "    .balign %d"
.Lstr1480:
    .asciz "    .globl %s"
.Lstr1481:
    .asciz "%s:"
.Lstr1482:
    .asciz "    .asciz \""
.Lstr1483:
    .asciz "\"\n"
.Lstr1484:
    .asciz "    .space %d"
.Lstr1485:
    .asciz "    .text"
.Lstr1486:
    .asciz "too many pointer initializers"
.Lstr1487:
    .asciz "    .quad 0"
.Lstr1488:
    .asciz "    .text"
.Lstr1489:
    .asciz "unsupported global initializer"
.Lstr1490:
    .asciz "expected '}' in global initializer"
.Lstr1491:
    .asciz "    .space %d"
.Lstr1492:
    .asciz "    .text"
.Lstr1493:
    .asciz "    .text"
.Lstr1494:
    .asciz "    .asciz \""
.Lstr1495:
    .asciz "\"\n"
.Lstr1496:
    .asciz "    .space %d"
.Lstr1497:
    .asciz "    .text"
.Lstr1498:
    .asciz "too many pointer initializers"
.Lstr1499:
    .asciz "    .quad 0"
.Lstr1500:
    .asciz "    .text"
.Lstr1501:
    .asciz "unsupported global initializer"
.Lstr1502:
    .asciz "expected '}' in global initializer"
.Lstr1503:
    .asciz "    .space %d"
.Lstr1504:
    .asciz "    .text"
.Lstr1505:
    .asciz "    .text"
.Lstr1506:
    .asciz "unsigned"
.Lstr1507:
    .asciz "signed"
.Lstr1508:
    .asciz "unsigned"
.Lstr1509:
    .asciz "long"
.Lstr1510:
    .asciz "int"
.Lstr1511:
    .asciz "long"
.Lstr1512:
    .asciz "int"
.Lstr1513:
    .asciz "expected identifier"
.Lstr1514:
    .asciz "undefined macro"
.Lstr1515:
    .asciz "expected ';' or '(' after global"
.Lstr1516:
    .asciz "expected identifier"
.Lstr1517:
    .asciz "undefined macro"
.Lstr1518:
    .asciz "expected ';' or '(' after global"
.Lstr1519:
    .asciz "global must be int, char, float, or double"
.Lstr1520:
    .asciz "unsigned"
.Lstr1521:
    .asciz "signed"
.Lstr1522:
    .asciz "unsigned"
.Lstr1523:
    .asciz "long"
.Lstr1524:
    .asciz "int"
.Lstr1525:
    .asciz "long"
.Lstr1526:
    .asciz "int"
.Lstr1527:
    .asciz "expected identifier"
.Lstr1528:
    .asciz "undefined macro"
.Lstr1529:
    .asciz "expected ';' or '(' after global"
.Lstr1530:
    .asciz "expected identifier"
.Lstr1531:
    .asciz "undefined macro"
.Lstr1532:
    .asciz "expected ';' or '(' after global"
.Lstr1533:
    .asciz "global must be int, char, float, or double"
.Lstr1534:
    .asciz ".LCf%d:\n    .float %s\n"
.Lstr1535:
    .asciz ".LCf%d:\n    .double %s\n"
.Lstr1536:
    .asciz ".LCf%d:\n    .float %s\n"
.Lstr1537:
    .asciz ".LCf%d:\n    .double %s\n"
.Lstr1538:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr1539:
    .asciz "\"\n"
.Lstr1540:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr1541:
    .asciz "\"\n"
.Lstr1542:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr1543:
    .asciz "r"
.Lstr1544:
    .asciz "Cannot open input file: %s\n"
.Lstr1545:
    .asciz "Invalid file size\n"
.Lstr1546:
    .asciz "Error reading file\n"
.Lstr1547:
    .asciz "EXIT_FAILURE"
.Lstr1548:
    .asciz "EXIT_SUCCESS"
.Lstr1549:
    .asciz "SEEK_SET"
.Lstr1550:
    .asciz "SEEK_CUR"
.Lstr1551:
    .asciz "SEEK_END"
.Lstr1552:
    .asciz "NULL"
.Lstr1553:
    .asciz "size_t"
.Lstr1554:
    .asciz "va_list"
.Lstr1555:
    .asciz "FILE"
.Lstr1556:
    .asciz "size_t"
.Lstr1557:
    .asciz "    .section .text"
.Lstr1558:
    .asciz "    .section .rodata"
.Lstr1559:
    .asciz "    .section .text"
.Lstr1560:
    .asciz "    .weak _start"
.Lstr1561:
    .asciz "    .globl _start"
.Lstr1562:
    .asciz "_start:"
.Lstr1563:
    .asciz "    subq $8, %rsp"
.Lstr1564:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr1565:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1566:
    .asciz "    movq 8(%rsp), %rdi"
.Lstr1567:
    .asciz "    leaq 16(%rsp), %rsi"
.Lstr1568:
    .asciz "    leaq 24(%rsp,%rdi,8), %rdx"
.Lstr1569:
    .asciz "    call main"
.Lstr1570:
    .asciz "    addq $8, %rsp"
.Lstr1571:
    .asciz "    movq %rax, %rdi"
.Lstr1572:
    .asciz "    movq $60, %rax"
.Lstr1573:
    .asciz "    syscall"
.Lstr1574:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr1575:
    .asciz "r"
.Lstr1576:
    .asciz "Cannot open input file: %s\n"
.Lstr1577:
    .asciz "Invalid file size\n"
.Lstr1578:
    .asciz "Error reading file\n"
.Lstr1579:
    .asciz "EXIT_FAILURE"
.Lstr1580:
    .asciz "EXIT_SUCCESS"
.Lstr1581:
    .asciz "SEEK_SET"
.Lstr1582:
    .asciz "SEEK_CUR"
.Lstr1583:
    .asciz "SEEK_END"
.Lstr1584:
    .asciz "NULL"
.Lstr1585:
    .asciz "size_t"
.Lstr1586:
    .asciz "va_list"
.Lstr1587:
    .asciz "FILE"
.Lstr1588:
    .asciz "size_t"
.Lstr1589:
    .asciz "    .section .text"
.Lstr1590:
    .asciz "    .section .rodata"
.Lstr1591:
    .asciz "    .section .text"
.Lstr1592:
    .asciz "    .weak _start"
.Lstr1593:
    .asciz "    .globl _start"
.Lstr1594:
    .asciz "_start:"
.Lstr1595:
    .asciz "    subq $8, %rsp"
.Lstr1596:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr1597:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1598:
    .asciz "    movq 8(%rsp), %rdi"
.Lstr1599:
    .asciz "    leaq 16(%rsp), %rsi"
.Lstr1600:
    .asciz "    leaq 24(%rsp,%rdi,8), %rdx"
.Lstr1601:
    .asciz "    call main"
.Lstr1602:
    .asciz "    addq $8, %rsp"
.Lstr1603:
    .asciz "    movq %rax, %rdi"
.Lstr1604:
    .asciz "    movq $60, %rax"
.Lstr1605:
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
