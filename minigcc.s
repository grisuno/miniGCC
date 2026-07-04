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
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq $0, %rax
    movq %rax, -16(%rbp)
    jmp .L8
.L6:
    leaq macros(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L10
    movq -16(%rbp), %rax
    leave
    ret
.L10:
.L7:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L8
.L8:
    movq -16(%rbp), %rax
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
    .globl add_macro
add_macro:
    pushq %rbp
    movq %rsp, %rbp
    subq $40, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
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
    xorl %eax, %eax
    call error
.L18:
    leaq macros(%rip), %rax
    pushq %rax
    movq macro_count(%rip), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    movq %rax, -24(%rbp)
    leaq macro_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L20
    leaq -32(%rbp), %rax
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
    movq %rax, -40(%rbp)
.L22:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L23
    movq -24(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -40(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L22
.L23:
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
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
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
    .globl error
error:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq %rdi, -8(%rbp)
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr3(%rip), %rax
    pushq %rax
    movq line(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 32(%rsp), %rdi
    movq 24(%rsp), %rsi
    movq 16(%rsp), %rdx
    movq 8(%rsp), %rcx
    movq 0(%rsp), %r8
    addq $40, %rsp
    xorl %eax, %eax
    call fprintf
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call exit
    leave
    ret
    .globl safe_malloc
safe_malloc:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call malloc
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
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
    xorl %eax, %eax
    call fprintf
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call exit
.L26:
    movq -16(%rbp), %rax
    leave
    ret
    .globl my_isspace
my_isspace:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
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
    movq -8(%rbp), %rax
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
    movq -8(%rbp), %rax
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
    movq -8(%rbp), %rax
    pushq %rax
    movq $114, %rax
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
    movq -8(%rbp), %rax
    pushq %rax
    movq $102, %rax
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
    movq -8(%rbp), %rax
    pushq %rax
    movq $118, %rax
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
    .globl my_isalpha
my_isalpha:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $122, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L56
    movq $1, %rax
    leave
    ret
.L56:
    movq -8(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $90, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L58
    movq $1, %rax
    leave
    ret
.L58:
    movq $0, %rax
    leave
    ret
    .globl my_isdigit
my_isdigit:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L62
    movq $1, %rax
    leave
    ret
.L62:
    movq $0, %rax
    leave
    ret
    .globl my_isalnum
my_isalnum:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isalpha
    cmpq $0, %rax
    je .L68
    movq $1, %rax
    leave
    ret
.L68:
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isdigit
    cmpq $0, %rax
    je .L70
    movq $1, %rax
    leave
    ret
.L70:
    movq $0, %rax
    leave
    ret
    .globl next_token
next_token:
    pushq %rbp
    movq %rsp, %rbp
    subq $56, %rsp
restart:
    leaq -8(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L212:
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isspace
    cmpq $0, %rax
    je .L213
    movq -8(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L214
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L214:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -8(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L212
.L213:
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L216
    leaq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L216:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L218
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L220:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L221
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
    andq %rcx, %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L222
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L221
.L222:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L224
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L224:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L220
.L221:
    jmp restart
.L218:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L226
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L228:
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
    andq %rcx, %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L229
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L228
.L229:
    jmp restart
.L226:
    movq -8(%rbp), %rax
    pushq %rax
    movq $35, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L230
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L232:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isspace
    cmpq $0, %rax
    je .L233
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L234
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L234:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L232
.L233:
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
    xorl %eax, %eax
    call strncmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L236
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L238:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isspace
    cmpq $0, %rax
    je .L239
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L238
.L239:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L240:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isalnum
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
    orq %rcx, %rax
    pushq %rax
    movq -48(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L241
    leaq -40(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -48(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L240
.L241:
    leaq -40(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L242:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isspace
    cmpq $0, %rax
    je .L243
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L242
.L243:
    movq $0, %rax
    movq %rax, -56(%rbp)
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isdigit
    cmpq $0, %rax
    je .L244
.L246:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isdigit
    cmpq $0, %rax
    je .L247
    leaq -56(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
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
    jmp .L246
.L247:
.L244:
    leaq -40(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call add_macro
.L236:
.L248:
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
    andq %rcx, %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L249
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L248
.L249:
    jmp restart
.L230:
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isalpha
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $95, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L250
    leaq token(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
.L252:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isalnum
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
    orq %rcx, %rax
    pushq %rax
    movq -24(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L253
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -24(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L252
.L253:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
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
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L254
    leaq tok(%rip), %rax
    pushq %rax
    movq $258, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L255
.L254:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr44(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L256
    leaq tok(%rip), %rax
    pushq %rax
    movq $259, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L257
.L256:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr45(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L258
    leaq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L259
.L258:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr46(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L260
    leaq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L261
.L260:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr47(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L262
    leaq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L263
.L262:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr48(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L264
    leaq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L265
.L264:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr49(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L266
    leaq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L267
.L266:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr50(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L268
    leaq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L269
.L268:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr51(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L270
    leaq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L271
.L270:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr52(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L272
    leaq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L273
.L272:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr53(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L274
    leaq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L275
.L274:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr54(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L276
    leaq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L277
.L276:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr55(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L278
    leaq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L279
.L278:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr56(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L280
    leaq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L281
.L280:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr57(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L282
    leaq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L283
.L282:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr58(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L284
    leaq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L285
.L284:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr59(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L286
    leaq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L287
.L286:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr60(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L288
    leaq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L289
.L288:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr61(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L290
    leaq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L291
.L290:
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr62(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L292
    leaq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L293
.L292:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_macro
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L294
    leaq token(%rip), %rax
    pushq %rax
    movq $64, %rax
    pushq %rax
    leaq .Lstr63(%rip), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
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
    xorl %eax, %eax
    call snprintf
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L295
.L294:
    leaq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    movq %rax, (%rcx)
.L295:
.L293:
.L291:
.L289:
.L287:
.L285:
.L283:
.L281:
.L279:
.L277:
.L275:
.L273:
.L271:
.L269:
.L267:
.L265:
.L263:
.L261:
.L259:
.L257:
.L255:
    leave
    ret
.L250:
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isdigit
    cmpq $0, %rax
    je .L296
    leaq token(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
.L298:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call my_isdigit
    pushq %rax
    movq -24(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L299
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -24(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L298
.L299:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
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
.L296:
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L300
    leaq token(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L302:
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
    andq %rcx, %rax
    pushq %rax
    movq -24(%rbp), %rax
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
    andq %rcx, %rax
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
    andq %rcx, %rax
    pushq %rax
    movq -24(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L303
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
    andq %rcx, %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L304
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
    je .L306
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -16(%rbp), %rax
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
    leaq -24(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L307
.L306:
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
    je .L308
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -16(%rbp), %rax
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
    leaq -24(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L309
.L308:
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
    je .L310
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -16(%rbp), %rax
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
    leaq -24(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L311
.L310:
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
    je .L312
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    movb %al, (%rcx)
    leaq -16(%rbp), %rax
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
    leaq -24(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L313
.L312:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -24(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L313:
.L311:
.L309:
.L307:
    jmp .L305
.L304:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -24(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L305:
    jmp .L302
.L303:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
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
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L314
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L315
.L314:
    leaq .Lstr64(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L315:
    leaq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L300:
    movq -8(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L316
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
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L318
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    jmp .L320
.L322:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L321
.L323:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L321
.L324:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L321
.L325:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L321
.L326:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L321
.L327:
    leaq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L321
    jmp .L321
.L320:
    movq (%rsp), %rax
    cmpq $110, %rax
    je .L322
    cmpq $116, %rax
    je .L323
    cmpq $48, %rax
    je .L324
    cmpq $92, %rax
    je .L325
    cmpq $39, %rax
    je .L326
    jmp .L327
.L321:
    addq $8, %rsp
    jmp .L319
.L318:
    leaq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L319:
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
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L328
    leaq .Lstr65(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L328:
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
    movq -16(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    xorl %eax, %eax
    call snprintf
    leaq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L316:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L330
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L330:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L332
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L332:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L334
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L334:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L336:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L338:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L340:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L342:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L344:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L346:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L348:
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
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
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L350:
    leaq token(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -8(%rbp), %rax
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
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    .globl match
match:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq %rdi, -8(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L354
    xorl %eax, %eax
    call next_token
    jmp .L355
.L354:
    leaq .Lstr79(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L355:
    leave
    ret
    .globl emit
emit:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq %rdi, -8(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L362
    leave
    ret
.L362:
.L364:
    movq -8(%rbp), %rax
    movsbq (%rax), %rax
    movq -8(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L365
    movq -8(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
    movq -8(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -8(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L366
    movq $37, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    leaq -8(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L367
.L366:
    movq -8(%rbp), %rax
    movsbq (%rax), %rax
    movq -8(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    leaq -8(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L367:
    jmp .L364
.L365:
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    .globl emit_i
emit_i:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L370
    leave
    ret
.L370:
    movq output(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call fprintf
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    .globl emit_s
emit_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L374
    leave
    ret
.L374:
    movq output(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call fprintf
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    .globl emit_is
emit_is:
    pushq %rbp
    movq %rsp, %rbp
    subq $24, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L378
    leave
    ret
.L378:
    movq output(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    xorl %eax, %eax
    call fprintf
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    .globl emit_si
emit_si:
    pushq %rbp
    movq %rsp, %rbp
    subq $24, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L382
    leave
    ret
.L382:
    movq output(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    xorl %eax, %eax
    call fprintf
    movq $10, %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    .globl emit_label
emit_label:
    pushq %rbp
    movq %rsp, %rbp
    subq $8, %rsp
    movq %rdi, -8(%rbp)
    movq emit_enabled(%rip), %rax
    cmpq $0, %rax
    je .L386
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr81(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call fprintf
.L386:
    leave
    ret
    .globl find_symbol
find_symbol:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    jmp .L396
.L394:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L398
    movq -16(%rbp), %rax
    leave
    ret
.L398:
.L395:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    jmp .L396
.L396:
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L394
.L397:
    movq $1, %rax
    negq %rax
    leave
    ret
    .globl add_symbol
add_symbol:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L408
    leaq .Lstr88(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L408:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
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
    xorl %eax, %eax
    call strncpy
    movq -64(%rbp), %rax
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
    movq -56(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -56(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -56(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -56(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -56(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L410
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq .Lstr89(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr90(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    leaq .Lstr91(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L412
    leaq .Lstr92(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L412:
    leaq .Lstr93(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L411
.L410:
    leaq stack_size(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
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
    movq -56(%rbp), %rax
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
    je .L414
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L414:
.L411:
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
    subq $56, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L502
    leaq .Lstr128(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L503
.L502:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L504
    leaq -32(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L506
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -40(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L508
.L510:
    movq $1, %rax
    cmpq $0, %rax
    je .L511
    xorl %eax, %eax
    call assignment_expr
    leaq .Lstr129(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq -40(%rbp), %rax
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
    je .L512
    jmp .L511
.L512:
    movq $44, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L510
.L511:
.L508:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq .Lstr130(%rip), %rax
    movq %rax, -48(%rbp)
    leaq .Lstr131(%rip), %rax
    movq %rax, -40(%rbp)
    leaq .Lstr132(%rip), %rax
    movq %rax, -32(%rbp)
    leaq .Lstr133(%rip), %rax
    movq %rax, -24(%rbp)
    leaq .Lstr134(%rip), %rax
    movq %rax, -16(%rbp)
    leaq .Lstr135(%rip), %rax
    movq %rax, -8(%rbp)
    movq $0, %rax
    movq %rax, -56(%rbp)
    jmp .L516
.L514:
    leaq .Lstr136(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
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
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call emit_is
.L515:
    leaq -56(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L516
.L516:
    movq -56(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    jne .L514
.L517:
    movq -40(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L518
    leaq .Lstr137(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L518:
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L520
    leaq .Lstr138(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    imulq %rcx, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L520:
    leaq .Lstr139(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr140(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L507
.L506:
    leaq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L522
    leaq .Lstr141(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L522:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L524
    leaq .Lstr142(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L525
.L524:
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L526
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L528
    movq -48(%rbp), %rax
    movq (%rax), %rax
    jmp .L529
.L528:
    movq $8, %rax
.L529:
    popq %rcx
    movq %rax, (%rcx)
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L530
    leaq .Lstr143(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L531
.L530:
    leaq .Lstr144(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L531:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L532
    movq $0, %rax
    jmp .L533
.L532:
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L534
    movq -48(%rbp), %rax
    movq (%rax), %rax
    jmp .L535
.L534:
    movq $262, %rax
.L535:
.L533:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L527
.L526:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L536
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L538
    leaq .Lstr145(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L539
.L538:
    leaq .Lstr146(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L539:
    jmp .L537
.L536:
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L540
    leaq .Lstr147(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L541
.L540:
    leaq .Lstr148(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L541:
.L537:
.L527:
.L525:
.L507:
    jmp .L505
.L504:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L542
    movq input_ptr(%rip), %rax
    movq %rax, -8(%rbp)
    movq line(%rip), %rax
    movq %rax, -16(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -24(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L544
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
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
    movq (%rax), %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L546
    xorl %eax, %eax
    call next_token
.L548:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L549
    xorl %eax, %eax
    call next_token
    jmp .L548
.L549:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L550
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L550:
.L546:
    jmp .L545
.L544:
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
    orq %rcx, %rax
    cmpq $0, %rax
    je .L552
    movq tok(%rip), %rax
    movq %rax, -32(%rbp)
    xorl %eax, %eax
    call next_token
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
    xorl %eax, %eax
    call next_token
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
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L556:
    movq -24(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L558
    leaq tok(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L558:
.L552:
.L545:
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L560
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call unary
    jmp .L561
.L560:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call expression
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
.L561:
    jmp .L543
.L542:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L562
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call unary
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L564
    leaq .Lstr149(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L565
.L564:
    leaq .Lstr150(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L565:
    jmp .L563
.L562:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L566
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L568
    leaq .Lstr151(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L568:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L570
    leaq .Lstr152(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L570:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L572
    movq $263, %rax
    jmp .L573
.L572:
    movq $262, %rax
.L573:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L574
    movq -16(%rbp), %rax
    movq (%rax), %rax
    jmp .L575
.L574:
    movq $0, %rax
.L575:
    popq %rcx
    movq %rax, (%rcx)
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L576
    leaq .Lstr153(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L577
.L576:
    leaq .Lstr154(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L577:
    xorl %eax, %eax
    call next_token
    jmp .L567
.L566:
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L578
    movq str_label_counter(%rip), %rax
    leaq str_label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -8(%rbp)
    movq string_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L580
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
    xorl %eax, %eax
    call strlen
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call malloc
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
    xorl %eax, %eax
    call strcpy
    leaq string_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L580:
    leaq .Lstr155(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L579
.L578:
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L582
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call unary
    leaq .Lstr156(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L583
.L582:
    movq tok(%rip), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L584
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call unary
    leaq .Lstr157(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr158(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr159(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L585
.L584:
    movq tok(%rip), %rax
    pushq %rax
    movq $126, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L586
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call unary
    leaq .Lstr160(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L587
.L586:
    leaq .Lstr161(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L587:
.L585:
.L583:
.L579:
.L567:
.L563:
.L543:
.L505:
.L503:
    leave
    ret
    .globl lvalue_address
lvalue_address:
    pushq %rbp
    movq %rsp, %rbp
    subq $24, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L614
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L616
    leaq .Lstr168(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L616:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L618
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L620
    movq -16(%rbp), %rax
    movq (%rax), %rax
    jmp .L621
.L620:
    movq $8, %rax
.L621:
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L622
    movq -16(%rbp), %rax
    movq (%rax), %rax
    jmp .L623
.L622:
    movq $262, %rax
.L623:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L619
.L618:
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L619:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -24(%rbp)
    xorl %eax, %eax
    call next_token
    movq -24(%rbp), %rax
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
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L624
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L625
.L624:
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L626
    leaq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L626:
.L625:
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L628
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L630
    leaq .Lstr169(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L631
.L630:
    leaq .Lstr170(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L631:
    jmp .L629
.L628:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L632
    leaq .Lstr171(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L633
.L632:
    leaq .Lstr172(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L633:
.L629:
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call handle_postfix
    jmp .L615
.L614:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L634
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call unary
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq assign_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L636
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
    je .L638
    movq $1, %rax
    jmp .L639
.L638:
    movq $8, %rax
.L639:
    popq %rcx
    movq %rax, (%rcx)
.L636:
    jmp .L635
.L634:
    leaq .Lstr173(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L635:
.L615:
    leave
    ret
    .globl handle_postfix
handle_postfix:
    pushq %rbp
    movq %rsp, %rbp
    subq $40, %rsp
    movq %rdi, -8(%rbp)
.L694:
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
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L695
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L696
    xorl %eax, %eax
    call next_token
    leaq .Lstr186(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq no_postfix_deref(%rip), %rax
    movq %rax, -16(%rbp)
    movq expr_pointed(%rip), %rax
    movq %rax, -24(%rbp)
    movq current_elem_size(%rip), %rax
    movq %rax, -32(%rbp)
    xorl %eax, %eax
    call expression
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq .Lstr187(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq current_elem_size(%rip), %rax
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L698
    leaq -40(%rbp), %rax
    pushq %rax
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L700
    movq $1, %rax
    jmp .L701
.L700:
    movq $8, %rax
.L701:
    popq %rcx
    movq %rax, (%rcx)
.L698:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L702
    leaq .Lstr188(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L702:
    leaq .Lstr189(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -8(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq no_postfix_deref(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setle %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L704
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L706
    leaq .Lstr190(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L707
.L706:
    leaq .Lstr191(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L707:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L704:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L697
.L696:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L708
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -16(%rbp)
    movq $8, %rax
    movq %rax, -24(%rbp)
    movq $8, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
    jmp .L712
.L710:
    leaq token(%rip), %rax
    pushq %rax
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L714
    leaq -16(%rbp), %rax
    pushq %rax
    leaq struct_member_offsets(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -24(%rbp), %rax
    pushq %rax
    leaq struct_member_sizes(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    pushq %rax
    leaq struct_member_elem_sizes(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L713
.L714:
.L711:
    leaq -40(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L712
.L712:
    movq -40(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L710
.L713:
    xorl %eax, %eax
    call next_token
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L716
    leaq .Lstr192(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L716:
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -8(%rbp), %rax
    cmpq $0, %rax
    je .L718
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L720
    movq $262, %rax
    jmp .L721
.L720:
    movq $0, %rax
.L721:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L719
.L718:
    movq -24(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L722
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L724
    movq $262, %rax
    jmp .L725
.L724:
    movq $0, %rax
.L725:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L723
.L722:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L726
    leaq .Lstr193(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L727
.L726:
    leaq .Lstr194(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L727:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L723:
.L719:
    jmp .L709
.L708:
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L728
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -16(%rbp)
    movq $8, %rax
    movq %rax, -24(%rbp)
    movq $8, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
    jmp .L732
.L730:
    leaq token(%rip), %rax
    pushq %rax
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L734
    leaq -16(%rbp), %rax
    pushq %rax
    leaq struct_member_offsets(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -24(%rbp), %rax
    pushq %rax
    leaq struct_member_sizes(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    pushq %rax
    leaq struct_member_elem_sizes(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L733
.L734:
.L731:
    leaq -40(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L732
.L732:
    movq -40(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L730
.L733:
    xorl %eax, %eax
    call next_token
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L736
    leaq .Lstr195(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L736:
    leaq assign_size(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -8(%rbp), %rax
    cmpq $0, %rax
    je .L738
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L740
    movq $262, %rax
    jmp .L741
.L740:
    movq $0, %rax
.L741:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L739
.L738:
    movq -24(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L742
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L744
    movq $262, %rax
    jmp .L745
.L744:
    movq $0, %rax
.L745:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L743
.L742:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L746
    leaq .Lstr196(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L747
.L746:
    leaq .Lstr197(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L747:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L743:
.L739:
.L728:
.L709:
.L697:
    jmp .L694
.L695:
    leave
    ret
    .globl expr_prec
expr_prec:
    pushq %rbp
    movq %rsp, %rbp
    subq $40, %rsp
    movq %rdi, -8(%rbp)
    xorl %eax, %eax
    call unary
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call handle_postfix
    leaq no_postfix_deref(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L791:
    movq $1, %rax
    cmpq $0, %rax
    je .L792
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L793
    leaq -24(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L794
.L793:
    movq -16(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $37, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L795
    leaq -24(%rbp), %rax
    pushq %rax
    movq $20, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L796
.L795:
    movq -16(%rbp), %rax
    pushq %rax
    movq $276, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $277, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $274, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $275, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L797
    leaq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L798
.L797:
    movq -16(%rbp), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L799
    leaq -24(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L800
.L799:
    movq -16(%rbp), %rax
    pushq %rax
    movq $94, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L801
    leaq -24(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L802
.L801:
    movq -16(%rbp), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L803
    leaq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L804
.L803:
    movq -16(%rbp), %rax
    pushq %rax
    movq $278, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L805
    leaq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L806
.L805:
    movq -16(%rbp), %rax
    pushq %rax
    movq $279, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L807
    leaq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L808
.L807:
    movq -16(%rbp), %rax
    pushq %rax
    movq $63, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L809
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L810
.L809:
    jmp .L792
.L810:
.L808:
.L806:
.L804:
.L802:
.L800:
.L798:
.L796:
.L794:
    movq -24(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L811
    jmp .L792
.L811:
    xorl %eax, %eax
    call next_token
    movq -16(%rbp), %rax
    pushq %rax
    movq $63, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L813
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -32(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -40(%rbp)
    leaq .Lstr238(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr239(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    xorl %eax, %eax
    call expression
    leaq .Lstr240(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    movq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    xorl %eax, %eax
    call expression
    movq -40(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    jmp .L791
.L813:
    leaq .Lstr241(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call expr_prec
    leaq .Lstr242(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq -16(%rbp), %rax
    pushq %rax
    jmp .L815
.L817:
    leaq .Lstr243(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L818:
    leaq .Lstr244(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr245(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L819:
    leaq .Lstr246(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L820:
    leaq .Lstr247(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr248(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr249(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L821:
    leaq .Lstr250(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr251(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr252(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr253(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L822:
    leaq .Lstr254(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr255(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr256(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L823:
    leaq .Lstr257(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr258(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr259(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L824:
    leaq .Lstr260(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr261(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr262(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L825:
    leaq .Lstr263(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr264(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr265(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L826:
    leaq .Lstr266(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr267(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr268(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L827:
    leaq .Lstr269(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr270(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr271(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L828:
    leaq .Lstr272(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L829:
    leaq .Lstr273(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L830:
    leaq .Lstr274(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L831:
    leaq .Lstr275(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L832:
    leaq .Lstr276(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L816
.L833:
    leaq .Lstr277(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
    jmp .L816
.L815:
    movq (%rsp), %rax
    cmpq $43, %rax
    je .L817
    cmpq $45, %rax
    je .L818
    cmpq $42, %rax
    je .L819
    cmpq $47, %rax
    je .L820
    cmpq $37, %rax
    je .L821
    cmpq $0, %rax
    je .L822
    cmpq $0, %rax
    je .L823
    cmpq $60, %rax
    je .L824
    cmpq $62, %rax
    je .L825
    cmpq $0, %rax
    je .L826
    cmpq $0, %rax
    je .L827
    cmpq $38, %rax
    je .L828
    cmpq $94, %rax
    je .L829
    cmpq $124, %rax
    je .L830
    cmpq $0, %rax
    je .L831
    cmpq $0, %rax
    je .L832
    jmp .L833
.L816:
    addq $8, %rsp
    jmp .L791
.L792:
    leave
    ret
    .globl expression
expression:
    pushq %rbp
    movq %rsp, %rbp
    subq $104, %rsp
    movq input_ptr(%rip), %rax
    movq %rax, -8(%rbp)
    movq line(%rip), %rax
    movq %rax, -16(%rbp)
    movq tok(%rip), %rax
    movq %rax, -24(%rbp)
    leaq -88(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq $0, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call expr_prec
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
    orq %rcx, %rax
    cmpq $0, %rax
    je .L846
    movq tok(%rip), %rax
    movq %rax, -96(%rbp)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -88(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    xorl %eax, %eax
    call lvalue_address
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call handle_postfix
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L848
    movq $1, %rax
    jmp .L849
.L848:
    movq $8, %rax
.L849:
    movq %rax, -104(%rbp)
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L850
    leaq .Lstr285(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L851
.L850:
    leaq .Lstr286(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L851:
    movq -96(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L852
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L854
    leaq .Lstr287(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L855
.L854:
    leaq .Lstr288(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L855:
    jmp .L853
.L852:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L856
    leaq .Lstr289(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L857
.L856:
    leaq .Lstr290(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L857:
.L853:
    leaq .Lstr291(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call next_token
.L846:
    leave
    ret
    .globl assignment_expr
assignment_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq tok(%rip), %rax
    movq %rax, -8(%rbp)
    leaq -72(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq input_ptr(%rip), %rax
    movq %rax, -80(%rbp)
    movq line(%rip), %rax
    movq %rax, -88(%rbp)
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L954
    xorl %eax, %eax
    call expression
    leave
    ret
.L954:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L956
    xorl %eax, %eax
    call next_token
    movq input_ptr(%rip), %rax
    movq %rax, -96(%rbp)
    movq line(%rip), %rax
    movq %rax, -104(%rbp)
    movq tok(%rip), %rax
    movq %rax, -112(%rbp)
    leaq -176(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq $0, %rax
    movq %rax, -184(%rbp)
.L958:
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
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L959
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L960
    movq $1, %rax
    movq %rax, -192(%rbp)
.L962:
    movq -192(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L963
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L964
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L965
.L964:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L966
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L966:
.L965:
    jmp .L962
.L963:
    xorl %eax, %eax
    call next_token
    jmp .L961
.L960:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L968
    movq $1, %rax
    movq %rax, -192(%rbp)
.L970:
    movq -192(%rbp), %rax
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L971
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L972
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L973
.L972:
    movq tok(%rip), %rax
    pushq %rax
    movq $93, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L974
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L974:
.L973:
    jmp .L970
.L971:
    xorl %eax, %eax
    call next_token
    jmp .L969
.L968:
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call next_token
.L969:
.L961:
    jmp .L958
.L959:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L976
    leaq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L977
.L976:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L978
    leaq -184(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L979
.L978:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L980
    leaq -184(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L981
.L980:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L982
    leaq -184(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L983
.L982:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L984
    leaq -184(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L985
.L984:
    leaq -184(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L985:
.L983:
.L981:
.L979:
.L977:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -176(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L986
    leaq tok(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -72(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call lvalue_address
    movq $61, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq .Lstr358(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call assignment_expr
    leaq .Lstr359(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L988
    leaq .Lstr360(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L989
.L988:
    leaq .Lstr361(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L989:
    leave
    ret
    jmp .L987
.L986:
    movq -184(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L990
    leaq tok(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -72(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call lvalue_address
    leaq .Lstr362(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L992
    leaq .Lstr363(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L993
.L992:
    leaq .Lstr364(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L993:
    leaq .Lstr365(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call assignment_expr
    leaq .Lstr366(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L994
    leaq .Lstr367(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr368(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr369(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L995
.L994:
    leaq .Lstr370(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr371(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr372(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L995:
    leave
    ret
    jmp .L991
.L990:
    movq -184(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L996
    leaq tok(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -72(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call lvalue_address
    leaq .Lstr373(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L998
    leaq .Lstr374(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L999
.L998:
    leaq .Lstr375(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L999:
    leaq .Lstr376(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call assignment_expr
    leaq .Lstr377(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1000
    leaq .Lstr378(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr379(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr380(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1001
.L1000:
    leaq .Lstr381(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr382(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr383(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1001:
    leave
    ret
    jmp .L997
.L996:
    movq -184(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1002
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1004
    movq $271, %rax
    jmp .L1005
.L1004:
    movq $272, %rax
.L1005:
    movq %rax, -192(%rbp)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -72(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    xorl %eax, %eax
    call lvalue_address
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1006
    leaq .Lstr384(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1007
.L1006:
    leaq .Lstr385(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1007:
    movq -192(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1008
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1010
    leaq .Lstr386(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1011
.L1010:
    leaq .Lstr387(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1011:
    jmp .L1009
.L1008:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1012
    leaq .Lstr388(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1013
.L1012:
    leaq .Lstr389(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1013:
.L1009:
    leaq .Lstr390(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call next_token
    leave
    ret
    jmp .L1003
.L1002:
    leaq tok(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -72(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call expression
    leave
    ret
.L1003:
.L997:
.L991:
.L987:
    jmp .L957
.L956:
    movq input_ptr(%rip), %rax
    movq %rax, -96(%rbp)
    movq line(%rip), %rax
    movq %rax, -104(%rbp)
    movq tok(%rip), %rax
    movq %rax, -112(%rbp)
    leaq -176(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    xorl %eax, %eax
    call expression
    movq $0, %rax
    movq %rax, -184(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1014
    leaq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1015
.L1014:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1016
    leaq -184(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1017
.L1016:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1018
    leaq -184(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1019
.L1018:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1020
    leaq -184(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1021
.L1020:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1022
    leaq -184(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1022:
.L1021:
.L1019:
.L1017:
.L1015:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -176(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1024
    xorl %eax, %eax
    call lvalue_address
    movq $61, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq .Lstr391(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call assignment_expr
    leaq .Lstr392(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1026
    leaq .Lstr393(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1027
.L1026:
    leaq .Lstr394(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1027:
    leave
    ret
    jmp .L1025
.L1024:
    movq -184(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1028
    xorl %eax, %eax
    call lvalue_address
    leaq .Lstr395(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1030
    leaq .Lstr396(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1031
.L1030:
    leaq .Lstr397(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1031:
    leaq .Lstr398(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call assignment_expr
    leaq .Lstr399(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1032
    leaq .Lstr400(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr401(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr402(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1033
.L1032:
    leaq .Lstr403(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr404(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr405(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1033:
    leave
    ret
    jmp .L1029
.L1028:
    movq -184(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1034
    xorl %eax, %eax
    call lvalue_address
    leaq .Lstr406(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1036
    leaq .Lstr407(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1037
.L1036:
    leaq .Lstr408(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1037:
    leaq .Lstr409(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call assignment_expr
    leaq .Lstr410(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1038
    leaq .Lstr411(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr412(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr413(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1039
.L1038:
    leaq .Lstr414(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr415(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr416(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1039:
    leave
    ret
    jmp .L1035
.L1034:
    movq -184(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1040
    xorl %eax, %eax
    call lvalue_address
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1042
    leaq .Lstr417(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1043
.L1042:
    leaq .Lstr418(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1043:
    movq -184(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1044
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1046
    leaq .Lstr419(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1047
.L1046:
    leaq .Lstr420(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1047:
    jmp .L1045
.L1044:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1048
    leaq .Lstr421(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1049
.L1048:
    leaq .Lstr422(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1049:
.L1045:
    leaq .Lstr423(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call next_token
    leave
    ret
    jmp .L1041
.L1040:
    xorl %eax, %eax
    call expression
    leave
    ret
.L1041:
.L1035:
.L1029:
.L1025:
.L957:
    .globl statement
statement:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $258, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1236
    xorl %eax, %eax
    call next_token
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    xorl %eax, %eax
    call assignment_expr
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -8(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq .Lstr467(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr468(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    xorl %eax, %eax
    call statement
    movq tok(%rip), %rax
    pushq %rax
    movq $259, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1238
    xorl %eax, %eax
    call next_token
    leaq .Lstr469(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    xorl %eax, %eax
    call statement
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    jmp .L1239
.L1238:
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
.L1239:
    leave
    ret
.L1236:
    movq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1240
    xorl %eax, %eax
    call next_token
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
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
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1242
    movq tok(%rip), %rax
    movq %rax, -8(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -16(%rbp)
.L1244:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1245
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1244
.L1245:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1246
    leaq .Lstr470(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1246:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1248
    leaq -56(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1248:
    leaq -48(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    xorl %eax, %eax
    call next_token
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1250
    movq $8, %rax
    jmp .L1251
.L1250:
    movq -8(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1252
    movq $8, %rax
    jmp .L1253
.L1252:
    movq $1, %rax
.L1253:
.L1251:
    movq %rax, -64(%rbp)
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1254
    movq -8(%rbp), %rax
    jmp .L1255
.L1254:
    movq $0, %rax
.L1255:
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
    xorl %eax, %eax
    call add_symbol
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1256
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call expression
    leaq -48(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -72(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -72(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1258
    leaq .Lstr471(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L1259
.L1258:
    leaq .Lstr472(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1259:
.L1256:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1243
.L1242:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1260
    xorl %eax, %eax
    call expression
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1261
.L1260:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
.L1261:
.L1243:
    movq input_ptr(%rip), %rax
    movq %rax, -8(%rbp)
    movq line(%rip), %rax
    movq %rax, -16(%rbp)
    movq tok(%rip), %rax
    movq %rax, -24(%rbp)
    leaq -88(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L1262
.L1264:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1265
    xorl %eax, %eax
    call next_token
    jmp .L1264
.L1265:
.L1262:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq input_ptr(%rip), %rax
    movq %rax, -104(%rbp)
    movq line(%rip), %rax
    movq %rax, -112(%rbp)
    movq tok(%rip), %rax
    movq %rax, -120(%rbp)
    leaq -184(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    cmpq $0, %rax
    je .L1266
.L1268:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1269
    xorl %eax, %eax
    call next_token
    jmp .L1268
.L1269:
.L1266:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -200(%rbp)
    movq -192(%rbp), %rax
    cmpq $0, %rax
    je .L1270
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1271
.L1270:
    movq $0, %rax
.L1271:
    movq %rax, -208(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -216(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -192(%rbp), %rax
    cmpq $0, %rax
    je .L1272
    movq -208(%rbp), %rax
    jmp .L1273
.L1272:
    movq -216(%rbp), %rax
.L1273:
    movq %rax, -232(%rbp)
    leaq .Lstr473(%rip), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    movq -200(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    movq continue_target(%rip), %rax
    movq %rax, -240(%rbp)
    movq continue_target_valid(%rip), %rax
    movq %rax, -248(%rbp)
    movq break_target(%rip), %rax
    movq %rax, -256(%rbp)
    movq break_target_valid(%rip), %rax
    movq %rax, -264(%rbp)
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -232(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -224(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call statement
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -240(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq -248(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -264(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq input_ptr(%rip), %rax
    movq %rax, -240(%rbp)
    movq line(%rip), %rax
    movq %rax, -248(%rbp)
    movq tok(%rip), %rax
    movq %rax, -256(%rbp)
    leaq -320(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq -192(%rbp), %rax
    cmpq $0, %rax
    je .L1274
    movq -208(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -120(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -184(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    xorl %eax, %eax
    call assignment_expr
    leaq .Lstr474(%rip), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1274:
    movq -216(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L1276
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -88(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    xorl %eax, %eax
    call expression
    leaq .Lstr475(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr476(%rip), %rax
    pushq %rax
    movq -200(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    jmp .L1277
.L1276:
    leaq .Lstr477(%rip), %rax
    pushq %rax
    movq -200(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1277:
    movq -224(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -240(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -248(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -320(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    leave
    ret
.L1240:
    movq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1278
    xorl %eax, %eax
    call next_token
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -8(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    movq continue_target(%rip), %rax
    movq %rax, -24(%rbp)
    movq continue_target_valid(%rip), %rax
    movq %rax, -32(%rbp)
    movq break_target(%rip), %rax
    movq %rax, -40(%rbp)
    movq break_target_valid(%rip), %rax
    movq %rax, -48(%rbp)
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    xorl %eax, %eax
    call assignment_expr
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq .Lstr478(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr479(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    xorl %eax, %eax
    call statement
    leaq .Lstr480(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    leaq continue_target(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq continue_target_valid(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1278:
    movq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1280
    xorl %eax, %eax
    call next_token
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    xorl %eax, %eax
    call expression
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -8(%rbp)
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -16(%rbp)
    leaq .Lstr481(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr482(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    movq break_target(%rip), %rax
    movq %rax, -24(%rbp)
    movq break_target_valid(%rip), %rax
    movq %rax, -32(%rbp)
    movq switch_case_count(%rip), %rax
    movq %rax, -40(%rbp)
    movq switch_has_default(%rip), %rax
    movq %rax, -48(%rbp)
    movq switch_default_label(%rip), %rax
    movq %rax, -56(%rbp)
    leaq break_target(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
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
    xorl %eax, %eax
    call match
.L1282:
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1283
    movq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1284
    xorl %eax, %eax
    call next_token
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call atoi
    movq %rax, -64(%rbp)
    xorl %eax, %eax
    call next_token
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq %rax, -72(%rbp)
    leaq switch_case_values(%rip), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_labels(%rip), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -72(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    jmp .L1285
.L1284:
    movq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1286
    xorl %eax, %eax
    call next_token
    movq $58, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
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
    xorl %eax, %eax
    call emit_label
    jmp .L1287
.L1286:
    xorl %eax, %eax
    call statement
.L1287:
.L1285:
    jmp .L1282
.L1283:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq .Lstr483(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    leaq .Lstr484(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq $0, %rax
    movq %rax, -64(%rbp)
    jmp .L1290
.L1288:
    leaq .Lstr485(%rip), %rax
    pushq %rax
    leaq switch_case_values(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    leaq .Lstr486(%rip), %rax
    pushq %rax
    leaq switch_case_labels(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1289:
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1290
.L1290:
    movq -64(%rbp), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1288
.L1291:
    movq switch_has_default(%rip), %rax
    cmpq $0, %rax
    je .L1292
    leaq .Lstr487(%rip), %rax
    pushq %rax
    movq switch_default_label(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1292:
    movq -16(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    leaq .Lstr488(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq break_target(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq break_target_valid(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_case_count(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_has_default(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq switch_default_label(%rip), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1280:
    movq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1294
    xorl %eax, %eax
    call next_token
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq break_target_valid(%rip), %rax
    cmpq $0, %rax
    je .L1296
    leaq .Lstr489(%rip), %rax
    pushq %rax
    movq break_target(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1296:
    leave
    ret
.L1294:
    movq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1298
    xorl %eax, %eax
    call next_token
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq continue_target_valid(%rip), %rax
    cmpq $0, %rax
    je .L1300
    leaq .Lstr490(%rip), %rax
    pushq %rax
    movq continue_target(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1300:
    leave
    ret
.L1298:
    movq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1302
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1304
    leaq .Lstr491(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1304:
    leaq .Lstr492(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    xorl %eax, %eax
    call next_token
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leave
    ret
.L1302:
    movq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1306
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1308
    xorl %eax, %eax
    call expression
.L1308:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq .Lstr493(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr494(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leave
    ret
.L1306:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1310
    xorl %eax, %eax
    call next_token
    movq stack_size(%rip), %rax
    movq %rax, -8(%rbp)
.L1312:
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1313
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
    leaq .Lstr495(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    leaq .Lstr496(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1314
    xorl %eax, %eax
    call next_token
.L1314:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1316
    xorl %eax, %eax
    call next_token
    jmp .L1312
    jmp .L1317
.L1316:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1318
    xorl %eax, %eax
    call next_token
    jmp .L1312
    jmp .L1319
.L1318:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1320
    xorl %eax, %eax
    call skip_typedef
    jmp .L1321
.L1320:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1322
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call skip_struct
    jmp .L1323
.L1322:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1324
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
.L1326:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    andq %rcx, %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1327
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1326
.L1327:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq $58, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1328
    leaq .Lstr497(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call next_token
    jmp .L1312
.L1328:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1330
    xorl %eax, %eax
    call statement
    jmp .L1312
.L1330:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    movq %rax, -24(%rbp)
    xorl %eax, %eax
    call next_token
restart_typedef:
    movq $0, %rax
    movq %rax, -32(%rbp)
.L1332:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1333
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1332
.L1333:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1334
    leaq .Lstr498(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1334:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -72(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1336
    leaq -72(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1336:
    leaq -64(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq -64(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    xorl %eax, %eax
    call next_token
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L1338
    movq $8, %rax
    jmp .L1339
.L1338:
    movq -24(%rbp), %rax
.L1339:
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -88(%rbp)
    movq -80(%rbp), %rax
    movq %rax, -96(%rbp)
.L1340:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1341
    leaq -88(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -104(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1342
    leaq -104(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call atoi
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
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
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_macro
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1346
    leaq -104(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1347
.L1346:
    leaq .Lstr499(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1347:
    xorl %eax, %eax
    call next_token
.L1344:
.L1343:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq -80(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1348
    movq -104(%rbp), %rax
    jmp .L1349
.L1348:
    movq $1, %rax
.L1349:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1340
.L1341:
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L1350
    movq $262, %rax
    jmp .L1351
.L1350:
    movq $0, %rax
.L1351:
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    xorl %eax, %eax
    call add_symbol
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1352
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1354
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -104(%rbp)
.L1356:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1357
    xorl %eax, %eax
    call expression
    leaq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -112(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -120(%rbp)
    movq -120(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -128(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1358
    leaq .Lstr500(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    jmp .L1359
.L1358:
    leaq .Lstr501(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1359:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1360
    xorl %eax, %eax
    call next_token
.L1360:
    leaq -104(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1356
.L1357:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq -88(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1362
    leaq -80(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -112(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -120(%rbp)
    movq -120(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -128(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -136(%rbp)
    movq -120(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -120(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
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
    movq -136(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
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
    je .L1364
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1364:
.L1362:
    jmp .L1355
.L1354:
    xorl %eax, %eax
    call expression
    leaq -64(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -104(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1366
    leaq .Lstr502(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L1367
.L1366:
    leaq .Lstr503(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1367:
.L1355:
.L1352:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1368
    xorl %eax, %eax
    call next_token
    jmp restart_typedef
.L1368:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1325
.L1324:
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
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1370
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    xorl %eax, %eax
    call next_token
restart_int:
    movq $0, %rax
    movq %rax, -24(%rbp)
.L1372:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1373
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1372
.L1373:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1374
    leaq .Lstr504(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1374:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1376
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
.L1376:
    leaq -56(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq -56(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    xorl %eax, %eax
    call next_token
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L1378
    movq $8, %rax
    jmp .L1379
.L1378:
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1380
    movq $8, %rax
    jmp .L1381
.L1380:
    movq $1, %rax
.L1381:
.L1379:
    movq %rax, -72(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq -72(%rbp), %rax
    movq %rax, -88(%rbp)
.L1382:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1383
    leaq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1384
    leaq -96(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call atoi
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1385
.L1384:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1386
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_macro
    movq %rax, -104(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1388
    leaq -96(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1389
.L1388:
    leaq .Lstr505(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1389:
    xorl %eax, %eax
    call next_token
.L1386:
.L1385:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq -72(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1390
    movq -96(%rbp), %rax
    jmp .L1391
.L1390:
    movq $1, %rax
.L1391:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1382
.L1383:
    leaq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L1392
    movq -16(%rbp), %rax
    jmp .L1393
.L1392:
    movq $0, %rax
.L1393:
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    xorl %eax, %eax
    call add_symbol
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1394
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1396
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -96(%rbp)
.L1398:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1399
    xorl %eax, %eax
    call expression
    leaq -56(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -104(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -120(%rbp)
    movq -88(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1400
    leaq .Lstr506(%rip), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    jmp .L1401
.L1400:
    leaq .Lstr507(%rip), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1401:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1402
    xorl %eax, %eax
    call next_token
.L1402:
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1398
.L1399:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq -80(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1404
    leaq -72(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -56(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -104(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -120(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    notq %rax
    popq %rcx
    andq %rcx, %rax
    movq %rax, -128(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -112(%rbp), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -120(%rbp), %rax
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
    movq -128(%rbp), %rax
    pushq %rax
    movq -120(%rbp), %rax
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
    je .L1406
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1406:
.L1404:
    jmp .L1397
.L1396:
    xorl %eax, %eax
    call expression
    leaq -56(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -96(%rbp)
    leaq symbols(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -104(%rbp)
    movq -104(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1408
    leaq .Lstr508(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L1409
.L1408:
    leaq .Lstr509(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1409:
.L1397:
.L1394:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1410
    xorl %eax, %eax
    call next_token
    jmp restart_int
.L1410:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1371
.L1370:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1412
    xorl %eax, %eax
    call parse_enum
    jmp .L1413
.L1412:
    xorl %eax, %eax
    call statement
.L1413:
.L1371:
.L1325:
.L1323:
.L1321:
.L1319:
.L1317:
    jmp .L1312
.L1313:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L1310:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1414
    movq input_ptr(%rip), %rax
    movq %rax, -8(%rbp)
    movq line(%rip), %rax
    movq %rax, -16(%rbp)
    movq tok(%rip), %rax
    movq %rax, -24(%rbp)
    leaq -88(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1416
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1418
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call expression
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leave
    ret
.L1418:
.L1416:
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -88(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
.L1414:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1420
    xorl %eax, %eax
    call next_token
    leave
    ret
.L1420:
    xorl %eax, %eax
    call assignment_expr
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    .globl parse_function
parse_function:
    pushq %rbp
    movq %rsp, %rbp
    subq $65736, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    movq stack_size(%rip), %rax
    movq %rax, -24(%rbp)
    movq symbol_count(%rip), %rax
    movq %rax, -32(%rbp)
    movq stack_size(%rip), %rax
    movq %rax, -40(%rbp)
    movq $40, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq $0, %rax
    movq %rax, -65584(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1486
    xorl %eax, %eax
    call next_token
    jmp .L1487
.L1486:
.L1488:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1489
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1490
    xorl %eax, %eax
    call next_token
    jmp .L1488
    jmp .L1491
.L1490:
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
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1492
    movq tok(%rip), %rax
    movq %rax, -65592(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -65600(%rbp)
    movq $0, %rax
    movq %rax, -65608(%rbp)
.L1494:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1495
    leaq -65600(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -65608(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    xorl %eax, %eax
    call next_token
    jmp .L1494
.L1495:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1496
    leaq .Lstr532(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1496:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -65616(%rbp)
    movq -65616(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1498
    leaq -65616(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1498:
    leaq -65576(%rbp), %rax
    pushq %rax
    movq -65584(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq -65576(%rbp), %rax
    pushq %rax
    movq -65584(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -65600(%rbp), %rax
    cmpq $0, %rax
    je .L1500
    movq $8, %rax
    jmp .L1501
.L1500:
    movq -65592(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1502
    movq $1, %rax
    jmp .L1503
.L1502:
    movq $8, %rax
.L1503:
.L1501:
    movq %rax, -65624(%rbp)
    movq -65600(%rbp), %rax
    cmpq $0, %rax
    je .L1504
    movq -65608(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1506
    movq $262, %rax
    jmp .L1507
.L1506:
    movq -65592(%rbp), %rax
.L1507:
    jmp .L1505
.L1504:
    movq $0, %rax
.L1505:
    movq %rax, -65632(%rbp)
    leaq token(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -65624(%rbp), %rax
    pushq %rax
    movq -65632(%rbp), %rax
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
    xorl %eax, %eax
    call add_symbol
    leaq -65584(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1508
    xorl %eax, %eax
    call next_token
.L1508:
    jmp .L1493
.L1492:
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1510
    xorl %eax, %eax
    call next_token
    jmp .L1511
.L1510:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1512
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1514
    xorl %eax, %eax
    call next_token
.L1514:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1516
    xorl %eax, %eax
    call next_token
.L1516:
    jmp .L1489
    jmp .L1513
.L1512:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1518
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -65592(%rbp)
    movq -65592(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    pushq %rax
    movq -65592(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1520
    leaq .Lstr533(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1520:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65592(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    movq %rax, -65600(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -65608(%rbp)
.L1522:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1523
    leaq -65608(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1522
.L1523:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1524
    leaq .Lstr534(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1524:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -65616(%rbp)
    movq -65616(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1526
    leaq -65616(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1526:
    leaq -65576(%rbp), %rax
    pushq %rax
    movq -65584(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq -65576(%rbp), %rax
    pushq %rax
    movq -65584(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -65608(%rbp), %rax
    cmpq $0, %rax
    je .L1528
    leaq -65600(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1528:
    leaq token(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -65600(%rbp), %rax
    pushq %rax
    movq -65608(%rbp), %rax
    cmpq $0, %rax
    je .L1530
    movq $262, %rax
    jmp .L1531
.L1530:
    movq $0, %rax
.L1531:
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
    xorl %eax, %eax
    call add_symbol
    leaq -65584(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1532
    xorl %eax, %eax
    call next_token
.L1532:
    jmp .L1519
.L1518:
    leaq .Lstr535(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1519:
.L1513:
.L1511:
.L1493:
.L1491:
    jmp .L1488
.L1489:
.L1487:
    movq $41, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1534
    leaq symbol_count(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    leave
    ret
.L1534:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1536
    leaq .Lstr536(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1536:
    movq stack_size(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    movq %rax, -65592(%rbp)
    movq input_ptr(%rip), %rax
    movq %rax, -65600(%rbp)
    movq line(%rip), %rax
    movq %rax, -65608(%rbp)
    movq tok(%rip), %rax
    movq %rax, -65616(%rbp)
    leaq -65680(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    movq symbol_count(%rip), %rax
    movq %rax, -65688(%rbp)
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq -65592(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -65592(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call statement
    movq max_func_stack(%rip), %rax
    movq %rax, -65696(%rbp)
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -65592(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq emit_enabled(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq symbol_count(%rip), %rax
    pushq %rax
    movq -65688(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq -65600(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq line(%rip), %rax
    pushq %rax
    movq -65608(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq tok(%rip), %rax
    pushq %rax
    movq -65616(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq token(%rip), %rax
    pushq %rax
    leaq -65680(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcpy
    leaq .Lstr537(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    leaq .Lstr538(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    leaq .Lstr539(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr540(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq -65696(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1538
    leaq .Lstr541(%rip), %rax
    pushq %rax
    movq -65696(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1538:
    leaq .Lstr542(%rip), %rax
    movq %rax, -65704(%rbp)
    leaq .Lstr543(%rip), %rax
    movq %rax, -65696(%rbp)
    leaq .Lstr544(%rip), %rax
    movq %rax, -65688(%rbp)
    leaq .Lstr545(%rip), %rax
    movq %rax, -65680(%rbp)
    leaq .Lstr546(%rip), %rax
    movq %rax, -65672(%rbp)
    leaq .Lstr547(%rip), %rax
    movq %rax, -65664(%rbp)
    movq $0, %rax
    movq %rax, -65712(%rbp)
    jmp .L1542
.L1540:
    leaq -65576(%rbp), %rax
    pushq %rax
    movq -65712(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -65720(%rbp)
    movq -65720(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1544
    leaq .Lstr548(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1544:
    leaq symbols(%rip), %rax
    pushq %rax
    movq -65720(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -65728(%rbp)
    movq -65712(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1546
    leaq .Lstr549(%rip), %rax
    pushq %rax
    leaq -65704(%rbp), %rax
    pushq %rax
    movq -65712(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -65728(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call emit_si
    jmp .L1547
.L1546:
    movq $16, %rax
    pushq %rax
    movq -65712(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    addq %rcx, %rax
    movq %rax, -65736(%rbp)
    leaq .Lstr550(%rip), %rax
    pushq %rax
    movq -65736(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    leaq .Lstr551(%rip), %rax
    pushq %rax
    movq -65728(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1547:
.L1541:
    leaq -65712(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1542
.L1542:
    movq -65712(%rbp), %rax
    pushq %rax
    movq -65584(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1540
.L1543:
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -65592(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq function_has_return(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call statement
    movq function_has_return(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1548
    leaq .Lstr552(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr553(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1548:
    leaq stack_size(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    .globl parse_enum
parse_enum:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1568
    xorl %eax, %eax
    call next_token
.L1568:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1570
    leaq .Lstr558(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1570:
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -8(%rbp)
.L1572:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1573
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1574
    leaq .Lstr559(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1574:
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1576
    leaq .Lstr560(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1576:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -24(%rbp)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1578
    leaq -32(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1578:
    movq -24(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1580
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1582
    leaq .Lstr561(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1582:
    leaq -8(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call atoi
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
.L1580:
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -8(%rbp), %rax
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
    je .L1584
    xorl %eax, %eax
    call next_token
.L1584:
    jmp .L1572
.L1573:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leave
    ret
    .globl skip_struct
skip_struct:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1616
    xorl %eax, %eax
    call next_token
.L1616:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1618
    leaq .Lstr563(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1618:
    xorl %eax, %eax
    call next_token
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1620:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1621
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
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1622
    movq tok(%rip), %rax
    movq %rax, -8(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -16(%rbp)
.L1624:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1625
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1624
.L1625:
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1626
    movq $8, %rax
    jmp .L1627
.L1626:
    movq -8(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1628
    movq $1, %rax
    jmp .L1629
.L1628:
    movq $8, %rax
.L1629:
.L1627:
    movq %rax, -24(%rbp)
.L1630:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1631
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1632
    movq struct_member_count(%rip), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1634
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1636
    leaq -32(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1636:
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq struct_member_names(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq -32(%rbp), %rax
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
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_elem_sizes(%rip), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq struct_member_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L1634:
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1638
    xorl %eax, %eax
    call next_token
    movq $1, %rax
    movq %rax, -32(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1640
    leaq -32(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call atoi
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
.L1640:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
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
    je .L1642
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
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1642:
    jmp .L1639
.L1638:
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1639:
    jmp .L1633
.L1632:
    xorl %eax, %eax
    call next_token
.L1633:
    jmp .L1630
.L1631:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1623
.L1622:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1644
    jmp .L1621
    jmp .L1645
.L1644:
    xorl %eax, %eax
    call next_token
.L1645:
.L1623:
    jmp .L1620
.L1621:
    movq $125, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leave
    ret
    .globl skip_typedef
skip_typedef:
    pushq %rbp
    movq %rsp, %rbp
    subq $56, %rsp
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1668
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call skip_struct
    jmp .L1669
.L1668:
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
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1670
    xorl %eax, %eax
    call next_token
.L1672:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1673
    xorl %eax, %eax
    call next_token
    jmp .L1672
.L1673:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1674
    xorl %eax, %eax
    call next_token
.L1674:
.L1670:
.L1669:
    leaq .Lstr566(%rip), %rax
    movq %rax, -32(%rbp)
.L1676:
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1677
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1678
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1680
    leaq -40(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1680:
    leaq -32(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq -32(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L1678:
    xorl %eax, %eax
    call next_token
    jmp .L1676
.L1677:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1682
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1684
    leaq .Lstr567(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1684:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    movq %rax, -48(%rbp)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1686
    leaq -56(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1686:
    movq -48(%rbp), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    movq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -40(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -40(%rbp), %rax
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
    je .L1688
    movq -40(%rbp), %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1688:
.L1682:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leave
    ret
    .globl parse_program
parse_program:
    pushq %rbp
    movq %rsp, %rbp
    subq $104, %rsp
    xorl %eax, %eax
    call next_token
.L1758:
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1759
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1760
    xorl %eax, %eax
    call next_token
    jmp .L1758
    jmp .L1761
.L1760:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1762
    xorl %eax, %eax
    call next_token
    jmp .L1758
    jmp .L1763
.L1762:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1764
    xorl %eax, %eax
    call skip_typedef
    jmp .L1765
.L1764:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1766
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call skip_struct
    jmp .L1767
.L1766:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1768
    xorl %eax, %eax
    call parse_enum
    jmp .L1769
.L1768:
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
    orq %rcx, %rax
    pushq %rax
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1770
    movq tok(%rip), %rax
    movq %rax, -8(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -16(%rbp)
.L1772:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1773
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1772
.L1773:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1774
    leaq .Lstr575(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1774:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1776
    leaq -56(%rbp), %rax
    pushq %rax
    movq $32, %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    subq %rax, %rcx
    movq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1776:
    leaq -48(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    xorl %eax, %eax
    call next_token
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1778
    leaq -48(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call parse_function
    jmp .L1779
.L1778:
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1780
    movq $8, %rax
    jmp .L1781
.L1780:
    movq -8(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1782
    movq $1, %rax
    jmp .L1783
.L1782:
    movq $8, %rax
.L1783:
.L1781:
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -72(%rbp)
    movq -64(%rbp), %rax
    movq %rax, -80(%rbp)
.L1784:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1785
    leaq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -88(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1786
    leaq -88(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call atoi
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1787
.L1786:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1788
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_macro
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1790
    leaq -88(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1791
.L1790:
    leaq .Lstr576(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1791:
    xorl %eax, %eax
    call next_token
.L1788:
.L1787:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq -64(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1792
    movq -88(%rbp), %rax
    jmp .L1793
.L1792:
    movq $1, %rax
.L1793:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1784
.L1785:
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1794
    movq -8(%rbp), %rax
    jmp .L1795
.L1794:
    movq $0, %rax
.L1795:
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    xorl %eax, %eax
    call add_symbol
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1796
.L1798:
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
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1799
    xorl %eax, %eax
    call next_token
    jmp .L1798
.L1799:
.L1796:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1800
    xorl %eax, %eax
    call next_token
    jmp .L1801
.L1800:
    leaq .Lstr577(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1801:
.L1779:
    jmp .L1771
.L1770:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1802
    movq $8, %rax
    movq %rax, -8(%rbp)
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_symbol
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1804
    leaq -8(%rbp), %rax
    pushq %rax
    leaq symbols(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1804:
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -24(%rbp)
.L1806:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1807
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1806
.L1807:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1808
    leaq .Lstr578(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1808:
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1810
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
.L1810:
    leaq -56(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    leaq -56(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    xorl %eax, %eax
    call next_token
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L1812
    movq $8, %rax
    jmp .L1813
.L1812:
    movq -8(%rbp), %rax
.L1813:
    movq %rax, -72(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq -72(%rbp), %rax
    movq %rax, -88(%rbp)
.L1814:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1815
    leaq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq tok(%rip), %rax
    pushq %rax
    movq $256, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1816
    leaq -96(%rbp), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call atoi
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1817
.L1816:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1818
    leaq token(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call find_macro
    movq %rax, -104(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1820
    leaq -96(%rbp), %rax
    pushq %rax
    leaq macros(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %rcx
    imulq $40, %rax
    addq %rcx, %rax
    addq $32, %rax
    movq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1821
.L1820:
    leaq .Lstr579(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1821:
    xorl %eax, %eax
    call next_token
.L1818:
.L1817:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    leaq -72(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1822
    movq -96(%rbp), %rax
    jmp .L1823
.L1822:
    movq $1, %rax
.L1823:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1814
.L1815:
    leaq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq 40(%rsp), %rdi
    movq 32(%rsp), %rsi
    movq 24(%rsp), %rdx
    movq 16(%rsp), %rcx
    movq 8(%rsp), %r8
    movq 0(%rsp), %r9
    addq $48, %rsp
    xorl %eax, %eax
    call add_symbol
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1824
    xorl %eax, %eax
    call next_token
    jmp .L1825
.L1824:
    leaq .Lstr580(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1825:
    jmp .L1803
.L1802:
    leaq .Lstr581(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1803:
.L1771:
.L1769:
.L1767:
.L1765:
.L1763:
.L1761:
    jmp .L1758
.L1759:
    leave
    ret
    .globl emit_string_pool
emit_string_pool:
    pushq %rbp
    movq %rsp, %rbp
    subq $24, %rsp
    movq emit_enabled(%rip), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1844
    leave
    ret
.L1844:
    movq $0, %rax
    movq %rax, -8(%rbp)
    jmp .L1848
.L1846:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr589(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call fprintf
    leaq string_pool(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movsbq (%rax), %rax
    movq %rax, -16(%rbp)
.L1850:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L1851
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq %rax, -24(%rbp)
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1852
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr590(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    jmp .L1853
.L1852:
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1854
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr591(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    jmp .L1855
.L1854:
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1856
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr592(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    jmp .L1857
.L1856:
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1858
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr593(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    jmp .L1859
.L1858:
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    pushq %rax
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $127, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    popq %rcx
    andq %rcx, %rax
    cmpq $0, %rax
    je .L1860
    movsbq -24(%rbp), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    jmp .L1861
.L1860:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr594(%rip), %rax
    pushq %rax
    movsbq -24(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call fprintf
.L1861:
.L1859:
.L1857:
.L1855:
.L1853:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1850
.L1851:
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr595(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    leaq string_pool(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call free
.L1847:
    leaq -8(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1848
.L1848:
    movq -8(%rbp), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1846
.L1849:
    .globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1880
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr631(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
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
    xorl %eax, %eax
    call fprintf
    movq $1, %rax
    leave
    ret
.L1880:
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr632(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fopen
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1882
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr633(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
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
    xorl %eax, %eax
    call fprintf
    movq $1, %rax
    leave
    ret
.L1882:
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call fseek
    movq -24(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call ftell
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1048576, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1884
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr634(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    movq -24(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call fclose
    movq $1, %rax
    leave
    ret
.L1884:
    movq -24(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call rewind
    leaq source_start(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call safe_malloc
    popq %rcx
    movq %rax, (%rcx)
    movq source_start(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq 24(%rsp), %rdi
    movq 16(%rsp), %rsi
    movq 8(%rsp), %rdx
    movq 0(%rsp), %rcx
    addq $32, %rsp
    xorl %eax, %eax
    call fread
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1886
    movq stderr(%rip), %rax
    pushq %rax
    leaq .Lstr635(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    movq source_start(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call free
    movq -24(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call fclose
    movq $1, %rax
    leave
    ret
.L1886:
    movq source_start(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -24(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call fclose
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
    leaq .Lstr636(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call add_macro
    leaq .Lstr637(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call add_macro
    leaq .Lstr638(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call add_macro
    leaq .Lstr639(%rip), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call add_macro
    leaq .Lstr640(%rip), %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call add_macro
    leaq .Lstr641(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call add_macro
    leaq .Lstr642(%rip), %rax
    movq %rax, -48(%rbp)
    leaq .Lstr643(%rip), %rax
    movq %rax, -40(%rbp)
    leaq .Lstr644(%rip), %rax
    movq %rax, -32(%rbp)
    leaq .Lstr645(%rip), %rax
    movq %rax, -24(%rbp)
    leaq .Lstr646(%rip), %rax
    movq %rax, -16(%rbp)
    leaq .Lstr647(%rip), %rax
    movq %rax, -8(%rbp)
    leaq .Lstr648(%rip), %rax
    movq %rax, 0(%rbp)
    leaq .Lstr649(%rip), %rax
    movq %rax, 8(%rbp)
    leaq .Lstr650(%rip), %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, -56(%rbp)
    jmp .L1890
.L1888:
    leaq symbols(%rip), %rax
    pushq %rax
    movq symbol_count(%rip), %rax
    popq %rcx
    imulq $96, %rax
    addq %rcx, %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    movq %rax, -72(%rbp)
    leaq symbol_count(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call strlen
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1892
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
.L1892:
    movq -72(%rbp), %rax
    pushq %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 16(%rsp), %rdi
    movq 8(%rsp), %rsi
    movq 0(%rsp), %rdx
    addq $24, %rsp
    xorl %eax, %eax
    call memcpy
    movq -72(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr651(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    pushq %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr652(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    pushq %rax
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    pushq %rax
    leaq .Lstr653(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call strcmp
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    popq %rcx
    orq %rcx, %rax
    cmpq $0, %rax
    je .L1894
    movq $1, %rax
    jmp .L1895
.L1894:
    movq $0, %rax
.L1895:
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1889:
    leaq -56(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1890
.L1890:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    jne .L1888
.L1891:
    leaq .Lstr654(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call parse_program
    movq string_count(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1896
    leaq .Lstr655(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call emit_string_pool
    leaq .Lstr656(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1896:
    leaq .Lstr657(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr658(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr659(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr660(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr661(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr662(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr663(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr664(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    leaq .Lstr665(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    movq source_start(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call free
    movq $0, %rax
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
    .asciz "    xorl %%eax, %%eax"
.Lstr106:
    .asciz "    call %s"
.Lstr107:
    .asciz "undefined variable"
.Lstr108:
    .asciz "    movq $%d, %%rax"
.Lstr109:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr110:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr111:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr112:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr113:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr114:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr115:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr116:
    .asciz "    movq (%%rax), %%rax"
.Lstr117:
    .asciz "expected identifier after '&'"
.Lstr118:
    .asciz "undefined variable"
.Lstr119:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr120:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr121:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr122:
    .asciz "    negq %%rax"
.Lstr123:
    .asciz "    testq %%rax, %%rax"
.Lstr124:
    .asciz "    sete %%al"
.Lstr125:
    .asciz "    movzbq %%al, %%rax"
.Lstr126:
    .asciz "    notq %%rax"
.Lstr127:
    .asciz "invalid primary expression"
.Lstr128:
    .asciz "    movq $%s, %%rax"
.Lstr129:
    .asciz "    pushq %%rax"
.Lstr130:
    .asciz "%rdi"
.Lstr131:
    .asciz "%rsi"
.Lstr132:
    .asciz "%rdx"
.Lstr133:
    .asciz "%rcx"
.Lstr134:
    .asciz "%r8"
.Lstr135:
    .asciz "%r9"
.Lstr136:
    .asciz "    movq %d(%%rsp), %s"
.Lstr137:
    .asciz "too many function arguments (max 6)"
.Lstr138:
    .asciz "    addq $%d, %%rsp"
.Lstr139:
    .asciz "    xorl %%eax, %%eax"
.Lstr140:
    .asciz "    call %s"
.Lstr141:
    .asciz "undefined variable"
.Lstr142:
    .asciz "    movq $%d, %%rax"
.Lstr143:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr144:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr145:
    .asciz "    movsbq %s(%%rip), %%rax"
.Lstr146:
    .asciz "    movsbq %d(%%rbp), %%rax"
.Lstr147:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr148:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr149:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr150:
    .asciz "    movq (%%rax), %%rax"
.Lstr151:
    .asciz "expected identifier after '&'"
.Lstr152:
    .asciz "undefined variable"
.Lstr153:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr154:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr155:
    .asciz "    leaq .Lstr%d(%%rip), %%rax"
.Lstr156:
    .asciz "    negq %%rax"
.Lstr157:
    .asciz "    testq %%rax, %%rax"
.Lstr158:
    .asciz "    sete %%al"
.Lstr159:
    .asciz "    movzbq %%al, %%rax"
.Lstr160:
    .asciz "    notq %%rax"
.Lstr161:
    .asciz "invalid primary expression"
.Lstr162:
    .asciz "undefined variable"
.Lstr163:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr164:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr165:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr166:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr167:
    .asciz "lvalue required"
.Lstr168:
    .asciz "undefined variable"
.Lstr169:
    .asciz "    movq %s(%%rip), %%rax"
.Lstr170:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr171:
    .asciz "    leaq %s(%%rip), %%rax"
.Lstr172:
    .asciz "    leaq %d(%%rbp), %%rax"
.Lstr173:
    .asciz "lvalue required"
.Lstr174:
    .asciz "    pushq %%rax"
.Lstr175:
    .asciz "    popq %%rcx"
.Lstr176:
    .asciz "    imulq $%d, %%rax"
.Lstr177:
    .asciz "    addq %%rcx, %%rax"
.Lstr178:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr179:
    .asciz "    movq (%%rax), %%rax"
.Lstr180:
    .asciz "    addq $%d, %%rax"
.Lstr181:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr182:
    .asciz "    movq (%%rax), %%rax"
.Lstr183:
    .asciz "    addq $%d, %%rax"
.Lstr184:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr185:
    .asciz "    movq (%%rax), %%rax"
.Lstr186:
    .asciz "    pushq %%rax"
.Lstr187:
    .asciz "    popq %%rcx"
.Lstr188:
    .asciz "    imulq $%d, %%rax"
.Lstr189:
    .asciz "    addq %%rcx, %%rax"
.Lstr190:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr191:
    .asciz "    movq (%%rax), %%rax"
.Lstr192:
    .asciz "    addq $%d, %%rax"
.Lstr193:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr194:
    .asciz "    movq (%%rax), %%rax"
.Lstr195:
    .asciz "    addq $%d, %%rax"
.Lstr196:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr197:
    .asciz "    movq (%%rax), %%rax"
.Lstr198:
    .asciz "    cmpq $0, %%rax"
.Lstr199:
    .asciz "    je .L%d"
.Lstr200:
    .asciz "    jmp .L%d"
.Lstr201:
    .asciz "    pushq %%rax"
.Lstr202:
    .asciz "    popq %%rcx"
.Lstr203:
    .asciz "    addq %%rcx, %%rax"
.Lstr204:
    .asciz "    subq %%rax, %%rcx"
.Lstr205:
    .asciz "    movq %%rcx, %%rax"
.Lstr206:
    .asciz "    imulq %%rcx, %%rax"
.Lstr207:
    .asciz "    movq %%rcx, %%rax"
.Lstr208:
    .asciz "    cqto"
.Lstr209:
    .asciz "    idivq %%rcx"
.Lstr210:
    .asciz "    movq %%rcx, %%rax"
.Lstr211:
    .asciz "    cqto"
.Lstr212:
    .asciz "    idivq %%rcx"
.Lstr213:
    .asciz "    movq %%rdx, %%rax"
.Lstr214:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr215:
    .asciz "    sete %%al"
.Lstr216:
    .asciz "    movzbq %%al, %%rax"
.Lstr217:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr218:
    .asciz "    setne %%al"
.Lstr219:
    .asciz "    movzbq %%al, %%rax"
.Lstr220:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr221:
    .asciz "    setl %%al"
.Lstr222:
    .asciz "    movzbq %%al, %%rax"
.Lstr223:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr224:
    .asciz "    setg %%al"
.Lstr225:
    .asciz "    movzbq %%al, %%rax"
.Lstr226:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr227:
    .asciz "    setle %%al"
.Lstr228:
    .asciz "    movzbq %%al, %%rax"
.Lstr229:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr230:
    .asciz "    setge %%al"
.Lstr231:
    .asciz "    movzbq %%al, %%rax"
.Lstr232:
    .asciz "    andq %%rcx, %%rax"
.Lstr233:
    .asciz "    xorq %%rcx, %%rax"
.Lstr234:
    .asciz "    orq %%rcx, %%rax"
.Lstr235:
    .asciz "    andq %%rcx, %%rax"
.Lstr236:
    .asciz "    orq %%rcx, %%rax"
.Lstr237:
    .asciz "unknown binary operator"
.Lstr238:
    .asciz "    cmpq $0, %%rax"
.Lstr239:
    .asciz "    je .L%d"
.Lstr240:
    .asciz "    jmp .L%d"
.Lstr241:
    .asciz "    pushq %%rax"
.Lstr242:
    .asciz "    popq %%rcx"
.Lstr243:
    .asciz "    addq %%rcx, %%rax"
.Lstr244:
    .asciz "    subq %%rax, %%rcx"
.Lstr245:
    .asciz "    movq %%rcx, %%rax"
.Lstr246:
    .asciz "    imulq %%rcx, %%rax"
.Lstr247:
    .asciz "    movq %%rcx, %%rax"
.Lstr248:
    .asciz "    cqto"
.Lstr249:
    .asciz "    idivq %%rcx"
.Lstr250:
    .asciz "    movq %%rcx, %%rax"
.Lstr251:
    .asciz "    cqto"
.Lstr252:
    .asciz "    idivq %%rcx"
.Lstr253:
    .asciz "    movq %%rdx, %%rax"
.Lstr254:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr255:
    .asciz "    sete %%al"
.Lstr256:
    .asciz "    movzbq %%al, %%rax"
.Lstr257:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr258:
    .asciz "    setne %%al"
.Lstr259:
    .asciz "    movzbq %%al, %%rax"
.Lstr260:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr261:
    .asciz "    setl %%al"
.Lstr262:
    .asciz "    movzbq %%al, %%rax"
.Lstr263:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr264:
    .asciz "    setg %%al"
.Lstr265:
    .asciz "    movzbq %%al, %%rax"
.Lstr266:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr267:
    .asciz "    setle %%al"
.Lstr268:
    .asciz "    movzbq %%al, %%rax"
.Lstr269:
    .asciz "    cmpq %%rax, %%rcx"
.Lstr270:
    .asciz "    setge %%al"
.Lstr271:
    .asciz "    movzbq %%al, %%rax"
.Lstr272:
    .asciz "    andq %%rcx, %%rax"
.Lstr273:
    .asciz "    xorq %%rcx, %%rax"
.Lstr274:
    .asciz "    orq %%rcx, %%rax"
.Lstr275:
    .asciz "    andq %%rcx, %%rax"
.Lstr276:
    .asciz "    orq %%rcx, %%rax"
.Lstr277:
    .asciz "unknown binary operator"
.Lstr278:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr279:
    .asciz "    movq (%%rax), %%rcx"
.Lstr280:
    .asciz "    addb $1, (%%rax)"
.Lstr281:
    .asciz "    addq $1, (%%rax)"
.Lstr282:
    .asciz "    subb $1, (%%rax)"
.Lstr283:
    .asciz "    subq $1, (%%rax)"
.Lstr284:
    .asciz "    movq %%rcx, %%rax"
.Lstr285:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr286:
    .asciz "    movq (%%rax), %%rcx"
.Lstr287:
    .asciz "    addb $1, (%%rax)"
.Lstr288:
    .asciz "    addq $1, (%%rax)"
.Lstr289:
    .asciz "    subb $1, (%%rax)"
.Lstr290:
    .asciz "    subq $1, (%%rax)"
.Lstr291:
    .asciz "    movq %%rcx, %%rax"
.Lstr292:
    .asciz "    pushq %%rax"
.Lstr293:
    .asciz "    popq %%rcx"
.Lstr294:
    .asciz "    movb %%al, (%%rcx)"
.Lstr295:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr296:
    .asciz "    pushq %%rax"
.Lstr297:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr298:
    .asciz "    movq (%%rax), %%rax"
.Lstr299:
    .asciz "    pushq %%rax"
.Lstr300:
    .asciz "    popq %%rcx"
.Lstr301:
    .asciz "    addq %%rcx, %%rax"
.Lstr302:
    .asciz "    popq %%rcx"
.Lstr303:
    .asciz "    movb %%al, (%%rcx)"
.Lstr304:
    .asciz "    addq %%rcx, %%rax"
.Lstr305:
    .asciz "    popq %%rcx"
.Lstr306:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr307:
    .asciz "    pushq %%rax"
.Lstr308:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr309:
    .asciz "    movq (%%rax), %%rax"
.Lstr310:
    .asciz "    pushq %%rax"
.Lstr311:
    .asciz "    popq %%rcx"
.Lstr312:
    .asciz "    subq %%rcx, %%rax"
.Lstr313:
    .asciz "    popq %%rcx"
.Lstr314:
    .asciz "    movb %%al, (%%rcx)"
.Lstr315:
    .asciz "    subq %%rcx, %%rax"
.Lstr316:
    .asciz "    popq %%rcx"
.Lstr317:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr318:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr319:
    .asciz "    movq (%%rax), %%rcx"
.Lstr320:
    .asciz "    addb $1, (%%rax)"
.Lstr321:
    .asciz "    addq $1, (%%rax)"
.Lstr322:
    .asciz "    subb $1, (%%rax)"
.Lstr323:
    .asciz "    subq $1, (%%rax)"
.Lstr324:
    .asciz "    movq %%rcx, %%rax"
.Lstr325:
    .asciz "    pushq %%rax"
.Lstr326:
    .asciz "    popq %%rcx"
.Lstr327:
    .asciz "    movb %%al, (%%rcx)"
.Lstr328:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr329:
    .asciz "    pushq %%rax"
.Lstr330:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr331:
    .asciz "    movq (%%rax), %%rax"
.Lstr332:
    .asciz "    pushq %%rax"
.Lstr333:
    .asciz "    popq %%rcx"
.Lstr334:
    .asciz "    addq %%rcx, %%rax"
.Lstr335:
    .asciz "    popq %%rcx"
.Lstr336:
    .asciz "    movb %%al, (%%rcx)"
.Lstr337:
    .asciz "    addq %%rcx, %%rax"
.Lstr338:
    .asciz "    popq %%rcx"
.Lstr339:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr340:
    .asciz "    pushq %%rax"
.Lstr341:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr342:
    .asciz "    movq (%%rax), %%rax"
.Lstr343:
    .asciz "    pushq %%rax"
.Lstr344:
    .asciz "    popq %%rcx"
.Lstr345:
    .asciz "    subq %%rcx, %%rax"
.Lstr346:
    .asciz "    popq %%rcx"
.Lstr347:
    .asciz "    movb %%al, (%%rcx)"
.Lstr348:
    .asciz "    subq %%rcx, %%rax"
.Lstr349:
    .asciz "    popq %%rcx"
.Lstr350:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr351:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr352:
    .asciz "    movq (%%rax), %%rcx"
.Lstr353:
    .asciz "    addb $1, (%%rax)"
.Lstr354:
    .asciz "    addq $1, (%%rax)"
.Lstr355:
    .asciz "    subb $1, (%%rax)"
.Lstr356:
    .asciz "    subq $1, (%%rax)"
.Lstr357:
    .asciz "    movq %%rcx, %%rax"
.Lstr358:
    .asciz "    pushq %%rax"
.Lstr359:
    .asciz "    popq %%rcx"
.Lstr360:
    .asciz "    movb %%al, (%%rcx)"
.Lstr361:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr362:
    .asciz "    pushq %%rax"
.Lstr363:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr364:
    .asciz "    movq (%%rax), %%rax"
.Lstr365:
    .asciz "    pushq %%rax"
.Lstr366:
    .asciz "    popq %%rcx"
.Lstr367:
    .asciz "    addq %%rcx, %%rax"
.Lstr368:
    .asciz "    popq %%rcx"
.Lstr369:
    .asciz "    movb %%al, (%%rcx)"
.Lstr370:
    .asciz "    addq %%rcx, %%rax"
.Lstr371:
    .asciz "    popq %%rcx"
.Lstr372:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr373:
    .asciz "    pushq %%rax"
.Lstr374:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr375:
    .asciz "    movq (%%rax), %%rax"
.Lstr376:
    .asciz "    pushq %%rax"
.Lstr377:
    .asciz "    popq %%rcx"
.Lstr378:
    .asciz "    subq %%rcx, %%rax"
.Lstr379:
    .asciz "    popq %%rcx"
.Lstr380:
    .asciz "    movb %%al, (%%rcx)"
.Lstr381:
    .asciz "    subq %%rcx, %%rax"
.Lstr382:
    .asciz "    popq %%rcx"
.Lstr383:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr384:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr385:
    .asciz "    movq (%%rax), %%rcx"
.Lstr386:
    .asciz "    addb $1, (%%rax)"
.Lstr387:
    .asciz "    addq $1, (%%rax)"
.Lstr388:
    .asciz "    subb $1, (%%rax)"
.Lstr389:
    .asciz "    subq $1, (%%rax)"
.Lstr390:
    .asciz "    movq %%rcx, %%rax"
.Lstr391:
    .asciz "    pushq %%rax"
.Lstr392:
    .asciz "    popq %%rcx"
.Lstr393:
    .asciz "    movb %%al, (%%rcx)"
.Lstr394:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr395:
    .asciz "    pushq %%rax"
.Lstr396:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr397:
    .asciz "    movq (%%rax), %%rax"
.Lstr398:
    .asciz "    pushq %%rax"
.Lstr399:
    .asciz "    popq %%rcx"
.Lstr400:
    .asciz "    addq %%rcx, %%rax"
.Lstr401:
    .asciz "    popq %%rcx"
.Lstr402:
    .asciz "    movb %%al, (%%rcx)"
.Lstr403:
    .asciz "    addq %%rcx, %%rax"
.Lstr404:
    .asciz "    popq %%rcx"
.Lstr405:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr406:
    .asciz "    pushq %%rax"
.Lstr407:
    .asciz "    movsbq (%%rax), %%rax"
.Lstr408:
    .asciz "    movq (%%rax), %%rax"
.Lstr409:
    .asciz "    pushq %%rax"
.Lstr410:
    .asciz "    popq %%rcx"
.Lstr411:
    .asciz "    subq %%rcx, %%rax"
.Lstr412:
    .asciz "    popq %%rcx"
.Lstr413:
    .asciz "    movb %%al, (%%rcx)"
.Lstr414:
    .asciz "    subq %%rcx, %%rax"
.Lstr415:
    .asciz "    popq %%rcx"
.Lstr416:
    .asciz "    movq %%rax, (%%rcx)"
.Lstr417:
    .asciz "    movsbq (%%rax), %%rcx"
.Lstr418:
    .asciz "    movq (%%rax), %%rcx"
.Lstr419:
    .asciz "    addb $1, (%%rax)"
.Lstr420:
    .asciz "    addq $1, (%%rax)"
.Lstr421:
    .asciz "    subb $1, (%%rax)"
.Lstr422:
    .asciz "    subq $1, (%%rax)"
.Lstr423:
    .asciz "    movq %%rcx, %%rax"
.Lstr424:
    .asciz "    cmpq $0, %%rax"
.Lstr425:
    .asciz "    je .L%d"
.Lstr426:
    .asciz "    jmp .L%d"
.Lstr427:
    .asciz "expected variable name"
.Lstr428:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr429:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr430:
    .asciz "    jmp .L%d"
.Lstr431:
    .asciz "    jmp .L%d"
.Lstr432:
    .asciz "    cmpq $0, %%rax"
.Lstr433:
    .asciz "    jne .L%d"
.Lstr434:
    .asciz "    jmp .L%d"
.Lstr435:
    .asciz "    cmpq $0, %%rax"
.Lstr436:
    .asciz "    je .L%d"
.Lstr437:
    .asciz "    jmp .L%d"
.Lstr438:
    .asciz "    pushq %%rax"
.Lstr439:
    .asciz "    jmp .L%d"
.Lstr440:
    .asciz "    jmp .L%d"
.Lstr441:
    .asciz "    movq (%%rsp), %%rax"
.Lstr442:
    .asciz "    cmpq $%d, %%rax"
.Lstr443:
    .asciz "    je .L%d"
.Lstr444:
    .asciz "    jmp .L%d"
.Lstr445:
    .asciz "    addq $8, %%rsp"
.Lstr446:
    .asciz "    jmp .L%d"
.Lstr447:
    .asciz "    jmp .L%d"
.Lstr448:
    .asciz "expected label name"
.Lstr449:
    .asciz "    jmp %s"
.Lstr450:
    .asciz "    leave"
.Lstr451:
    .asciz "    ret"
.Lstr452:
    .asciz "unsigned"
.Lstr453:
    .asciz "signed"
.Lstr454:
    .asciz "%s:"
.Lstr455:
    .asciz "expected variable name"
.Lstr456:
    .asciz "undefined macro"
.Lstr457:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr458:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr459:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr460:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr461:
    .asciz "expected variable name"
.Lstr462:
    .asciz "undefined macro"
.Lstr463:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr464:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr465:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr466:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr467:
    .asciz "    cmpq $0, %%rax"
.Lstr468:
    .asciz "    je .L%d"
.Lstr469:
    .asciz "    jmp .L%d"
.Lstr470:
    .asciz "expected variable name"
.Lstr471:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr472:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr473:
    .asciz "    jmp .L%d"
.Lstr474:
    .asciz "    jmp .L%d"
.Lstr475:
    .asciz "    cmpq $0, %%rax"
.Lstr476:
    .asciz "    jne .L%d"
.Lstr477:
    .asciz "    jmp .L%d"
.Lstr478:
    .asciz "    cmpq $0, %%rax"
.Lstr479:
    .asciz "    je .L%d"
.Lstr480:
    .asciz "    jmp .L%d"
.Lstr481:
    .asciz "    pushq %%rax"
.Lstr482:
    .asciz "    jmp .L%d"
.Lstr483:
    .asciz "    jmp .L%d"
.Lstr484:
    .asciz "    movq (%%rsp), %%rax"
.Lstr485:
    .asciz "    cmpq $%d, %%rax"
.Lstr486:
    .asciz "    je .L%d"
.Lstr487:
    .asciz "    jmp .L%d"
.Lstr488:
    .asciz "    addq $8, %%rsp"
.Lstr489:
    .asciz "    jmp .L%d"
.Lstr490:
    .asciz "    jmp .L%d"
.Lstr491:
    .asciz "expected label name"
.Lstr492:
    .asciz "    jmp %s"
.Lstr493:
    .asciz "    leave"
.Lstr494:
    .asciz "    ret"
.Lstr495:
    .asciz "unsigned"
.Lstr496:
    .asciz "signed"
.Lstr497:
    .asciz "%s:"
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
    .asciz "expected variable name"
.Lstr505:
    .asciz "undefined macro"
.Lstr506:
    .asciz "    movb %%al, %d(%%rbp)"
.Lstr507:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr508:
    .asciz "    movq %%rax, %s(%%rip)"
.Lstr509:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr510:
    .asciz "expected parameter name"
.Lstr511:
    .asciz "invalid parameter type"
.Lstr512:
    .asciz "expected parameter name"
.Lstr513:
    .asciz "invalid parameter type"
.Lstr514:
    .asciz "expected function body"
.Lstr515:
    .asciz "    .globl %s"
.Lstr516:
    .asciz "%s:"
.Lstr517:
    .asciz "    pushq %%rbp"
.Lstr518:
    .asciz "    movq %%rsp, %%rbp"
.Lstr519:
    .asciz "    subq $%d, %%rsp"
.Lstr520:
    .asciz "%rdi"
.Lstr521:
    .asciz "%rsi"
.Lstr522:
    .asciz "%rdx"
.Lstr523:
    .asciz "%rcx"
.Lstr524:
    .asciz "%r8"
.Lstr525:
    .asciz "%r9"
.Lstr526:
    .asciz "parameter not found"
.Lstr527:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr528:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr529:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr530:
    .asciz "    leave"
.Lstr531:
    .asciz "    ret"
.Lstr532:
    .asciz "expected parameter name"
.Lstr533:
    .asciz "invalid parameter type"
.Lstr534:
    .asciz "expected parameter name"
.Lstr535:
    .asciz "invalid parameter type"
.Lstr536:
    .asciz "expected function body"
.Lstr537:
    .asciz "    .globl %s"
.Lstr538:
    .asciz "%s:"
.Lstr539:
    .asciz "    pushq %%rbp"
.Lstr540:
    .asciz "    movq %%rsp, %%rbp"
.Lstr541:
    .asciz "    subq $%d, %%rsp"
.Lstr542:
    .asciz "%rdi"
.Lstr543:
    .asciz "%rsi"
.Lstr544:
    .asciz "%rdx"
.Lstr545:
    .asciz "%rcx"
.Lstr546:
    .asciz "%r8"
.Lstr547:
    .asciz "%r9"
.Lstr548:
    .asciz "parameter not found"
.Lstr549:
    .asciz "    movq %s, %d(%%rbp)"
.Lstr550:
    .asciz "    movq %d(%%rbp), %%rax"
.Lstr551:
    .asciz "    movq %%rax, %d(%%rbp)"
.Lstr552:
    .asciz "    leave"
.Lstr553:
    .asciz "    ret"
.Lstr554:
    .asciz "expected '{' after enum"
.Lstr555:
    .asciz "expected enumerator name"
.Lstr556:
    .asciz "too many symbols"
.Lstr557:
    .asciz "expected integer constant"
.Lstr558:
    .asciz "expected '{' after enum"
.Lstr559:
    .asciz "expected enumerator name"
.Lstr560:
    .asciz "too many symbols"
.Lstr561:
    .asciz "expected integer constant"
.Lstr562:
    .asciz "expected '{' in struct"
.Lstr563:
    .asciz "expected '{' in struct"
.Lstr564:
    .asciz ""
.Lstr565:
    .asciz "too many symbols"
.Lstr566:
    .asciz ""
.Lstr567:
    .asciz "too many symbols"
.Lstr568:
    .asciz "expected identifier"
.Lstr569:
    .asciz "undefined macro"
.Lstr570:
    .asciz "expected ';' or '(' after global"
.Lstr571:
    .asciz "expected identifier"
.Lstr572:
    .asciz "undefined macro"
.Lstr573:
    .asciz "expected ';' or '(' after global"
.Lstr574:
    .asciz "global must be int or char"
.Lstr575:
    .asciz "expected identifier"
.Lstr576:
    .asciz "undefined macro"
.Lstr577:
    .asciz "expected ';' or '(' after global"
.Lstr578:
    .asciz "expected identifier"
.Lstr579:
    .asciz "undefined macro"
.Lstr580:
    .asciz "expected ';' or '(' after global"
.Lstr581:
    .asciz "global must be int or char"
.Lstr582:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr583:
    .asciz "\\n"
.Lstr584:
    .asciz "\\t"
.Lstr585:
    .asciz "\\\\"
.Lstr586:
    .asciz "\\\""
.Lstr587:
    .asciz "\\%hho"
.Lstr588:
    .asciz "\"\n"
.Lstr589:
    .asciz ".Lstr%d:\n    .asciz \""
.Lstr590:
    .asciz "\\n"
.Lstr591:
    .asciz "\\t"
.Lstr592:
    .asciz "\\\\"
.Lstr593:
    .asciz "\\\""
.Lstr594:
    .asciz "\\%hho"
.Lstr595:
    .asciz "\"\n"
.Lstr596:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr597:
    .asciz "r"
.Lstr598:
    .asciz "Cannot open input file: %s\n"
.Lstr599:
    .asciz "Invalid file size\n"
.Lstr600:
    .asciz "Error reading file\n"
.Lstr601:
    .asciz "EXIT_FAILURE"
.Lstr602:
    .asciz "EXIT_SUCCESS"
.Lstr603:
    .asciz "SEEK_SET"
.Lstr604:
    .asciz "SEEK_CUR"
.Lstr605:
    .asciz "SEEK_END"
.Lstr606:
    .asciz "NULL"
.Lstr607:
    .asciz "stderr"
.Lstr608:
    .asciz "stdin"
.Lstr609:
    .asciz "stdout"
.Lstr610:
    .asciz "optarg"
.Lstr611:
    .asciz "optind"
.Lstr612:
    .asciz "errno"
.Lstr613:
    .asciz "size_t"
.Lstr614:
    .asciz "va_list"
.Lstr615:
    .asciz "FILE"
.Lstr616:
    .asciz "size_t"
.Lstr617:
    .asciz "va_list"
.Lstr618:
    .asciz "FILE"
.Lstr619:
    .asciz "    .section .text"
.Lstr620:
    .asciz "    .section .rodata"
.Lstr621:
    .asciz "    .section .text"
.Lstr622:
    .asciz "    .globl _start"
.Lstr623:
    .asciz "_start:"
.Lstr624:
    .asciz "    movq (%%rsp), %%rdi"
.Lstr625:
    .asciz "    leaq 8(%%rsp), %%rsi"
.Lstr626:
    .asciz "    leaq 16(%%rsp,%%rdi,8), %%rdx"
.Lstr627:
    .asciz "    call main"
.Lstr628:
    .asciz "    movq %%rax, %%rdi"
.Lstr629:
    .asciz "    movq $60, %%rax"
.Lstr630:
    .asciz "    syscall"
.Lstr631:
    .asciz "Usage: %s source.c > output.s\n"
.Lstr632:
    .asciz "r"
.Lstr633:
    .asciz "Cannot open input file: %s\n"
.Lstr634:
    .asciz "Invalid file size\n"
.Lstr635:
    .asciz "Error reading file\n"
.Lstr636:
    .asciz "EXIT_FAILURE"
.Lstr637:
    .asciz "EXIT_SUCCESS"
.Lstr638:
    .asciz "SEEK_SET"
.Lstr639:
    .asciz "SEEK_CUR"
.Lstr640:
    .asciz "SEEK_END"
.Lstr641:
    .asciz "NULL"
.Lstr642:
    .asciz "stderr"
.Lstr643:
    .asciz "stdin"
.Lstr644:
    .asciz "stdout"
.Lstr645:
    .asciz "optarg"
.Lstr646:
    .asciz "optind"
.Lstr647:
    .asciz "errno"
.Lstr648:
    .asciz "size_t"
.Lstr649:
    .asciz "va_list"
.Lstr650:
    .asciz "FILE"
.Lstr651:
    .asciz "size_t"
.Lstr652:
    .asciz "va_list"
.Lstr653:
    .asciz "FILE"
.Lstr654:
    .asciz "    .section .text"
.Lstr655:
    .asciz "    .section .rodata"
.Lstr656:
    .asciz "    .section .text"
.Lstr657:
    .asciz "    .globl _start"
.Lstr658:
    .asciz "_start:"
.Lstr659:
    .asciz "    movq (%%rsp), %%rdi"
.Lstr660:
    .asciz "    leaq 8(%%rsp), %%rsi"
.Lstr661:
    .asciz "    leaq 16(%%rsp,%%rdi,8), %%rdx"
.Lstr662:
    .asciz "    call main"
.Lstr663:
    .asciz "    movq %%rax, %%rdi"
.Lstr664:
    .asciz "    movq $60, %%rax"
.Lstr665:
    .asciz "    syscall"
    .section .text
    .globl _start
_start:
    movq (%rsp), %rdi
    leaq 8(%rsp), %rsi
    leaq 16(%rsp,%rdi,8), %rdx
    call main
    movq %rax, %rdi
    movq $60, %rax
    syscall
