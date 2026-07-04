    .section .text
    .bss
    .globl input_ptr
input_ptr:
    .space 8
    .text
    .bss
    .globl source_start
source_start:
    .space 8
    .text
    .bss
    .globl token
token:
    .space 64
    .text
    .bss
    .globl tok
tok:
    .space 8
    .text
    .bss
    .globl line
line:
    .space 8
    .text
    .bss
    .globl output
output:
    .space 8
    .text
    .bss
    .globl symbols
symbols:
    .space 196608
    .text
    .bss
    .globl symbol_count
symbol_count:
    .space 8
    .text
    .bss
    .globl stack_size
stack_size:
    .space 8
    .text
    .bss
    .globl label_counter
label_counter:
    .space 8
    .text
    .bss
    .globl function_has_return
function_has_return:
    .space 8
    .text
    .bss
    .globl emit_enabled
emit_enabled:
    .space 8
    .text
    .bss
    .globl max_func_stack
max_func_stack:
    .space 8
    .text
    .bss
    .globl assign_size
assign_size:
    .space 8
    .text
    .bss
    .globl expr_pointed
expr_pointed:
    .space 8
    .text
    .bss
    .globl current_elem_size
current_elem_size:
    .space 8
    .text
    .bss
    .globl no_postfix_deref
no_postfix_deref:
    .space 8
    .text
    .bss
    .globl switch_case_values
switch_case_values:
    .space 2048
    .text
    .bss
    .globl switch_case_labels
switch_case_labels:
    .space 2048
    .text
    .bss
    .globl switch_case_count
switch_case_count:
    .space 8
    .text
    .bss
    .globl switch_has_default
switch_has_default:
    .space 8
    .text
    .bss
    .globl switch_default_label
switch_default_label:
    .space 8
    .text
    .bss
    .globl break_target
break_target:
    .space 8
    .text
    .bss
    .globl break_target_valid
break_target_valid:
    .space 8
    .text
    .bss
    .globl continue_target
continue_target:
    .space 8
    .text
    .bss
    .globl continue_target_valid
continue_target_valid:
    .space 8
    .text
    .bss
    .globl str_label_counter
str_label_counter:
    .space 8
    .text
    .bss
    .globl peek_mode
peek_mode:
    .space 8
    .text
    .bss
    .globl string_pool
string_pool:
    .space 16384
    .text
    .bss
    .globl string_count
string_count:
    .space 8
    .text
    .bss
    .globl struct_total_size
struct_total_size:
    .space 8
    .text
    .bss
    .globl struct_member_names
struct_member_names:
    .space 1024
    .text
    .bss
    .globl struct_member_offsets
struct_member_offsets:
    .space 256
    .text
    .bss
    .globl struct_member_sizes
struct_member_sizes:
    .space 256
    .text
    .bss
    .globl struct_member_elem_sizes
struct_member_elem_sizes:
    .space 256
    .text
    .bss
    .globl struct_member_count
struct_member_count:
    .space 8
    .text
    .bss
    .globl macros
macros:
    .space 10240
    .text
    .bss
    .globl macro_count
macro_count:
    .space 8
    .text
    .globl find_macro
