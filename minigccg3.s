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
    movq no_postfix_deref(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $20, %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $24, %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $28, %rax
    pushq %rax
    movq function_has_return(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq emit_enabled(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $36, %rax
    pushq %rax
    movq max_func_stack(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $40, %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq switch_has_default(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq switch_default_label(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $52, %rax
    pushq %rax
    movq break_target(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq break_target_valid(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $60, %rax
    pushq %rax
    movq continue_target(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq continue_target_valid(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $76, %rax
    pushq %rax
    movq macro_count(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $80, %rax
    pushq %rax
    movq expr_type(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -16(%rbp), %rax
    addq $84, %rax
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
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $16, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    addq $20, %rax
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
    addq $20, %rax
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
    addq $20, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L3:
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $24, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $28, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $40, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_has_default(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $44, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_default_label(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $52, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $56, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq macro_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $76, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_type(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $80, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq float_const_count(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    addq $84, %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2218
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    movsbq -32(%rbp), %rax
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
    .globl unary
unary:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2516
    leaq .Lstr326(%rip), %rax
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
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2517
.L2516:
    movq tok(%rip), %rax
    pushq %rax
    movq $291, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2518
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
    leaq .Lstr327(%rip), %rax
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
    je .L2520
    leaq .Lstr328(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr329(%rip), %rax
    pushq %rax
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
    jmp .L2521
.L2520:
    leaq .Lstr330(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr331(%rip), %rax
    pushq %rax
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
.L2521:
    leaq expr_pointed(%rip), %rax
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
    jmp .L2519
.L2518:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2522
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
    je .L2524
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
    je .L2526
.L2528:
    movq $1, %rax
    cmpq $0, %rax
    je .L2529
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr332(%rip), %rax
    pushq %rax
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
    je .L2530
    jmp .L2529
.L2530:
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
    jmp .L2528
.L2529:
.L2526:
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
    jmp .L2534
.L2532:
    leaq .Lstr333(%rip), %rax
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
.L2533:
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2534
.L2534:
    movq -64(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2536
    movq -64(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2536
    movl $1, %eax
    jmp .L2537
.L2536:
    xorl %eax, %eax
.L2537:
    cmpq $0, %rax
    jne .L2532
.L2535:
    movq -48(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2538
    leaq .Lstr334(%rip), %rax
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
.L2538:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2540
    leaq .Lstr335(%rip), %rax
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
.L2540:
    leaq .Lstr336(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr337(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr338(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr339(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr340(%rip), %rax
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
    leaq .Lstr341(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr342(%rip), %rax
    pushq %rax
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
    jmp .L2525
.L2524:
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
    je .L2542
    leaq .Lstr343(%rip), %rax
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
.L2542:
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
    je .L2544
    movq -64(%rbp), %rax
    addq $56, %rax
    movslq (%rax), %rax
    movq %rax, -96(%rbp)
    leaq .Lstr344(%rip), %rax
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
    jmp .L2545
.L2544:
    movq -64(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    jne .L2546
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2548
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
    je .L2548
    movl $1, %eax
    jmp .L2549
.L2548:
    xorl %eax, %eax
.L2549:
    testq %rax, %rax
    jne .L2546
    xorl %eax, %eax
    jmp .L2547
.L2546:
    movl $1, %eax
.L2547:
    cmpq $0, %rax
    je .L2550
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
    je .L2552
    movq -64(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2553
.L2552:
    movq $8, %rax
.L2553:
    movq %rax, -128(%rbp)
    movq -112(%rbp), %rax
    testq %rax, %rax
    je .L2554
    movq -64(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L2555
.L2554:
    movq $0, %rax
.L2555:
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
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2556
    leaq .Lstr345(%rip), %rax
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
    jmp .L2557
.L2556:
    leaq .Lstr346(%rip), %rax
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
.L2557:
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
    je .L2558
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
    je .L2558
    movl $1, %eax
    jmp .L2559
.L2558:
    xorl %eax, %eax
.L2559:
    testq %rax, %rax
    je .L2560
    movq $0, %rax
    jmp .L2561
.L2560:
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2562
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    jmp .L2563
.L2562:
    movq $262, %rax
.L2563:
.L2561:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2551
.L2550:
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
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2564
    movq -64(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2564
    movl $1, %eax
    jmp .L2565
.L2564:
    xorl %eax, %eax
.L2565:
    movq %rax, -144(%rbp)
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
    je .L2566
    leaq current_elem_size(%rip), %rax
    pushq %rax
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
    je .L2568
    movq -64(%rbp), %rax
    addq $76, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2568
    movl $1, %eax
    jmp .L2569
.L2568:
    xorl %eax, %eax
.L2569:
    testq %rax, %rax
    je .L2570
    movq $1, %rax
    jmp .L2571
.L2570:
    movq $8, %rax
.L2571:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2567
.L2566:
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2567:
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
    je .L2572
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2574
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2576
    leaq .Lstr347(%rip), %rax
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
    jmp .L2577
.L2576:
    leaq .Lstr348(%rip), %rax
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
.L2577:
    jmp .L2575
.L2574:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2578
    leaq .Lstr349(%rip), %rax
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
    jmp .L2579
.L2578:
    leaq .Lstr350(%rip), %rax
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
.L2579:
.L2575:
    jmp .L2573
.L2572:
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2580
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2582
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2584
    leaq .Lstr351(%rip), %rax
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
    jmp .L2585
.L2584:
    leaq .Lstr352(%rip), %rax
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
.L2585:
    jmp .L2583
.L2582:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2586
    leaq .Lstr353(%rip), %rax
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
    jmp .L2587
.L2586:
    leaq .Lstr354(%rip), %rax
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
.L2587:
.L2583:
    jmp .L2581
.L2580:
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L2588
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2590
    leaq .Lstr355(%rip), %rax
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
    jmp .L2591
.L2590:
    leaq .Lstr356(%rip), %rax
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
.L2591:
    jmp .L2589
.L2588:
    movq -144(%rbp), %rax
    cmpq $0, %rax
    je .L2592
    leaq .Lstr357(%rip), %rax
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
    jmp .L2593
.L2592:
    leaq .Lstr358(%rip), %rax
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
.L2593:
.L2589:
.L2581:
.L2573:
.L2551:
.L2545:
.L2525:
    jmp .L2523
.L2522:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2594
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
    je .L2596
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
    je .L2598
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2598
    movl $1, %eax
    jmp .L2599
.L2598:
    xorl %eax, %eax
.L2599:
    cmpq $0, %rax
    je .L2600
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2602:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2603
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2602
.L2603:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2604
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2604:
.L2600:
    jmp .L2597
.L2596:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2606
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2606
    xorl %eax, %eax
    jmp .L2607
.L2606:
    movl $1, %eax
.L2607:
    testq %rax, %rax
    jne .L2608
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2608
    xorl %eax, %eax
    jmp .L2609
.L2608:
    movl $1, %eax
.L2609:
    testq %rax, %rax
    jne .L2610
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2610
    xorl %eax, %eax
    jmp .L2611
.L2610:
    movl $1, %eax
.L2611:
    cmpq $0, %rax
    je .L2612
    movq tok(%rip), %rax
    movq %rax, -64(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2614:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2615
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2614
.L2615:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2616
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2616:
    movq -48(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2618
    leaq tok(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L2618:
.L2612:
.L2597:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L2620
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
    jmp .L2621
.L2620:
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
.L2621:
    jmp .L2595
.L2594:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2622
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
    cmpq $0, %rax
    je .L2624
    leaq .Lstr359(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2625
.L2624:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2626
    leaq .Lstr360(%rip), %rax
    pushq %rax
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
    jmp .L2627
.L2626:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2628
    leaq .Lstr361(%rip), %rax
    pushq %rax
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
    jmp .L2629
.L2628:
    leaq .Lstr362(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2629:
.L2627:
.L2625:
    jmp .L2623
.L2622:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2630
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
    je .L2632
    leaq .Lstr363(%rip), %rax
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
.L2632:
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
    je .L2634
    leaq .Lstr364(%rip), %rax
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
.L2634:
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
    je .L2636
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2637
.L2636:
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
    je .L2638
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2639
.L2638:
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
    je .L2640
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2641
.L2640:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2641:
.L2639:
.L2637:
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2642
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2643
.L2642:
    movq $0, %rax
.L2643:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2644
    movq -32(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L2645
.L2644:
    movq $0, %rax
.L2645:
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
    je .L2646
    leaq .Lstr365(%rip), %rax
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
    jmp .L2647
.L2646:
    leaq .Lstr366(%rip), %rax
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
.L2647:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2631
.L2630:
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2648
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
    je .L2650
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
.L2650:
    leaq .Lstr367(%rip), %rax
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
    jmp .L2649
.L2648:
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2652
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
    je .L2654
    leaq .Lstr368(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2655
.L2654:
    movq expr_type(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2656
    leaq .Lstr369(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2657
.L2656:
    leaq .Lstr370(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2657:
.L2655:
    jmp .L2653
.L2652:
    movq tok(%rip), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2658
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
    jmp .L2659
.L2658:
    movq tok(%rip), %rax
    pushq %rax
    movq $126, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2660
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
    jmp .L2661
.L2660:
    movq tok(%rip), %rax
    pushq %rax
    movq $293, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2662
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
    je .L2664
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
.L2664:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2666
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr375(%rip), %rax
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
    jne .L2668
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr376(%rip), %rax
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
    jne .L2668
    xorl %eax, %eax
    jmp .L2669
.L2668:
    movl $1, %eax
.L2669:
    testq %rax, %rax
    je .L2666
    movl $1, %eax
    jmp .L2667
.L2666:
    xorl %eax, %eax
.L2667:
    cmpq $0, %rax
    je .L2670
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
    jne .L2672
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2672
    xorl %eax, %eax
    jmp .L2673
.L2672:
    movl $1, %eax
.L2673:
    testq %rax, %rax
    jne .L2674
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2674
    xorl %eax, %eax
    jmp .L2675
.L2674:
    movl $1, %eax
.L2675:
    testq %rax, %rax
    jne .L2676
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2676
    xorl %eax, %eax
    jmp .L2677
.L2676:
    movl $1, %eax
.L2677:
    cmpq $0, %rax
    je .L2678
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2678:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2671
.L2670:
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2680
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
    jmp .L2681
.L2680:
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2682
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
    jmp .L2683
.L2682:
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2684
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
    jmp .L2685
.L2684:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2686
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2686
    xorl %eax, %eax
    jmp .L2687
.L2686:
    movl $1, %eax
.L2687:
    cmpq $0, %rax
    je .L2688
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
    jmp .L2689
.L2688:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2690
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2690
    xorl %eax, %eax
    jmp .L2691
.L2690:
    movl $1, %eax
.L2691:
    cmpq $0, %rax
    je .L2692
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
    je .L2694
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
    je .L2696
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2696
    movl $1, %eax
    jmp .L2697
.L2696:
    xorl %eax, %eax
.L2697:
    testq %rax, %rax
    je .L2698
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
    je .L2698
    movl $1, %eax
    jmp .L2699
.L2698:
    xorl %eax, %eax
.L2699:
    cmpq $0, %rax
    je .L2700
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
.L2700:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L2694:
    jmp .L2693
.L2692:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2702
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
    cmpq $0, %rax
    je .L2704
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
    jmp .L2705
.L2704:
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
.L2705:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L2703
.L2702:
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
    je .L2706
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2707
.L2706:
    movq expr_type(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2708
    leaq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2709
.L2708:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2709:
.L2707:
.L2703:
.L2693:
.L2689:
.L2685:
.L2683:
.L2681:
.L2671:
.L2710:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2711
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
    jmp .L2710
.L2711:
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L2712
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
.L2712:
    leaq .Lstr378(%rip), %rax
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
    jmp .L2663
.L2662:
    leaq .Lstr379(%rip), %rax
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
.L2663:
.L2661:
.L2659:
.L2653:
.L2649:
.L2631:
.L2623:
.L2595:
.L2523:
.L2519:
.L2517:
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
    je .L2764
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
    je .L2766
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
.L2766:
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
    jne .L2768
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2770
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
    je .L2770
    movl $1, %eax
    jmp .L2771
.L2770:
    xorl %eax, %eax
.L2771:
    testq %rax, %rax
    jne .L2768
    xorl %eax, %eax
    jmp .L2769
.L2768:
    movl $1, %eax
.L2769:
    cmpq $0, %rax
    je .L2772
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2774
    movq -32(%rbp), %rax
    addq $64, %rax
    movslq (%rax), %rax
    jmp .L2775
.L2774:
    movq $8, %rax
.L2775:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size2(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $60, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2776
    movq -32(%rbp), %rax
    addq $68, %rax
    movslq (%rax), %rax
    jmp .L2777
.L2776:
    movq $0, %rax
.L2777:
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2778
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    jmp .L2779
.L2778:
    movq $262, %rax
.L2779:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2773
.L2772:
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
    je .L2780
    leaq current_elem_size(%rip), %rax
    pushq %rax
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
    je .L2782
    movq -32(%rbp), %rax
    addq $76, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2782
    movl $1, %eax
    jmp .L2783
.L2782:
    xorl %eax, %eax
.L2783:
    testq %rax, %rax
    je .L2784
    movq $1, %rax
    jmp .L2785
.L2784:
    movq $8, %rax
.L2785:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2781
.L2780:
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2781:
.L2773:
    movq -32(%rbp), %rax
    addq $48, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L2786
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
    je .L2786
    movl $1, %eax
    jmp .L2787
.L2786:
    xorl %eax, %eax
.L2787:
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
    je .L2788
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2790
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2790
    xorl %eax, %eax
    jmp .L2791
.L2790:
    movl $1, %eax
.L2791:
    testq %rax, %rax
    jne .L2792
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2792
    xorl %eax, %eax
    jmp .L2793
.L2792:
    movl $1, %eax
.L2793:
    testq %rax, %rax
    jne .L2794
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2794
    xorl %eax, %eax
    jmp .L2795
.L2794:
    movl $1, %eax
.L2795:
    testq %rax, %rax
    je .L2788
    movl $1, %eax
    jmp .L2789
.L2788:
    xorl %eax, %eax
.L2789:
    cmpq $0, %rax
    je .L2796
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2797
.L2796:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L2798
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2798:
.L2797:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L2800
    movq -32(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L2802
    leaq .Lstr387(%rip), %rax
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
    jmp .L2803
.L2802:
    leaq .Lstr388(%rip), %rax
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
.L2803:
    jmp .L2801
.L2800:
    movq -32(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L2804
    leaq .Lstr389(%rip), %rax
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
    jmp .L2805
.L2804:
    leaq .Lstr390(%rip), %rax
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
.L2805:
.L2801:
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
    jmp .L2765
.L2764:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2806
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
    je .L2808
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2810
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2811
.L2810:
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2812
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2813
.L2812:
    leaq assign_size(%rip), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2813:
.L2811:
.L2808:
    jmp .L2807
.L2806:
    leaq .Lstr391(%rip), %rax
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
.L2807:
.L2765:
    leave
    ret
    .globl handle_postfix
handle_postfix:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -16(%rbp)
.L2902:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L2904
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
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
    movq $273, %rax
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
    cmpq $0, %rax
    je .L2903
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2908
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr407(%rip), %rax
    pushq %rax
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
    movq assign_size(%rip), %rax
    movq %rax, -80(%rbp)
    movq no_postfix_deref(%rip), %rax
    movq %rax, -96(%rbp)
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
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq .Lstr408(%rip), %rax
    pushq %rax
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
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2910
    leaq -112(%rbp), %rax
    pushq %rax
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2912
    movq $1, %rax
    jmp .L2913
.L2912:
    movq $8, %rax
.L2913:
    popq %rcx
    movq %rax, (%rcx)
.L2910:
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2914
    leaq .Lstr409(%rip), %rax
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
.L2914:
    leaq .Lstr410(%rip), %rax
    pushq %rax
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
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
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
    je .L2916
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
    jmp .L2917
.L2916:
    movq -16(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2918
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2918
    movl $1, %eax
    jmp .L2919
.L2918:
    xorl %eax, %eax
.L2919:
    testq %rax, %rax
    je .L2920
    movq -112(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2920
    movl $1, %eax
    jmp .L2921
.L2920:
    xorl %eax, %eax
.L2921:
    cmpq $0, %rax
    je .L2922
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2924
    leaq .Lstr411(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2925
.L2924:
    movq -112(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2926
    leaq .Lstr412(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2927
.L2926:
    leaq .Lstr413(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L2927:
.L2925:
    movq -112(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L2928
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L2928
    movl $1, %eax
    jmp .L2929
.L2928:
    xorl %eax, %eax
.L2929:
    cmpq $0, %rax
    je .L2930
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
    je .L2932
    movq $1, %rax
    jmp .L2933
.L2932:
    movq $8, %rax
.L2933:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2931
.L2930:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2931:
.L2922:
.L2917:
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
    jmp .L2909
.L2908:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2934
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
    jmp .L2938
.L2936:
    leaq token(%rip), %rax
    pushq %rax
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    je .L2940
    leaq -32(%rbp), %rax
    pushq %rax
    leaq struct_member_offsets(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    movq -80(%rbp), %rax
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
    movq -80(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2939
.L2940:
.L2937:
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2938
.L2938:
    movq -80(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L2936
.L2939:
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
    je .L2942
    leaq .Lstr414(%rip), %rax
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
.L2942:
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
    movq -16(%rbp), %rax
    testq %rax, %rax
    jne .L2944
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    jne .L2944
    xorl %eax, %eax
    jmp .L2945
.L2944:
    movl $1, %eax
.L2945:
    cmpq $0, %rax
    je .L2946
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2948
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2949
.L2948:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2950
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2951
.L2950:
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
    je .L2952
    movq $262, %rax
    jmp .L2953
.L2952:
    movq $0, %rax
.L2953:
    popq %rcx
    movq %rax, (%rcx)
.L2951:
.L2949:
    jmp .L2947
.L2946:
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2954
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
    je .L2956
    movq $262, %rax
    jmp .L2957
.L2956:
    movq $0, %rax
.L2957:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2955
.L2954:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2958
    leaq .Lstr415(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L2959
.L2958:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2960
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
    jmp .L2961
.L2960:
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
.L2961:
.L2959:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2955:
.L2947:
    jmp .L2935
.L2934:
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2962
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
    jmp .L2966
.L2964:
    leaq token(%rip), %rax
    pushq %rax
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    je .L2968
    leaq -32(%rbp), %rax
    pushq %rax
    leaq struct_member_offsets(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    movq -80(%rbp), %rax
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
    movq -80(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2967
.L2968:
.L2965:
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L2966
.L2966:
    movq -80(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L2964
.L2967:
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
    je .L2970
    leaq .Lstr418(%rip), %rax
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
.L2970:
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
    movq -16(%rbp), %rax
    testq %rax, %rax
    jne .L2972
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    jne .L2972
    xorl %eax, %eax
    jmp .L2973
.L2972:
    movl $1, %eax
.L2973:
    cmpq $0, %rax
    je .L2974
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2976
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2977
.L2976:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2978
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2979
.L2978:
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
    je .L2980
    movq $262, %rax
    jmp .L2981
.L2980:
    movq $0, %rax
.L2981:
    popq %rcx
    movq %rax, (%rcx)
.L2979:
.L2977:
    jmp .L2975
.L2974:
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2982
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
    je .L2984
    movq $262, %rax
    jmp .L2985
.L2984:
    movq $0, %rax
.L2985:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L2983
.L2982:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2986
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
    jmp .L2987
.L2986:
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L2988
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
    jmp .L2989
.L2988:
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
.L2989:
.L2987:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L2983:
.L2975:
.L2962:
.L2935:
.L2909:
    jmp .L2902
.L2903:
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
.L3030:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3032
    movq tok(%rip), %rax
    pushq %rax
    movq $47, %rax
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
    movq $37, %rax
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
    cmpq $0, %rax
    je .L3031
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr450(%rip), %rax
    pushq %rax
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
    leaq .Lstr451(%rip), %rax
    pushq %rax
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
    jne .L3036
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
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
    cmpq $0, %rax
    je .L3038
    leaq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3039
.L3038:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3040
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3040
    xorl %eax, %eax
    jmp .L3041
.L3040:
    movl $1, %eax
.L3041:
    cmpq $0, %rax
    je .L3042
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3042:
.L3039:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3044
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3044
    xorl %eax, %eax
    jmp .L3045
.L3044:
    movl $1, %eax
.L3045:
    cmpq $0, %rax
    je .L3046
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3048
    leaq .Lstr452(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3049
.L3048:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3050
    leaq .Lstr453(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3051
.L3050:
    leaq .Lstr454(%rip), %rax
    pushq %rax
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
    je .L3052
    leaq .Lstr455(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3053
.L3052:
    leaq .Lstr456(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3053:
.L3051:
.L3049:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3054
    leaq .Lstr457(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3055
.L3054:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3056
    leaq .Lstr458(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3057
.L3056:
    leaq .Lstr459(%rip), %rax
    pushq %rax
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
    je .L3058
    leaq .Lstr460(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3059
.L3058:
    leaq .Lstr461(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3059:
.L3057:
.L3055:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3060
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3062
    leaq .Lstr462(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3063
.L3062:
    leaq .Lstr463(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3063:
    leaq .Lstr464(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3061
.L3060:
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3064
    leaq .Lstr465(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3065
.L3064:
    leaq .Lstr466(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3065:
    leaq .Lstr467(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3061:
    jmp .L3047
.L3046:
    movq -16(%rbp), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3066
    leaq .Lstr468(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr469(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr470(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr471(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr472(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3067
.L3066:
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3068
    leaq .Lstr473(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3069
.L3068:
    leaq .Lstr474(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr475(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr476(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr477(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3069:
.L3067:
.L3047:
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
    jmp .L3030
.L3031:
    leave
    ret
    .globl additive_expr
additive_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call multiplicative_expr
    movq %r12, %rsp
    popq %r12
.L3106:
    movq tok(%rip), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3108
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3108
    xorl %eax, %eax
    jmp .L3109
.L3108:
    movl $1, %eax
.L3109:
    cmpq $0, %rax
    je .L3107
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    movq expr_type(%rip), %rax
    movq %rax, -32(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call multiplicative_expr
    movq %r12, %rsp
    popq %r12
    movq expr_type(%rip), %rax
    movq %rax, -48(%rbp)
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
    jne .L3110
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3110
    xorl %eax, %eax
    jmp .L3111
.L3110:
    movl $1, %eax
.L3111:
    cmpq $0, %rax
    je .L3112
    leaq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3113
.L3112:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3114
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3114
    xorl %eax, %eax
    jmp .L3115
.L3114:
    movl $1, %eax
.L3115:
    cmpq $0, %rax
    je .L3116
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3116:
.L3113:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3118
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3118
    xorl %eax, %eax
    jmp .L3119
.L3118:
    movl $1, %eax
.L3119:
    cmpq $0, %rax
    je .L3120
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3122
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
    jmp .L3123
.L3122:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3124
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
    jmp .L3125
.L3124:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3126
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
    jmp .L3127
.L3126:
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
.L3127:
.L3125:
.L3123:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3128
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
    jmp .L3129
.L3128:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3130
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
    jmp .L3131
.L3130:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3132
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
    jmp .L3133
.L3132:
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
.L3133:
.L3131:
.L3129:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3134
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3136
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
    jmp .L3137
.L3136:
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
.L3137:
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
    jmp .L3135
.L3134:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3138
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
    jmp .L3139
.L3138:
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
.L3139:
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
.L3135:
    jmp .L3121
.L3120:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3140
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
    jmp .L3141
.L3140:
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
.L3141:
.L3121:
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
    jmp .L3106
.L3107:
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
.L3148:
    movq tok(%rip), %rax
    pushq %rax
    movq $294, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3150
    movq tok(%rip), %rax
    pushq %rax
    movq $295, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3150
    xorl %eax, %eax
    jmp .L3151
.L3150:
    movl $1, %eax
.L3151:
    cmpq $0, %rax
    je .L3149
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr522(%rip), %rax
    pushq %rax
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
    leaq .Lstr523(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr524(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr525(%rip), %rax
    pushq %rax
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
    je .L3152
    leaq .Lstr526(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3153
.L3152:
    leaq .Lstr527(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3153:
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
    jmp .L3148
.L3149:
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
.L3200:
    movq tok(%rip), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3202
    movq tok(%rip), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3202
    xorl %eax, %eax
    jmp .L3203
.L3202:
    movl $1, %eax
.L3203:
    testq %rax, %rax
    jne .L3204
    movq tok(%rip), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3204
    xorl %eax, %eax
    jmp .L3205
.L3204:
    movl $1, %eax
.L3205:
    testq %rax, %rax
    jne .L3206
    movq tok(%rip), %rax
    pushq %rax
    movq $275, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3206
    xorl %eax, %eax
    jmp .L3207
.L3206:
    movl $1, %eax
.L3207:
    cmpq $0, %rax
    je .L3201
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    jne .L3208
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3208
    xorl %eax, %eax
    jmp .L3209
.L3208:
    movl $1, %eax
.L3209:
    cmpq $0, %rax
    je .L3210
    leaq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3211
.L3210:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3212
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3212
    xorl %eax, %eax
    jmp .L3213
.L3212:
    movl $1, %eax
.L3213:
    cmpq $0, %rax
    je .L3214
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3214:
.L3211:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3216
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3216
    xorl %eax, %eax
    jmp .L3217
.L3216:
    movl $1, %eax
.L3217:
    cmpq $0, %rax
    je .L3218
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3220
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
    jmp .L3221
.L3220:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3222
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
    jmp .L3223
.L3222:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3224
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
    jmp .L3225
.L3224:
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
.L3225:
.L3223:
.L3221:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3226
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
    jmp .L3227
.L3226:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3228
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
    jmp .L3229
.L3228:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3230
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
    jmp .L3231
.L3230:
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
.L3231:
.L3229:
.L3227:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3232
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
    jmp .L3233
.L3232:
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
.L3233:
    movq -16(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3234
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
    jmp .L3235
.L3234:
    movq -16(%rbp), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3236
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
    jmp .L3237
.L3236:
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3238
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
    jmp .L3239
.L3238:
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
.L3239:
.L3237:
.L3235:
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
    jmp .L3219
.L3218:
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3240
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
    jmp .L3241
.L3240:
    movq -16(%rbp), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3242
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
    jmp .L3243
.L3242:
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3244
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
    jmp .L3245
.L3244:
    leaq .Lstr572(%rip), %rax
    pushq %rax
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
.L3243:
.L3241:
    leaq .Lstr573(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3219:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3200
.L3201:
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
.L3280:
    movq tok(%rip), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3282
    movq tok(%rip), %rax
    pushq %rax
    movq $277, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3282
    xorl %eax, %eax
    jmp .L3283
.L3282:
    movl $1, %eax
.L3283:
    cmpq $0, %rax
    je .L3281
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    jne .L3284
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3284
    xorl %eax, %eax
    jmp .L3285
.L3284:
    movl $1, %eax
.L3285:
    cmpq $0, %rax
    je .L3286
    leaq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3287
.L3286:
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3288
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3288
    xorl %eax, %eax
    jmp .L3289
.L3288:
    movl $1, %eax
.L3289:
    cmpq $0, %rax
    je .L3290
    leaq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3290:
.L3287:
    movq -64(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3292
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3292
    xorl %eax, %eax
    jmp .L3293
.L3292:
    movl $1, %eax
.L3293:
    cmpq $0, %rax
    je .L3294
    movq -32(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3296
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
    jmp .L3297
.L3296:
    movq -32(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3298
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
    jmp .L3299
.L3298:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3300
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
    jmp .L3301
.L3300:
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
.L3301:
.L3299:
.L3297:
    movq -48(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3302
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
    jmp .L3303
.L3302:
    movq -48(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3304
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
    jmp .L3305
.L3304:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3306
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
    jmp .L3307
.L3306:
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
.L3307:
.L3305:
.L3303:
    movq -64(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3308
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
    jmp .L3309
.L3308:
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
.L3309:
    movq -16(%rbp), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3310
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
    jmp .L3311
.L3310:
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
.L3311:
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
    jmp .L3295
.L3294:
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3312
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
    jmp .L3313
.L3312:
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
.L3313:
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
.L3295:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3280
.L3281:
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
.L3316:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3317
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call equality_expr
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
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3316
.L3317:
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
.L3320:
    movq tok(%rip), %rax
    pushq %rax
    movq $94, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3321
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call bitwise_and_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr622(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr623(%rip), %rax
    pushq %rax
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
    jmp .L3320
.L3321:
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
.L3324:
    movq tok(%rip), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3325
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr627(%rip), %rax
    pushq %rax
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
    leaq .Lstr628(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr629(%rip), %rax
    pushq %rax
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
    jmp .L3324
.L3325:
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
.L3328:
    movq tok(%rip), %rax
    pushq %rax
    movq $278, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3329
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
    leaq .Lstr637(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr638(%rip), %rax
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
    leaq .Lstr640(%rip), %rax
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
    leaq .Lstr642(%rip), %rax
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
    jmp .L3328
.L3329:
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
.L3332:
    movq tok(%rip), %rax
    pushq %rax
    movq $279, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3333
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
    leaq .Lstr652(%rip), %rax
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
    leaq .Lstr654(%rip), %rax
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
    leaq .Lstr656(%rip), %rax
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
    jmp .L3332
.L3333:
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
    je .L3336
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
    leaq .Lstr662(%rip), %rax
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
    leaq .Lstr663(%rip), %rax
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
.L3336:
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
    je .L3374
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3376
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
    jmp .L3377
.L3376:
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
.L3377:
    jmp .L3375
.L3374:
    movq -16(%rbp), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3378
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3378
    xorl %eax, %eax
    jmp .L3379
.L3378:
    movl $1, %eax
.L3379:
    cmpq $0, %rax
    je .L3380
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3382
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3384
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
.L3384:
    jmp .L3383
.L3382:
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3386
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
.L3386:
.L3383:
    jmp .L3381
.L3380:
    movq -16(%rbp), %rax
    pushq %rax
    movq $299, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3388
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3390
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
    jmp .L3391
.L3390:
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
.L3391:
    jmp .L3389
.L3388:
    movq -16(%rbp), %rax
    pushq %rax
    movq $300, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3392
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3394
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
    jmp .L3395
.L3394:
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
.L3395:
    jmp .L3393
.L3392:
    movq -16(%rbp), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3396
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3398
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
    jmp .L3399
.L3398:
    leaq .Lstr706(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3399:
    jmp .L3397
.L3396:
    movq -16(%rbp), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3400
    movq -16(%rbp), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3400
    xorl %eax, %eax
    jmp .L3401
.L3400:
    movl $1, %eax
.L3401:
    cmpq $0, %rax
    je .L3402
    leaq .Lstr707(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr708(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
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
    movq -16(%rbp), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3404
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3406
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
    jmp .L3407
.L3406:
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
.L3407:
    jmp .L3405
.L3404:
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3408
    leaq .Lstr712(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3409
.L3408:
    leaq .Lstr713(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3409:
.L3405:
.L3402:
.L3397:
.L3393:
.L3389:
.L3381:
.L3375:
    leave
    ret
    .globl assignment_expr
assignment_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $752, %rsp
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
    je .L3602
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3602
    movl $1, %eax
    jmp .L3603
.L3602:
    xorl %eax, %eax
.L3603:
    cmpq $0, %rax
    je .L3604
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L3604:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3606
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
.L3608:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3610
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3610
    xorl %eax, %eax
    jmp .L3611
.L3610:
    movl $1, %eax
.L3611:
    testq %rax, %rax
    jne .L3612
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3612
    xorl %eax, %eax
    jmp .L3613
.L3612:
    movl $1, %eax
.L3613:
    testq %rax, %rax
    jne .L3614
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3614
    xorl %eax, %eax
    jmp .L3615
.L3614:
    movl $1, %eax
.L3615:
    cmpq $0, %rax
    je .L3609
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3616
    movq $1, %rax
    movq %rax, -640(%rbp)
.L3618:
    movq -640(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3620
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3620
    movl $1, %eax
    jmp .L3621
.L3620:
    xorl %eax, %eax
.L3621:
    cmpq $0, %rax
    je .L3619
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
    je .L3622
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3623
.L3622:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3624
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L3624:
.L3623:
    jmp .L3618
.L3619:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L3617
.L3616:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3626
    movq $1, %rax
    movq %rax, -640(%rbp)
.L3628:
    movq -640(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3630
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3630
    movl $1, %eax
    jmp .L3631
.L3630:
    xorl %eax, %eax
.L3631:
    cmpq $0, %rax
    je .L3629
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
    je .L3632
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L3633
.L3632:
    movq tok(%rip), %rax
    pushq %rax
    movq $93, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3634
    leaq -640(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L3634:
.L3633:
    jmp .L3628
.L3629:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L3627
.L3626:
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
.L3627:
.L3617:
    jmp .L3608
.L3609:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3636
    leaq -624(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3637
.L3636:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3638
    leaq -624(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3639
.L3638:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3640
    leaq -624(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3641
.L3640:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3642
    leaq -624(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3643
.L3642:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3644
    leaq -624(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3645
.L3644:
    movq tok(%rip), %rax
    pushq %rax
    movq $296, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3646
    leaq -624(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3647
.L3646:
    movq tok(%rip), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3648
    leaq -624(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3649
.L3648:
    movq tok(%rip), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3650
    leaq -624(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3651
.L3650:
    movq tok(%rip), %rax
    pushq %rax
    movq $299, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3652
    leaq -624(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3653
.L3652:
    movq tok(%rip), %rax
    pushq %rax
    movq $300, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3654
    leaq -624(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3655
.L3654:
    movq tok(%rip), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3656
    leaq -624(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3657
.L3656:
    movq tok(%rip), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3658
    leaq -624(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3659
.L3658:
    movq tok(%rip), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3660
    leaq -624(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3661
.L3660:
    leaq -624(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3661:
.L3659:
.L3657:
.L3655:
.L3653:
.L3651:
.L3649:
.L3647:
.L3645:
.L3643:
.L3641:
.L3639:
.L3637:
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
    je .L3662
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
    leaq .Lstr830(%rip), %rax
    pushq %rax
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
    leaq .Lstr831(%rip), %rax
    pushq %rax
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
    je .L3664
    leaq .Lstr832(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3665
.L3664:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3666
    leaq .Lstr833(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3667
.L3666:
    leaq .Lstr834(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3667:
.L3665:
    leave
    ret
    jmp .L3663
.L3662:
    movq -624(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3668
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
    leaq .Lstr835(%rip), %rax
    pushq %rax
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
    je .L3670
    leaq .Lstr836(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3671
.L3670:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3672
    leaq .Lstr837(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3673
.L3672:
    leaq .Lstr838(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3673:
.L3671:
    leaq .Lstr839(%rip), %rax
    pushq %rax
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
    leaq .Lstr840(%rip), %rax
    pushq %rax
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
    je .L3674
    leaq .Lstr841(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr842(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr843(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3675
.L3674:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3676
    leaq .Lstr844(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr845(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr846(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3677
.L3676:
    leaq .Lstr847(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr848(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr849(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3677:
.L3675:
    leave
    ret
    jmp .L3669
.L3668:
    movq -624(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3678
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
    leaq .Lstr850(%rip), %rax
    pushq %rax
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
    je .L3680
    leaq .Lstr851(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3681
.L3680:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3682
    leaq .Lstr852(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3683
.L3682:
    leaq .Lstr853(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3683:
.L3681:
    leaq .Lstr854(%rip), %rax
    pushq %rax
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
    leaq .Lstr855(%rip), %rax
    pushq %rax
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
    je .L3684
    leaq .Lstr856(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr857(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr858(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr859(%rip), %rax
    pushq %rax
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3686
    leaq .Lstr860(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr861(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr862(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr863(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3687
.L3686:
    leaq .Lstr864(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr865(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr866(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr867(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3687:
.L3685:
    leave
    ret
    jmp .L3679
.L3678:
    movq -624(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3688
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
    leaq .Lstr868(%rip), %rax
    pushq %rax
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
    je .L3690
    leaq .Lstr869(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3691
.L3690:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3692
    leaq .Lstr870(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3693
.L3692:
    leaq .Lstr871(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3693:
.L3691:
    leaq .Lstr872(%rip), %rax
    pushq %rax
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
    leaq .Lstr873(%rip), %rax
    pushq %rax
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
    leaq .Lstr874(%rip), %rax
    pushq %rax
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
    je .L3694
    leaq .Lstr875(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3695
.L3694:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3696
    leaq .Lstr876(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3697
.L3696:
    leaq .Lstr877(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3697:
.L3695:
    leave
    ret
    jmp .L3689
.L3688:
    movq -624(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3698
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3700
    movq $271, %rax
    jmp .L3701
.L3700:
    movq $272, %rax
.L3701:
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
    je .L3702
    leaq .Lstr878(%rip), %rax
    pushq %rax
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
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3704
    leaq .Lstr879(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3705
.L3704:
    leaq .Lstr880(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3705:
.L3703:
    movq -640(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3706
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3708
    leaq .Lstr881(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3709
.L3708:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3710
    leaq .Lstr882(%rip), %rax
    pushq %rax
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
    leaq .Lstr883(%rip), %rax
    pushq %rax
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
.L3709:
    jmp .L3707
.L3706:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3712
    leaq .Lstr884(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3713
.L3712:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3714
    leaq .Lstr885(%rip), %rax
    pushq %rax
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
    leaq .Lstr886(%rip), %rax
    pushq %rax
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
.L3713:
.L3707:
    leaq .Lstr887(%rip), %rax
    pushq %rax
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
    jmp .L3699
.L3698:
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
.L3699:
.L3689:
.L3679:
.L3669:
.L3663:
    jmp .L3607
.L3606:
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
    movq no_postfix_deref(%rip), %rax
    movq %rax, -688(%rbp)
    movq emit_enabled(%rip), %rax
    movq %rax, -704(%rbp)
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
    movq -704(%rbp), %rax
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
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq -688(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    movq %rax, -720(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3716
    leaq -720(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3717
.L3716:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3718
    leaq -720(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3719
.L3718:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3720
    leaq -720(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3721
.L3720:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3722
    leaq -720(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3723
.L3722:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3724
    leaq -720(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3725
.L3724:
    movq tok(%rip), %rax
    pushq %rax
    movq $296, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3726
    leaq -720(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3727
.L3726:
    movq tok(%rip), %rax
    pushq %rax
    movq $297, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3728
    leaq -720(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3729
.L3728:
    movq tok(%rip), %rax
    pushq %rax
    movq $298, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3730
    leaq -720(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3731
.L3730:
    movq tok(%rip), %rax
    pushq %rax
    movq $299, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3732
    leaq -720(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3733
.L3732:
    movq tok(%rip), %rax
    pushq %rax
    movq $300, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3734
    leaq -720(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3735
.L3734:
    movq tok(%rip), %rax
    pushq %rax
    movq $301, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3736
    leaq -720(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3737
.L3736:
    movq tok(%rip), %rax
    pushq %rax
    movq $302, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3738
    leaq -720(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L3739
.L3738:
    movq tok(%rip), %rax
    pushq %rax
    movq $303, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3740
    leaq -720(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3740:
.L3739:
.L3737:
.L3735:
.L3733:
.L3731:
.L3729:
.L3727:
.L3725:
.L3723:
.L3721:
.L3719:
.L3717:
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
    movq -720(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3742
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
    leaq .Lstr888(%rip), %rax
    pushq %rax
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
    movq %rax, -736(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
    leaq .Lstr889(%rip), %rax
    pushq %rax
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
    movq -736(%rbp), %rax
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
    je .L3744
    leaq .Lstr890(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3745
.L3744:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3746
    leaq .Lstr891(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3747
.L3746:
    leaq .Lstr892(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3747:
.L3745:
    leave
    ret
    jmp .L3743
.L3742:
    movq -720(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3748
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr893(%rip), %rax
    pushq %rax
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
    je .L3750
    leaq .Lstr894(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3751
.L3750:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3752
    leaq .Lstr895(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3753
.L3752:
    leaq .Lstr896(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3753:
.L3751:
    leaq .Lstr897(%rip), %rax
    pushq %rax
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
    leaq .Lstr898(%rip), %rax
    pushq %rax
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
    je .L3754
    leaq .Lstr899(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr900(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr901(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3755
.L3754:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3756
    leaq .Lstr902(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr903(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr904(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3757
.L3756:
    leaq .Lstr905(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr906(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr907(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3757:
.L3755:
    leave
    ret
    jmp .L3749
.L3748:
    movq -720(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3758
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr908(%rip), %rax
    pushq %rax
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
    je .L3760
    leaq .Lstr909(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3761
.L3760:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3762
    leaq .Lstr910(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3763
.L3762:
    leaq .Lstr911(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3763:
.L3761:
    leaq .Lstr912(%rip), %rax
    pushq %rax
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
    leaq .Lstr913(%rip), %rax
    pushq %rax
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
    je .L3764
    leaq .Lstr914(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr915(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr916(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr917(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3765
.L3764:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3766
    leaq .Lstr918(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr919(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr920(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr921(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3767
.L3766:
    leaq .Lstr922(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr923(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr924(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr925(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3767:
.L3765:
    leave
    ret
    jmp .L3759
.L3758:
    movq -720(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3768
    movq $0, %rax
    movq %rax, -736(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    leaq .Lstr926(%rip), %rax
    pushq %rax
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
    je .L3770
    leaq .Lstr927(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3771
.L3770:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3772
    leaq .Lstr928(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3773
.L3772:
    leaq .Lstr929(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3773:
.L3771:
    leaq .Lstr930(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq -736(%rbp), %rax
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
    leaq .Lstr931(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    movq -736(%rbp), %rax
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
    leaq .Lstr932(%rip), %rax
    pushq %rax
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
    je .L3774
    leaq .Lstr933(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3775
.L3774:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3776
    leaq .Lstr934(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    jmp .L3777
.L3776:
    leaq .Lstr935(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
.L3777:
.L3775:
    leave
    ret
    jmp .L3769
.L3768:
    movq -720(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3778
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
    je .L3780
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
    jmp .L3781
.L3780:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3782
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
    jmp .L3783
.L3782:
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
.L3783:
.L3781:
    movq -720(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3784
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3786
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
    jmp .L3787
.L3786:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3788
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
    jmp .L3789
.L3788:
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
.L3789:
.L3787:
    jmp .L3785
.L3784:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3790
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
    jmp .L3791
.L3790:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3792
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
    jmp .L3793
.L3792:
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
.L3793:
.L3791:
.L3785:
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
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leave
    ret
    jmp .L3779
.L3778:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call conditional_expr
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L3779:
.L3769:
.L3759:
.L3749:
.L3743:
.L3607:
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
    je .L3804
    leaq .Lstr952(%rip), %rax
    leave
    ret
.L3804:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3806
    leaq .Lstr953(%rip), %rax
    leave
    ret
.L3806:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3808
    leaq .Lstr954(%rip), %rax
    leave
    ret
.L3808:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3810
    leaq .Lstr955(%rip), %rax
    leave
    ret
.L3810:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3812
    leaq .Lstr956(%rip), %rax
    leave
    ret
.L3812:
    leaq .Lstr957(%rip), %rax
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
    je .L3822
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr962(%rip), %rax
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
    jmp .L3823
.L3822:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3824
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr963(%rip), %rax
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
    jmp .L3825
.L3824:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3826
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr964(%rip), %rax
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
    jmp .L3827
.L3826:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3828
    movq -32(%rbp), %rax
    pushq %rax
    leaq .Lstr965(%rip), %rax
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
    jmp .L3829
.L3828:
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
.L3829:
.L3827:
.L3825:
.L3823:
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
    je .L3866
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3868
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr984(%rip), %rax
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
    jmp .L3869
.L3868:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3870
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr985(%rip), %rax
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
    jmp .L3871
.L3870:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3872
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr986(%rip), %rax
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
    jmp .L3873
.L3872:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3874
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr987(%rip), %rax
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
    jmp .L3875
.L3874:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3876
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr988(%rip), %rax
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
    jmp .L3877
.L3876:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3878
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr989(%rip), %rax
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
    jmp .L3879
.L3878:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3880
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr990(%rip), %rax
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
    jmp .L3881
.L3880:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3882
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr991(%rip), %rax
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
    jmp .L3883
.L3882:
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr992(%rip), %rax
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
.L3883:
.L3881:
.L3879:
.L3877:
.L3875:
.L3873:
.L3871:
.L3869:
    jmp .L3867
.L3866:
    movq -32(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3884
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3886
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr993(%rip), %rax
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
    jmp .L3887
.L3886:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3888
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr994(%rip), %rax
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
    jmp .L3889
.L3888:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3890
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr995(%rip), %rax
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
    jmp .L3891
.L3890:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3892
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr996(%rip), %rax
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
    jmp .L3893
.L3892:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3894
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr997(%rip), %rax
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
    jmp .L3895
.L3894:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3896
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr998(%rip), %rax
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
    jmp .L3897
.L3896:
    movq -16(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3898
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr999(%rip), %rax
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
    jmp .L3899
.L3898:
    movq -16(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3900
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1000(%rip), %rax
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
    jmp .L3901
.L3900:
    movq -48(%rbp), %rax
    pushq %rax
    leaq .Lstr1001(%rip), %rax
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
.L3901:
.L3899:
.L3897:
.L3895:
.L3893:
.L3891:
.L3889:
.L3887:
    jmp .L3885
.L3884:
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
.L3885:
.L3867:
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
    je .L3910
    movq $0, %rax
    leave
    ret
.L3910:
    movq -16(%rbp), %rax
    pushq %rax
    movq $98, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3912
    movq $1, %rax
    leave
    ret
.L3912:
    movq -16(%rbp), %rax
    pushq %rax
    movq $99, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3914
    movq $2, %rax
    leave
    ret
.L3914:
    movq -16(%rbp), %rax
    pushq %rax
    movq $100, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3916
    movq $3, %rax
    leave
    ret
.L3916:
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
.L3936:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L3937
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3938
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
    je .L3940
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
    jmp .L3941
.L3940:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L3942
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1005(%rip), %rax
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
    jmp .L3943
.L3942:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3946
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L3946
    movl $1, %eax
    jmp .L3947
.L3946:
    xorl %eax, %eax
.L3947:
    cmpq $0, %rax
    je .L3948
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
    jne .L3950
    movq -32(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3950
    xorl %eax, %eax
    jmp .L3951
.L3950:
    movl $1, %eax
.L3951:
    cmpq $0, %rax
    je .L3952
    leaq .Lstr1006(%rip), %rax
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
.L3952:
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
    jmp .L3949
.L3948:
    leaq .Lstr1007(%rip), %rax
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
.L3949:
.L3943:
.L3941:
    jmp .L3939
.L3938:
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
.L3939:
    jmp .L3936
.L3937:
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
    je .L3984
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
.L3986:
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
    je .L3988
    leaq token(%rip), %rax
    pushq %rax
    movq -384(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L3988
    movl $1, %eax
    jmp .L3989
.L3988:
    xorl %eax, %eax
.L3989:
    cmpq $0, %rax
    je .L3987
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
    jmp .L3986
.L3987:
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
    jne .L3990
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3990
    xorl %eax, %eax
    jmp .L3991
.L3990:
    movl $1, %eax
.L3991:
    testq %rax, %rax
    jne .L3992
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L3992
    xorl %eax, %eax
    jmp .L3993
.L3992:
    movl $1, %eax
.L3993:
    cmpq $0, %rax
    je .L3994
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
    je .L3996
    leaq .Lstr1015(%rip), %rax
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
.L3996:
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
    je .L3998
    leaq -416(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L3998:
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
    je .L4000
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L4002
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1016(%rip), %rax
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
    jmp .L4003
.L4002:
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1017(%rip), %rax
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
.L4003:
    jmp .L4001
.L4000:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L4004
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1018(%rip), %rax
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
    jmp .L4005
.L4004:
    leaq asm_mem(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1019(%rip), %rax
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
.L4005:
.L4001:
    leave
    ret
.L3994:
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
.L3984:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq %r12, %rsp
    popq %r12
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L4006
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
    je .L4006
    movl $1, %eax
    jmp .L4007
.L4006:
    xorl %eax, %eax
.L4007:
    cmpq $0, %rax
    je .L4008
    leaq .Lstr1020(%rip), %rax
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
.L4008:
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
    je .L4010
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
.L4010:
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4012
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
.L4012:
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
    je .L4016
    leave
    ret
.L4016:
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
    je .L4082
    leaq .Lstr1033(%rip), %rax
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
.L4082:
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4084:
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L4086
    movq -64(%rbp), %rax
    pushq %rax
    movq $15, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4086
    movl $1, %eax
    jmp .L4087
.L4086:
    xorl %eax, %eax
.L4087:
    cmpq $0, %rax
    je .L4085
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
    jmp .L4084
.L4085:
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
    je .L4088
    leaq .Lstr1034(%rip), %rax
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
.L4088:
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
    je .L4090
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
    je .L4092
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
.L4092:
    movq -96(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4094
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
    jne .L4094
    xorl %eax, %eax
    jmp .L4095
.L4094:
    movl $1, %eax
.L4095:
    testq %rax, %rax
    jne .L4096
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
    jne .L4096
    xorl %eax, %eax
    jmp .L4097
.L4096:
    movl $1, %eax
.L4097:
    cmpq $0, %rax
    je .L4098
    leaq .Lstr1035(%rip), %rax
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
.L4098:
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
    jne .L4100
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
    jne .L4100
    xorl %eax, %eax
    jmp .L4101
.L4100:
    movl $1, %eax
.L4101:
    testq %rax, %rax
    jne .L4102
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
    jne .L4102
    xorl %eax, %eax
    jmp .L4103
.L4102:
    movl $1, %eax
.L4103:
    testq %rax, %rax
    jne .L4104
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
    jne .L4104
    xorl %eax, %eax
    jmp .L4105
.L4104:
    movl $1, %eax
.L4105:
    testq %rax, %rax
    jne .L4106
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
    jne .L4106
    xorl %eax, %eax
    jmp .L4107
.L4106:
    movl $1, %eax
.L4107:
    cmpq $0, %rax
    je .L4108
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
    jmp .L4109
.L4108:
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
    je .L4110
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
    jmp .L4111
.L4110:
    leaq .Lstr1036(%rip), %rax
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
.L4111:
.L4109:
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
    je .L4112
    leaq .Lstr1037(%rip), %rax
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
.L4112:
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
    jmp .L4091
.L4090:
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
    jne .L4114
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
    jne .L4114
    xorl %eax, %eax
    jmp .L4115
.L4114:
    movl $1, %eax
.L4115:
    cmpq $0, %rax
    je .L4116
    leaq .Lstr1038(%rip), %rax
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
.L4116:
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
    jne .L4118
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
    jne .L4118
    xorl %eax, %eax
    jmp .L4119
.L4118:
    movl $1, %eax
.L4119:
    testq %rax, %rax
    jne .L4120
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
    jne .L4120
    xorl %eax, %eax
    jmp .L4121
.L4120:
    movl $1, %eax
.L4121:
    testq %rax, %rax
    jne .L4122
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
    jne .L4122
    xorl %eax, %eax
    jmp .L4123
.L4122:
    movl $1, %eax
.L4123:
    testq %rax, %rax
    jne .L4124
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
    jne .L4124
    xorl %eax, %eax
    jmp .L4125
.L4124:
    movl $1, %eax
.L4125:
    testq %rax, %rax
    je .L4126
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
    je .L4126
    movl $1, %eax
    jmp .L4127
.L4126:
    xorl %eax, %eax
.L4127:
    cmpq $0, %rax
    je .L4128
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
    jmp .L4129
.L4128:
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
    je .L4130
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
    je .L4130
    movl $1, %eax
    jmp .L4131
.L4130:
    xorl %eax, %eax
.L4131:
    cmpq $0, %rax
    je .L4132
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
    jmp .L4133
.L4132:
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
    je .L4134
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
    je .L4134
    movl $1, %eax
    jmp .L4135
.L4134:
    xorl %eax, %eax
.L4135:
    testq %rax, %rax
    je .L4136
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
    je .L4136
    movl $1, %eax
    jmp .L4137
.L4136:
    xorl %eax, %eax
.L4137:
    cmpq $0, %rax
    je .L4138
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
    je .L4140
    leaq .Lstr1040(%rip), %rax
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
.L4140:
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4142
    movq -80(%rbp), %rax
    pushq %rax
    movq $255, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4142
    xorl %eax, %eax
    jmp .L4143
.L4142:
    movl $1, %eax
.L4143:
    cmpq $0, %rax
    je .L4144
    leaq .Lstr1041(%rip), %rax
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
.L4144:
    leaq asm_text(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $64, %rax
    addq %rcx, %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr1042(%rip), %rax
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
    jmp .L4139
.L4138:
    leaq .Lstr1043(%rip), %rax
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
.L4139:
.L4133:
.L4129:
.L4091:
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
.L4166:
    movq -96(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4167
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
    je .L4168
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
    je .L4170
    movq -80(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4172
    leaq .Lstr1049(%rip), %rax
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
.L4172:
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
    jmp .L4171
.L4170:
    leaq asm_is_out(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4174
    leaq -32(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4176
    leaq .Lstr1050(%rip), %rax
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
.L4176:
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
    jmp .L4175
.L4174:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L4178
    leaq .Lstr1051(%rip), %rax
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
.L4178:
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
.L4175:
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
.L4171:
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
    jmp .L4169
.L4168:
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
    je .L4180
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
    jmp .L4181
.L4180:
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
    je .L4182
    movq -80(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4184
    leaq .Lstr1052(%rip), %rax
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
.L4184:
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
    leaq .Lstr1053(%rip), %rax
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
.L4182:
.L4181:
.L4169:
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4166
.L4167:
    leave
    ret
    .globl asm_emit_all
asm_emit_all:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
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
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4212:
    movq -16(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4213
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
    je .L4214
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
    je .L4214
    movl $1, %eax
    jmp .L4215
.L4214:
    xorl %eax, %eax
.L4215:
    testq %rax, %rax
    je .L4216
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
    je .L4216
    movl $1, %eax
    jmp .L4217
.L4216:
    xorl %eax, %eax
.L4217:
    cmpq $0, %rax
    je .L4218
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
    leaq .Lstr1067(%rip), %rax
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
.L4218:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4212
.L4213:
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
.L4220:
    movq -16(%rbp), %rax
    pushq %rax
    movq asm_nops(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4221
    leaq asm_is_out(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    testq %rax, %rax
    je .L4222
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
    je .L4222
    movl $1, %eax
    jmp .L4223
.L4222:
    xorl %eax, %eax
.L4223:
    cmpq $0, %rax
    je .L4224
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
    je .L4226
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
    je .L4228
    leaq .Lstr1068(%rip), %rax
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
    jmp .L4229
.L4228:
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
    je .L4230
    leaq .Lstr1069(%rip), %rax
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
    jmp .L4231
.L4230:
    leaq .Lstr1070(%rip), %rax
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
.L4231:
.L4229:
    jmp .L4227
.L4226:
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
    leaq .Lstr1071(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    leaq .Lstr1072(%rip), %rax
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
    je .L4232
    leaq .Lstr1073(%rip), %rax
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
    jmp .L4233
.L4232:
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
    je .L4234
    leaq .Lstr1074(%rip), %rax
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
    jmp .L4235
.L4234:
    leaq .Lstr1075(%rip), %rax
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
.L4235:
.L4233:
.L4227:
.L4224:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4220
.L4221:
    movq asm_nslots(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4236
    leaq .Lstr1076(%rip), %rax
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
.L4236:
    leaq .Lstr1077(%rip), %rax
    pushq %rax
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
.L4288:
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4289
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4288
.L4289:
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
    je .L4290
    leaq .Lstr1083(%rip), %rax
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
.L4290:
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
    je .L4292
    leaq .Lstr1084(%rip), %rax
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
.L4292:
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
    je .L4294
    movq emit_enabled(%rip), %rax
    cmpq $0, %rax
    je .L4296
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
.L4296:
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
.L4294:
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
    je .L4298
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4298
    movl $1, %eax
    jmp .L4299
.L4298:
    xorl %eax, %eax
.L4299:
    cmpq $0, %rax
    je .L4300
    jmp .L4303
.L4302:
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
    je .L4305
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4303
.L4305:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4307
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4307
    xorl %eax, %eax
    jmp .L4308
.L4307:
    movl $1, %eax
.L4308:
    cmpq $0, %rax
    je .L4309
    jmp .L4304
.L4309:
    leaq .Lstr1085(%rip), %rax
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
.L4303:
    jmp .L4302
.L4304:
.L4300:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4311
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
    je .L4313
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4313
    movl $1, %eax
    jmp .L4314
.L4313:
    xorl %eax, %eax
.L4314:
    cmpq $0, %rax
    je .L4315
    jmp .L4318
.L4317:
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
    je .L4320
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4318
.L4320:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4322
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4322
    xorl %eax, %eax
    jmp .L4323
.L4322:
    movl $1, %eax
.L4323:
    cmpq $0, %rax
    je .L4324
    jmp .L4319
.L4324:
    leaq .Lstr1086(%rip), %rax
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
.L4318:
    jmp .L4317
.L4319:
.L4315:
.L4311:
    movq tok(%rip), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4326
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4328:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4330
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4330
    movl $1, %eax
    jmp .L4331
.L4330:
    xorl %eax, %eax
.L4331:
    cmpq $0, %rax
    je .L4329
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4332
    leaq .Lstr1087(%rip), %rax
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
    je .L4334
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4334:
    jmp .L4328
.L4329:
.L4326:
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
    je .L4336
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call asm_emit_all
    movq %r12, %rsp
    popq %r12
.L4336:
    leave
    ret
    .globl statement
statement:
    pushq %rbp
    movq %rsp, %rbp
    subq $1168, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $304, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4700
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_asm_block
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L4700:
    movq tok(%rip), %rax
    pushq %rax
    movq $258, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4702
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
    leaq .Lstr1155(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1156(%rip), %rax
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
    je .L4704
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1157(%rip), %rax
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
    jmp .L4705
.L4704:
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
.L4705:
    leave
    ret
.L4702:
    movq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4706
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
    jne .L4708
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4708
    xorl %eax, %eax
    jmp .L4709
.L4708:
    movl $1, %eax
.L4709:
    cmpq $0, %rax
    je .L4710
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4710:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4712
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1158(%rip), %rax
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
    jne .L4714
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1159(%rip), %rax
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
    jne .L4714
    xorl %eax, %eax
    jmp .L4715
.L4714:
    movl $1, %eax
.L4715:
    testq %rax, %rax
    je .L4712
    movl $1, %eax
    jmp .L4713
.L4712:
    xorl %eax, %eax
.L4713:
    cmpq $0, %rax
    je .L4716
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1160(%rip), %rax
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
.L4718:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4720
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1161(%rip), %rax
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
    jne .L4722
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1162(%rip), %rax
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
    jne .L4722
    xorl %eax, %eax
    jmp .L4723
.L4722:
    movl $1, %eax
.L4723:
    testq %rax, %rax
    je .L4720
    movl $1, %eax
    jmp .L4721
.L4720:
    xorl %eax, %eax
.L4721:
    cmpq $0, %rax
    je .L4719
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4718
.L4719:
.L4716:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4724
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4724
    xorl %eax, %eax
    jmp .L4725
.L4724:
    movl $1, %eax
.L4725:
    testq %rax, %rax
    jne .L4726
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4726
    xorl %eax, %eax
    jmp .L4727
.L4726:
    movl $1, %eax
.L4727:
    testq %rax, %rax
    jne .L4728
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4728
    xorl %eax, %eax
    jmp .L4729
.L4728:
    movl $1, %eax
.L4729:
    cmpq $0, %rax
    je .L4730
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4732:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4734
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1163(%rip), %rax
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
    jne .L4736
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1164(%rip), %rax
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
    jne .L4736
    xorl %eax, %eax
    jmp .L4737
.L4736:
    movl $1, %eax
.L4737:
    testq %rax, %rax
    je .L4734
    movl $1, %eax
    jmp .L4735
.L4734:
    xorl %eax, %eax
.L4735:
    cmpq $0, %rax
    je .L4733
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4732
.L4733:
.L4738:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4740
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4740
    movl $1, %eax
    jmp .L4741
.L4740:
    xorl %eax, %eax
.L4741:
    cmpq $0, %rax
    je .L4739
    movq $0, %rax
    movq %rax, -32(%rbp)
.L4742:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4743
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
    jmp .L4742
.L4743:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4744
    leaq .Lstr1165(%rip), %rax
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
.L4744:
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
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4746
    leaq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4746:
    leaq -64(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    leaq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L4748
    movq $8, %rax
    jmp .L4749
.L4748:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4750
    movq $1, %rax
    jmp .L4751
.L4750:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4752
    movq $4, %rax
    jmp .L4753
.L4752:
    movq $8, %rax
.L4753:
.L4751:
.L4749:
    movq %rax, -96(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4754
    movq $0, %rax
    jmp .L4755
.L4754:
    movq -16(%rbp), %rax
.L4755:
    movq %rax, -112(%rbp)
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L4756
    movq -16(%rbp), %rax
    jmp .L4757
.L4756:
    movq $0, %rax
.L4757:
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $0, %rax
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
    movq -112(%rbp), %rax
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
    je .L4758
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
    movq %rax, -128(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L4760
    movq -144(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4762
    leaq .Lstr1166(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
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
    jmp .L4763
.L4762:
    leaq .Lstr1167(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
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
.L4763:
    jmp .L4761
.L4760:
    movq -144(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4764
    leaq .Lstr1168(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
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
    jmp .L4765
.L4764:
    leaq .Lstr1169(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
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
.L4765:
.L4761:
.L4758:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4766
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4767
.L4766:
    jmp .L4739
.L4767:
    jmp .L4738
.L4739:
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
    jmp .L4731
.L4730:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4768
.L4770:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4772
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4772
    movl $1, %eax
    jmp .L4773
.L4772:
    xorl %eax, %eax
.L4773:
    cmpq $0, %rax
    je .L4771
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
    je .L4774
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4775
.L4774:
    jmp .L4771
.L4775:
    jmp .L4770
.L4771:
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
    jmp .L4769
.L4768:
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
.L4769:
.L4731:
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
    je .L4776
.L4778:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4780
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4780
    movl $1, %eax
    jmp .L4781
.L4780:
    xorl %eax, %eax
.L4781:
    cmpq $0, %rax
    je .L4779
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4778
.L4779:
.L4776:
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
    je .L4782
.L4784:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4786
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4786
    movl $1, %eax
    jmp .L4787
.L4786:
    xorl %eax, %eax
.L4787:
    cmpq $0, %rax
    je .L4785
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4784
.L4785:
.L4782:
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
    je .L4788
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4789
.L4788:
    movq $0, %rax
.L4789:
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
    je .L4790
    movq -672(%rbp), %rax
    jmp .L4791
.L4790:
    movq -688(%rbp), %rax
.L4791:
    movq %rax, -720(%rbp)
    leaq .Lstr1170(%rip), %rax
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
    je .L4792
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
    leaq -1120(%rbp), %rax
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
    movq %rax, -1136(%rbp)
.L4794:
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4795
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4796
    leaq -1136(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4797
.L4796:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4798
    movq -1136(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4800
    jmp .L4795
.L4800:
    leaq -1136(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L4798:
.L4797:
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
    je .L4802
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4803
.L4802:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4804
    movq -1136(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4804
    movl $1, %eax
    jmp .L4805
.L4804:
    xorl %eax, %eax
.L4805:
    cmpq $0, %rax
    je .L4806
    jmp .L4795
    jmp .L4807
.L4806:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4808
    jmp .L4795
.L4808:
.L4807:
.L4803:
    jmp .L4794
.L4795:
    leaq -1120(%rbp), %rax
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
    leaq .Lstr1171(%rip), %rax
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
.L4792:
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
    je .L4810
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
    leaq -1120(%rbp), %rax
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
    movq %rax, -1136(%rbp)
    movq $0, %rax
    movq %rax, -1152(%rbp)
.L4812:
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4814
    movq -1136(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4814
    movl $1, %eax
    jmp .L4815
.L4814:
    xorl %eax, %eax
.L4815:
    cmpq $0, %rax
    je .L4813
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4816
    leaq -1152(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4817
.L4816:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4818
    leaq -1152(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    jmp .L4819
.L4818:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4820
    movq -1152(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4820
    movl $1, %eax
    jmp .L4821
.L4820:
    xorl %eax, %eax
.L4821:
    cmpq $0, %rax
    je .L4822
    leaq -1136(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4813
.L4822:
.L4819:
.L4817:
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
    je .L4824
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4825
.L4824:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4826
    movq -1152(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4826
    movl $1, %eax
    jmp .L4827
.L4826:
    xorl %eax, %eax
.L4827:
    cmpq $0, %rax
    je .L4828
    jmp .L4813
.L4828:
.L4825:
    jmp .L4812
.L4813:
    leaq -1120(%rbp), %rax
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
    leaq .Lstr1172(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1173(%rip), %rax
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
    jmp .L4811
.L4810:
    leaq .Lstr1174(%rip), %rax
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
.L4811:
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
.L4706:
    movq tok(%rip), %rax
    pushq %rax
    movq $292, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4830
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
    je .L4832
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
.L4832:
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
    leaq .Lstr1176(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1177(%rip), %rax
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
.L4830:
    movq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4834
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
    leaq .Lstr1178(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1179(%rip), %rax
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
    leaq .Lstr1180(%rip), %rax
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
.L4834:
    movq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4836
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
    leaq .Lstr1182(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1183(%rip), %rax
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
.L4838:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4840
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4840
    movl $1, %eax
    jmp .L4841
.L4840:
    xorl %eax, %eax
.L4841:
    cmpq $0, %rax
    je .L4839
    movq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4842
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
    jmp .L4843
.L4842:
    movq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4844
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
    jmp .L4845
.L4844:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
.L4845:
.L4843:
    jmp .L4838
.L4839:
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
    leaq .Lstr1184(%rip), %rax
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
    leaq .Lstr1185(%rip), %rax
    pushq %rax
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
    jmp .L4848
.L4846:
    leaq .Lstr1186(%rip), %rax
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
    leaq .Lstr1187(%rip), %rax
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
.L4847:
    leaq -128(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4848
.L4848:
    movq -128(%rbp), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L4846
.L4849:
    movq switch_has_default(%rip), %rax
    cmpq $0, %rax
    je .L4850
    leaq .Lstr1188(%rip), %rax
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
.L4850:
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
    leaq .Lstr1189(%rip), %rax
    pushq %rax
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
.L4836:
    movq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4852
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
    je .L4854
    leaq .Lstr1190(%rip), %rax
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
.L4854:
    leave
    ret
.L4852:
    movq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4856
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
    je .L4858
    leaq .Lstr1191(%rip), %rax
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
.L4858:
    leave
    ret
.L4856:
    movq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4860
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
    je .L4862
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
.L4862:
    leaq .Lstr1193(%rip), %rax
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
.L4860:
    movq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4864
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
    je .L4866
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq %r12, %rsp
    popq %r12
.L4866:
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
    leaq .Lstr1194(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1195(%rip), %rax
    pushq %rax
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
.L4864:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4868
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
.L4870:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4872
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4872
    movl $1, %eax
    jmp .L4873
.L4872:
    xorl %eax, %eax
.L4873:
    cmpq $0, %rax
    je .L4871
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4874
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1196(%rip), %rax
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
    jne .L4876
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1197(%rip), %rax
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
    jne .L4876
    xorl %eax, %eax
    jmp .L4877
.L4876:
    movl $1, %eax
.L4877:
    testq %rax, %rax
    je .L4874
    movl $1, %eax
    jmp .L4875
.L4874:
    xorl %eax, %eax
.L4875:
    cmpq $0, %rax
    je .L4878
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1198(%rip), %rax
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
.L4880:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4882
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1199(%rip), %rax
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
    jne .L4884
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1200(%rip), %rax
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
    jne .L4884
    xorl %eax, %eax
    jmp .L4885
.L4884:
    movl $1, %eax
.L4885:
    testq %rax, %rax
    je .L4882
    movl $1, %eax
    jmp .L4883
.L4882:
    xorl %eax, %eax
.L4883:
    cmpq $0, %rax
    je .L4881
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4880
.L4881:
.L4878:
    movq tok(%rip), %rax
    pushq %rax
    movq $308, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4886
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
.L4886:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4888
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4870
    jmp .L4889
.L4888:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4890
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4870
    jmp .L4891
.L4890:
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4892
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4870
    jmp .L4893
.L4892:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4894
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4870
    jmp .L4895
.L4894:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4896
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_typedef
    movq %r12, %rsp
    popq %r12
    jmp .L4897
.L4896:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4898
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4898
    xorl %eax, %eax
    jmp .L4899
.L4898:
    movl $1, %eax
.L4899:
    cmpq $0, %rax
    je .L4900
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
    jmp .L4901
.L4900:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4902
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
.L4904:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    testq %rax, %rax
    je .L4912
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4916
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4916
    xorl %eax, %eax
    jmp .L4917
.L4916:
    movl $1, %eax
.L4917:
    testq %rax, %rax
    je .L4912
    movl $1, %eax
    jmp .L4913
.L4912:
    xorl %eax, %eax
.L4913:
    cmpq $0, %rax
    je .L4905
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4904
.L4905:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4918
    leaq .Lstr1201(%rip), %rax
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
    jmp .L4870
.L4918:
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
    jne .L4920
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
    jne .L4920
    xorl %eax, %eax
    jmp .L4921
.L4920:
    movl $1, %eax
.L4921:
    cmpq $0, %rax
    je .L4922
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
    jmp .L4870
.L4922:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $56, %rax
    movslq (%rax), %rax
    movq %rax, -32(%rbp)
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
.L4924:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4925
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
    jmp .L4924
.L4925:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4926
    leaq .Lstr1202(%rip), %rax
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
.L4926:
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
    je .L4928
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
.L4928:
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
    je .L4930
    movq $8, %rax
    jmp .L4931
.L4930:
    movq -32(%rbp), %rax
.L4931:
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -128(%rbp)
    movq -112(%rbp), %rax
    movq %rax, -144(%rbp)
    movq $0, %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
.L4932:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4933
    leaq -128(%rbp), %rax
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
    movq %rax, -192(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4934
    leaq -192(%rbp), %rax
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
    jmp .L4935
.L4934:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4936
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
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4938
    leaq -192(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L4939
.L4938:
    leaq .Lstr1203(%rip), %rax
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
.L4939:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4936:
.L4935:
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
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4940
    movq -192(%rbp), %rax
    jmp .L4941
.L4940:
    movq $1, %rax
.L4941:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -176(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4942
    leaq -160(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -144(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4944
    movq -192(%rbp), %rax
    jmp .L4945
.L4944:
    movq $1, %rax
.L4945:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L4942:
    jmp .L4932
.L4933:
    leaq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L4946
    movq $262, %rax
    jmp .L4947
.L4946:
    movq $0, %rax
.L4947:
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
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
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4948
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
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
.L4948:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4950
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
    je .L4952
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -192(%rbp)
.L4954:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4955
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
    movq %rax, -208(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4956
    leaq .Lstr1204(%rip), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
    jmp .L4957
.L4956:
    movq -144(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4958
    leaq .Lstr1205(%rip), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
    jmp .L4959
.L4958:
    leaq .Lstr1206(%rip), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
.L4959:
.L4957:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4960
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L4960:
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L4954
.L4955:
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
    movq -128(%rbp), %rax
    testq %rax, %rax
    je .L4962
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4962
    movl $1, %eax
    jmp .L4963
.L4962:
    xorl %eax, %eax
.L4963:
    cmpq $0, %rax
    je .L4964
    leaq -112(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
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
    movq %rax, -208(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
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
    movq %rax, -240(%rbp)
    movq -112(%rbp), %rax
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
    movq -224(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -224(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movl (%rax), %eax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
    movq -256(%rbp), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
    je .L4966
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L4966:
.L4964:
    jmp .L4953
.L4952:
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
    movq %rax, -192(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -192(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L4968
    movq -208(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4970
    leaq .Lstr1207(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
    jmp .L4971
.L4970:
    leaq .Lstr1208(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
.L4971:
    jmp .L4969
.L4968:
    movq -208(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4972
    leaq .Lstr1209(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
    jmp .L4973
.L4972:
    leaq .Lstr1210(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
.L4973:
.L4969:
.L4953:
.L4950:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4974
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp restart_typedef
.L4974:
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
    jmp .L4903
.L4902:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4976
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4976
    xorl %eax, %eax
    jmp .L4977
.L4976:
    movl $1, %eax
.L4977:
    testq %rax, %rax
    jne .L4978
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4978
    xorl %eax, %eax
    jmp .L4979
.L4978:
    movl $1, %eax
.L4979:
    testq %rax, %rax
    jne .L4980
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4980
    xorl %eax, %eax
    jmp .L4981
.L4980:
    movl $1, %eax
.L4981:
    testq %rax, %rax
    jne .L4982
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L4982
    xorl %eax, %eax
    jmp .L4983
.L4982:
    movl $1, %eax
.L4983:
    cmpq $0, %rax
    je .L4984
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
.L4986:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L4988
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1211(%rip), %rax
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
    jne .L4990
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1212(%rip), %rax
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
    jne .L4990
    xorl %eax, %eax
    jmp .L4991
.L4990:
    movl $1, %eax
.L4991:
    testq %rax, %rax
    je .L4988
    movl $1, %eax
    jmp .L4989
.L4988:
    xorl %eax, %eax
.L4989:
    cmpq $0, %rax
    je .L4987
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L4986
.L4987:
restart_int:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L4992:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4993
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
    jmp .L4992
.L4993:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L4994
    leaq .Lstr1213(%rip), %rax
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
.L4994:
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
    je .L4996
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
.L4996:
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
    je .L4998
    movq $8, %rax
    jmp .L4999
.L4998:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5000
    movq $1, %rax
    jmp .L5001
.L5000:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5002
    movq $4, %rax
    jmp .L5003
.L5002:
    movq $8, %rax
.L5003:
.L5001:
.L4999:
    movq %rax, -112(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5004
    movq -16(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5004
    xorl %eax, %eax
    jmp .L5005
.L5004:
    movl $1, %eax
.L5005:
    testq %rax, %rax
    je .L5006
    movq $0, %rax
    jmp .L5007
.L5006:
    movq -16(%rbp), %rax
.L5007:
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -112(%rbp), %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
.L5008:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5009
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
    movq %rax, -192(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5010
    leaq -192(%rbp), %rax
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
    jmp .L5011
.L5010:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5012
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
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5014
    leaq -192(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5015
.L5014:
    leaq .Lstr1214(%rip), %rax
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
.L5015:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5012:
.L5011:
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
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5016
    movq -192(%rbp), %rax
    jmp .L5017
.L5016:
    movq $1, %rax
.L5017:
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
    je .L5018
    leaq -176(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -160(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5020
    movq -192(%rbp), %rax
    jmp .L5021
.L5020:
    movq $1, %rax
.L5021:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5018:
    jmp .L5008
.L5009:
    leaq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    testq %rax, %rax
    je .L5022
    movq -16(%rbp), %rax
    jmp .L5023
.L5022:
    movq $0, %rax
.L5023:
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
    je .L5024
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
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
.L5024:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5026
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
    je .L5028
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -192(%rbp)
.L5030:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5031
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
    movq %rax, -208(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    addq $32, %rax
    movslq (%rax), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -160(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5032
    leaq .Lstr1215(%rip), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
    jmp .L5033
.L5032:
    movq -160(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5034
    leaq .Lstr1216(%rip), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
    jmp .L5035
.L5034:
    leaq .Lstr1217(%rip), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
.L5035:
.L5033:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5036
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5036:
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5030
.L5031:
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
    je .L5038
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5038
    movl $1, %eax
    jmp .L5039
.L5038:
    xorl %eax, %eax
.L5039:
    cmpq $0, %rax
    je .L5040
    leaq -112(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
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
    movq %rax, -208(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
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
    movq %rax, -240(%rbp)
    movq -112(%rbp), %rax
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
    movq -224(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -224(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movl (%rax), %eax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
    movq -256(%rbp), %rax
    pushq %rax
    movq -240(%rbp), %rax
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
    je .L5042
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5042:
.L5040:
    jmp .L5029
.L5028:
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
    movq %rax, -192(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -192(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    addq $36, %rax
    movslq (%rax), %rax
    cmpq $0, %rax
    je .L5044
    movq -208(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5046
    leaq .Lstr1218(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
    jmp .L5047
.L5046:
    leaq .Lstr1219(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
.L5047:
    jmp .L5045
.L5044:
    movq -208(%rbp), %rax
    addq $72, %rax
    movslq (%rax), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5048
    leaq .Lstr1220(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
    jmp .L5049
.L5048:
    leaq .Lstr1221(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
.L5049:
.L5045:
.L5029:
.L5026:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5050
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp restart_int
.L5050:
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
    jmp .L4985
.L4984:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5052
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_enum
    movq %r12, %rsp
    popq %r12
    jmp .L5053
.L5052:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq %r12, %rsp
    popq %r12
.L5053:
.L4985:
.L4903:
.L4901:
.L4897:
.L4895:
.L4893:
.L4891:
.L4889:
    jmp .L4870
.L4871:
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
.L4868:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5054
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
    je .L5056
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
    je .L5058
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
.L5058:
.L5056:
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
.L5054:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5060
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    leave
    ret
.L5060:
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
    je .L5158
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5159
.L5158:
.L5160:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5162
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5162
    movl $1, %eax
    jmp .L5163
.L5162:
    xorl %eax, %eax
.L5163:
    cmpq $0, %rax
    je .L5161
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5164
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5164
    xorl %eax, %eax
    jmp .L5165
.L5164:
    movl $1, %eax
.L5165:
    cmpq $0, %rax
    je .L5166
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5160
.L5166:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5168
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
    testq %rax, %rax
    jne .L5170
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
    testq %rax, %rax
    jne .L5170
    xorl %eax, %eax
    jmp .L5171
.L5170:
    movl $1, %eax
.L5171:
    testq %rax, %rax
    je .L5168
    movl $1, %eax
    jmp .L5169
.L5168:
    xorl %eax, %eax
.L5169:
    cmpq $0, %rax
    je .L5172
    leaq unsigned_type(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1241(%rip), %rax
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
.L5174:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5176
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1242(%rip), %rax
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
    jne .L5178
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
    jne .L5178
    xorl %eax, %eax
    jmp .L5179
.L5178:
    movl $1, %eax
.L5179:
    testq %rax, %rax
    je .L5176
    movl $1, %eax
    jmp .L5177
.L5176:
    xorl %eax, %eax
.L5177:
    cmpq $0, %rax
    je .L5175
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5174
.L5175:
.L5172:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5180
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5180
    xorl %eax, %eax
    jmp .L5181
.L5180:
    movl $1, %eax
.L5181:
    testq %rax, %rax
    jne .L5182
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5182
    xorl %eax, %eax
    jmp .L5183
.L5182:
    movl $1, %eax
.L5183:
    testq %rax, %rax
    jne .L5184
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5184
    xorl %eax, %eax
    jmp .L5185
.L5184:
    movl $1, %eax
.L5185:
    testq %rax, %rax
    jne .L5186
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5186
    xorl %eax, %eax
    jmp .L5187
.L5186:
    movl $1, %eax
.L5187:
    testq %rax, %rax
    jne .L5188
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5188
    xorl %eax, %eax
    jmp .L5189
.L5188:
    movl $1, %eax
.L5189:
    cmpq $0, %rax
    je .L5190
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5192
    movq $262, %rax
    jmp .L5193
.L5192:
    movq tok(%rip), %rax
.L5193:
    movq %rax, -65616(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5194
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
    movq %rax, -65632(%rbp)
    movq -65632(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5196
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65632(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L5196
    movl $1, %eax
    jmp .L5197
.L5196:
    xorl %eax, %eax
.L5197:
    cmpq $0, %rax
    je .L5198
    leaq -65616(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5198:
.L5194:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5200:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5202
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
    jne .L5204
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
    jne .L5204
    xorl %eax, %eax
    jmp .L5205
.L5204:
    movl $1, %eax
.L5205:
    testq %rax, %rax
    je .L5202
    movl $1, %eax
    jmp .L5203
.L5202:
    xorl %eax, %eax
.L5203:
    cmpq $0, %rax
    je .L5201
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5200
.L5201:
    movq $0, %rax
    movq %rax, -65632(%rbp)
.L5206:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5207
    leaq -65632(%rbp), %rax
    pushq %rax
    movq -65632(%rbp), %rax
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
    jmp .L5206
.L5207:
    movq -65632(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    movq %rax, -65648(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5208
    leaq .Lstr1246(%rip), %rax
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
.L5208:
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
    movq %rax, -65664(%rbp)
    movq -65664(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5210
    leaq -65664(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5210:
    leaq -65584(%rbp), %rax
    pushq %rax
    movq -65600(%rbp), %rax
    popq %rcx
    imulq $32, %rax
    addq %rcx, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -65664(%rbp), %rax
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
    movq -65664(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -65648(%rbp), %rax
    testq %rax, %rax
    je .L5212
    movq $8, %rax
    jmp .L5213
.L5212:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5214
    movq $1, %rax
    jmp .L5215
.L5214:
    movq -65616(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5216
    movq $4, %rax
    jmp .L5217
.L5216:
    movq $8, %rax
.L5217:
.L5215:
.L5213:
    movq %rax, -65680(%rbp)
    movq $0, %rax
    movq %rax, -65696(%rbp)
    movq -65616(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5218
    movq -65616(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5218
    xorl %eax, %eax
    jmp .L5219
.L5218:
    movl $1, %eax
.L5219:
    testq %rax, %rax
    je .L5220
    movq $0, %rax
    jmp .L5221
.L5220:
    movq -65616(%rbp), %rax
.L5221:
    movq %rax, -65712(%rbp)
    movq -65632(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5222
    leaq -65696(%rbp), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L5222:
    leaq token(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -65680(%rbp), %rax
    pushq %rax
    movq -65696(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $0, %rax
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
    movq -65712(%rbp), %rax
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
    movq -65632(%rbp), %rax
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
    je .L5224
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5224:
    jmp .L5191
.L5190:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5226
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
    je .L5228
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5228:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5230
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5230:
    jmp .L5161
    jmp .L5227
.L5226:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5227:
.L5191:
    jmp .L5160
.L5161:
.L5159:
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
    je .L5232
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
.L5232:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5234
    leaq .Lstr1247(%rip), %rax
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
.L5234:
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
.L5236:
    movq -66512(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5237
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
    jmp .L5236
.L5237:
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
    je .L5238
    leaq -66512(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5238:
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
.L5240:
    movq -66528(%rbp), %rax
    pushq %rax
    movq $64, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5241
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
    jmp .L5240
.L5241:
.L5242:
    movq processed_count(%rip), %rax
    pushq %rax
    movq -66496(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5243
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
    jmp .L5242
.L5243:
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
    leaq .Lstr1248(%rip), %rax
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
    leaq .Lstr1249(%rip), %rax
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
    leaq .Lstr1250(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1251(%rip), %rax
    pushq %rax
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
    je .L5244
    leaq .Lstr1252(%rip), %rax
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
.L5244:
    movq $0, %rax
    movq %rax, -66544(%rbp)
    jmp .L5248
.L5246:
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
    je .L5250
    leaq symbols(%rip), %rax
    pushq %rax
    movq -66560(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -66576(%rbp)
    leaq .Lstr1253(%rip), %rax
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
.L5250:
.L5247:
    leaq -66544(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5248
.L5248:
    movq -66544(%rbp), %rax
    pushq %rax
    movq -65600(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5252
    movq -66544(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5252
    movl $1, %eax
    jmp .L5253
.L5252:
    xorl %eax, %eax
.L5253:
    cmpq $0, %rax
    jne .L5246
.L5249:
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
    leaq .Lstr1254(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1255(%rip), %rax
    pushq %rax
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
    je .L5274
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5274:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5276
    leaq .Lstr1260(%rip), %rax
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
.L5276:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -16(%rbp)
.L5278:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5280
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5280
    movl $1, %eax
    jmp .L5281
.L5280:
    xorl %eax, %eax
.L5281:
    cmpq $0, %rax
    je .L5279
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5282
    leaq .Lstr1261(%rip), %rax
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
.L5282:
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5284
    leaq .Lstr1262(%rip), %rax
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
.L5284:
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
    je .L5286
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
.L5286:
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
    je .L5288
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
    je .L5290
    leaq .Lstr1263(%rip), %rax
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
.L5290:
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
.L5288:
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
    je .L5292
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5292:
    jmp .L5278
.L5279:
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
    je .L5340
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5340:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5342
    leaq .Lstr1265(%rip), %rax
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
.L5342:
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
.L5344:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5346
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5346
    movl $1, %eax
    jmp .L5347
.L5346:
    xorl %eax, %eax
.L5347:
    cmpq $0, %rax
    je .L5345
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5348
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5348
    xorl %eax, %eax
    jmp .L5349
.L5348:
    movl $1, %eax
.L5349:
    testq %rax, %rax
    jne .L5350
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5350
    xorl %eax, %eax
    jmp .L5351
.L5350:
    movl $1, %eax
.L5351:
    testq %rax, %rax
    jne .L5352
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5352
    xorl %eax, %eax
    jmp .L5353
.L5352:
    movl $1, %eax
.L5353:
    cmpq $0, %rax
    je .L5354
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -32(%rbp)
.L5356:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5357
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
    jmp .L5356
.L5357:
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L5358
    leaq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5359
.L5358:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5360
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5361
.L5360:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5362
    leaq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5363
.L5362:
    movq -16(%rbp), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5364
    leaq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5365
.L5364:
    leaq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5365:
.L5363:
.L5361:
.L5359:
.L5366:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5368
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5368
    movl $1, %eax
    jmp .L5369
.L5368:
    xorl %eax, %eax
.L5369:
    testq %rax, %rax
    je .L5370
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5370
    movl $1, %eax
    jmp .L5371
.L5370:
    xorl %eax, %eax
.L5371:
    cmpq $0, %rax
    je .L5367
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5372
    movq struct_member_count(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5374
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
    je .L5376
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
.L5376:
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
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_elem_sizes(%rip), %rax
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
.L5374:
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
    je .L5378
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
    je .L5380
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
.L5380:
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
    movq -48(%rbp), %rax
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
    je .L5382
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
    movq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5382:
    jmp .L5379
.L5378:
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5379:
    jmp .L5373
.L5372:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5373:
    jmp .L5366
.L5367:
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
    jmp .L5355
.L5354:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5384
    jmp .L5345
    jmp .L5385
.L5384:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5385:
.L5355:
    jmp .L5344
.L5345:
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
    subq $112, %rsp
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
    je .L5418
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
    jmp .L5419
.L5418:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5420
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
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
    testq %rax, %rax
    jne .L5422
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5422
    xorl %eax, %eax
    jmp .L5423
.L5422:
    movl $1, %eax
.L5423:
    testq %rax, %rax
    jne .L5424
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5424
    xorl %eax, %eax
    jmp .L5425
.L5424:
    movl $1, %eax
.L5425:
    testq %rax, %rax
    jne .L5426
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5426
    xorl %eax, %eax
    jmp .L5427
.L5426:
    movl $1, %eax
.L5427:
    cmpq $0, %rax
    je .L5428
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
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
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5430
.L5431:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5432
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5432:
.L5428:
.L5419:
    leaq .Lstr1268(%rip), %rax
    movq %rax, -32(%rbp)
.L5434:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5436
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5436
    movl $1, %eax
    jmp .L5437
.L5436:
    xorl %eax, %eax
.L5437:
    cmpq $0, %rax
    je .L5435
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5438
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
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5440
    leaq -48(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5440:
    leaq -32(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
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
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L5438:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5434
.L5435:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L5442
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5444
    leaq .Lstr1269(%rip), %rax
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
.L5444:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    movq %rax, -64(%rbp)
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
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5446
    leaq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5446:
    movq -64(%rbp), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    movq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -48(%rbp), %rax
    addq $52, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
    addq $36, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
    addq $44, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
    addq $60, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
    addq $84, %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -48(%rbp), %rax
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
    je .L5448
    movq -48(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movl %eax, (%rcx)
.L5448:
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
    movq %rax, -96(%rbp)
    movq -48(%rbp), %rax
    addq $84, %rax
    pushq %rax
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movl %eax, (%rcx)
    leaq hash_table(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
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
.L5442:
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
    je .L5456
    leaq .Lstr1274(%rip), %rax
    leave
    ret
.L5456:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5458
    leaq .Lstr1275(%rip), %rax
    leave
    ret
.L5458:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5460
    leaq .Lstr1276(%rip), %rax
    leave
    ret
.L5460:
    leaq .Lstr1277(%rip), %rax
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
    leaq .Lstr1283(%rip), %rax
    pushq %rax
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
    je .L5466
    leaq .Lstr1284(%rip), %rax
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
.L5466:
    leaq .Lstr1285(%rip), %rax
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
    je .L5468
    leaq .Lstr1286(%rip), %rax
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
.L5468:
    leaq .Lstr1287(%rip), %rax
    pushq %rax
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
    leaq .Lstr1291(%rip), %rax
    pushq %rax
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
    je .L5472
    leaq .Lstr1292(%rip), %rax
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
.L5472:
    leaq .Lstr1293(%rip), %rax
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
    je .L5488
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
    jmp .L5489
.L5488:
    movq tok(%rip), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5490
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5490:
.L5489:
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5492
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
    je .L5494
    movq -48(%rbp), %rax
    negq %rax
    jmp .L5495
.L5494:
    movq -48(%rbp), %rax
.L5495:
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    leave
    ret
.L5492:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5496
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
    je .L5498
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
    je .L5500
    movq -64(%rbp), %rax
    negq %rax
    jmp .L5501
.L5500:
    movq -64(%rbp), %rax
.L5501:
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    leave
    ret
.L5498:
.L5496:
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
    je .L5504
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
.L5504:
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
    je .L5552
    movq -96(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5552
    movl $1, %eax
    jmp .L5553
.L5552:
    xorl %eax, %eax
.L5553:
    testq %rax, %rax
    je .L5554
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5554
    movl $1, %eax
    jmp .L5555
.L5554:
    xorl %eax, %eax
.L5555:
    testq %rax, %rax
    je .L5556
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5556
    movl $1, %eax
    jmp .L5557
.L5556:
    xorl %eax, %eax
.L5557:
    cmpq $0, %rax
    je .L5558
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
    je .L5560
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5560:
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
    je .L5562
    movq output(%rip), %rax
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
    leaq .Lstr1307(%rip), %rax
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
.L5562:
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
    je .L5564
    leaq .Lstr1308(%rip), %rax
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
.L5564:
    leaq .Lstr1309(%rip), %rax
    pushq %rax
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
.L5558:
    movq -96(%rbp), %rax
    testq %rax, %rax
    je .L5566
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5566
    movl $1, %eax
    jmp .L5567
.L5566:
    xorl %eax, %eax
.L5567:
    cmpq $0, %rax
    je .L5568
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
    je .L5570
    leaq .Lstr1310(%rip), %rax
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
.L5570:
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
    leaq .Lstr1311(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1312(%rip), %rax
    pushq %rax
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
.L5568:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5572
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
    je .L5574
    movq -64(%rbp), %rax
    jmp .L5575
.L5574:
    movq $8, %rax
.L5575:
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5576
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, %r8
    movq %rcx, %rax
    cqto
    idivq %r8
    jmp .L5577
.L5576:
    movq $0, %rax
.L5577:
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
.L5578:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5580
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5580
    movl $1, %eax
    jmp .L5581
.L5580:
    xorl %eax, %eax
.L5581:
    cmpq $0, %rax
    je .L5579
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
    je .L5582
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
.L5582:
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5584
    movq -128(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5584
    xorl %eax, %eax
    jmp .L5585
.L5584:
    movl $1, %eax
.L5585:
    cmpq $0, %rax
    je .L5586
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
.L5586:
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
    je .L5588
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5589
.L5588:
    jmp .L5579
.L5589:
    jmp .L5578
.L5579:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5590
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5591
.L5590:
    leaq .Lstr1314(%rip), %rax
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
.L5591:
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5592
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5593
.L5592:
    movq -128(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5594
    leaq .Lstr1315(%rip), %rax
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
.L5594:
.L5593:
    leaq .Lstr1316(%rip), %rax
    pushq %rax
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
.L5572:
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
    je .L5596
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
    leaq .Lstr1317(%rip), %rax
    pushq %rax
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
.L5596:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl parse_program
parse_program:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5738:
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5739
.L5740:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5742
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
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
    cmpq $0, %rax
    je .L5741
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5740
.L5741:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5744
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
    testq %rax, %rax
    jne .L5746
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
    jne .L5746
    xorl %eax, %eax
    jmp .L5747
.L5746:
    movl $1, %eax
.L5747:
    testq %rax, %rax
    je .L5744
    movl $1, %eax
    jmp .L5745
.L5744:
    xorl %eax, %eax
.L5745:
    cmpq $0, %rax
    je .L5748
    leaq unsigned_type(%rip), %rax
    pushq %rax
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
    popq %rcx
    movq %rax, (%rcx)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5750:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5752
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
    jne .L5754
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
    jne .L5754
    xorl %eax, %eax
    jmp .L5755
.L5754:
    movl $1, %eax
.L5755:
    testq %rax, %rax
    je .L5752
    movl $1, %eax
    jmp .L5753
.L5752:
    xorl %eax, %eax
.L5753:
    cmpq $0, %rax
    je .L5751
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5750
.L5751:
.L5748:
    movq tok(%rip), %rax
    pushq %rax
    movq $308, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5756
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
.L5756:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5758
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
.L5758:
.L5760:
    movq tok(%rip), %rax
    pushq %rax
    movq $306, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5762
    movq tok(%rip), %rax
    pushq %rax
    movq $305, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5762
    xorl %eax, %eax
    jmp .L5763
.L5762:
    movl $1, %eax
.L5763:
    cmpq $0, %rax
    je .L5761
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5760
.L5761:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5764
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5738
    jmp .L5765
.L5764:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5766
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_typedef
    movq %r12, %rsp
    popq %r12
    jmp .L5767
.L5766:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5768
    movq tok(%rip), %rax
    pushq %rax
    movq $307, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5768
    xorl %eax, %eax
    jmp .L5769
.L5768:
    movl $1, %eax
.L5769:
    cmpq $0, %rax
    je .L5770
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
    jmp .L5771
.L5770:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
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
    call parse_enum
    movq %r12, %rsp
    popq %r12
    jmp .L5773
.L5772:
    movq tok(%rip), %rax
    pushq %rax
    movq $304, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5774
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_asm_block
    movq %r12, %rsp
    popq %r12
    jmp .L5775
.L5774:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5776
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5776
    xorl %eax, %eax
    jmp .L5777
.L5776:
    movl $1, %eax
.L5777:
    testq %rax, %rax
    jne .L5778
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5778
    xorl %eax, %eax
    jmp .L5779
.L5778:
    movl $1, %eax
.L5779:
    testq %rax, %rax
    jne .L5780
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5780
    xorl %eax, %eax
    jmp .L5781
.L5780:
    movl $1, %eax
.L5781:
    testq %rax, %rax
    jne .L5782
    movq tok(%rip), %rax
    pushq %rax
    movq $290, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5782
    xorl %eax, %eax
    jmp .L5783
.L5782:
    movl $1, %eax
.L5783:
    cmpq $0, %rax
    je .L5784
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5786:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5788
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1337(%rip), %rax
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
    jne .L5790
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr1338(%rip), %rax
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
    jne .L5790
    xorl %eax, %eax
    jmp .L5791
.L5790:
    movl $1, %eax
.L5791:
    testq %rax, %rax
    je .L5788
    movl $1, %eax
    jmp .L5789
.L5788:
    xorl %eax, %eax
.L5789:
    cmpq $0, %rax
    je .L5787
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5786
.L5787:
    movq $0, %rax
    movq %rax, -32(%rbp)
.L5792:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5793
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
    jmp .L5792
.L5793:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5794
    leaq .Lstr1339(%rip), %rax
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
.L5794:
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
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5796
    leaq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5796:
    leaq -64(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    leaq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    je .L5798
    leaq -64(%rbp), %rax
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
    jmp .L5799
.L5798:
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L5800
    movq $8, %rax
    jmp .L5801
.L5800:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5802
    movq $1, %rax
    jmp .L5803
.L5802:
    movq -16(%rbp), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5804
    movq $4, %rax
    jmp .L5805
.L5804:
    movq $8, %rax
.L5805:
.L5803:
.L5801:
    movq %rax, -96(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5806
    movq -16(%rbp), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5806
    xorl %eax, %eax
    jmp .L5807
.L5806:
    movl $1, %eax
.L5807:
    testq %rax, %rax
    je .L5808
    movq $0, %rax
    jmp .L5809
.L5808:
    movq -16(%rbp), %rax
.L5809:
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -128(%rbp)
    movq -96(%rbp), %rax
    movq %rax, -144(%rbp)
    movq $0, %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
.L5810:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5811
    leaq -128(%rbp), %rax
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
    movq %rax, -192(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5812
    leaq -192(%rbp), %rax
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
    jmp .L5813
.L5812:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5814
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
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5816
    leaq -192(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5817
.L5816:
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
.L5817:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5814:
.L5813:
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
    leaq -96(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5818
    movq -192(%rbp), %rax
    jmp .L5819
.L5818:
    movq $1, %rax
.L5819:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -176(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5820
    leaq -160(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -144(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5822
    movq -192(%rbp), %rax
    jmp .L5823
.L5822:
    movq $1, %rax
.L5823:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5820:
    jmp .L5810
.L5811:
    movq extern_flag(%rip), %rax
    movq %rax, -192(%rbp)
    movq static_flag(%rip), %rax
    movq %rax, -208(%rbp)
    leaq global_emit_deferred(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    testq %rax, %rax
    je .L5824
    movq -16(%rbp), %rax
    jmp .L5825
.L5824:
    movq $0, %rax
.L5825:
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
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
    movq -112(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5826
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
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
.L5826:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5828
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq -192(%rbp), %rax
    cmpq $0, %rax
    je .L5830
.L5832:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5834
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5834
    movl $1, %eax
    jmp .L5835
.L5834:
    xorl %eax, %eax
.L5835:
    cmpq $0, %rax
    je .L5833
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5832
.L5833:
    jmp .L5831
.L5830:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
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
    je .L5836
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
    movq -96(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
    jmp .L5837
.L5836:
.L5838:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5840
    movq tok(%rip), %rax
    pushq %rax
    movq $309, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5840
    movl $1, %eax
    jmp .L5841
.L5840:
    xorl %eax, %eax
.L5841:
    cmpq $0, %rax
    je .L5839
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5838
.L5839:
    leaq -64(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
    call emit_global_bss
    movq %r12, %rsp
    popq %r12
.L5837:
.L5831:
    jmp .L5829
.L5828:
    movq -192(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5842
    leaq -64(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
    call emit_global_bss
    movq %r12, %rsp
    popq %r12
.L5842:
.L5829:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5844
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5845
.L5844:
    leaq .Lstr1341(%rip), %rax
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
.L5845:
.L5799:
    jmp .L5785
.L5784:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5846
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
    je .L5848
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $88, %rax
    addq %rcx, %rax
    addq $52, %rax
    movslq (%rax), %rax
    testq %rax, %rax
    je .L5848
    movl $1, %eax
    jmp .L5849
.L5848:
    xorl %eax, %eax
.L5849:
    cmpq $0, %rax
    je .L5850
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
.L5850:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    movq $0, %rax
    movq %rax, -48(%rbp)
.L5852:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5853
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
    jmp .L5852
.L5853:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5854
    leaq .Lstr1342(%rip), %rax
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
.L5854:
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
    je .L5856
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
.L5856:
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
    je .L5858
    movq $8, %rax
    jmp .L5859
.L5858:
    movq -16(%rbp), %rax
.L5859:
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -128(%rbp)
    movq -112(%rbp), %rax
    movq %rax, -144(%rbp)
    movq $0, %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -176(%rbp)
.L5860:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5861
    leaq -128(%rbp), %rax
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
    movq %rax, -192(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5862
    leaq -192(%rbp), %rax
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
    jmp .L5863
.L5862:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5864
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
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5866
    leaq -192(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    imulq $36, %rax
    addq %rcx, %rax
    addq $32, %rax
    movslq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L5867
.L5866:
    leaq .Lstr1343(%rip), %rax
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
.L5867:
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
.L5864:
.L5863:
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
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5868
    movq -192(%rbp), %rax
    jmp .L5869
.L5868:
    movq $1, %rax
.L5869:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -176(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5870
    leaq -160(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -144(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    je .L5872
    movq -192(%rbp), %rax
    jmp .L5873
.L5872:
    movq $1, %rax
.L5873:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5870:
    jmp .L5860
.L5861:
    leaq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
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
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5874
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
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    addq $68, %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movl %eax, (%rcx)
.L5874:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5876
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq %r12, %rsp
    popq %r12
    jmp .L5877
.L5876:
    leaq .Lstr1344(%rip), %rax
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
.L5877:
    jmp .L5847
.L5846:
    leaq .Lstr1345(%rip), %rax
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
.L5847:
.L5785:
.L5775:
.L5773:
.L5771:
.L5767:
.L5765:
    jmp .L5738
.L5739:
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
    je .L5886
    leave
    ret
.L5886:
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L5890
.L5888:
    leaq float_const_is_float(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L5892
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1348(%rip), %rax
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
    jmp .L5893
.L5892:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1349(%rip), %rax
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
.L5893:
.L5889:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5890
.L5890:
    movq -16(%rbp), %rax
    pushq %rax
    movq float_const_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L5888
.L5891:
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
    je .L5900
    leave
    ret
.L5900:
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L5904
.L5902:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr1352(%rip), %rax
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
    leaq .Lstr1353(%rip), %rax
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
.L5903:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5904
.L5904:
    movq -16(%rbp), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L5902
.L5905:
    leave
    ret
    .globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
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
    je .L5944
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1385(%rip), %rax
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
.L5944:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr1386(%rip), %rax
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
    je .L5946
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1387(%rip), %rax
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
.L5946:
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
    jne .L5948
    movq -64(%rbp), %rax
    pushq %rax
    movq $1048576, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5948
    xorl %eax, %eax
    jmp .L5949
.L5948:
    movl $1, %eax
.L5949:
    cmpq $0, %rax
    je .L5950
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr1388(%rip), %rax
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
.L5950:
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
    je .L5952
    movq stderr(%rip), %rax
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
.L5952:
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
.L5954:
    movq -112(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5955
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
    jmp .L5954
.L5955:
    leaq .Lstr1390(%rip), %rax
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
    leaq .Lstr1391(%rip), %rax
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
    leaq .Lstr1392(%rip), %rax
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
    leaq .Lstr1393(%rip), %rax
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
    leaq .Lstr1394(%rip), %rax
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
    leaq .Lstr1395(%rip), %rax
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
.L5956:
    movq $1, %rax
    cmpq $0, %rax
    je .L5957
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
    je .L5958
    jmp .L5957
.L5958:
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
    je .L5960
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
.L5960:
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
    leaq .Lstr1396(%rip), %rax
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
    jne .L5962
    movq -112(%rbp), %rax
    pushq %rax
    leaq .Lstr1397(%rip), %rax
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
    jne .L5962
    xorl %eax, %eax
    jmp .L5963
.L5962:
    movl $1, %eax
.L5963:
    testq %rax, %rax
    jne .L5964
    movq -112(%rbp), %rax
    pushq %rax
    leaq .Lstr1398(%rip), %rax
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
    jne .L5964
    xorl %eax, %eax
    jmp .L5965
.L5964:
    movl $1, %eax
.L5965:
    testq %rax, %rax
    je .L5966
    movq $1, %rax
    jmp .L5967
.L5966:
    movq $0, %rax
.L5967:
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
    addq $72, %rax
    pushq %rax
    movq const_flag(%rip), %rax
    testq %rax, %rax
    je .L5968
    movq $65536, %rax
    jmp .L5969
.L5968:
    movq $0, %rax
.L5969:
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
    jmp .L5956
.L5957:
    leaq .Lstr1399(%rip), %rax
    pushq %rax
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
    jne .L5970
    movq float_const_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    testq %rax, %rax
    jne .L5970
    xorl %eax, %eax
    jmp .L5971
.L5970:
    movl $1, %eax
.L5971:
    cmpq $0, %rax
    je .L5972
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
.L5972:
    leaq .Lstr1402(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1403(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
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
    movq $0, %rax
    movq %rax, -96(%rbp)
    jmp .L5976
.L5974:
    leaq .Lstr1406(%rip), %rax
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
    leaq .Lstr1407(%rip), %rax
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
.L5975:
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L5976
.L5976:
    movq -96(%rbp), %rax
    pushq %rax
    movq ptr_init_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L5974
.L5977:
    leaq .Lstr1408(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1409(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1410(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1411(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1412(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1413(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1414(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %r12
    movq %rsp, %r12
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq %r12, %rsp
    popq %r12
    leaq .Lstr1415(%rip), %rax
    pushq %rax
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
.L5978:
    movq -96(%rbp), %rax
    pushq %rax
    movq processed_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L5979
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
    jmp .L5978
.L5979:
    movq current_file(%rip), %rax
    cmpq $0, %rax
    je .L5980
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
.L5980:
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
    .asciz "    movq $%s, %%rax"
.Lstr273:
    .asciz "    leaq .LCf%d(%%rip), %%rax"
.Lstr274:
    .asciz "    movss (%%rax), %%xmm0"
.Lstr275:
    .asciz "    movd %%xmm0, %%eax"
.Lstr276:
    .asciz "    movsd (%%rax), %%xmm0"
.Lstr277:
    .asciz "    movq %%xmm0, %%rax"
.Lstr278:
    .asciz "    pushq %%rax"
.Lstr279:
    .asciz "    movq %d(%%rsp), %s"
.Lstr280:
    .asciz "too many function arguments (max 6)"
.Lstr281:
    .asciz "    addq $%d, %%rsp"
.Lstr282:
    .asciz "    pushq %%r12"
.Lstr283:
    .asciz "    movq %%rsp, %%r12"
.Lstr284:
    .asciz "    andq $-16, %%rsp"
.Lstr285:
    .asciz "    xorl %%eax, %%eax"
.Lstr286:
    .asciz "    call %s"
.Lstr287:
    .asciz "    movq %%r12, %%rsp"
.Lstr288:
    .asciz "    popq %%r12"
.Lstr289:
    .asciz "undefined variable"
.Lstr290:
    .asciz "    movq $%d, %%rax"
.Lstr291:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr292:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr293:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr294:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr295:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr296:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr297:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr298:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr299:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr300:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr301:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr302:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr303:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr304:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr305:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr306:
    .asciz "    movl (%%rax), %%eax"
.Lstr307:
    .asciz "    movq (%%rax), %%rax"
.Lstr308:
    .asciz "    movq (%%rax), %%rax"
.Lstr309:
    .asciz "expected identifier after '&'"
.Lstr310:
    .asciz "undefined variable"
.Lstr311:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr312:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr313:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr314:
    .asciz "    xorl $0x80000000, %%eax"
.Lstr315:
    .asciz "    xorq $0x8000000000000000, %%rax"
.Lstr316:
    .asciz "    negq %%rax"
.Lstr317:
    .asciz "    testq %%rax, %%rax"
.Lstr318:
    .asciz "    sete %%al"
.Lstr319:
    .asciz "    movzbq %%al, %%rax"
.Lstr320:
    .asciz "    notq %%rax"
.Lstr321:
    .asciz "unsigned"
.Lstr322:
    .asciz "signed"
.Lstr323:
    .asciz "sizeof: undefined variable"
.Lstr324:
    .asciz "    movq $%d, %%rax"
.Lstr325:
    .asciz "invalid primary expression"
.Lstr326:
    .asciz "    movq $%s, %%rax"
.Lstr327:
    .asciz "    leaq .LCf%d(%%rip), %%rax"
.Lstr328:
    .asciz "    movss (%%rax), %%xmm0"
.Lstr329:
    .asciz "    movd %%xmm0, %%eax"
.Lstr330:
    .asciz "    movsd (%%rax), %%xmm0"
.Lstr331:
    .asciz "    movq %%xmm0, %%rax"
.Lstr332:
    .asciz "    pushq %%rax"
.Lstr333:
    .asciz "    movq %d(%%rsp), %s"
.Lstr334:
    .asciz "too many function arguments (max 6)"
.Lstr335:
    .asciz "    addq $%d, %%rsp"
.Lstr336:
    .asciz "    pushq %%r12"
.Lstr337:
    .asciz "    movq %%rsp, %%r12"
.Lstr338:
    .asciz "    andq $-16, %%rsp"
.Lstr339:
    .asciz "    xorl %%eax, %%eax"
.Lstr340:
    .asciz "    call %s"
.Lstr341:
    .asciz "    movq %%r12, %%rsp"
.Lstr342:
    .asciz "    popq %%r12"
.Lstr343:
    .asciz "undefined variable"
.Lstr344:
    .asciz "    movq $%d, %%rax"
.Lstr345:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr346:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr347:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr348:
    .asciz "    movl %s(%%rip), %%eax"
.Lstr349:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr350:
    .asciz "    movl %d(%%rbp), %%eax"
.Lstr351:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr352:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr353:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr354:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr355:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr356:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr357:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr358:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr359:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr360:
    .asciz "    movl (%%rax), %%eax"
.Lstr361:
    .asciz "    movq (%%rax), %%rax"
.Lstr362:
    .asciz "    movq (%%rax), %%rax"
.Lstr363:
    .asciz "expected identifier after '&'"
.Lstr364:
    .asciz "undefined variable"
.Lstr365:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr366:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr367:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr368:
    .asciz "    xorl $0x80000000, %%eax"
.Lstr369:
    .asciz "    xorq $0x8000000000000000, %%rax"
.Lstr370:
    .asciz "    negq %%rax"
.Lstr371:
    .asciz "    testq %%rax, %%rax"
.Lstr372:
    .asciz "    sete %%al"
.Lstr373:
    .asciz "    movzbq %%al, %%rax"
.Lstr374:
    .asciz "    notq %%rax"
.Lstr375:
    .asciz "unsigned"
.Lstr376:
    .asciz "signed"
.Lstr377:
    .asciz "sizeof: undefined variable"
.Lstr378:
    .asciz "    movq $%d, %%rax"
.Lstr379:
    .asciz "invalid primary expression"
.Lstr380:
    .asciz "undefined variable"
.Lstr381:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr382:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr383:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr384:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr385:
    .asciz "lvalue required"
.Lstr386:
    .asciz "undefined variable"
.Lstr387:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr388:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr389:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr390:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr391:
    .asciz "lvalue required"
.Lstr392:
    .asciz "    pushq %%rax"
.Lstr393:
    .asciz "    popq %%rcx"
.Lstr394:
    .asciz "    imulq $%d, %%rax"
.Lstr395:
    .asciz "    addq %%rcx, %%rax"
.Lstr396:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr397:
    .asciz "    movl (%%rax), %%eax"
.Lstr398:
    .asciz "    movq (%%rax), %%rax"
.Lstr399:
    .asciz "    addq $%d, %%rax"
.Lstr400:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr401:
    .asciz "    movslq (%%rax), %%rax"
.Lstr402:
    .asciz "    movq (%%rax), %%rax"
.Lstr403:
    .asciz "    addq $%d, %%rax"
.Lstr404:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr405:
    .asciz "    movslq (%%rax), %%rax"
.Lstr406:
    .asciz "    movq (%%rax), %%rax"
.Lstr407:
    .asciz "    pushq %%rax"
.Lstr408:
    .asciz "    popq %%rcx"
.Lstr409:
    .asciz "    imulq $%d, %%rax"
.Lstr410:
    .asciz "    addq %%rcx, %%rax"
.Lstr411:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr412:
    .asciz "    movl (%%rax), %%eax"
.Lstr413:
    .asciz "    movq (%%rax), %%rax"
.Lstr414:
    .asciz "    addq $%d, %%rax"
.Lstr415:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr416:
    .asciz "    movslq (%%rax), %%rax"
.Lstr417:
    .asciz "    movq (%%rax), %%rax"
.Lstr418:
    .asciz "    addq $%d, %%rax"
.Lstr419:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr420:
    .asciz "    movslq (%%rax), %%rax"
.Lstr421:
    .asciz "    movq (%%rax), %%rax"
.Lstr422:
    .asciz "    pushq %%rax"
.Lstr423:
    .asciz "    popq %%rcx"
.Lstr424:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr425:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr426:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr427:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr428:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr429:
    .asciz "    movd %%eax, %%xmm1"
.Lstr430:
    .asciz "    movq %%rax, %%xmm1"
.Lstr431:
    .asciz "    movq %%rax, %%xmm1"
.Lstr432:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr433:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr434:
    .asciz "    mulsd %%xmm1, %%xmm0"
.Lstr435:
    .asciz "    divsd %%xmm1, %%xmm0"
.Lstr436:
    .asciz "    movq %%xmm0, %%rax"
.Lstr437:
    .asciz "    mulss %%xmm1, %%xmm0"
.Lstr438:
    .asciz "    divss %%xmm1, %%xmm0"
.Lstr439:
    .asciz "    movd %%xmm0, %%eax"
.Lstr440:
    .asciz "    movq %%rax, %%r8"
.Lstr441:
    .asciz "    movq %%rcx, %%rax"
.Lstr442:
    .asciz "    cqto"
.Lstr443:
    .asciz "    idivq %%r8"
.Lstr444:
    .asciz "    movq %%rdx, %%rax"
.Lstr445:
    .asciz "    imulq %%rcx, %%rax"
.Lstr446:
    .asciz "    movq %%rax, %%r8"
.Lstr447:
    .asciz "    movq %%rcx, %%rax"
.Lstr448:
    .asciz "    cqto"
.Lstr449:
    .asciz "    idivq %%r8"
.Lstr450:
    .asciz "    pushq %%rax"
.Lstr451:
    .asciz "    popq %%rcx"
.Lstr452:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr453:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr454:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr455:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr456:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr457:
    .asciz "    movd %%eax, %%xmm1"
.Lstr458:
    .asciz "    movq %%rax, %%xmm1"
.Lstr459:
    .asciz "    movq %%rax, %%xmm1"
.Lstr460:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr461:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr462:
    .asciz "    mulsd %%xmm1, %%xmm0"
.Lstr463:
    .asciz "    divsd %%xmm1, %%xmm0"
.Lstr464:
    .asciz "    movq %%xmm0, %%rax"
.Lstr465:
    .asciz "    mulss %%xmm1, %%xmm0"
.Lstr466:
    .asciz "    divss %%xmm1, %%xmm0"
.Lstr467:
    .asciz "    movd %%xmm0, %%eax"
.Lstr468:
    .asciz "    movq %%rax, %%r8"
.Lstr469:
    .asciz "    movq %%rcx, %%rax"
.Lstr470:
    .asciz "    cqto"
.Lstr471:
    .asciz "    idivq %%r8"
.Lstr472:
    .asciz "    movq %%rdx, %%rax"
.Lstr473:
    .asciz "    imulq %%rcx, %%rax"
.Lstr474:
    .asciz "    movq %%rax, %%r8"
.Lstr475:
    .asciz "    movq %%rcx, %%rax"
.Lstr476:
    .asciz "    cqto"
.Lstr477:
    .asciz "    idivq %%r8"
.Lstr478:
    .asciz "    pushq %%rax"
.Lstr479:
    .asciz "    popq %%rcx"
.Lstr480:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr481:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr482:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr483:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr484:
    .asciz "    movd %%eax, %%xmm1"
.Lstr485:
    .asciz "    movq %%rax, %%xmm1"
.Lstr486:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr487:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr488:
    .asciz "    addsd %%xmm1, %%xmm0"
.Lstr489:
    .asciz "    subsd %%xmm1, %%xmm0"
.Lstr490:
    .asciz "    movq %%xmm0, %%rax"
.Lstr491:
    .asciz "    addss %%xmm1, %%xmm0"
.Lstr492:
    .asciz "    subss %%xmm1, %%xmm0"
.Lstr493:
    .asciz "    movd %%xmm0, %%eax"
.Lstr494:
    .asciz "    addq %%rcx, %%rax"
.Lstr495:
    .asciz "    subq %%rax, %%rcx"
.Lstr496:
    .asciz "    movq %%rcx, %%rax"
.Lstr497:
    .asciz "    pushq %%rax"
.Lstr498:
    .asciz "    popq %%rcx"
.Lstr499:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr500:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr501:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr502:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr503:
    .asciz "    movd %%eax, %%xmm1"
.Lstr504:
    .asciz "    movq %%rax, %%xmm1"
.Lstr505:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr506:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr507:
    .asciz "    addsd %%xmm1, %%xmm0"
.Lstr508:
    .asciz "    subsd %%xmm1, %%xmm0"
.Lstr509:
    .asciz "    movq %%xmm0, %%rax"
.Lstr510:
    .asciz "    addss %%xmm1, %%xmm0"
.Lstr511:
    .asciz "    subss %%xmm1, %%xmm0"
.Lstr512:
    .asciz "    movd %%xmm0, %%eax"
.Lstr513:
    .asciz "    addq %%rcx, %%rax"
.Lstr514:
    .asciz "    subq %%rax, %%rcx"
.Lstr515:
    .asciz "    movq %%rcx, %%rax"
.Lstr516:
    .asciz "    pushq %%rax"
.Lstr517:
    .asciz "    pushq %%rax"
.Lstr518:
    .asciz "    popq %%rcx"
.Lstr519:
    .asciz "    popq %%rax"
.Lstr520:
    .asciz "    salq %%cl, %%rax"
.Lstr521:
    .asciz "    sarq %%cl, %%rax"
.Lstr522:
    .asciz "    pushq %%rax"
.Lstr523:
    .asciz "    pushq %%rax"
.Lstr524:
    .asciz "    popq %%rcx"
.Lstr525:
    .asciz "    popq %%rax"
.Lstr526:
    .asciz "    salq %%cl, %%rax"
.Lstr527:
    .asciz "    sarq %%cl, %%rax"
.Lstr528:
    .asciz "    pushq %%rax"
.Lstr529:
    .asciz "    popq %%rcx"
.Lstr530:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr531:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr532:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr533:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr534:
    .asciz "    movd %%eax, %%xmm1"
.Lstr535:
    .asciz "    movq %%rax, %%xmm1"
.Lstr536:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr537:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr538:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr539:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr540:
    .asciz "    setb %%al"
.Lstr541:
    .asciz "    setbe %%al"
.Lstr542:
    .asciz "    seta %%al"
.Lstr543:
    .asciz "    setae %%al"
.Lstr544:
    .asciz "    movzbq %%al, %%rax"
.Lstr545:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr546:
    .asciz "    setl %%al"
.Lstr547:
    .asciz "    setle %%al"
.Lstr548:
    .asciz "    setg %%al"
.Lstr549:
    .asciz "    setge %%al"
.Lstr550:
    .asciz "    movzbq %%al, %%rax"
.Lstr551:
    .asciz "    pushq %%rax"
.Lstr552:
    .asciz "    popq %%rcx"
.Lstr553:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr554:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr555:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr556:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr557:
    .asciz "    movd %%eax, %%xmm1"
.Lstr558:
    .asciz "    movq %%rax, %%xmm1"
.Lstr559:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr560:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr561:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr562:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr563:
    .asciz "    setb %%al"
.Lstr564:
    .asciz "    setbe %%al"
.Lstr565:
    .asciz "    seta %%al"
.Lstr566:
    .asciz "    setae %%al"
.Lstr567:
    .asciz "    movzbq %%al, %%rax"
.Lstr568:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr569:
    .asciz "    setl %%al"
.Lstr570:
    .asciz "    setle %%al"
.Lstr571:
    .asciz "    setg %%al"
.Lstr572:
    .asciz "    setge %%al"
.Lstr573:
    .asciz "    movzbq %%al, %%rax"
.Lstr574:
    .asciz "    pushq %%rax"
.Lstr575:
    .asciz "    popq %%rcx"
.Lstr576:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr577:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr578:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr579:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr580:
    .asciz "    movd %%eax, %%xmm1"
.Lstr581:
    .asciz "    movq %%rax, %%xmm1"
.Lstr582:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr583:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr584:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr585:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr586:
    .asciz "    sete %%al"
.Lstr587:
    .asciz "    setne %%al"
.Lstr588:
    .asciz "    movzbq %%al, %%rax"
.Lstr589:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr590:
    .asciz "    sete %%al"
.Lstr591:
    .asciz "    setne %%al"
.Lstr592:
    .asciz "    movzbq %%al, %%rax"
.Lstr593:
    .asciz "    pushq %%rax"
.Lstr594:
    .asciz "    popq %%rcx"
.Lstr595:
    .asciz "    movd %%ecx, %%xmm0"
.Lstr596:
    .asciz "    movq %%rcx, %%xmm0"
.Lstr597:
    .asciz "    cvtsi2sdq %%rcx, %%xmm0"
.Lstr598:
    .asciz "    cvtsi2ssq %%rcx, %%xmm0"
.Lstr599:
    .asciz "    movd %%eax, %%xmm1"
.Lstr600:
    .asciz "    movq %%rax, %%xmm1"
.Lstr601:
    .asciz "    cvtsi2sdq %%rax, %%xmm1"
.Lstr602:
    .asciz "    cvtsi2ssq %%rax, %%xmm1"
.Lstr603:
    .asciz "    ucomisd %%xmm1, %%xmm0"
.Lstr604:
    .asciz "    ucomiss %%xmm1, %%xmm0"
.Lstr605:
    .asciz "    sete %%al"
.Lstr606:
    .asciz "    setne %%al"
.Lstr607:
    .asciz "    movzbq %%al, %%rax"
.Lstr608:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr609:
    .asciz "    sete %%al"
.Lstr610:
    .asciz "    setne %%al"
.Lstr611:
    .asciz "    movzbq %%al, %%rax"
.Lstr612:
    .asciz "    pushq %%rax"
.Lstr613:
    .asciz "    popq %%rcx"
.Lstr614:
    .asciz "    andq %%rcx, %%rax"
.Lstr615:
    .asciz "    pushq %%rax"
.Lstr616:
    .asciz "    popq %%rcx"
.Lstr617:
    .asciz "    andq %%rcx, %%rax"
.Lstr618:
    .asciz "    pushq %%rax"
.Lstr619:
    .asciz "    popq %%rcx"
.Lstr620:
    .asciz "    xorq %%rcx, %%rax"
.Lstr621:
    .asciz "    pushq %%rax"
.Lstr622:
    .asciz "    popq %%rcx"
.Lstr623:
    .asciz "    xorq %%rcx, %%rax"
.Lstr624:
    .asciz "    pushq %%rax"
.Lstr625:
    .asciz "    popq %%rcx"
.Lstr626:
    .asciz "    orq %%rcx, %%rax"
.Lstr627:
    .asciz "    pushq %%rax"
.Lstr628:
    .asciz "    popq %%rcx"
.Lstr629:
    .asciz "    orq %%rcx, %%rax"
.Lstr630:
    .asciz "    testq %%rax, %%rax"
.Lstr631:
    .asciz "    je .L%d"
.Lstr632:
    .asciz "    testq %%rax, %%rax"
.Lstr633:
    .asciz "    je .L%d"
.Lstr634:
    .asciz "    movl $1, %%eax"
.Lstr635:
    .asciz "    jmp .L%d"
.Lstr636:
    .asciz "    xorl %%eax, %%eax"
.Lstr637:
    .asciz "    testq %%rax, %%rax"
.Lstr638:
    .asciz "    je .L%d"
.Lstr639:
    .asciz "    testq %%rax, %%rax"
.Lstr640:
    .asciz "    je .L%d"
.Lstr641:
    .asciz "    movl $1, %%eax"
.Lstr642:
    .asciz "    jmp .L%d"
.Lstr643:
    .asciz "    xorl %%eax, %%eax"
.Lstr644:
    .asciz "    testq %%rax, %%rax"
.Lstr645:
    .asciz "    jne .L%d"
.Lstr646:
    .asciz "    testq %%rax, %%rax"
.Lstr647:
    .asciz "    jne .L%d"
.Lstr648:
    .asciz "    xorl %%eax, %%eax"
.Lstr649:
    .asciz "    jmp .L%d"
.Lstr650:
    .asciz "    movl $1, %%eax"
.Lstr651:
    .asciz "    testq %%rax, %%rax"
.Lstr652:
    .asciz "    jne .L%d"
.Lstr653:
    .asciz "    testq %%rax, %%rax"
.Lstr654:
    .asciz "    jne .L%d"
.Lstr655:
    .asciz "    xorl %%eax, %%eax"
.Lstr656:
    .asciz "    jmp .L%d"
.Lstr657:
    .asciz "    movl $1, %%eax"
.Lstr658:
    .asciz "    testq %%rax, %%rax"
.Lstr659:
    .asciz "    je .L%d"
.Lstr660:
    .asciz "    jmp .L%d"
.Lstr661:
    .asciz "    testq %%rax, %%rax"
.Lstr662:
    .asciz "    je .L%d"
.Lstr663:
    .asciz "    jmp .L%d"
.Lstr664:
    .asciz "    imull %%ecx, %%eax"
.Lstr665:
    .asciz "    imulq %%rcx, %%rax"
.Lstr666:
    .asciz "    movl %%eax, %%r8d"
.Lstr667:
    .asciz "    movl %%ecx, %%eax"
.Lstr668:
    .asciz "    cltd"
.Lstr669:
    .asciz "    idivl %%r8d"
.Lstr670:
    .asciz "    movl %%edx, %%eax"
.Lstr671:
    .asciz "    movq %%rax, %%r8"
.Lstr672:
    .asciz "    movq %%rcx, %%rax"
.Lstr673:
    .asciz "    cqto"
.Lstr674:
    .asciz "    idivq %%r8"
.Lstr675:
    .asciz "    movq %%rdx, %%rax"
.Lstr676:
    .asciz "    andl %%ecx, %%eax"
.Lstr677:
    .asciz "    andq %%rcx, %%rax"
.Lstr678:
    .asciz "    orl %%ecx, %%eax"
.Lstr679:
    .asciz "    orq %%rcx, %%rax"
.Lstr680:
    .asciz "    xorl %%ecx, %%eax"
.Lstr681:
    .asciz "    xorq %%rcx, %%rax"
.Lstr682:
    .asciz "    movq %%rax, %%r8"
.Lstr683:
    .asciz "    movq %%rcx, %%rax"
.Lstr684:
    .asciz "    movq %%r8, %%rcx"
.Lstr685:
    .asciz "    sall %%cl, %%eax"
.Lstr686:
    .asciz "    salq %%cl, %%rax"
.Lstr687:
    .asciz "    sarl %%cl, %%eax"
.Lstr688:
    .asciz "    sarq %%cl, %%rax"
.Lstr689:
    .asciz "    imull %%ecx, %%eax"
.Lstr690:
    .asciz "    imulq %%rcx, %%rax"
.Lstr691:
    .asciz "    movl %%eax, %%r8d"
.Lstr692:
    .asciz "    movl %%ecx, %%eax"
.Lstr693:
    .asciz "    cltd"
.Lstr694:
    .asciz "    idivl %%r8d"
.Lstr695:
    .asciz "    movl %%edx, %%eax"
.Lstr696:
    .asciz "    movq %%rax, %%r8"
.Lstr697:
    .asciz "    movq %%rcx, %%rax"
.Lstr698:
    .asciz "    cqto"
.Lstr699:
    .asciz "    idivq %%r8"
.Lstr700:
    .asciz "    movq %%rdx, %%rax"
.Lstr701:
    .asciz "    andl %%ecx, %%eax"
.Lstr702:
    .asciz "    andq %%rcx, %%rax"
.Lstr703:
    .asciz "    orl %%ecx, %%eax"
.Lstr704:
    .asciz "    orq %%rcx, %%rax"
.Lstr705:
    .asciz "    xorl %%ecx, %%eax"
.Lstr706:
    .asciz "    xorq %%rcx, %%rax"
.Lstr707:
    .asciz "    movq %%rax, %%r8"
.Lstr708:
    .asciz "    movq %%rcx, %%rax"
.Lstr709:
    .asciz "    movq %%r8, %%rcx"
.Lstr710:
    .asciz "    sall %%cl, %%eax"
.Lstr711:
    .asciz "    salq %%cl, %%rax"
.Lstr712:
    .asciz "    sarl %%cl, %%eax"
.Lstr713:
    .asciz "    sarq %%cl, %%rax"
.Lstr714:
    .asciz "    pushq %%rax"
.Lstr715:
    .asciz "    popq %%rcx"
.Lstr716:
    .asciz "    movb %%al, (%%rcx)"
.Lstr717:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr718:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr719:
    .asciz "    pushq %%rax"
.Lstr720:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr721:
    .asciz "    movl (%%rax), %%eax"
.Lstr722:
    .asciz "    movq (%%rax), %%rax"
.Lstr723:
    .asciz "    pushq %%rax"
.Lstr724:
    .asciz "    popq %%rcx"
.Lstr725:
    .asciz "    addq %%rcx, %%rax"
.Lstr726:
    .asciz "    popq %%rcx"
.Lstr727:
    .asciz "    movb %%al, (%%rcx)"
.Lstr728:
    .asciz "    addl %%ecx, %%eax"
.Lstr729:
    .asciz "    popq %%rcx"
.Lstr730:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr731:
    .asciz "    addq %%rcx, %%rax"
.Lstr732:
    .asciz "    popq %%rcx"
.Lstr733:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr734:
    .asciz "    pushq %%rax"
.Lstr735:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr736:
    .asciz "    movl (%%rax), %%eax"
.Lstr737:
    .asciz "    movq (%%rax), %%rax"
.Lstr738:
    .asciz "    pushq %%rax"
.Lstr739:
    .asciz "    popq %%rcx"
.Lstr740:
    .asciz "    subq %%rax, %%rcx"
.Lstr741:
    .asciz "    movq %%rcx, %%rax"
.Lstr742:
    .asciz "    popq %%rcx"
.Lstr743:
    .asciz "    movb %%al, (%%rcx)"
.Lstr744:
    .asciz "    subl %%eax, %%ecx"
.Lstr745:
    .asciz "    movl %%ecx, %%eax"
.Lstr746:
    .asciz "    popq %%rcx"
.Lstr747:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr748:
    .asciz "    subq %%rax, %%rcx"
.Lstr749:
    .asciz "    movq %%rcx, %%rax"
.Lstr750:
    .asciz "    popq %%rcx"
.Lstr751:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr752:
    .asciz "    pushq %%rax"
.Lstr753:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr754:
    .asciz "    movl (%%rax), %%eax"
.Lstr755:
    .asciz "    movq (%%rax), %%rax"
.Lstr756:
    .asciz "    pushq %%rax"
.Lstr757:
    .asciz "    popq %%rcx"
.Lstr758:
    .asciz "    popq %%rcx"
.Lstr759:
    .asciz "    movb %%al, (%%rcx)"
.Lstr760:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr761:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr762:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr763:
    .asciz "    movl (%%rax), %%ecx"
.Lstr764:
    .asciz "    movq (%%rax), %%rcx"
.Lstr765:
    .asciz "    addb $1, (%%rax)"
.Lstr766:
    .asciz "    addl $1, (%%rax)"
.Lstr767:
    .asciz "    addq $1, (%%rax)"
.Lstr768:
    .asciz "    subb $1, (%%rax)"
.Lstr769:
    .asciz "    subl $1, (%%rax)"
.Lstr770:
    .asciz "    subq $1, (%%rax)"
.Lstr771:
    .asciz "    movq %%rcx, %%rax"
.Lstr772:
    .asciz "    pushq %%rax"
.Lstr773:
    .asciz "    popq %%rcx"
.Lstr774:
    .asciz "    movb %%al, (%%rcx)"
.Lstr775:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr776:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr777:
    .asciz "    pushq %%rax"
.Lstr778:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr779:
    .asciz "    movl (%%rax), %%eax"
.Lstr780:
    .asciz "    movq (%%rax), %%rax"
.Lstr781:
    .asciz "    pushq %%rax"
.Lstr782:
    .asciz "    popq %%rcx"
.Lstr783:
    .asciz "    addq %%rcx, %%rax"
.Lstr784:
    .asciz "    popq %%rcx"
.Lstr785:
    .asciz "    movb %%al, (%%rcx)"
.Lstr786:
    .asciz "    addl %%ecx, %%eax"
.Lstr787:
    .asciz "    popq %%rcx"
.Lstr788:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr789:
    .asciz "    addq %%rcx, %%rax"
.Lstr790:
    .asciz "    popq %%rcx"
.Lstr791:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr792:
    .asciz "    pushq %%rax"
.Lstr793:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr794:
    .asciz "    movl (%%rax), %%eax"
.Lstr795:
    .asciz "    movq (%%rax), %%rax"
.Lstr796:
    .asciz "    pushq %%rax"
.Lstr797:
    .asciz "    popq %%rcx"
.Lstr798:
    .asciz "    subq %%rax, %%rcx"
.Lstr799:
    .asciz "    movq %%rcx, %%rax"
.Lstr800:
    .asciz "    popq %%rcx"
.Lstr801:
    .asciz "    movb %%al, (%%rcx)"
.Lstr802:
    .asciz "    subl %%eax, %%ecx"
.Lstr803:
    .asciz "    movl %%ecx, %%eax"
.Lstr804:
    .asciz "    popq %%rcx"
.Lstr805:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr806:
    .asciz "    subq %%rax, %%rcx"
.Lstr807:
    .asciz "    movq %%rcx, %%rax"
.Lstr808:
    .asciz "    popq %%rcx"
.Lstr809:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr810:
    .asciz "    pushq %%rax"
.Lstr811:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr812:
    .asciz "    movl (%%rax), %%eax"
.Lstr813:
    .asciz "    movq (%%rax), %%rax"
.Lstr814:
    .asciz "    pushq %%rax"
.Lstr815:
    .asciz "    popq %%rcx"
.Lstr816:
    .asciz "    popq %%rcx"
.Lstr817:
    .asciz "    movb %%al, (%%rcx)"
.Lstr818:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr819:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr820:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr821:
    .asciz "    movl (%%rax), %%ecx"
.Lstr822:
    .asciz "    movq (%%rax), %%rcx"
.Lstr823:
    .asciz "    addb $1, (%%rax)"
.Lstr824:
    .asciz "    addl $1, (%%rax)"
.Lstr825:
    .asciz "    addq $1, (%%rax)"
.Lstr826:
    .asciz "    subb $1, (%%rax)"
.Lstr827:
    .asciz "    subl $1, (%%rax)"
.Lstr828:
    .asciz "    subq $1, (%%rax)"
.Lstr829:
    .asciz "    movq %%rcx, %%rax"
.Lstr830:
    .asciz "    pushq %%rax"
.Lstr831:
    .asciz "    popq %%rcx"
.Lstr832:
    .asciz "    movb %%al, (%%rcx)"
.Lstr833:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr834:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr835:
    .asciz "    pushq %%rax"
.Lstr836:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr837:
    .asciz "    movl (%%rax), %%eax"
.Lstr838:
    .asciz "    movq (%%rax), %%rax"
.Lstr839:
    .asciz "    pushq %%rax"
.Lstr840:
    .asciz "    popq %%rcx"
.Lstr841:
    .asciz "    addq %%rcx, %%rax"
.Lstr842:
    .asciz "    popq %%rcx"
.Lstr843:
    .asciz "    movb %%al, (%%rcx)"
.Lstr844:
    .asciz "    addl %%ecx, %%eax"
.Lstr845:
    .asciz "    popq %%rcx"
.Lstr846:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr847:
    .asciz "    addq %%rcx, %%rax"
.Lstr848:
    .asciz "    popq %%rcx"
.Lstr849:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr850:
    .asciz "    pushq %%rax"
.Lstr851:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr852:
    .asciz "    movl (%%rax), %%eax"
.Lstr853:
    .asciz "    movq (%%rax), %%rax"
.Lstr854:
    .asciz "    pushq %%rax"
.Lstr855:
    .asciz "    popq %%rcx"
.Lstr856:
    .asciz "    subq %%rax, %%rcx"
.Lstr857:
    .asciz "    movq %%rcx, %%rax"
.Lstr858:
    .asciz "    popq %%rcx"
.Lstr859:
    .asciz "    movb %%al, (%%rcx)"
.Lstr860:
    .asciz "    subl %%eax, %%ecx"
.Lstr861:
    .asciz "    movl %%ecx, %%eax"
.Lstr862:
    .asciz "    popq %%rcx"
.Lstr863:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr864:
    .asciz "    subq %%rax, %%rcx"
.Lstr865:
    .asciz "    movq %%rcx, %%rax"
.Lstr866:
    .asciz "    popq %%rcx"
.Lstr867:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr868:
    .asciz "    pushq %%rax"
.Lstr869:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr870:
    .asciz "    movl (%%rax), %%eax"
.Lstr871:
    .asciz "    movq (%%rax), %%rax"
.Lstr872:
    .asciz "    pushq %%rax"
.Lstr873:
    .asciz "    popq %%rcx"
.Lstr874:
    .asciz "    popq %%rcx"
.Lstr875:
    .asciz "    movb %%al, (%%rcx)"
.Lstr876:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr877:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr878:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr879:
    .asciz "    movl (%%rax), %%ecx"
.Lstr880:
    .asciz "    movq (%%rax), %%rcx"
.Lstr881:
    .asciz "    addb $1, (%%rax)"
.Lstr882:
    .asciz "    addl $1, (%%rax)"
.Lstr883:
    .asciz "    addq $1, (%%rax)"
.Lstr884:
    .asciz "    subb $1, (%%rax)"
.Lstr885:
    .asciz "    subl $1, (%%rax)"
.Lstr886:
    .asciz "    subq $1, (%%rax)"
.Lstr887:
    .asciz "    movq %%rcx, %%rax"
.Lstr888:
    .asciz "    pushq %%rax"
.Lstr889:
    .asciz "    popq %%rcx"
.Lstr890:
    .asciz "    movb %%al, (%%rcx)"
.Lstr891:
    .asciz "    movl %%eax, (%%rcx)"
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
    .asciz "    addq %%rcx, %%rax"
.Lstr900:
    .asciz "    popq %%rcx"
.Lstr901:
    .asciz "    movb %%al, (%%rcx)"
.Lstr902:
    .asciz "    addl %%ecx, %%eax"
.Lstr903:
    .asciz "    popq %%rcx"
.Lstr904:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr905:
    .asciz "    addq %%rcx, %%rax"
.Lstr906:
    .asciz "    popq %%rcx"
.Lstr907:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr908:
    .asciz "    pushq %%rax"
.Lstr909:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr910:
    .asciz "    movl (%%rax), %%eax"
.Lstr911:
    .asciz "    movq (%%rax), %%rax"
.Lstr912:
    .asciz "    pushq %%rax"
.Lstr913:
    .asciz "    popq %%rcx"
.Lstr914:
    .asciz "    subq %%rax, %%rcx"
.Lstr915:
    .asciz "    movq %%rcx, %%rax"
.Lstr916:
    .asciz "    popq %%rcx"
.Lstr917:
    .asciz "    movb %%al, (%%rcx)"
.Lstr918:
    .asciz "    subl %%eax, %%ecx"
.Lstr919:
    .asciz "    movl %%ecx, %%eax"
.Lstr920:
    .asciz "    popq %%rcx"
.Lstr921:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr922:
    .asciz "    subq %%rax, %%rcx"
.Lstr923:
    .asciz "    movq %%rcx, %%rax"
.Lstr924:
    .asciz "    popq %%rcx"
.Lstr925:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr926:
    .asciz "    pushq %%rax"
.Lstr927:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr928:
    .asciz "    movl (%%rax), %%eax"
.Lstr929:
    .asciz "    movq (%%rax), %%rax"
.Lstr930:
    .asciz "    pushq %%rax"
.Lstr931:
    .asciz "    popq %%rcx"
.Lstr932:
    .asciz "    popq %%rcx"
.Lstr933:
    .asciz "    movb %%al, (%%rcx)"
.Lstr934:
    .asciz "    movl %%eax, (%%rcx)"
.Lstr935:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr936:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr937:
    .asciz "    movl (%%rax), %%ecx"
.Lstr938:
    .asciz "    movq (%%rax), %%rcx"
.Lstr939:
    .asciz "    addb $1, (%%rax)"
.Lstr940:
    .asciz "    addl $1, (%%rax)"
.Lstr941:
    .asciz "    addq $1, (%%rax)"
.Lstr942:
    .asciz "    subb $1, (%%rax)"
.Lstr943:
    .asciz "    subl $1, (%%rax)"
.Lstr944:
    .asciz "    subq $1, (%%rax)"
.Lstr945:
    .asciz "    movq %%rcx, %%rax"
.Lstr946:
    .asciz "%r10"
.Lstr947:
    .asciz "%r8"
.Lstr948:
    .asciz "%r9"
.Lstr949:
    .asciz "%rsi"
.Lstr950:
    .asciz "%rdi"
.Lstr951:
    .asciz "%r10"
.Lstr952:
    .asciz "%r10"
.Lstr953:
    .asciz "%r8"
.Lstr954:
    .asciz "%r9"
.Lstr955:
    .asciz "%rsi"
.Lstr956:
    .asciz "%rdi"
.Lstr957:
    .asciz "%r10"
.Lstr958:
    .asciz "%rax"
.Lstr959:
    .asciz "%rbx"
.Lstr960:
    .asciz "%rcx"
.Lstr961:
    .asciz "%rdx"
.Lstr962:
    .asciz "%rax"
.Lstr963:
    .asciz "%rbx"
.Lstr964:
    .asciz "%rcx"
.Lstr965:
    .asciz "%rdx"
.Lstr966:
    .asciz "%al"
.Lstr967:
    .asciz "%bl"
.Lstr968:
    .asciz "%cl"
.Lstr969:
    .asciz "%dl"
.Lstr970:
    .asciz "%r10b"
.Lstr971:
    .asciz "%r8b"
.Lstr972:
    .asciz "%r9b"
.Lstr973:
    .asciz "%sil"
.Lstr974:
    .asciz "%dil"
.Lstr975:
    .asciz "%eax"
.Lstr976:
    .asciz "%ebx"
.Lstr977:
    .asciz "%ecx"
.Lstr978:
    .asciz "%edx"
.Lstr979:
    .asciz "%r10d"
.Lstr980:
    .asciz "%r8d"
.Lstr981:
    .asciz "%r9d"
.Lstr982:
    .asciz "%esi"
.Lstr983:
    .asciz "%edi"
.Lstr984:
    .asciz "%al"
.Lstr985:
    .asciz "%bl"
.Lstr986:
    .asciz "%cl"
.Lstr987:
    .asciz "%dl"
.Lstr988:
    .asciz "%r10b"
.Lstr989:
    .asciz "%r8b"
.Lstr990:
    .asciz "%r9b"
.Lstr991:
    .asciz "%sil"
.Lstr992:
    .asciz "%dil"
.Lstr993:
    .asciz "%eax"
.Lstr994:
    .asciz "%ebx"
.Lstr995:
    .asciz "%ecx"
.Lstr996:
    .asciz "%edx"
.Lstr997:
    .asciz "%r10d"
.Lstr998:
    .asciz "%r8d"
.Lstr999:
    .asciz "%r9d"
.Lstr1000:
    .asciz "%esi"
.Lstr1001:
    .asciz "%edi"
.Lstr1002:
    .asciz "%d"
.Lstr1003:
    .asciz "asm operand number out of range"
.Lstr1004:
    .asciz "unsupported asm template modifier"
.Lstr1005:
    .asciz "%d"
.Lstr1006:
    .asciz "asm operand number out of range"
.Lstr1007:
    .asciz "unsupported asm template modifier"
.Lstr1008:
    .asciz "undefined variable in asm"
.Lstr1009:
    .asciz "%s(%%rip)"
.Lstr1010:
    .asciz "%d(%%rbp)"
.Lstr1011:
    .asciz "%s(%%rip)"
.Lstr1012:
    .asciz "%d(%%rbp)"
.Lstr1013:
    .asciz "complex asm output address needs a register constraint"
.Lstr1014:
    .asciz "    pushq %%rax"
.Lstr1015:
    .asciz "undefined variable in asm"
.Lstr1016:
    .asciz "%s(%%rip)"
.Lstr1017:
    .asciz "%d(%%rbp)"
.Lstr1018:
    .asciz "%s(%%rip)"
.Lstr1019:
    .asciz "%d(%%rbp)"
.Lstr1020:
    .asciz "complex asm output address needs a register constraint"
.Lstr1021:
    .asciz "    pushq %%rax"
.Lstr1022:
    .asciz "expected constraint string in asm"
.Lstr1023:
    .asciz "too many asm operands"
.Lstr1024:
    .asciz "unsupported asm output constraint"
.Lstr1025:
    .asciz "unsupported asm output constraint"
.Lstr1026:
    .asciz "unsupported asm output constraint"
.Lstr1027:
    .asciz "read-write asm operands are not supported"
.Lstr1028:
    .asciz "    pushq %%rax"
.Lstr1029:
    .asciz "asm Nd operand needs an integer constant"
.Lstr1030:
    .asciz "asm Nd operand out of range"
.Lstr1031:
    .asciz "$%d"
.Lstr1032:
    .asciz "unsupported asm input constraint"
.Lstr1033:
    .asciz "expected constraint string in asm"
.Lstr1034:
    .asciz "too many asm operands"
.Lstr1035:
    .asciz "unsupported asm output constraint"
.Lstr1036:
    .asciz "unsupported asm output constraint"
.Lstr1037:
    .asciz "unsupported asm output constraint"
.Lstr1038:
    .asciz "read-write asm operands are not supported"
.Lstr1039:
    .asciz "    pushq %%rax"
.Lstr1040:
    .asciz "asm Nd operand needs an integer constant"
.Lstr1041:
    .asciz "asm Nd operand out of range"
.Lstr1042:
    .asciz "$%d"
.Lstr1043:
    .asciz "unsupported asm input constraint"
.Lstr1044:
    .asciz "too many register asm operands"
.Lstr1045:
    .asciz "duplicate asm register"
.Lstr1046:
    .asciz "duplicate asm register"
.Lstr1047:
    .asciz "too many register asm operands"
.Lstr1048:
    .asciz "(%s)"
.Lstr1049:
    .asciz "too many register asm operands"
.Lstr1050:
    .asciz "duplicate asm register"
.Lstr1051:
    .asciz "duplicate asm register"
.Lstr1052:
    .asciz "too many register asm operands"
.Lstr1053:
    .asciz "(%s)"
.Lstr1054:
    .asciz "    pushq %%rbx"
.Lstr1055:
    .asciz "    movq %d(%%rsp), %s"
.Lstr1056:
    .asciz "    movb %s, %s"
.Lstr1057:
    .asciz "    movl %s, %s"
.Lstr1058:
    .asciz "    movq %s, %s"
.Lstr1059:
    .asciz "    movq %d(%%rsp), %%r11"
.Lstr1060:
    .asciz ""
.Lstr1061:
    .asciz "    movb %s, (%%r11)"
.Lstr1062:
    .asciz "    movl %s, (%%r11)"
.Lstr1063:
    .asciz "    movq %s, (%%r11)"
.Lstr1064:
    .asciz "    addq $%d, %%rsp"
.Lstr1065:
    .asciz "    popq %%rbx"
.Lstr1066:
    .asciz "    pushq %%rbx"
.Lstr1067:
    .asciz "    movq %d(%%rsp), %s"
.Lstr1068:
    .asciz "    movb %s, %s"
.Lstr1069:
    .asciz "    movl %s, %s"
.Lstr1070:
    .asciz "    movq %s, %s"
.Lstr1071:
    .asciz "    movq %d(%%rsp), %%r11"
.Lstr1072:
    .asciz ""
.Lstr1073:
    .asciz "    movb %s, (%%r11)"
.Lstr1074:
    .asciz "    movl %s, (%%r11)"
.Lstr1075:
    .asciz "    movq %s, (%%r11)"
.Lstr1076:
    .asciz "    addq $%d, %%rsp"
.Lstr1077:
    .asciz "    popq %%rbx"
.Lstr1078:
    .asciz "expected string literal in asm"
.Lstr1079:
    .asciz "asm template too long"
.Lstr1080:
    .asciz "expected ',' or ':' in asm"
.Lstr1081:
    .asciz "expected ',' or ':' in asm"
.Lstr1082:
    .asciz "expected clobber string in asm"
.Lstr1083:
    .asciz "expected string literal in asm"
.Lstr1084:
    .asciz "asm template too long"
.Lstr1085:
    .asciz "expected ',' or ':' in asm"
.Lstr1086:
    .asciz "expected ',' or ':' in asm"
.Lstr1087:
    .asciz "expected clobber string in asm"
.Lstr1088:
    .asciz "    cmpq $0, %%rax"
.Lstr1089:
    .asciz "    je .L%d"
.Lstr1090:
    .asciz "    jmp .L%d"
.Lstr1091:
    .asciz "unsigned"
.Lstr1092:
    .asciz "signed"
.Lstr1093:
    .asciz "unsigned"
.Lstr1094:
    .asciz "long"
.Lstr1095:
    .asciz "int"
.Lstr1096:
    .asciz "long"
.Lstr1097:
    .asciz "int"
.Lstr1098:
    .asciz "expected variable name"
.Lstr1099:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1100:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1101:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1102:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1103:
    .asciz "    jmp .L%d"
.Lstr1104:
    .asciz "    jmp .L%d"
.Lstr1105:
    .asciz "    cmpq $0, %%rax"
.Lstr1106:
    .asciz "    jne .L%d"
.Lstr1107:
    .asciz "    jmp .L%d"
.Lstr1108:
    .asciz "expected 'while' after do body"
.Lstr1109:
    .asciz "    cmpq $0, %%rax"
.Lstr1110:
    .asciz "    jne .L%d"
.Lstr1111:
    .asciz "    cmpq $0, %%rax"
.Lstr1112:
    .asciz "    je .L%d"
.Lstr1113:
    .asciz "    jmp .L%d"
.Lstr1114:
    .asciz "    pushq %%rax"
.Lstr1115:
    .asciz "    pushq $0"
.Lstr1116:
    .asciz "    jmp .L%d"
.Lstr1117:
    .asciz "    jmp .L%d"
.Lstr1118:
    .asciz "    movq 8(%%rsp), %%rax"
.Lstr1119:
    .asciz "    cmpq $%d, %%rax"
.Lstr1120:
    .asciz "    je .L%d"
.Lstr1121:
    .asciz "    jmp .L%d"
.Lstr1122:
    .asciz "    addq $16, %%rsp"
.Lstr1123:
    .asciz "    jmp .L%d"
.Lstr1124:
    .asciz "    jmp .L%d"
.Lstr1125:
    .asciz "expected label name"
.Lstr1126:
    .asciz "    jmp %s"
.Lstr1127:
    .asciz "    leave"
.Lstr1128:
    .asciz "    ret"
.Lstr1129:
    .asciz "unsigned"
.Lstr1130:
    .asciz "signed"
.Lstr1131:
    .asciz "unsigned"
.Lstr1132:
    .asciz "long"
.Lstr1133:
    .asciz "int"
.Lstr1134:
    .asciz "%s:"
.Lstr1135:
    .asciz "expected variable name"
.Lstr1136:
    .asciz "undefined macro"
.Lstr1137:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1138:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1139:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1140:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1141:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1142:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1143:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1144:
    .asciz "long"
.Lstr1145:
    .asciz "int"
.Lstr1146:
    .asciz "expected variable name"
.Lstr1147:
    .asciz "undefined macro"
.Lstr1148:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1149:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1150:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1151:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1152:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1153:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1154:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1155:
    .asciz "    cmpq $0, %%rax"
.Lstr1156:
    .asciz "    je .L%d"
.Lstr1157:
    .asciz "    jmp .L%d"
.Lstr1158:
    .asciz "unsigned"
.Lstr1159:
    .asciz "signed"
.Lstr1160:
    .asciz "unsigned"
.Lstr1161:
    .asciz "long"
.Lstr1162:
    .asciz "int"
.Lstr1163:
    .asciz "long"
.Lstr1164:
    .asciz "int"
.Lstr1165:
    .asciz "expected variable name"
.Lstr1166:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1167:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1168:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1169:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1170:
    .asciz "    jmp .L%d"
.Lstr1171:
    .asciz "    jmp .L%d"
.Lstr1172:
    .asciz "    cmpq $0, %%rax"
.Lstr1173:
    .asciz "    jne .L%d"
.Lstr1174:
    .asciz "    jmp .L%d"
.Lstr1175:
    .asciz "expected 'while' after do body"
.Lstr1176:
    .asciz "    cmpq $0, %%rax"
.Lstr1177:
    .asciz "    jne .L%d"
.Lstr1178:
    .asciz "    cmpq $0, %%rax"
.Lstr1179:
    .asciz "    je .L%d"
.Lstr1180:
    .asciz "    jmp .L%d"
.Lstr1181:
    .asciz "    pushq %%rax"
.Lstr1182:
    .asciz "    pushq $0"
.Lstr1183:
    .asciz "    jmp .L%d"
.Lstr1184:
    .asciz "    jmp .L%d"
.Lstr1185:
    .asciz "    movq 8(%%rsp), %%rax"
.Lstr1186:
    .asciz "    cmpq $%d, %%rax"
.Lstr1187:
    .asciz "    je .L%d"
.Lstr1188:
    .asciz "    jmp .L%d"
.Lstr1189:
    .asciz "    addq $16, %%rsp"
.Lstr1190:
    .asciz "    jmp .L%d"
.Lstr1191:
    .asciz "    jmp .L%d"
.Lstr1192:
    .asciz "expected label name"
.Lstr1193:
    .asciz "    jmp %s"
.Lstr1194:
    .asciz "    leave"
.Lstr1195:
    .asciz "    ret"
.Lstr1196:
    .asciz "unsigned"
.Lstr1197:
    .asciz "signed"
.Lstr1198:
    .asciz "unsigned"
.Lstr1199:
    .asciz "long"
.Lstr1200:
    .asciz "int"
.Lstr1201:
    .asciz "%s:"
.Lstr1202:
    .asciz "expected variable name"
.Lstr1203:
    .asciz "undefined macro"
.Lstr1204:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1205:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1206:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1207:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1208:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1209:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1210:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1211:
    .asciz "long"
.Lstr1212:
    .asciz "int"
.Lstr1213:
    .asciz "expected variable name"
.Lstr1214:
    .asciz "undefined macro"
.Lstr1215:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr1216:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1217:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1218:
    .asciz "    movl %%eax, %s(%%rip)"
.Lstr1219:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1220:
    .asciz "    movl %%eax, %d(%%rbp)"
.Lstr1221:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr1222:
    .asciz "unsigned"
.Lstr1223:
    .asciz "signed"
.Lstr1224:
    .asciz "unsigned"
.Lstr1225:
    .asciz "long"
.Lstr1226:
    .asciz "int"
.Lstr1227:
    .asciz "long"
.Lstr1228:
    .asciz "int"
.Lstr1229:
    .asciz "expected parameter name"
.Lstr1230:
    .asciz "expected function body"
.Lstr1231:
    .asciz "    .globl %s"
.Lstr1232:
    .asciz "%s:"
.Lstr1233:
    .asciz "    pushq %%rbp"
.Lstr1234:
    .asciz "    movq %%rsp, %%rbp"
.Lstr1235:
    .asciz "    subq $%d, %%rsp"
.Lstr1236:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr1237:
    .asciz "    leave"
.Lstr1238:
    .asciz "    ret"
.Lstr1239:
    .asciz "unsigned"
.Lstr1240:
    .asciz "signed"
.Lstr1241:
    .asciz "unsigned"
.Lstr1242:
    .asciz "long"
.Lstr1243:
    .asciz "int"
.Lstr1244:
    .asciz "long"
.Lstr1245:
    .asciz "int"
.Lstr1246:
    .asciz "expected parameter name"
.Lstr1247:
    .asciz "expected function body"
.Lstr1248:
    .asciz "    .globl %s"
.Lstr1249:
    .asciz "%s:"
.Lstr1250:
    .asciz "    pushq %%rbp"
.Lstr1251:
    .asciz "    movq %%rsp, %%rbp"
.Lstr1252:
    .asciz "    subq $%d, %%rsp"
.Lstr1253:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr1254:
    .asciz "    leave"
.Lstr1255:
    .asciz "    ret"
.Lstr1256:
    .asciz "expected '{' after enum"
.Lstr1257:
    .asciz "expected enumerator name"
.Lstr1258:
    .asciz "too many symbols"
.Lstr1259:
    .asciz "expected integer constant"
.Lstr1260:
    .asciz "expected '{' after enum"
.Lstr1261:
    .asciz "expected enumerator name"
.Lstr1262:
    .asciz "too many symbols"
.Lstr1263:
    .asciz "expected integer constant"
.Lstr1264:
    .asciz "expected '{' in struct"
.Lstr1265:
    .asciz "expected '{' in struct"
.Lstr1266:
    .asciz ""
.Lstr1267:
    .asciz "too many symbols"
.Lstr1268:
    .asciz ""
.Lstr1269:
    .asciz "too many symbols"
.Lstr1270:
    .asciz "    .byte %d"
.Lstr1271:
    .asciz "    .word %d"
.Lstr1272:
    .asciz "    .long %d"
.Lstr1273:
    .asciz "    .quad %d"
.Lstr1274:
    .asciz "    .byte %d"
.Lstr1275:
    .asciz "    .word %d"
.Lstr1276:
    .asciz "    .long %d"
.Lstr1277:
    .asciz "    .quad %d"
.Lstr1278:
    .asciz "    .bss"
.Lstr1279:
    .asciz "    .globl %s"
.Lstr1280:
    .asciz "%s:"
.Lstr1281:
    .asciz "    .space %d"
.Lstr1282:
    .asciz "    .text"
.Lstr1283:
    .asciz "    .bss"
.Lstr1284:
    .asciz "    .globl %s"
.Lstr1285:
    .asciz "%s:"
.Lstr1286:
    .asciz "    .space %d"
.Lstr1287:
    .asciz "    .text"
.Lstr1288:
    .asciz "    .data"
.Lstr1289:
    .asciz "    .globl %s"
.Lstr1290:
    .asciz "%s:"
.Lstr1291:
    .asciz "    .data"
.Lstr1292:
    .asciz "    .globl %s"
.Lstr1293:
    .asciz "%s:"
.Lstr1294:
    .asciz "    .asciz \""
.Lstr1295:
    .asciz "\"\n"
.Lstr1296:
    .asciz "    .space %d"
.Lstr1297:
    .asciz "    .text"
.Lstr1298:
    .asciz "too many pointer initializers"
.Lstr1299:
    .asciz "    .quad 0"
.Lstr1300:
    .asciz "    .text"
.Lstr1301:
    .asciz "unsupported global initializer"
.Lstr1302:
    .asciz "expected '}' in global initializer"
.Lstr1303:
    .asciz "    .space %d"
.Lstr1304:
    .asciz "    .text"
.Lstr1305:
    .asciz "    .text"
.Lstr1306:
    .asciz "    .asciz \""
.Lstr1307:
    .asciz "\"\n"
.Lstr1308:
    .asciz "    .space %d"
.Lstr1309:
    .asciz "    .text"
.Lstr1310:
    .asciz "too many pointer initializers"
.Lstr1311:
    .asciz "    .quad 0"
.Lstr1312:
    .asciz "    .text"
.Lstr1313:
    .asciz "unsupported global initializer"
.Lstr1314:
    .asciz "expected '}' in global initializer"
.Lstr1315:
    .asciz "    .space %d"
.Lstr1316:
    .asciz "    .text"
.Lstr1317:
    .asciz "    .text"
.Lstr1318:
    .asciz "unsigned"
.Lstr1319:
    .asciz "signed"
.Lstr1320:
    .asciz "unsigned"
.Lstr1321:
    .asciz "long"
.Lstr1322:
    .asciz "int"
.Lstr1323:
    .asciz "long"
.Lstr1324:
    .asciz "int"
.Lstr1325:
    .asciz "expected identifier"
.Lstr1326:
    .asciz "undefined macro"
.Lstr1327:
    .asciz "expected ';' or '(' after global"
.Lstr1328:
    .asciz "expected identifier"
.Lstr1329:
    .asciz "undefined macro"
.Lstr1330:
    .asciz "expected ';' or '(' after global"
.Lstr1331:
    .asciz "global must be int, char, float, or double"
.Lstr1332:
    .asciz "unsigned"
.Lstr1333:
    .asciz "signed"
.Lstr1334:
    .asciz "unsigned"
.Lstr1335:
    .asciz "long"
.Lstr1336:
    .asciz "int"
.Lstr1337:
    .asciz "long"
.Lstr1338:
    .asciz "int"
.Lstr1339:
    .asciz "expected identifier"
.Lstr1340:
    .asciz "undefined macro"
.Lstr1341:
    .asciz "expected ';' or '(' after global"
.Lstr1342:
    .asciz "expected identifier"
.Lstr1343:
    .asciz "undefined macro"
.Lstr1344:
    .asciz "expected ';' or '(' after global"
.Lstr1345:
    .asciz "global must be int, char, float, or double"
.Lstr1346:
    .asciz ".LCf%d:\n    .float %s\n"
.Lstr1347:
    .asciz ".LCf%d:\n    .double %s\n"
.Lstr1348:
    .asciz ".LCf%d:\n    .float %s\n"
.Lstr1349:
    .asciz ".LCf%d:\n    .double %s\n"
.Lstr1350:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr1351:
    .asciz "\"\n"
.Lstr1352:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr1353:
    .asciz "\"\n"
.Lstr1354:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr1355:
    .asciz "r"
.Lstr1356:
    .asciz "Cannot open input file: %s\n"
.Lstr1357:
    .asciz "Invalid file size\n"
.Lstr1358:
    .asciz "Error reading file\n"
.Lstr1359:
    .asciz "EXIT_FAILURE"
.Lstr1360:
    .asciz "EXIT_SUCCESS"
.Lstr1361:
    .asciz "SEEK_SET"
.Lstr1362:
    .asciz "SEEK_CUR"
.Lstr1363:
    .asciz "SEEK_END"
.Lstr1364:
    .asciz "NULL"
.Lstr1365:
    .asciz "size_t"
.Lstr1366:
    .asciz "va_list"
.Lstr1367:
    .asciz "FILE"
.Lstr1368:
    .asciz "    .section .text"
.Lstr1369:
    .asciz "    .section .rodata"
.Lstr1370:
    .asciz "    .section .text"
.Lstr1371:
    .asciz "    .weak _start"
.Lstr1372:
    .asciz "    .globl _start"
.Lstr1373:
    .asciz "_start:"
.Lstr1374:
    .asciz "    subq $8, %rsp"
.Lstr1375:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr1376:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1377:
    .asciz "    movq 8(%rsp), %rdi"
.Lstr1378:
    .asciz "    leaq 16(%rsp), %rsi"
.Lstr1379:
    .asciz "    leaq 24(%rsp,%rdi,8), %rdx"
.Lstr1380:
    .asciz "    call main"
.Lstr1381:
    .asciz "    addq $8, %rsp"
.Lstr1382:
    .asciz "    movq %rax, %rdi"
.Lstr1383:
    .asciz "    movq $60, %rax"
.Lstr1384:
    .asciz "    syscall"
.Lstr1385:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr1386:
    .asciz "r"
.Lstr1387:
    .asciz "Cannot open input file: %s\n"
.Lstr1388:
    .asciz "Invalid file size\n"
.Lstr1389:
    .asciz "Error reading file\n"
.Lstr1390:
    .asciz "EXIT_FAILURE"
.Lstr1391:
    .asciz "EXIT_SUCCESS"
.Lstr1392:
    .asciz "SEEK_SET"
.Lstr1393:
    .asciz "SEEK_CUR"
.Lstr1394:
    .asciz "SEEK_END"
.Lstr1395:
    .asciz "NULL"
.Lstr1396:
    .asciz "size_t"
.Lstr1397:
    .asciz "va_list"
.Lstr1398:
    .asciz "FILE"
.Lstr1399:
    .asciz "    .section .text"
.Lstr1400:
    .asciz "    .section .rodata"
.Lstr1401:
    .asciz "    .section .text"
.Lstr1402:
    .asciz "    .weak _start"
.Lstr1403:
    .asciz "    .globl _start"
.Lstr1404:
    .asciz "_start:"
.Lstr1405:
    .asciz "    subq $8, %rsp"
.Lstr1406:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr1407:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr1408:
    .asciz "    movq 8(%rsp), %rdi"
.Lstr1409:
    .asciz "    leaq 16(%rsp), %rsi"
.Lstr1410:
    .asciz "    leaq 24(%rsp,%rdi,8), %rdx"
.Lstr1411:
    .asciz "    call main"
.Lstr1412:
    .asciz "    addq $8, %rsp"
.Lstr1413:
    .asciz "    movq %rax, %rdi"
.Lstr1414:
    .asciz "    movq $60, %rax"
.Lstr1415:
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