find_macro:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -16(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    jmp .L8
.L6:
    leaq macros(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L10
    movq -32(%rbp), %rax
    leave
    ret
.L10:
.L7:
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L8
.L8:
    movq -32(%rbp), %rax
    pushq %rax
    movq macro_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L6
.L9:
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
    subq $80, %rsp
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
    je .L18
    leaq .Lstr1(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L18:
    leaq macros(%rip), %rax
    pushq %rax
    movq macro_count(%rip), %rax
    popq %rcx
    imulq $40, %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L20
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
.L20:
    movq $0, %rax
    movq %rax, -80(%rbp)
.L22:
    movq -80(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L23
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
    jmp .L22
.L23:
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
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
    .globl error
error:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -16(%rbp)
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr3(%rip), %rax
    pushq %rax
    movq line(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 32(%rsp), %rdi
    movq 24(%rsp), %rsi
    movq 16(%rsp), %rdx
    movq 8(%rsp), %rcx
    movq 0(%rsp), %r8
    addq $40, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call exit
    movq 8(%rsp), %rsp
    leave
    ret
    .globl safe_malloc
safe_malloc:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call malloc
    movq 8(%rsp), %rsp
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L26
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr5(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call exit
    movq 8(%rsp), %rsp
.L26:
    movq -32(%rbp), %rax
    leave
    ret
    leave
    ret
    .globl my_isspace
my_isspace:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L40
    movq $1, %rax
    leave
    ret
.L40:
    movq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L42
    movq $1, %rax
    leave
    ret
.L42:
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L44
    movq $1, %rax
    leave
    ret
.L44:
    movq -16(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L46
    movq $1, %rax
    leave
    ret
.L46:
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L48
    movq $1, %rax
    leave
    ret
.L48:
    movq -16(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L50
    movq $1, %rax
    leave
    ret
.L50:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl my_isalpha
my_isalpha:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $122, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L56
    movq $1, %rax
    leave
    ret
.L56:
    movq -16(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $90, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L58
    movq $1, %rax
    leave
    ret
.L58:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl my_isdigit
my_isdigit:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
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
    .globl my_isalnum
my_isalnum:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalpha
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L68
    movq $1, %rax
    leave
    ret
.L68:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isdigit
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L70
    movq $1, %rax
    leave
    ret
.L70:
    movq $0, %rax
    leave
    ret
    leave
    ret
    .globl next_token
next_token:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
restart:
    leaq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L215:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L216
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L217
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L217:
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
    jmp .L215
.L216:
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L219
    leaq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L219:
    movq -16(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L221
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L223:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L224
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L225
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L224
.L225:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L227
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L227:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L223
.L224:
    jmp restart
.L221:
    movq -16(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L229
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L231:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L232
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L231
.L232:
    jmp restart
.L229:
    movq -16(%rbp), %rax
    pushq %rax
    movq $35, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L233
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L235:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L236
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L237
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L237:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L235
.L236:
    movq input_ptr(%rip), %rax
    pushq %rax
    leaq .Lstr42(%rip), %rax
    pushq %rax
    movq $6, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strncmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L239
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L241:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L242
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L241
.L242:
    movq $0, %rax
    movq %rax, -64(%rbp)
.L243:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalnum
    movq 8(%rsp), %rsp
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L244
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
    jmp .L243
.L244:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L245:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isspace
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L246
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L245
.L246:
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isdigit
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L247
.L249:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isdigit
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L250
    leaq -80(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $10, %rax
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
    jmp .L249
.L250:
.L247:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq 8(%rsp), %rsp
.L239:
.L251:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L252
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L251
.L252:
    jmp restart
.L233:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalpha
    movq 8(%rsp), %rsp
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L253
    leaq token(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L255:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isalnum
    movq 8(%rsp), %rsp
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L256
    movq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
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
    jmp .L255
.L256:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr43(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L257
    leaq tok(%rip), %rax
    pushq %rax
    movq $258, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L258
.L257:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr44(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L259
    leaq tok(%rip), %rax
    pushq %rax
    movq $259, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L260
.L259:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr45(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L261
    leaq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L262
.L261:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr46(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L263
    leaq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L264
.L263:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr47(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L265
    leaq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L266
.L265:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr48(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L267
    leaq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L268
.L267:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr49(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L269
    leaq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L270
.L269:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr50(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L271
    leaq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L272
.L271:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr51(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L273
    leaq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L274
.L273:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr52(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L275
    leaq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L276
.L275:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr53(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L277
    leaq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L278
.L277:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr54(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L279
    leaq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L280
.L279:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr55(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L281
    leaq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L282
.L281:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr56(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L283
    leaq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L284
.L283:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr57(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L285
    leaq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L286
.L285:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr58(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L287
    leaq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L288
.L287:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr59(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L289
    leaq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L290
.L289:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr60(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L291
    leaq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L292
.L291:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr61(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L293
    leaq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L294
.L293:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr62(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L295
    leaq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L296
.L295:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq 8(%rsp), %rsp
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L297
    leaq token(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr63(%rip), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq 8(%rsp), %rsp
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L298
.L297:
    leaq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    movq %rax, (%rcx)
.L298:
.L296:
.L294:
.L292:
.L290:
.L288:
.L286:
.L284:
.L282:
.L280:
.L278:
.L276:
.L274:
.L272:
.L270:
.L268:
.L266:
.L264:
.L262:
.L260:
.L258:
    leave
    ret
.L253:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isdigit
    movq 8(%rsp), %rsp
    cmpq $0, %rax
    je .L299
    leaq token(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L301:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call my_isdigit
    movq 8(%rsp), %rsp
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L302
    movq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
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
    jmp .L301
.L302:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L299:
    movq -16(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L303
    leaq token(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L305:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L306
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L307
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $110, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L309
    movq -32(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movb %al, (%rcx)
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
    jmp .L310
.L309:
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $116, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L311
    movq -32(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movb %al, (%rcx)
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
    jmp .L312
.L311:
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L313
    movq -32(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    movb %al, (%rcx)
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
    jmp .L314
.L313:
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L315
    movq -32(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    movb %al, (%rcx)
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
    jmp .L316
.L315:
    movq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L316:
.L314:
.L312:
.L310:
    jmp .L308
.L307:
    movq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
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
.L308:
    jmp .L305
.L306:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L317
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L318
.L317:
    leaq .Lstr64(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L318:
    leaq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L303:
    movq -16(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L319
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
    je .L321
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    pushq $0
    jmp .L323
.L325:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
.L326:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
.L327:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
.L328:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
.L329:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $11, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
.L330:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
.L331:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
.L332:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
.L333:
    leaq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L324
    jmp .L324
.L323:
    movq 8(%rsp), %rax
    cmpq $110, %rax
    je .L325
    cmpq $116, %rax
    je .L326
    cmpq $114, %rax
    je .L327
    cmpq $102, %rax
    je .L328
    cmpq $118, %rax
    je .L329
    cmpq $48, %rax
    je .L330
    cmpq $92, %rax
    je .L331
    cmpq $39, %rax
    je .L332
    jmp .L333
.L324:
    addq $16, %rsp
    jmp .L322
.L321:
    leaq -32(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L322:
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
    je .L334
    leaq .Lstr65(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L334:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq token(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr66(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call snprintf
    movq 8(%rsp), %rsp
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L319:
    movq -16(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L336
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr67(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L336:
    movq -16(%rbp), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L338
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $277, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr68(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L338:
    movq -16(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L340
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr69(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L340:
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L342
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $275, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr70(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L342:
    movq -16(%rbp), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L344
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $278, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr71(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L344:
    movq -16(%rbp), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L346
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $279, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr72(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L346:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L348
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr73(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L348:
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L350
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr74(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L350:
    movq -16(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L352
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr75(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L352:
    movq -16(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L354
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr76(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L354:
    movq -16(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L356
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr77(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L356:
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
    subq $16, %rsp
    movq %rdi, -16(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L360
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L361
.L360:
    leaq .Lstr79(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L361:
    leave
    ret
    .globl emit
emit:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -16(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq peek_mode(%rip), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L368
    leave
    ret
.L368:
.L370:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L371
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
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
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L372
    movq $37, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq 8(%rsp), %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L373
.L372:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq 8(%rsp), %rsp
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L373:
    jmp .L370
.L371:
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq 8(%rsp), %rsp
    leave
    ret
    .globl emit_i
emit_i:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq peek_mode(%rip), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L376
    leave
    ret
.L376:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq 8(%rsp), %rsp
    leave
    ret
    .globl emit_s
emit_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq peek_mode(%rip), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L380
    leave
    ret
.L380:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq 8(%rsp), %rsp
    leave
    ret
    .globl emit_is
emit_is:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq peek_mode(%rip), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L384
    leave
    ret
.L384:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq 8(%rsp), %rsp
    leave
    ret
    .globl emit_si
emit_si:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq %rdx, -48(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq peek_mode(%rip), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L388
    leave
    ret
.L388:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq 8(%rsp), %rsp
    leave
    ret
    .globl emit_label
emit_label:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -16(%rbp)
    movq emit_enabled(%rip), %rax
    pushq %rax
    movq peek_mode(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L392
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr81(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
.L392:
    leave
    ret
    .globl find_symbol
find_symbol:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -16(%rbp)
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    jmp .L402
.L400:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L404
    movq -32(%rbp), %rax
    leave
    ret
.L404:
.L401:
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    jmp .L402
.L402:
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L400
.L403:
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
    subq $128, %rsp
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
    je .L414
    leaq .Lstr88(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L414:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $96, %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strncpy
    movq 8(%rsp), %rsp
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
    addq $40, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $64, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $80, %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    addq $88, %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L416
    movq -112(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq .Lstr89(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr90(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    leaq .Lstr91(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L418
    leaq .Lstr92(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L418:
    leaq .Lstr93(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L417
.L416:
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
    movq %rax, (%rcx)
    movq stack_size(%rip), %rax
    pushq %rax
    movq max_func_stack(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L420
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L420:
.L417:
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leave
    ret
    .globl unary
unary:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L508
    leaq .Lstr132(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L509
.L508:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L510
    leaq -32(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L512
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
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
    je .L514
.L516:
    movq $1, %rax
    cmpq $0, %rax
    je .L517
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    leaq .Lstr133(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
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
    je .L518
    jmp .L517
.L518:
    movq $44, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    jmp .L516
.L517:
.L514:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq .Lstr134(%rip), %rax
    movq %rax, -64(%rbp)
    leaq .Lstr135(%rip), %rax
    movq %rax, -56(%rbp)
    leaq .Lstr136(%rip), %rax
    movq %rax, -48(%rbp)
    leaq .Lstr137(%rip), %rax
    movq %rax, -40(%rbp)
    leaq .Lstr138(%rip), %rax
    movq %rax, -32(%rbp)
    leaq .Lstr139(%rip), %rax
    movq %rax, -24(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    jmp .L522
.L520:
    leaq .Lstr140(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
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
    leaq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_is
    movq 8(%rsp), %rsp
.L521:
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L522
.L522:
    movq -80(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L520
.L523:
    movq -48(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L524
    leaq .Lstr141(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L524:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L526
    leaq .Lstr142(%rip), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L526:
    leaq .Lstr143(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr144(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr145(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr146(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr147(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    leaq .Lstr148(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L513
.L512:
    leaq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L528
    leaq .Lstr149(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L528:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    addq $64, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L530
    leaq .Lstr150(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $72, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L531
.L530:
    movq -64(%rbp), %rax
    addq $80, %rax
    movq (%rax), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L532
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $80, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L534
    movq -64(%rbp), %rax
    addq $88, %rax
    movq (%rax), %rax
    jmp .L535
.L534:
    movq $8, %rax
.L535:
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L536
    leaq .Lstr151(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L537
.L536:
    leaq .Lstr152(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L537:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L538
    movq $0, %rax
    jmp .L539
.L538:
    movq -64(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L540
    movq -64(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    jmp .L541
.L540:
    movq $262, %rax
.L541:
.L539:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L533
.L532:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L542
    movq -64(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L544
    leaq .Lstr153(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L545
.L544:
    leaq .Lstr154(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L545:
    jmp .L543
.L542:
    movq -64(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L546
    leaq .Lstr155(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L547
.L546:
    leaq .Lstr156(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L547:
.L543:
.L533:
.L531:
.L513:
    jmp .L511
.L510:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L548
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq line(%rip), %rax
    movq %rax, -32(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
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
    je .L550
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    addq $64, %rax
    movq (%rax), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L552
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L554:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L555
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L554
.L555:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L556
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L556:
.L552:
    jmp .L551
.L550:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L558
    movq tok(%rip), %rax
    movq %rax, -64(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L560:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L561
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L560
.L561:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L562
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L562:
    movq -48(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L564
    leaq tok(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L564:
.L558:
.L551:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L566
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq 8(%rsp), %rsp
    jmp .L567
.L566:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
.L567:
    jmp .L549
.L548:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L568
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq 8(%rsp), %rsp
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L570
    leaq .Lstr157(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L571
.L570:
    leaq .Lstr158(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L571:
    jmp .L569
.L568:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L572
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L574
    leaq .Lstr159(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L574:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L576
    leaq .Lstr160(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L576:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L578
    movq $263, %rax
    jmp .L579
.L578:
    movq $262, %rax
.L579:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $80, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L580
    movq -32(%rbp), %rax
    addq $88, %rax
    movq (%rax), %rax
    jmp .L581
.L580:
    movq $0, %rax
.L581:
    popq %rcx
    movq %rax, (%rcx)
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L582
    leaq .Lstr161(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L583
.L582:
    leaq .Lstr162(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L583:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L573
.L572:
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L584
    movq str_label_counter(%rip), %rax
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
    je .L586
    leaq string_pool(%rip), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call malloc
    movq 8(%rsp), %rsp
    popq %rcx
    movq %rax, (%rcx)
    leaq string_pool(%rip), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leaq string_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L586:
    leaq .Lstr163(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L585
.L584:
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L588
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq 8(%rsp), %rsp
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq 8(%rsp), %rsp
    leaq .Lstr164(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L589
.L588:
    movq tok(%rip), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L590
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq 8(%rsp), %rsp
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq 8(%rsp), %rsp
    leaq .Lstr165(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr166(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr167(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L591
.L590:
    movq tok(%rip), %rax
    pushq %rax
    movq $126, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L592
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq 8(%rsp), %rsp
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq 8(%rsp), %rsp
    leaq .Lstr168(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L593
.L592:
    leaq .Lstr169(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L593:
.L591:
.L589:
.L585:
.L573:
.L569:
.L549:
.L511:
.L509:
    leave
    ret
    .globl lvalue_address
lvalue_address:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L620
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L622
    leaq .Lstr176(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L622:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    addq $80, %rax
    movq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L624
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $80, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L626
    movq -32(%rbp), %rax
    addq $88, %rax
    movq (%rax), %rax
    jmp .L627
.L626:
    movq $8, %rax
.L627:
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L628
    movq -32(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    jmp .L629
.L628:
    movq $262, %rax
.L629:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L625
.L624:
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L625:
    movq -32(%rbp), %rax
    addq $56, %rax
    movq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    movq %rax, -48(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq -48(%rbp), %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L630
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L631
.L630:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L632
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L632:
.L631:
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L634
    movq -32(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L636
    leaq .Lstr177(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L637
.L636:
    leaq .Lstr178(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L637:
    jmp .L635
.L634:
    movq -32(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L638
    leaq .Lstr179(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L639
.L638:
    leaq .Lstr180(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L639:
.L635:
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq 8(%rsp), %rsp
    jmp .L621
.L620:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L640
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq 8(%rsp), %rsp
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L642
    leaq assign_size(%rip), %rax
    pushq %rax
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L644
    movq $1, %rax
    jmp .L645
.L644:
    movq $8, %rax
.L645:
    popq %rcx
    movq %rax, (%rcx)
.L642:
    jmp .L641
.L640:
    leaq .Lstr181(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L641:
.L621:
    leave
    ret
    .globl handle_postfix
handle_postfix:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
.L700:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L701
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L702
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    leaq .Lstr194(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq no_postfix_deref(%rip), %rax
    movq %rax, -32(%rbp)
    movq expr_pointed(%rip), %rax
    movq %rax, -48(%rbp)
    movq current_elem_size(%rip), %rax
    movq %rax, -64(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq .Lstr195(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq current_elem_size(%rip), %rax
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L704
    leaq -80(%rbp), %rax
    pushq %rax
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L706
    movq $1, %rax
    jmp .L707
.L706:
    movq $8, %rax
.L707:
    popq %rcx
    movq %rax, (%rcx)
.L704:
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L708
    leaq .Lstr196(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L708:
    leaq .Lstr197(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L710
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L712
    leaq .Lstr198(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L713
.L712:
    leaq .Lstr199(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L713:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L710:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    jmp .L703
.L702:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L714
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $8, %rax
    movq %rax, -48(%rbp)
    movq $8, %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    jmp .L718
.L716:
    leaq token(%rip), %rax
    pushq %rax
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L720
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
    jmp .L719
.L720:
.L717:
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L718
.L718:
    movq -80(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L716
.L719:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L722
    leaq .Lstr200(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L722:
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
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L724
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L726
    movq $262, %rax
    jmp .L727
.L726:
    movq $0, %rax
.L727:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L725
.L724:
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L728
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L730
    movq $262, %rax
    jmp .L731
.L730:
    movq $0, %rax
.L731:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L729
.L728:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L732
    leaq .Lstr201(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L733
.L732:
    leaq .Lstr202(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L733:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L729:
.L725:
    jmp .L715
.L714:
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L734
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $8, %rax
    movq %rax, -48(%rbp)
    movq $8, %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    jmp .L738
.L736:
    leaq token(%rip), %rax
    pushq %rax
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L740
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
    jmp .L739
.L740:
.L737:
    leaq -80(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L738
.L738:
    movq -80(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L736
.L739:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L742
    leaq .Lstr203(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L742:
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
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L744
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L746
    movq $262, %rax
    jmp .L747
.L746:
    movq $0, %rax
.L747:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L745
.L744:
    movq -48(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L748
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L750
    movq $262, %rax
    jmp .L751
.L750:
    movq $0, %rax
.L751:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L749
.L748:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L752
    leaq .Lstr204(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L753
.L752:
    leaq .Lstr205(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L753:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L749:
.L745:
.L734:
.L715:
.L703:
    jmp .L700
.L701:
    leave
    ret
    .globl expr_prec
expr_prec:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -16(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call unary
    movq 8(%rsp), %rsp
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq 8(%rsp), %rsp
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L797:
    movq $1, %rax
    cmpq $0, %rax
    je .L798
    movq tok(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L799
    leaq -48(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L800
.L799:
    movq -32(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L801
    leaq -48(%rbp), %rax
    pushq %rax
    movq $20, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L802
.L801:
    movq -32(%rbp), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $277, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $275, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L803
    leaq -48(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L804
.L803:
    movq -32(%rbp), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L805
    leaq -48(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L806
.L805:
    movq -32(%rbp), %rax
    pushq %rax
    movq $94, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L807
    leaq -48(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L808
.L807:
    movq -32(%rbp), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L809
    leaq -48(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L810
.L809:
    movq -32(%rbp), %rax
    pushq %rax
    movq $278, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L811
    leaq -48(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L812
.L811:
    movq -32(%rbp), %rax
    pushq %rax
    movq $279, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L813
    leaq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L814
.L813:
    movq -32(%rbp), %rax
    pushq %rax
    movq $63, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L815
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L816
.L815:
    jmp .L798
.L816:
.L814:
.L812:
.L810:
.L808:
.L806:
.L804:
.L802:
.L800:
    movq -48(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L817
    jmp .L798
.L817:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq -32(%rbp), %rax
    pushq %rax
    movq $63, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L819
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -64(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -80(%rbp)
    leaq .Lstr256(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr257(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq .Lstr258(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    movq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    movq -80(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    jmp .L797
.L819:
    leaq .Lstr259(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expr_prec
    movq 8(%rsp), %rsp
    leaq .Lstr260(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq -32(%rbp), %rax
    pushq %rax
    pushq $0
    jmp .L821
.L823:
    leaq .Lstr261(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L824:
    leaq .Lstr262(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr263(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L825:
    leaq .Lstr264(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L826:
    leaq .Lstr265(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr266(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr267(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L827:
    leaq .Lstr268(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr269(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr270(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr271(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L828:
    leaq .Lstr272(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr273(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr274(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L829:
    leaq .Lstr275(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr276(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr277(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L830:
    leaq .Lstr278(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr279(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr280(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L831:
    leaq .Lstr281(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr282(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr283(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L832:
    leaq .Lstr284(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr285(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr286(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L833:
    leaq .Lstr287(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr288(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr289(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L834:
    leaq .Lstr290(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L835:
    leaq .Lstr291(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L836:
    leaq .Lstr292(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L837:
    leaq .Lstr293(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr294(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr295(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr296(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr297(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr298(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L838:
    leaq .Lstr299(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr300(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr301(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr302(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr303(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr304(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L822
.L839:
    leaq .Lstr305(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
    jmp .L822
.L821:
    movq 8(%rsp), %rax
    cmpq $43, %rax
    je .L823
    cmpq $45, %rax
    je .L824
    cmpq $42, %rax
    je .L825
    cmpq $47, %rax
    je .L826
    cmpq $37, %rax
    je .L827
    cmpq $0, %rax
    je .L828
    cmpq $0, %rax
    je .L829
    cmpq $60, %rax
    je .L830
    cmpq $62, %rax
    je .L831
    cmpq $0, %rax
    je .L832
    cmpq $0, %rax
    je .L833
    cmpq $38, %rax
    je .L834
    cmpq $94, %rax
    je .L835
    cmpq $124, %rax
    je .L836
    cmpq $0, %rax
    je .L837
    cmpq $0, %rax
    je .L838
    jmp .L839
.L822:
    addq $16, %rsp
    jmp .L797
.L798:
    leave
    ret
    .globl expression
expression:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq line(%rip), %rax
    movq %rax, -32(%rbp)
    movq tok(%rip), %rax
    movq %rax, -48(%rbp)
    leaq -112(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expr_prec
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L852
    movq tok(%rip), %rax
    movq %rax, -128(%rbp)
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
    leaq -112(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L854
    movq $1, %rax
    jmp .L855
.L854:
    movq $8, %rax
.L855:
    movq %rax, -144(%rbp)
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L856
    leaq .Lstr313(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L857
.L856:
    leaq .Lstr314(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L857:
    movq -128(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L858
    movq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L860
    leaq .Lstr315(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L861
.L860:
    leaq .Lstr316(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L861:
    jmp .L859
.L858:
    movq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L862
    leaq .Lstr317(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L863
.L862:
    leaq .Lstr318(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L863:
.L859:
    leaq .Lstr319(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L852:
    leave
    ret
    .globl assignment_expr
assignment_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    leaq -80(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq input_ptr(%rip), %rax
    movq %rax, -96(%rbp)
    movq line(%rip), %rax
    movq %rax, -112(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L960
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leave
    ret
.L960:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L962
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq input_ptr(%rip), %rax
    movq %rax, -128(%rbp)
    movq line(%rip), %rax
    movq %rax, -144(%rbp)
    movq tok(%rip), %rax
    movq %rax, -160(%rbp)
    leaq -224(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -240(%rbp)
.L964:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L965
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L966
    movq $1, %rax
    movq %rax, -256(%rbp)
.L968:
    movq -256(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L969
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L970
    leaq -256(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L971
.L970:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L972
    leaq -256(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L972:
.L971:
    jmp .L968
.L969:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L967
.L966:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L974
    movq $1, %rax
    movq %rax, -256(%rbp)
.L976:
    movq -256(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L977
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L978
    leaq -256(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L979
.L978:
    movq tok(%rip), %rax
    pushq %rax
    movq $93, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L980
    leaq -256(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L980:
.L979:
    jmp .L976
.L977:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L975
.L974:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L975:
.L967:
    jmp .L964
.L965:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L982
    leaq -240(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L983
.L982:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L984
    leaq -240(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L985
.L984:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L986
    leaq -240(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L987
.L986:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L988
    leaq -240(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L989
.L988:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L990
    leaq -240(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L991
.L990:
    leaq -240(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L991:
.L989:
.L987:
.L985:
.L983:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -224(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq -240(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L992
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    movq $61, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq .Lstr386(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    leaq .Lstr387(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L994
    leaq .Lstr388(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L995
.L994:
    leaq .Lstr389(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L995:
    leave
    ret
    jmp .L993
.L992:
    movq -240(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L996
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    leaq .Lstr390(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L998
    leaq .Lstr391(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L999
.L998:
    leaq .Lstr392(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L999:
    leaq .Lstr393(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    leaq .Lstr394(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1000
    leaq .Lstr395(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr396(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr397(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1001
.L1000:
    leaq .Lstr398(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr399(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr400(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1001:
    leave
    ret
    jmp .L997
.L996:
    movq -240(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1002
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    leaq .Lstr401(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1004
    leaq .Lstr402(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1005
.L1004:
    leaq .Lstr403(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1005:
    leaq .Lstr404(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    leaq .Lstr405(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1006
    leaq .Lstr406(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr407(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr408(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1007
.L1006:
    leaq .Lstr409(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr410(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr411(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1007:
    leave
    ret
    jmp .L1003
.L1002:
    movq -240(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1008
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1010
    movq $271, %rax
    jmp .L1011
.L1010:
    movq $272, %rax
.L1011:
    movq %rax, -256(%rbp)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1012
    leaq .Lstr412(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1013
.L1012:
    leaq .Lstr413(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1013:
    movq -256(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1014
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1016
    leaq .Lstr414(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1017
.L1016:
    leaq .Lstr415(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1017:
    jmp .L1015
.L1014:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1018
    leaq .Lstr416(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1019
.L1018:
    leaq .Lstr417(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1019:
.L1015:
    leaq .Lstr418(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    leave
    ret
    jmp .L1009
.L1008:
    leaq tok(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leave
    ret
.L1009:
.L1003:
.L997:
.L993:
    jmp .L963
.L962:
    movq input_ptr(%rip), %rax
    movq %rax, -128(%rbp)
    movq line(%rip), %rax
    movq %rax, -144(%rbp)
    movq tok(%rip), %rax
    movq %rax, -160(%rbp)
    leaq -224(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leaq peek_mode(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq peek_mode(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $0, %rax
    movq %rax, -240(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1020
    leaq -240(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1021
.L1020:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1022
    leaq -240(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1023
.L1022:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1024
    leaq -240(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1025
.L1024:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1026
    leaq -240(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1027
.L1026:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1028
    leaq -240(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1028:
.L1027:
.L1025:
.L1023:
.L1021:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -224(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq -240(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1030
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    movq $61, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq .Lstr419(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    leaq .Lstr420(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1032
    leaq .Lstr421(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1033
.L1032:
    leaq .Lstr422(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1033:
    leave
    ret
    jmp .L1031
.L1030:
    movq -240(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1034
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    leaq .Lstr423(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1036
    leaq .Lstr424(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1037
.L1036:
    leaq .Lstr425(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1037:
    leaq .Lstr426(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    leaq .Lstr427(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1038
    leaq .Lstr428(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr429(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr430(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1039
.L1038:
    leaq .Lstr431(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr432(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr433(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1039:
    leave
    ret
    jmp .L1035
.L1034:
    movq -240(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1040
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    leaq .Lstr434(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1042
    leaq .Lstr435(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1043
.L1042:
    leaq .Lstr436(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1043:
    leaq .Lstr437(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    leaq .Lstr438(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1044
    leaq .Lstr439(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr440(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr441(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1045
.L1044:
    leaq .Lstr442(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr443(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr444(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1045:
    leave
    ret
    jmp .L1041
.L1040:
    movq -240(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1046
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call lvalue_address
    movq 8(%rsp), %rsp
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1048
    leaq .Lstr445(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1049
.L1048:
    leaq .Lstr446(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1049:
    movq -240(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1050
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1052
    leaq .Lstr447(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1053
.L1052:
    leaq .Lstr448(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1053:
    jmp .L1051
.L1050:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1054
    leaq .Lstr449(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    jmp .L1055
.L1054:
    leaq .Lstr450(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1055:
.L1051:
    leaq .Lstr451(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    leave
    ret
    jmp .L1047
.L1046:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leave
    ret
.L1047:
.L1041:
.L1035:
.L1031:
.L963:
    leave
    ret
    .globl statement
statement:
    pushq %rbp
    movq %rsp, %rbp
    subq $448, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $258, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1250
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq .Lstr504(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr505(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $259, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1252
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    leaq .Lstr506(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    jmp .L1253
.L1252:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
.L1253:
    leave
    ret
.L1250:
    movq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1254
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr507(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr508(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1256
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1258:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr509(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr510(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1259
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1258
.L1259:
.L1256:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1260
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1262:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr511(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr512(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1263
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1262
.L1263:
    movq $0, %rax
    movq %rax, -32(%rbp)
.L1264:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1265
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1264
.L1265:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1266
    leaq .Lstr513(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1266:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1268
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
.L1268:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
    leaq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L1270
    movq $8, %rax
    jmp .L1271
.L1270:
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1272
    movq $8, %rax
    jmp .L1273
.L1272:
    movq $1, %rax
.L1273:
.L1271:
    movq %rax, -96(%rbp)
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L1274
    movq -16(%rbp), %rax
    jmp .L1275
.L1274:
    movq $0, %rax
.L1275:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1276
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -112(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1278
    leaq .Lstr514(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L1279
.L1278:
    leaq .Lstr515(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1279:
.L1276:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    jmp .L1261
.L1260:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1280
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    jmp .L1281
.L1280:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
.L1281:
.L1261:
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq line(%rip), %rax
    movq %rax, -32(%rbp)
    movq tok(%rip), %rax
    movq %rax, -48(%rbp)
    leaq -112(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    cmpq $0, %rax
    je .L1282
.L1284:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1285
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1284
.L1285:
.L1282:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq input_ptr(%rip), %rax
    movq %rax, -144(%rbp)
    movq line(%rip), %rax
    movq %rax, -160(%rbp)
    movq tok(%rip), %rax
    movq %rax, -176(%rbp)
    leaq -240(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %rax
    cmpq $0, %rax
    je .L1286
.L1288:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1289
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1288
.L1289:
.L1286:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -272(%rbp)
    movq -256(%rbp), %rax
    cmpq $0, %rax
    je .L1290
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1291
.L1290:
    movq $0, %rax
.L1291:
    movq %rax, -288(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -304(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -320(%rbp)
    movq -256(%rbp), %rax
    cmpq $0, %rax
    je .L1292
    movq -288(%rbp), %rax
    jmp .L1293
.L1292:
    movq -304(%rbp), %rax
.L1293:
    movq %rax, -336(%rbp)
    leaq .Lstr516(%rip), %rax
    pushq %rax
    movq -304(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    movq -272(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    movq continue_target(%rip), %rax
    movq %rax, -352(%rbp)
    movq continue_target_valid(%rip), %rax
    movq %rax, -368(%rbp)
    movq break_target(%rip), %rax
    movq %rax, -384(%rbp)
    movq break_target_valid(%rip), %rax
    movq %rax, -400(%rbp)
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -336(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -320(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -352(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq -368(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -384(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -400(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq input_ptr(%rip), %rax
    movq %rax, -352(%rbp)
    movq line(%rip), %rax
    movq %rax, -368(%rbp)
    movq tok(%rip), %rax
    movq %rax, -384(%rbp)
    leaq -448(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq -256(%rbp), %rax
    cmpq $0, %rax
    je .L1294
    movq -288(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -240(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    leaq .Lstr517(%rip), %rax
    pushq %rax
    movq -304(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1294:
    movq -304(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    movq -128(%rbp), %rax
    cmpq $0, %rax
    je .L1296
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
    leaq -112(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq .Lstr518(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr519(%rip), %rax
    pushq %rax
    movq -272(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    jmp .L1297
.L1296:
    leaq .Lstr520(%rip), %rax
    pushq %rax
    movq -272(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1297:
    movq -320(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -352(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -368(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -384(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -448(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leave
    ret
.L1254:
    movq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1298
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    movq label_counter(%rip), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq .Lstr521(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr522(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
    leaq .Lstr523(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
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
.L1298:
    movq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1300
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    leaq .Lstr524(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr525(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr526(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
.L1302:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1303
    movq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1304
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call atoi
    movq 8(%rsp), %rsp
    movq %rax, -128(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq label_counter(%rip), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    jmp .L1305
.L1304:
    movq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1306
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    jmp .L1307
.L1306:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
.L1307:
.L1305:
    jmp .L1302
.L1303:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq .Lstr527(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    leaq .Lstr528(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -128(%rbp)
    jmp .L1310
.L1308:
    leaq .Lstr529(%rip), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    leaq .Lstr530(%rip), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1309:
    leaq -128(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1310
.L1310:
    movq -128(%rbp), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1308
.L1311:
    movq switch_has_default(%rip), %rax
    cmpq $0, %rax
    je .L1312
    leaq .Lstr531(%rip), %rax
    pushq %rax
    movq switch_default_label(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1312:
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_label
    movq 8(%rsp), %rsp
    leaq .Lstr532(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
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
.L1300:
    movq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1314
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq break_target_valid(%rip), %rax
    cmpq $0, %rax
    je .L1316
    leaq .Lstr533(%rip), %rax
    pushq %rax
    movq break_target(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1316:
    leave
    ret
.L1314:
    movq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1318
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq continue_target_valid(%rip), %rax
    cmpq $0, %rax
    je .L1320
    leaq .Lstr534(%rip), %rax
    pushq %rax
    movq continue_target(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1320:
    leave
    ret
.L1318:
    movq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1322
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1324
    leaq .Lstr535(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1324:
    leaq .Lstr536(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leave
    ret
.L1322:
    movq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1326
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1328
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
.L1328:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq .Lstr537(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr538(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leave
    ret
.L1326:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1330
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq stack_size(%rip), %rax
    movq %rax, -16(%rbp)
.L1332:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1333
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr539(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr540(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1334
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1334:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1336
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1332
    jmp .L1337
.L1336:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1338
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1332
    jmp .L1339
.L1338:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1340
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_typedef
    movq 8(%rsp), %rsp
    jmp .L1341
.L1340:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1342
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_struct
    movq 8(%rsp), %rsp
    jmp .L1343
.L1342:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1344
    movq input_ptr(%rip), %rax
    movq %rax, -32(%rbp)
.L1346:
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1347
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1346
.L1347:
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1348
    leaq .Lstr541(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1332
.L1348:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    addq $64, %rax
    movq (%rax), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1350
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
    jmp .L1332
.L1350:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    addq $72, %rax
    movq (%rax), %rax
    movq %rax, -48(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
restart_typedef:
    movq $0, %rax
    movq %rax, -64(%rbp)
.L1352:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1353
    leaq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1352
.L1353:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1354
    leaq .Lstr542(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1354:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1356
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
.L1356:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq -64(%rbp), %rax
    cmpq $0, %rax
    je .L1358
    movq $8, %rax
    jmp .L1359
.L1358:
    movq -48(%rbp), %rax
.L1359:
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -128(%rbp), %rax
    movq %rax, -160(%rbp)
.L1360:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1361
    leaq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1362
    leaq -176(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call atoi
    movq 8(%rsp), %rsp
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1363
.L1362:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1364
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq 8(%rsp), %rsp
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1366
    leaq -176(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -192(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1367
.L1366:
    leaq .Lstr543(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1367:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1364:
.L1363:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq -128(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1368
    movq -176(%rbp), %rax
    jmp .L1369
.L1368:
    movq $1, %rax
.L1369:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1360
.L1361:
    leaq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    cmpq $0, %rax
    je .L1370
    movq $262, %rax
    jmp .L1371
.L1370:
    movq $0, %rax
.L1371:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1372
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1374
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -176(%rbp)
.L1376:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1377
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -192(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -192(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -160(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1378
    leaq .Lstr544(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    jmp .L1379
.L1378:
    leaq .Lstr545(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1379:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1380
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1380:
    leaq -176(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1376
.L1377:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq -144(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1382
    leaq -128(%rbp), %rax
    pushq %rax
    movq -176(%rbp), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -192(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -192(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
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
    movq %rax, -224(%rbp)
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
    movq %rax, -240(%rbp)
    movq -208(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -208(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -240(%rbp), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    subq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -240(%rbp), %rax
    pushq %rax
    movq -224(%rbp), %rax
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
    je .L1384
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1384:
.L1382:
    jmp .L1375
.L1374:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq -96(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -176(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1386
    leaq .Lstr546(%rip), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L1387
.L1386:
    leaq .Lstr547(%rip), %rax
    pushq %rax
    movq -192(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1387:
.L1375:
.L1372:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1388
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp restart_typedef
.L1388:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    jmp .L1345
.L1344:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1390
    movq tok(%rip), %rax
    movq %rax, -32(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1392:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr548(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr549(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1393
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1392
.L1393:
restart_int:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L1394:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1395
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1394
.L1395:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1396
    leaq .Lstr550(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1396:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1398
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
.L1398:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
    leaq -80(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L1400
    movq $8, %rax
    jmp .L1401
.L1400:
    movq -32(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1402
    movq $8, %rax
    jmp .L1403
.L1402:
    movq $1, %rax
.L1403:
.L1401:
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -128(%rbp)
    movq -112(%rbp), %rax
    movq %rax, -144(%rbp)
.L1404:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1405
    leaq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -160(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1406
    leaq -160(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call atoi
    movq 8(%rsp), %rsp
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1407
.L1406:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1408
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq 8(%rsp), %rsp
    movq %rax, -176(%rbp)
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1410
    leaq -160(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1411
.L1410:
    leaq .Lstr551(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1411:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1408:
.L1407:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq -112(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1412
    movq -160(%rbp), %rax
    jmp .L1413
.L1412:
    movq $1, %rax
.L1413:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1404
.L1405:
    leaq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L1414
    movq -32(%rbp), %rax
    jmp .L1415
.L1414:
    movq $0, %rax
.L1415:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1416
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1418
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -160(%rbp)
.L1420:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1421
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq -80(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -176(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1422
    leaq .Lstr552(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
    jmp .L1423
.L1422:
    leaq .Lstr553(%rip), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1423:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1424
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1424:
    leaq -160(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1420
.L1421:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq -128(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1426
    leaq -112(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -176(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    addq $48, %rax
    movq (%rax), %rax
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
    movq %rax, -208(%rbp)
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
    movq %rax, -224(%rbp)
    movq -192(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -192(%rbp), %rax
    addq $32, %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    subq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
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
    je .L1428
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1428:
.L1426:
    jmp .L1419
.L1418:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    leaq -80(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -160(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -176(%rbp)
    movq -176(%rbp), %rax
    addq $40, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1430
    leaq .Lstr554(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    jmp .L1431
.L1430:
    leaq .Lstr555(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1431:
.L1419:
.L1416:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1432
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp restart_int
.L1432:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    jmp .L1391
.L1390:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1434
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_enum
    movq 8(%rsp), %rsp
    jmp .L1435
.L1434:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
.L1435:
.L1391:
.L1345:
.L1343:
.L1341:
.L1339:
.L1337:
    jmp .L1332
.L1333:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1330:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1436
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
    movq line(%rip), %rax
    movq %rax, -32(%rbp)
    movq tok(%rip), %rax
    movq %rax, -48(%rbp)
    leaq -112(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1438
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1440
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call expression
    movq 8(%rsp), %rsp
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leave
    ret
.L1440:
.L1438:
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
    leaq -112(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
.L1436:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1442
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    leave
    ret
.L1442:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call assignment_expr
    movq 8(%rsp), %rsp
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leave
    ret
    .globl parse_function
parse_function:
    pushq %rbp
    movq %rsp, %rbp
    subq $65856, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq -32(%rbp), %rax
    movq stack_size(%rip), %rax
    movq %rax, -48(%rbp)
    movq symbol_count(%rip), %rax
    movq %rax, -64(%rbp)
    movq stack_size(%rip), %rax
    movq %rax, -80(%rbp)
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -65632(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1498
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1499
.L1498:
.L1500:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1501
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1502
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1500
.L1502:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr578(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr579(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1504
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1506:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr580(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr581(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1507
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1506
.L1507:
.L1504:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1508
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1510
    movq $262, %rax
    jmp .L1511
.L1510:
    movq tok(%rip), %rax
.L1511:
    movq %rax, -65648(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1512
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -65664(%rbp)
    movq -65664(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65664(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    addq $64, %rax
    movq (%rax), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1514
    leaq -65648(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1514:
.L1512:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1516:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr582(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr583(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1517
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1516
.L1517:
    movq $0, %rax
    movq %rax, -65664(%rbp)
.L1518:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1519
    leaq -65664(%rbp), %rax
    pushq %rax
    movq -65664(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1518
.L1519:
    movq -65664(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    movq %rax, -65680(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1520
    leaq .Lstr584(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1520:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -65696(%rbp)
    movq -65696(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1522
    leaq -65696(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1522:
    leaq -65616(%rbp), %rax
    pushq %rax
    movq -65632(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -65696(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
    leaq -65616(%rbp), %rax
    pushq %rax
    movq -65632(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -65696(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -65680(%rbp), %rax
    cmpq $0, %rax
    je .L1524
    movq $8, %rax
    jmp .L1525
.L1524:
    movq -65648(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1526
    movq $1, %rax
    jmp .L1527
.L1526:
    movq $8, %rax
.L1527:
.L1525:
    movq %rax, -65712(%rbp)
    movq $0, %rax
    movq %rax, -65728(%rbp)
    movq -65664(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1528
    leaq -65728(%rbp), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1529
.L1528:
    movq -65664(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1530
    leaq -65728(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1530:
.L1529:
    leaq token(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -65712(%rbp), %rax
    pushq %rax
    movq -65728(%rbp), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq 8(%rsp), %rsp
    leaq -65632(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1532
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1532:
    jmp .L1509
.L1508:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1534
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1536
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1536:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1538
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1538:
    jmp .L1501
    jmp .L1535
.L1534:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1535:
.L1509:
    jmp .L1500
.L1501:
.L1499:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1540
    leaq symbol_count(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    leave
    ret
.L1540:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1542
    leaq .Lstr585(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1542:
    movq stack_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -65648(%rbp)
    movq input_ptr(%rip), %rax
    movq %rax, -65664(%rbp)
    movq line(%rip), %rax
    movq %rax, -65680(%rbp)
    movq tok(%rip), %rax
    movq %rax, -65696(%rbp)
    leaq -65760(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    movq symbol_count(%rip), %rax
    movq %rax, -65776(%rbp)
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
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
    movq %rax, -65792(%rbp)
    leaq symbol_count(%rip), %rax
    pushq %rax
    movq -65776(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -65664(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -65680(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -65696(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -65760(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcpy
    movq 8(%rsp), %rsp
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq .Lstr586(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    leaq .Lstr587(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_s
    movq 8(%rsp), %rsp
    leaq .Lstr588(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr589(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq -65792(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1544
    leaq .Lstr590(%rip), %rax
    pushq %rax
    movq -65792(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_i
    movq 8(%rsp), %rsp
.L1544:
    leaq .Lstr591(%rip), %rax
    movq %rax, -65808(%rbp)
    leaq .Lstr592(%rip), %rax
    movq %rax, -65800(%rbp)
    leaq .Lstr593(%rip), %rax
    movq %rax, -65792(%rbp)
    leaq .Lstr594(%rip), %rax
    movq %rax, -65784(%rbp)
    leaq .Lstr595(%rip), %rax
    movq %rax, -65776(%rbp)
    leaq .Lstr596(%rip), %rax
    movq %rax, -65768(%rbp)
    movq $0, %rax
    movq %rax, -65824(%rbp)
    jmp .L1548
.L1546:
    leaq -65616(%rbp), %rax
    pushq %rax
    movq -65824(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -65840(%rbp)
    movq -65840(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1550
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65840(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -65856(%rbp)
    leaq .Lstr597(%rip), %rax
    pushq %rax
    leaq -65808(%rbp), %rax
    pushq %rax
    movq -65824(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -65856(%rbp), %rax
    addq $32, %rax
    movq (%rax), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_si
    movq 8(%rsp), %rsp
.L1550:
.L1547:
    leaq -65824(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1548
.L1548:
    movq -65824(%rbp), %rax
    pushq %rax
    movq -65632(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    pushq %rax
    movq -65824(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1546
.L1549:
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -65648(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call statement
    movq 8(%rsp), %rsp
    leaq .Lstr598(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq .Lstr599(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
    .globl parse_enum
parse_enum:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1570
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1570:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1572
    leaq .Lstr604(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1572:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -16(%rbp)
.L1574:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1575
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1576
    leaq .Lstr605(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1576:
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1578
    leaq .Lstr606(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1578:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $96, %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1580
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
.L1580:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
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
    addq $64, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    addq $40, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1582
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1584
    leaq .Lstr607(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1584:
    leaq -16(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call atoi
    movq 8(%rsp), %rsp
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1582:
    movq -32(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
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
    je .L1586
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1586:
    jmp .L1574
.L1575:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leave
    ret
    .globl skip_struct
skip_struct:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1618
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1618:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1620
    leaq .Lstr609(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1620:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1622:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1623
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1624
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -32(%rbp)
.L1626:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1627
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1626
.L1627:
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L1628
    movq $8, %rax
    jmp .L1629
.L1628:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1630
    movq $1, %rax
    jmp .L1631
.L1630:
    movq $8, %rax
.L1631:
.L1629:
    movq %rax, -48(%rbp)
.L1632:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1633
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1634
    movq struct_member_count(%rip), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1636
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1638
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
.L1638:
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
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
.L1636:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1640
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
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
    je .L1642
    leaq -64(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call atoi
    movq 8(%rsp), %rsp
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1642:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
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
    je .L1644
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
.L1644:
    jmp .L1641
.L1640:
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1641:
    jmp .L1635
.L1634:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1635:
    jmp .L1632
.L1633:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    jmp .L1625
.L1624:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1646
    jmp .L1623
    jmp .L1647
.L1646:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1647:
.L1625:
    jmp .L1622
.L1623:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leave
    ret
    .globl skip_typedef
skip_typedef:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1670
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_struct
    movq 8(%rsp), %rsp
    jmp .L1671
.L1670:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1672
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1674:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1675
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1674
.L1675:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1676
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1676:
.L1672:
.L1671:
    leaq .Lstr612(%rip), %rax
    movq %rax, -32(%rbp)
.L1678:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1679
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1680
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1682
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
.L1682:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
    leaq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L1680:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1678
.L1679:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1684
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1686
    leaq .Lstr613(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1686:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $96, %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1688
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
.L1688:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
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
    addq $64, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -48(%rbp), %rax
    addq $40, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -48(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -48(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -48(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq struct_total_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1690
    movq -48(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1690:
.L1684:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leave
    ret
    .globl parse_program
parse_program:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1766:
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1767
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr627(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr628(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1768
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1770:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr629(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr630(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1771
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1770
.L1771:
.L1768:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1772
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1766
    jmp .L1773
.L1772:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1774
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1766
    jmp .L1775
.L1774:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1776
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_typedef
    movq 8(%rsp), %rsp
    jmp .L1777
.L1776:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1778
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call skip_struct
    movq 8(%rsp), %rsp
    jmp .L1779
.L1778:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1780
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_enum
    movq 8(%rsp), %rsp
    jmp .L1781
.L1780:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1782
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1784:
    movq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr631(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr632(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1785
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1784
.L1785:
    movq $0, %rax
    movq %rax, -32(%rbp)
.L1786:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1787
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1786
.L1787:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1788
    leaq .Lstr633(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1788:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1790
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
.L1790:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
    leaq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1792
    leaq -64(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_function
    movq 8(%rsp), %rsp
    jmp .L1793
.L1792:
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L1794
    movq $8, %rax
    jmp .L1795
.L1794:
    movq -16(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1796
    movq $1, %rax
    jmp .L1797
.L1796:
    movq $8, %rax
.L1797:
.L1795:
    movq %rax, -96(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
    movq -96(%rbp), %rax
    movq %rax, -128(%rbp)
.L1798:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1799
    leaq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1800
    leaq -144(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call atoi
    movq 8(%rsp), %rsp
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1801
.L1800:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1802
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq 8(%rsp), %rsp
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1804
    leaq -144(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1805
.L1804:
    leaq .Lstr634(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1805:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1802:
.L1801:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq -96(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1806
    movq -144(%rbp), %rax
    jmp .L1807
.L1806:
    movq $1, %rax
.L1807:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1798
.L1799:
    leaq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L1808
    movq -16(%rbp), %rax
    jmp .L1809
.L1808:
    movq $0, %rax
.L1809:
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1810
.L1812:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1813
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1812
.L1813:
.L1810:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1814
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1815
.L1814:
    leaq .Lstr635(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1815:
.L1793:
    jmp .L1783
.L1782:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1816
    movq $8, %rax
    movq %rax, -16(%rbp)
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_symbol
    movq 8(%rsp), %rsp
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    addq $64, %rax
    movq (%rax), %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1818
    leaq -16(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    addq $72, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1818:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -48(%rbp)
.L1820:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1821
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1820
.L1821:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1822
    leaq .Lstr636(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1822:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1824
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
.L1824:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
    leaq -80(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq -48(%rbp), %rax
    cmpq $0, %rax
    je .L1826
    movq $8, %rax
    jmp .L1827
.L1826:
    movq -16(%rbp), %rax
.L1827:
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -128(%rbp)
    movq -112(%rbp), %rax
    movq %rax, -144(%rbp)
.L1828:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1829
    leaq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    movq $0, %rax
    movq %rax, -160(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1830
    leaq -160(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call atoi
    movq 8(%rsp), %rsp
    popq %rcx
    movq %rax, (%rcx)
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1831
.L1830:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1832
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call find_macro
    movq 8(%rsp), %rsp
    movq %rax, -176(%rbp)
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1834
    leaq -160(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -176(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1835
.L1834:
    leaq .Lstr637(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1835:
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
.L1832:
.L1831:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call match
    movq 8(%rsp), %rsp
    leaq -112(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1836
    movq -160(%rbp), %rax
    jmp .L1837
.L1836:
    movq $1, %rax
.L1837:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1828
.L1829:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_symbol
    movq 8(%rsp), %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1838
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call next_token
    movq 8(%rsp), %rsp
    jmp .L1839
.L1838:
    leaq .Lstr638(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1839:
    jmp .L1817
.L1816:
    leaq .Lstr639(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call error
    movq 8(%rsp), %rsp
.L1817:
.L1783:
.L1781:
.L1779:
.L1777:
.L1775:
.L1773:
    jmp .L1766
.L1767:
    leave
    ret
    .globl emit_string_pool
emit_string_pool:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1858
    leave
    ret
.L1858:
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L1862
.L1860:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr647(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    leaq string_pool(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movsbq (%rax), %rax
    movq %rax, -32(%rbp)
.L1864:
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L1865
    movq -32(%rbp), %rax
    movsbq (%rax), %rax
    movq %rax, -48(%rbp)
    movsbq -48(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1866
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr648(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    jmp .L1867
.L1866:
    movsbq -48(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1868
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr649(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    jmp .L1869
.L1868:
    movsbq -48(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1870
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr650(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    jmp .L1871
.L1870:
    movsbq -48(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1872
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr651(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    jmp .L1873
.L1872:
    movsbq -48(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    movsbq -48(%rbp), %rax
    pushq %rax
    movq $127, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    andb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1874
    movsbq -48(%rbp), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fputc
    movq 8(%rsp), %rsp
    jmp .L1875
.L1874:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr652(%rip), %rax
    pushq %rax
    movsbq -48(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
.L1875:
.L1873:
.L1871:
.L1869:
.L1867:
    leaq -32(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1864
.L1865:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr653(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    leaq string_pool(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq 8(%rsp), %rsp
.L1861:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1862
.L1862:
    movq -16(%rbp), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1860
.L1863:
    leave
    ret
    .globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -16(%rbp)
    movq %rsi, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1894
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr681(%rip), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq $1, %rax
    leave
    ret
.L1894:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr682(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fopen
    movq 8(%rsp), %rsp
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1896
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr683(%rip), %rax
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq $1, %rax
    leave
    ret
.L1896:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fseek
    movq 8(%rsp), %rsp
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call ftell
    movq 8(%rsp), %rsp
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $1048576, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1898
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr684(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq 8(%rsp), %rsp
    movq $1, %rax
    leave
    ret
.L1898:
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call rewind
    movq 8(%rsp), %rsp
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call safe_malloc
    movq 8(%rsp), %rsp
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fread
    movq 8(%rsp), %rsp
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1900
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr685(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fprintf
    movq 8(%rsp), %rsp
    movq source_start(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq 8(%rsp), %rsp
    movq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq 8(%rsp), %rsp
    movq $1, %rax
    leave
    ret
.L1900:
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
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call fclose
    movq 8(%rsp), %rsp
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
    leaq .Lstr686(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq 8(%rsp), %rsp
    leaq .Lstr687(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq 8(%rsp), %rsp
    leaq .Lstr688(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq 8(%rsp), %rsp
    leaq .Lstr689(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq 8(%rsp), %rsp
    leaq .Lstr690(%rip), %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq 8(%rsp), %rsp
    leaq .Lstr691(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call add_macro
    movq 8(%rsp), %rsp
    leaq .Lstr692(%rip), %rax
    movq %rax, -96(%rbp)
    leaq .Lstr693(%rip), %rax
    movq %rax, -88(%rbp)
    leaq .Lstr694(%rip), %rax
    movq %rax, -80(%rbp)
    leaq .Lstr695(%rip), %rax
    movq %rax, -72(%rbp)
    leaq .Lstr696(%rip), %rax
    movq %rax, -64(%rbp)
    leaq .Lstr697(%rip), %rax
    movq %rax, -56(%rbp)
    leaq .Lstr698(%rip), %rax
    movq %rax, -48(%rbp)
    leaq .Lstr699(%rip), %rax
    movq %rax, -40(%rbp)
    leaq .Lstr700(%rip), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
    jmp .L1904
.L1902:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq %rax, -144(%rbp)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strlen
    movq 8(%rsp), %rsp
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1906
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
.L1906:
    movq -144(%rbp), %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call memcpy
    movq 8(%rsp), %rsp
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
    movq %rax, (%rcx)
    movq -128(%rbp), %rax
    addq $40, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -128(%rbp), %rax
    addq $48, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -128(%rbp), %rax
    addq $56, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -128(%rbp), %rax
    addq $64, %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr701(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr702(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr703(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call strcmp
    movq 8(%rsp), %rsp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    cmpq $0, %rcx
    setne %cl
    cmpq $0, %rax
    setne %al
    orb %cl, %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1908
    movq $1, %rax
    jmp .L1909
.L1908:
    movq $0, %rax
.L1909:
    popq %rcx
    movq %rax, (%rcx)
    movq -128(%rbp), %rax
    addq $72, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -128(%rbp), %rax
    addq $80, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -128(%rbp), %rax
    addq $88, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1903:
    leaq -112(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1904
.L1904:
    leaq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    jne .L1902
.L1905:
    leaq .Lstr704(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call parse_program
    movq 8(%rsp), %rsp
    movq string_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1910
    leaq .Lstr705(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit_string_pool
    movq 8(%rsp), %rsp
    leaq .Lstr706(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
.L1910:
    leaq .Lstr707(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call emit
    movq 8(%rsp), %rsp
    movq source_start(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    pushq %rsp
    pushq (%rsp)
    andq $-16, %rsp
    xorl %eax, %eax
    call free
    movq 8(%rsp), %rsp
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
    .asciz "Error at line %d, token '%s': %s\n"
.Lstr3:
    .asciz "Error at line %d, token '%s': %s\n"
.Lstr4:
    .asciz "Out of memory\n"
.Lstr5:
    .asciz "Out of memory\n"
.Lstr6:
    .asciz "define"
.Lstr7:
    .asciz "if"
.Lstr8:
    .asciz "else"
.Lstr9:
    .asciz "while"
.Lstr10:
    .asciz "return"
.Lstr11:
    .asciz "int"
.Lstr12:
    .asciz "long"
.Lstr13:
    .asciz "char"
.Lstr14:
    .asciz "void"
.Lstr15:
    .asciz "enum"
.Lstr16:
    .asciz "static"
.Lstr17:
    .asciz "typedef"
.Lstr18:
    .asciz "struct"
.Lstr19:
    .asciz "const"
.Lstr20:
    .asciz "for"
.Lstr21:
    .asciz "switch"
.Lstr22:
    .asciz "case"
.Lstr23:
    .asciz "default"
.Lstr24:
    .asciz "break"
.Lstr25:
    .asciz "continue"
.Lstr26:
    .asciz "goto"
.Lstr27:
    .asciz "%d"
.Lstr28:
    .asciz "unterminated string literal"
.Lstr29:
    .asciz "unterminated char literal"
.Lstr30:
    .asciz "%d"
.Lstr31:
    .asciz "=="
.Lstr32:
    .asciz "!="
.Lstr33:
    .asciz "<="
.Lstr34:
    .asciz ">="
.Lstr35:
    .asciz "&&"
.Lstr36:
    .asciz "||"
.Lstr37:
    .asciz "++"
.Lstr38:
    .asciz "+="
.Lstr39:
    .asciz "-="
.Lstr40:
    .asciz "--"
.Lstr41:
    .asciz "->"
.Lstr42:
    .asciz "define"
.Lstr43:
    .asciz "if"
.Lstr44:
    .asciz "else"
.Lstr45:
    .asciz "while"
.Lstr46:
    .asciz "return"
.Lstr47:
    .asciz "int"
.Lstr48:
    .asciz "long"
.Lstr49:
    .asciz "char"
.Lstr50:
    .asciz "void"
.Lstr51:
    .asciz "enum"
.Lstr52:
    .asciz "static"
.Lstr53:
    .asciz "typedef"
.Lstr54:
    .asciz "struct"
.Lstr55:
    .asciz "const"
.Lstr56:
    .asciz "for"
.Lstr57:
    .asciz "switch"
.Lstr58:
    .asciz "case"
.Lstr59:
    .asciz "default"
.Lstr60:
    .asciz "break"
.Lstr61:
    .asciz "continue"
.Lstr62:
    .asciz "goto"
.Lstr63:
    .asciz "%d"
.Lstr64:
    .asciz "unterminated string literal"
.Lstr65:
    .asciz "unterminated char literal"
.Lstr66:
    .asciz "%d"
.Lstr67:
    .asciz "=="
.Lstr68:
    .asciz "!="
.Lstr69:
    .asciz "<="
.Lstr70:
    .asciz ">="
.Lstr71:
    .asciz "&&"
.Lstr72:
    .asciz "||"
.Lstr73:
    .asciz "++"
.Lstr74:
    .asciz "+="
.Lstr75:
    .asciz "-="
.Lstr76:
    .asciz "--"
.Lstr77:
    .asciz "->"
.Lstr78:
    .asciz "unexpected token"
.Lstr79:
    .asciz "unexpected token"
.Lstr80:
    .asciz ".L%d:\n"
.Lstr81:
    .asciz ".L%d:\n"
.Lstr82:
    .asciz "too many symbols"
.Lstr83:
    .asciz "    .bss"
.Lstr84:
    .asciz "    .globl %s"
.Lstr85:
    .asciz "%s:"
.Lstr86:
    .asciz "    .space %d"
.Lstr87:
    .asciz "    .text"
.Lstr88:
    .asciz "too many symbols"
.Lstr89:
    .asciz "    .bss"
.Lstr90:
    .asciz "    .globl %s"
.Lstr91:
    .asciz "%s:"
.Lstr92:
    .asciz "    .space %d"
.Lstr93:
    .asciz "    .text"
.Lstr94:
    .asciz "    movq $%s, %%rax"
.Lstr95:
    .asciz "    pushq %%rax"
.Lstr96:
    .asciz "%rdi"
.Lstr97:
    .asciz "%rsi"
.Lstr98:
    .asciz "%rdx"
.Lstr99:
    .asciz "%rcx"
.Lstr100:
    .asciz "%r8"
.Lstr101:
    .asciz "%r9"
.Lstr102:
    .asciz "    movq %d(%%rsp), %s"
.Lstr103:
    .asciz "too many function arguments (max 6)"
.Lstr104:
    .asciz "    addq $%d, %%rsp"
.Lstr105:
    .asciz "    pushq %%rsp"
.Lstr106:
    .asciz "    pushq (%%rsp)"
.Lstr107:
    .asciz "    andq $-16, %%rsp"
.Lstr108:
    .asciz "    xorl %%eax, %%eax"
.Lstr109:
    .asciz "    call %s"
.Lstr110:
    .asciz "    movq 8(%%rsp), %%rsp"
.Lstr111:
    .asciz "undefined variable"
.Lstr112:
    .asciz "    movq $%d, %%rax"
.Lstr113:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr114:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr115:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr116:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr117:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr118:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr119:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr120:
    .asciz "    movq (%%rax), %%rax"
.Lstr121:
    .asciz "expected identifier after '&'"
.Lstr122:
    .asciz "undefined variable"
.Lstr123:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr124:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr125:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr126:
    .asciz "    negq %%rax"
.Lstr127:
    .asciz "    testq %%rax, %%rax"
.Lstr128:
    .asciz "    sete %%al"
.Lstr129:
    .asciz "    movzbq %%al, %%rax"
.Lstr130:
    .asciz "    notq %%rax"
.Lstr131:
    .asciz "invalid primary expression"
.Lstr132:
    .asciz "    movq $%s, %%rax"
.Lstr133:
    .asciz "    pushq %%rax"
.Lstr134:
    .asciz "%rdi"
.Lstr135:
    .asciz "%rsi"
.Lstr136:
    .asciz "%rdx"
.Lstr137:
    .asciz "%rcx"
.Lstr138:
    .asciz "%r8"
.Lstr139:
    .asciz "%r9"
.Lstr140:
    .asciz "    movq %d(%%rsp), %s"
.Lstr141:
    .asciz "too many function arguments (max 6)"
.Lstr142:
    .asciz "    addq $%d, %%rsp"
.Lstr143:
    .asciz "    pushq %%rsp"
.Lstr144:
    .asciz "    pushq (%%rsp)"
.Lstr145:
    .asciz "    andq $-16, %%rsp"
.Lstr146:
    .asciz "    xorl %%eax, %%eax"
.Lstr147:
    .asciz "    call %s"
.Lstr148:
    .asciz "    movq 8(%%rsp), %%rsp"
.Lstr149:
    .asciz "undefined variable"
.Lstr150:
    .asciz "    movq $%d, %%rax"
.Lstr151:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr152:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr153:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr154:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr155:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr156:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr157:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr158:
    .asciz "    movq (%%rax), %%rax"
.Lstr159:
    .asciz "expected identifier after '&'"
.Lstr160:
    .asciz "undefined variable"
.Lstr161:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr162:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr163:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr164:
    .asciz "    negq %%rax"
.Lstr165:
    .asciz "    testq %%rax, %%rax"
.Lstr166:
    .asciz "    sete %%al"
.Lstr167:
    .asciz "    movzbq %%al, %%rax"
.Lstr168:
    .asciz "    notq %%rax"
.Lstr169:
    .asciz "invalid primary expression"
.Lstr170:
    .asciz "undefined variable"
.Lstr171:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr172:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr173:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr174:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr175:
    .asciz "lvalue required"
.Lstr176:
    .asciz "undefined variable"
.Lstr177:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr178:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr179:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr180:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr181:
    .asciz "lvalue required"
.Lstr182:
    .asciz "    pushq %%rax"
.Lstr183:
    .asciz "    popq %%rcx"
.Lstr184:
    .asciz "    imulq $%d, %%rax"
.Lstr185:
    .asciz "    addq %%rcx, %%rax"
.Lstr186:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr187:
    .asciz "    movq (%%rax), %%rax"
.Lstr188:
    .asciz "    addq $%d, %%rax"
.Lstr189:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr190:
    .asciz "    movq (%%rax), %%rax"
.Lstr191:
    .asciz "    addq $%d, %%rax"
.Lstr192:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr193:
    .asciz "    movq (%%rax), %%rax"
.Lstr194:
    .asciz "    pushq %%rax"
.Lstr195:
    .asciz "    popq %%rcx"
.Lstr196:
    .asciz "    imulq $%d, %%rax"
.Lstr197:
    .asciz "    addq %%rcx, %%rax"
.Lstr198:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr199:
    .asciz "    movq (%%rax), %%rax"
.Lstr200:
    .asciz "    addq $%d, %%rax"
.Lstr201:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr202:
    .asciz "    movq (%%rax), %%rax"
.Lstr203:
    .asciz "    addq $%d, %%rax"
.Lstr204:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr205:
    .asciz "    movq (%%rax), %%rax"
.Lstr206:
    .asciz "    cmpq $0, %%rax"
.Lstr207:
    .asciz "    je .L%d"
.Lstr208:
    .asciz "    jmp .L%d"
.Lstr209:
    .asciz "    pushq %%rax"
.Lstr210:
    .asciz "    popq %%rcx"
.Lstr211:
    .asciz "    addq %%rcx, %%rax"
.Lstr212:
    .asciz "    subq %%rax, %%rcx"
.Lstr213:
    .asciz "    movq %%rcx, %%rax"
.Lstr214:
    .asciz "    imulq %%rcx, %%rax"
.Lstr215:
    .asciz "    movq %%rcx, %%rax"
.Lstr216:
    .asciz "    cqto"
.Lstr217:
    .asciz "    idivq %%rcx"
.Lstr218:
    .asciz "    movq %%rcx, %%rax"
.Lstr219:
    .asciz "    cqto"
.Lstr220:
    .asciz "    idivq %%rcx"
.Lstr221:
    .asciz "    movq %%rdx, %%rax"
.Lstr222:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr223:
    .asciz "    sete %%al"
.Lstr224:
    .asciz "    movzbq %%al, %%rax"
.Lstr225:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr226:
    .asciz "    setne %%al"
.Lstr227:
    .asciz "    movzbq %%al, %%rax"
.Lstr228:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr229:
    .asciz "    setl %%al"
.Lstr230:
    .asciz "    movzbq %%al, %%rax"
.Lstr231:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr232:
    .asciz "    setg %%al"
.Lstr233:
    .asciz "    movzbq %%al, %%rax"
.Lstr234:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr235:
    .asciz "    setle %%al"
.Lstr236:
    .asciz "    movzbq %%al, %%rax"
.Lstr237:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr238:
    .asciz "    setge %%al"
.Lstr239:
    .asciz "    movzbq %%al, %%rax"
.Lstr240:
    .asciz "    andq %%rcx, %%rax"
.Lstr241:
    .asciz "    xorq %%rcx, %%rax"
.Lstr242:
    .asciz "    orq %%rcx, %%rax"
.Lstr243:
    .asciz "    cmpq $0, %%rcx"
.Lstr244:
    .asciz "    setne %%cl"
.Lstr245:
    .asciz "    cmpq $0, %%rax"
.Lstr246:
    .asciz "    setne %%al"
.Lstr247:
    .asciz "    andb %%cl, %%al"
.Lstr248:
    .asciz "    movzbq %%al, %%rax"
.Lstr249:
    .asciz "    cmpq $0, %%rcx"
.Lstr250:
    .asciz "    setne %%cl"
.Lstr251:
    .asciz "    cmpq $0, %%rax"
.Lstr252:
    .asciz "    setne %%al"
.Lstr253:
    .asciz "    orb %%cl, %%al"
.Lstr254:
    .asciz "    movzbq %%al, %%rax"
.Lstr255:
    .asciz "unknown binary operator"
.Lstr256:
    .asciz "    cmpq $0, %%rax"
.Lstr257:
    .asciz "    je .L%d"
.Lstr258:
    .asciz "    jmp .L%d"
.Lstr259:
    .asciz "    pushq %%rax"
.Lstr260:
    .asciz "    popq %%rcx"
.Lstr261:
    .asciz "    addq %%rcx, %%rax"
.Lstr262:
    .asciz "    subq %%rax, %%rcx"
.Lstr263:
    .asciz "    movq %%rcx, %%rax"
.Lstr264:
    .asciz "    imulq %%rcx, %%rax"
.Lstr265:
    .asciz "    movq %%rcx, %%rax"
.Lstr266:
    .asciz "    cqto"
.Lstr267:
    .asciz "    idivq %%rcx"
.Lstr268:
    .asciz "    movq %%rcx, %%rax"
.Lstr269:
    .asciz "    cqto"
.Lstr270:
    .asciz "    idivq %%rcx"
.Lstr271:
    .asciz "    movq %%rdx, %%rax"
.Lstr272:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr273:
    .asciz "    sete %%al"
.Lstr274:
    .asciz "    movzbq %%al, %%rax"
.Lstr275:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr276:
    .asciz "    setne %%al"
.Lstr277:
    .asciz "    movzbq %%al, %%rax"
.Lstr278:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr279:
    .asciz "    setl %%al"
.Lstr280:
    .asciz "    movzbq %%al, %%rax"
.Lstr281:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr282:
    .asciz "    setg %%al"
.Lstr283:
    .asciz "    movzbq %%al, %%rax"
.Lstr284:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr285:
    .asciz "    setle %%al"
.Lstr286:
    .asciz "    movzbq %%al, %%rax"
.Lstr287:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr288:
    .asciz "    setge %%al"
.Lstr289:
    .asciz "    movzbq %%al, %%rax"
.Lstr290:
    .asciz "    andq %%rcx, %%rax"
.Lstr291:
    .asciz "    xorq %%rcx, %%rax"
.Lstr292:
    .asciz "    orq %%rcx, %%rax"
.Lstr293:
    .asciz "    cmpq $0, %%rcx"
.Lstr294:
    .asciz "    setne %%cl"
.Lstr295:
    .asciz "    cmpq $0, %%rax"
.Lstr296:
    .asciz "    setne %%al"
.Lstr297:
    .asciz "    andb %%cl, %%al"
.Lstr298:
    .asciz "    movzbq %%al, %%rax"
.Lstr299:
    .asciz "    cmpq $0, %%rcx"
.Lstr300:
    .asciz "    setne %%cl"
.Lstr301:
    .asciz "    cmpq $0, %%rax"
.Lstr302:
    .asciz "    setne %%al"
.Lstr303:
    .asciz "    orb %%cl, %%al"
.Lstr304:
    .asciz "    movzbq %%al, %%rax"
.Lstr305:
    .asciz "unknown binary operator"
.Lstr306:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr307:
    .asciz "    movq (%%rax), %%rcx"
.Lstr308:
    .asciz "    addb $1, (%%rax)"
.Lstr309:
    .asciz "    addq $1, (%%rax)"
.Lstr310:
    .asciz "    subb $1, (%%rax)"
.Lstr311:
    .asciz "    subq $1, (%%rax)"
.Lstr312:
    .asciz "    movq %%rcx, %%rax"
.Lstr313:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr314:
    .asciz "    movq (%%rax), %%rcx"
.Lstr315:
    .asciz "    addb $1, (%%rax)"
.Lstr316:
    .asciz "    addq $1, (%%rax)"
.Lstr317:
    .asciz "    subb $1, (%%rax)"
.Lstr318:
    .asciz "    subq $1, (%%rax)"
.Lstr319:
    .asciz "    movq %%rcx, %%rax"
.Lstr320:
    .asciz "    pushq %%rax"
.Lstr321:
    .asciz "    popq %%rcx"
.Lstr322:
    .asciz "    movb %%al, (%%rcx)"
.Lstr323:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr324:
    .asciz "    pushq %%rax"
.Lstr325:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr326:
    .asciz "    movq (%%rax), %%rax"
.Lstr327:
    .asciz "    pushq %%rax"
.Lstr328:
    .asciz "    popq %%rcx"
.Lstr329:
    .asciz "    addq %%rcx, %%rax"
.Lstr330:
    .asciz "    popq %%rcx"
.Lstr331:
    .asciz "    movb %%al, (%%rcx)"
.Lstr332:
    .asciz "    addq %%rcx, %%rax"
.Lstr333:
    .asciz "    popq %%rcx"
.Lstr334:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr335:
    .asciz "    pushq %%rax"
.Lstr336:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr337:
    .asciz "    movq (%%rax), %%rax"
.Lstr338:
    .asciz "    pushq %%rax"
.Lstr339:
    .asciz "    popq %%rcx"
.Lstr340:
    .asciz "    subq %%rcx, %%rax"
.Lstr341:
    .asciz "    popq %%rcx"
.Lstr342:
    .asciz "    movb %%al, (%%rcx)"
.Lstr343:
    .asciz "    subq %%rcx, %%rax"
.Lstr344:
    .asciz "    popq %%rcx"
.Lstr345:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr346:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr347:
    .asciz "    movq (%%rax), %%rcx"
.Lstr348:
    .asciz "    addb $1, (%%rax)"
.Lstr349:
    .asciz "    addq $1, (%%rax)"
.Lstr350:
    .asciz "    subb $1, (%%rax)"
.Lstr351:
    .asciz "    subq $1, (%%rax)"
.Lstr352:
    .asciz "    movq %%rcx, %%rax"
.Lstr353:
    .asciz "    pushq %%rax"
.Lstr354:
    .asciz "    popq %%rcx"
.Lstr355:
    .asciz "    movb %%al, (%%rcx)"
.Lstr356:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr357:
    .asciz "    pushq %%rax"
.Lstr358:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr359:
    .asciz "    movq (%%rax), %%rax"
.Lstr360:
    .asciz "    pushq %%rax"
.Lstr361:
    .asciz "    popq %%rcx"
.Lstr362:
    .asciz "    addq %%rcx, %%rax"
.Lstr363:
    .asciz "    popq %%rcx"
.Lstr364:
    .asciz "    movb %%al, (%%rcx)"
.Lstr365:
    .asciz "    addq %%rcx, %%rax"
.Lstr366:
    .asciz "    popq %%rcx"
.Lstr367:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr368:
    .asciz "    pushq %%rax"
.Lstr369:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr370:
    .asciz "    movq (%%rax), %%rax"
.Lstr371:
    .asciz "    pushq %%rax"
.Lstr372:
    .asciz "    popq %%rcx"
.Lstr373:
    .asciz "    subq %%rcx, %%rax"
.Lstr374:
    .asciz "    popq %%rcx"
.Lstr375:
    .asciz "    movb %%al, (%%rcx)"
.Lstr376:
    .asciz "    subq %%rcx, %%rax"
.Lstr377:
    .asciz "    popq %%rcx"
.Lstr378:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr379:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr380:
    .asciz "    movq (%%rax), %%rcx"
.Lstr381:
    .asciz "    addb $1, (%%rax)"
.Lstr382:
    .asciz "    addq $1, (%%rax)"
.Lstr383:
    .asciz "    subb $1, (%%rax)"
.Lstr384:
    .asciz "    subq $1, (%%rax)"
.Lstr385:
    .asciz "    movq %%rcx, %%rax"
.Lstr386:
    .asciz "    pushq %%rax"
.Lstr387:
    .asciz "    popq %%rcx"
.Lstr388:
    .asciz "    movb %%al, (%%rcx)"
.Lstr389:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr390:
    .asciz "    pushq %%rax"
.Lstr391:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr392:
    .asciz "    movq (%%rax), %%rax"
.Lstr393:
    .asciz "    pushq %%rax"
.Lstr394:
    .asciz "    popq %%rcx"
.Lstr395:
    .asciz "    addq %%rcx, %%rax"
.Lstr396:
    .asciz "    popq %%rcx"
.Lstr397:
    .asciz "    movb %%al, (%%rcx)"
.Lstr398:
    .asciz "    addq %%rcx, %%rax"
.Lstr399:
    .asciz "    popq %%rcx"
.Lstr400:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr401:
    .asciz "    pushq %%rax"
.Lstr402:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr403:
    .asciz "    movq (%%rax), %%rax"
.Lstr404:
    .asciz "    pushq %%rax"
.Lstr405:
    .asciz "    popq %%rcx"
.Lstr406:
    .asciz "    subq %%rcx, %%rax"
.Lstr407:
    .asciz "    popq %%rcx"
.Lstr408:
    .asciz "    movb %%al, (%%rcx)"
.Lstr409:
    .asciz "    subq %%rcx, %%rax"
.Lstr410:
    .asciz "    popq %%rcx"
.Lstr411:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr412:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr413:
    .asciz "    movq (%%rax), %%rcx"
.Lstr414:
    .asciz "    addb $1, (%%rax)"
.Lstr415:
    .asciz "    addq $1, (%%rax)"
.Lstr416:
    .asciz "    subb $1, (%%rax)"
.Lstr417:
    .asciz "    subq $1, (%%rax)"
.Lstr418:
    .asciz "    movq %%rcx, %%rax"
.Lstr419:
    .asciz "    pushq %%rax"
.Lstr420:
    .asciz "    popq %%rcx"
.Lstr421:
    .asciz "    movb %%al, (%%rcx)"
.Lstr422:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr423:
    .asciz "    pushq %%rax"
.Lstr424:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr425:
    .asciz "    movq (%%rax), %%rax"
.Lstr426:
    .asciz "    pushq %%rax"
.Lstr427:
    .asciz "    popq %%rcx"
.Lstr428:
    .asciz "    addq %%rcx, %%rax"
.Lstr429:
    .asciz "    popq %%rcx"
.Lstr430:
    .asciz "    movb %%al, (%%rcx)"
.Lstr431:
    .asciz "    addq %%rcx, %%rax"
.Lstr432:
    .asciz "    popq %%rcx"
.Lstr433:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr434:
    .asciz "    pushq %%rax"
.Lstr435:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr436:
    .asciz "    movq (%%rax), %%rax"
.Lstr437:
    .asciz "    pushq %%rax"
.Lstr438:
    .asciz "    popq %%rcx"
.Lstr439:
    .asciz "    subq %%rcx, %%rax"
.Lstr440:
    .asciz "    popq %%rcx"
.Lstr441:
    .asciz "    movb %%al, (%%rcx)"
.Lstr442:
    .asciz "    subq %%rcx, %%rax"
.Lstr443:
    .asciz "    popq %%rcx"
.Lstr444:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr445:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr446:
    .asciz "    movq (%%rax), %%rcx"
.Lstr447:
    .asciz "    addb $1, (%%rax)"
.Lstr448:
    .asciz "    addq $1, (%%rax)"
.Lstr449:
    .asciz "    subb $1, (%%rax)"
.Lstr450:
    .asciz "    subq $1, (%%rax)"
.Lstr451:
    .asciz "    movq %%rcx, %%rax"
.Lstr452:
    .asciz "    cmpq $0, %%rax"
.Lstr453:
    .asciz "    je .L%d"
.Lstr454:
    .asciz "    jmp .L%d"
.Lstr455:
    .asciz "unsigned"
.Lstr456:
    .asciz "signed"
.Lstr457:
    .asciz "long"
.Lstr458:
    .asciz "int"
.Lstr459:
    .asciz "long"
.Lstr460:
    .asciz "int"
.Lstr461:
    .asciz "expected variable name"
.Lstr462:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr463:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr464:
    .asciz "    jmp .L%d"
.Lstr465:
    .asciz "    jmp .L%d"
.Lstr466:
    .asciz "    cmpq $0, %%rax"
.Lstr467:
    .asciz "    jne .L%d"
.Lstr468:
    .asciz "    jmp .L%d"
.Lstr469:
    .asciz "    cmpq $0, %%rax"
.Lstr470:
    .asciz "    je .L%d"
.Lstr471:
    .asciz "    jmp .L%d"
.Lstr472:
    .asciz "    pushq %%rax"
.Lstr473:
    .asciz "    pushq $0"
.Lstr474:
    .asciz "    jmp .L%d"
.Lstr475:
    .asciz "    jmp .L%d"
.Lstr476:
    .asciz "    movq 8(%%rsp), %%rax"
.Lstr477:
    .asciz "    cmpq $%d, %%rax"
.Lstr478:
    .asciz "    je .L%d"
.Lstr479:
    .asciz "    jmp .L%d"
.Lstr480:
    .asciz "    addq $16, %%rsp"
.Lstr481:
    .asciz "    jmp .L%d"
.Lstr482:
    .asciz "    jmp .L%d"
.Lstr483:
    .asciz "expected label name"
.Lstr484:
    .asciz "    jmp %s"
.Lstr485:
    .asciz "    leave"
.Lstr486:
    .asciz "    ret"
.Lstr487:
    .asciz "unsigned"
.Lstr488:
    .asciz "signed"
.Lstr489:
    .asciz "%s:"
.Lstr490:
    .asciz "expected variable name"
.Lstr491:
    .asciz "undefined macro"
.Lstr492:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr493:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr494:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr495:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr496:
    .asciz "long"
.Lstr497:
    .asciz "int"
.Lstr498:
    .asciz "expected variable name"
.Lstr499:
    .asciz "undefined macro"
.Lstr500:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr501:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr502:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr503:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr504:
    .asciz "    cmpq $0, %%rax"
.Lstr505:
    .asciz "    je .L%d"
.Lstr506:
    .asciz "    jmp .L%d"
.Lstr507:
    .asciz "unsigned"
.Lstr508:
    .asciz "signed"
.Lstr509:
    .asciz "long"
.Lstr510:
    .asciz "int"
.Lstr511:
    .asciz "long"
.Lstr512:
    .asciz "int"
.Lstr513:
    .asciz "expected variable name"
.Lstr514:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr515:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr516:
    .asciz "    jmp .L%d"
.Lstr517:
    .asciz "    jmp .L%d"
.Lstr518:
    .asciz "    cmpq $0, %%rax"
.Lstr519:
    .asciz "    jne .L%d"
.Lstr520:
    .asciz "    jmp .L%d"
.Lstr521:
    .asciz "    cmpq $0, %%rax"
.Lstr522:
    .asciz "    je .L%d"
.Lstr523:
    .asciz "    jmp .L%d"
.Lstr524:
    .asciz "    pushq %%rax"
.Lstr525:
    .asciz "    pushq $0"
.Lstr526:
    .asciz "    jmp .L%d"
.Lstr527:
    .asciz "    jmp .L%d"
.Lstr528:
    .asciz "    movq 8(%%rsp), %%rax"
.Lstr529:
    .asciz "    cmpq $%d, %%rax"
.Lstr530:
    .asciz "    je .L%d"
.Lstr531:
    .asciz "    jmp .L%d"
.Lstr532:
    .asciz "    addq $16, %%rsp"
.Lstr533:
    .asciz "    jmp .L%d"
.Lstr534:
    .asciz "    jmp .L%d"
.Lstr535:
    .asciz "expected label name"
.Lstr536:
    .asciz "    jmp %s"
.Lstr537:
    .asciz "    leave"
.Lstr538:
    .asciz "    ret"
.Lstr539:
    .asciz "unsigned"
.Lstr540:
    .asciz "signed"
.Lstr541:
    .asciz "%s:"
.Lstr542:
    .asciz "expected variable name"
.Lstr543:
    .asciz "undefined macro"
.Lstr544:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr545:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr546:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr547:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr548:
    .asciz "long"
.Lstr549:
    .asciz "int"
.Lstr550:
    .asciz "expected variable name"
.Lstr551:
    .asciz "undefined macro"
.Lstr552:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr553:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr554:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr555:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr556:
    .asciz "unsigned"
.Lstr557:
    .asciz "signed"
.Lstr558:
    .asciz "long"
.Lstr559:
    .asciz "int"
.Lstr560:
    .asciz "long"
.Lstr561:
    .asciz "int"
.Lstr562:
    .asciz "expected parameter name"
.Lstr563:
    .asciz "expected function body"
.Lstr564:
    .asciz "    .globl %s"
.Lstr565:
    .asciz "%s:"
.Lstr566:
    .asciz "    pushq %%rbp"
.Lstr567:
    .asciz "    movq %%rsp, %%rbp"
.Lstr568:
    .asciz "    subq $%d, %%rsp"
.Lstr569:
    .asciz "%rdi"
.Lstr570:
    .asciz "%rsi"
.Lstr571:
    .asciz "%rdx"
.Lstr572:
    .asciz "%rcx"
.Lstr573:
    .asciz "%r8"
.Lstr574:
    .asciz "%r9"
.Lstr575:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr576:
    .asciz "    leave"
.Lstr577:
    .asciz "    ret"
.Lstr578:
    .asciz "unsigned"
.Lstr579:
    .asciz "signed"
.Lstr580:
    .asciz "long"
.Lstr581:
    .asciz "int"
.Lstr582:
    .asciz "long"
.Lstr583:
    .asciz "int"
.Lstr584:
    .asciz "expected parameter name"
.Lstr585:
    .asciz "expected function body"
.Lstr586:
    .asciz "    .globl %s"
.Lstr587:
    .asciz "%s:"
.Lstr588:
    .asciz "    pushq %%rbp"
.Lstr589:
    .asciz "    movq %%rsp, %%rbp"
.Lstr590:
    .asciz "    subq $%d, %%rsp"
.Lstr591:
    .asciz "%rdi"
.Lstr592:
    .asciz "%rsi"
.Lstr593:
    .asciz "%rdx"
.Lstr594:
    .asciz "%rcx"
.Lstr595:
    .asciz "%r8"
.Lstr596:
    .asciz "%r9"
.Lstr597:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr598:
    .asciz "    leave"
.Lstr599:
    .asciz "    ret"
.Lstr600:
    .asciz "expected '{' after enum"
.Lstr601:
    .asciz "expected enumerator name"
.Lstr602:
    .asciz "too many symbols"
.Lstr603:
    .asciz "expected integer constant"
.Lstr604:
    .asciz "expected '{' after enum"
.Lstr605:
    .asciz "expected enumerator name"
.Lstr606:
    .asciz "too many symbols"
.Lstr607:
    .asciz "expected integer constant"
.Lstr608:
    .asciz "expected '{' in struct"
.Lstr609:
    .asciz "expected '{' in struct"
.Lstr610:
    .asciz ""
.Lstr611:
    .asciz "too many symbols"
.Lstr612:
    .asciz ""
.Lstr613:
    .asciz "too many symbols"
.Lstr614:
    .asciz "unsigned"
.Lstr615:
    .asciz "signed"
.Lstr616:
    .asciz "long"
.Lstr617:
    .asciz "int"
.Lstr618:
    .asciz "long"
.Lstr619:
    .asciz "int"
.Lstr620:
    .asciz "expected identifier"
.Lstr621:
    .asciz "undefined macro"
.Lstr622:
    .asciz "expected ';' or '(' after global"
.Lstr623:
    .asciz "expected identifier"
.Lstr624:
    .asciz "undefined macro"
.Lstr625:
    .asciz "expected ';' or '(' after global"
.Lstr626:
    .asciz "global must be int or char"
.Lstr627:
    .asciz "unsigned"
.Lstr628:
    .asciz "signed"
.Lstr629:
    .asciz "long"
.Lstr630:
    .asciz "int"
.Lstr631:
    .asciz "long"
.Lstr632:
    .asciz "int"
.Lstr633:
    .asciz "expected identifier"
.Lstr634:
    .asciz "undefined macro"
.Lstr635:
    .asciz "expected ';' or '(' after global"
.Lstr636:
    .asciz "expected identifier"
.Lstr637:
    .asciz "undefined macro"
.Lstr638:
    .asciz "expected ';' or '(' after global"
.Lstr639:
    .asciz "global must be int or char"
.Lstr640:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr641:
    .asciz "\\n"
.Lstr642:
    .asciz "\\t"
.Lstr643:
    .asciz "\\\\"
.Lstr644:
    .asciz "\\\""
.Lstr645:
    .asciz "\\%hho"
.Lstr646:
    .asciz "\"\n"
.Lstr647:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr648:
    .asciz "\\n"
.Lstr649:
    .asciz "\\t"
.Lstr650:
    .asciz "\\\\"
.Lstr651:
    .asciz "\\\""
.Lstr652:
    .asciz "\\%hho"
.Lstr653:
    .asciz "\"\n"
.Lstr654:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr655:
    .asciz "r"
.Lstr656:
    .asciz "Cannot open input file: %s\n"
.Lstr657:
    .asciz "Invalid file size\n"
.Lstr658:
    .asciz "Error reading file\n"
.Lstr659:
    .asciz "EXIT_FAILURE"
.Lstr660:
    .asciz "EXIT_SUCCESS"
.Lstr661:
    .asciz "SEEK_SET"
.Lstr662:
    .asciz "SEEK_CUR"
.Lstr663:
    .asciz "SEEK_END"
.Lstr664:
    .asciz "NULL"
.Lstr665:
    .asciz "stderr"
.Lstr666:
    .asciz "stdin"
.Lstr667:
    .asciz "stdout"
.Lstr668:
    .asciz "optarg"
.Lstr669:
    .asciz "optind"
.Lstr670:
    .asciz "errno"
.Lstr671:
    .asciz "size_t"
.Lstr672:
    .asciz "va_list"
.Lstr673:
    .asciz "FILE"
.Lstr674:
    .asciz "size_t"
.Lstr675:
    .asciz "va_list"
.Lstr676:
    .asciz "FILE"
.Lstr677:
    .asciz "    .section .text"
.Lstr678:
    .asciz "    .section .rodata"
.Lstr679:
    .asciz "    .section .text"
.Lstr680:
    .asciz "    .globl _start"
.Lstr681:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr682:
    .asciz "r"
.Lstr683:
    .asciz "Cannot open input file: %s\n"
.Lstr684:
    .asciz "Invalid file size\n"
.Lstr685:
    .asciz "Error reading file\n"
.Lstr686:
    .asciz "EXIT_FAILURE"
.Lstr687:
    .asciz "EXIT_SUCCESS"
.Lstr688:
    .asciz "SEEK_SET"
.Lstr689:
    .asciz "SEEK_CUR"
.Lstr690:
    .asciz "SEEK_END"
.Lstr691:
    .asciz "NULL"
.Lstr692:
    .asciz "stderr"
.Lstr693:
    .asciz "stdin"
.Lstr694:
    .asciz "stdout"
.Lstr695:
    .asciz "optarg"
.Lstr696:
    .asciz "optind"
.Lstr697:
    .asciz "errno"
.Lstr698:
    .asciz "size_t"
.Lstr699:
    .asciz "va_list"
.Lstr700:
    .asciz "FILE"
.Lstr701:
    .asciz "size_t"
.Lstr702:
    .asciz "va_list"
.Lstr703:
    .asciz "FILE"
.Lstr704:
    .asciz "    .section .text"
.Lstr705:
    .asciz "    .section .rodata"
.Lstr706:
    .asciz "    .section .text"
.Lstr707:
    .asciz "    .globl _start"
    .section .text
    .globl _start
