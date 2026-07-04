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
    .globl next_token
next_token:
    pushq %rbp
    movq %rsp, %rbp
    subq $56, %rsp
restart:
.L168:
    leaq -8(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isspace
    cmpq $0, %rax
    je .L169
    movq -8(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L170
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L170:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L168
.L169:
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L172
    leaq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L172:
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
    je .L174
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L176:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L177
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
    je .L178
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L177
.L178:
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
    je .L180
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L180:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L176
.L177:
    jmp restart
.L174:
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
    je .L182
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L184:
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
    je .L185
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L184
.L185:
    jmp restart
.L182:
    movq -8(%rbp), %rax
    pushq %rax
    movq $35, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L186
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L188:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isspace
    cmpq $0, %rax
    je .L189
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
    je .L190
    leaq line(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L190:
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L188
.L189:
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
    je .L192
    leaq input_ptr(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L194:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isspace
    cmpq $0, %rax
    je .L195
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L194
.L195:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L196:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isalnum
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
    je .L197
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
    jmp .L196
.L197:
    leaq -40(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movb %al, (%rcx)
.L198:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isspace
    cmpq $0, %rax
    je .L199
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L198
.L199:
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
    call isdigit
    cmpq $0, %rax
    je .L200
.L202:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isdigit
    cmpq $0, %rax
    je .L203
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
    jmp .L202
.L203:
.L200:
    leaq -40(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call add_macro
.L192:
.L204:
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
    je .L205
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L204
.L205:
    jmp restart
.L186:
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isalpha
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
    je .L206
    leaq token(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
.L208:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isalnum
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
    je .L209
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
    jmp .L208
.L209:
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
    je .L210
    leaq tok(%rip), %rax
    pushq %rax
    movq $258, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L211
.L210:
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
    je .L212
    leaq tok(%rip), %rax
    pushq %rax
    movq $259, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L213
.L212:
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
    je .L214
    leaq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L215
.L214:
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
    je .L216
    leaq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L217
.L216:
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
    je .L218
    leaq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L219
.L218:
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
    je .L220
    leaq tok(%rip), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L221
.L220:
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
    je .L222
    leaq tok(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L223
.L222:
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
    je .L224
    leaq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L225
.L224:
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
    je .L226
    leaq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L227
.L226:
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
    je .L228
    leaq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L229
.L228:
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
    je .L230
    leaq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L231
.L230:
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
    je .L232
    leaq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L233
.L232:
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
    je .L234
    leaq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L235
.L234:
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
    je .L236
    leaq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L237
.L236:
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
    je .L238
    leaq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L239
.L238:
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
    je .L240
    leaq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L241
.L240:
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
    je .L242
    leaq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L243
.L242:
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
    je .L244
    leaq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L245
.L244:
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
    je .L246
    leaq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L247
.L246:
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
    je .L248
    leaq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L249
.L248:
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
    je .L250
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
    jmp .L251
.L250:
    leaq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    movq %rax, (%rcx)
.L251:
.L249:
.L247:
.L245:
.L243:
.L241:
.L239:
.L237:
.L235:
.L233:
.L231:
.L229:
.L227:
.L225:
.L223:
.L221:
.L219:
.L217:
.L215:
.L213:
.L211:
    leave
    ret
.L206:
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isdigit
    cmpq $0, %rax
    je .L252
    leaq token(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
.L254:
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call isdigit
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
    je .L255
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
    jmp .L254
.L255:
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
.L252:
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L256
    leaq token(%rip), %rax
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
.L258:
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
    je .L259
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
    je .L260
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
    je .L262
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
    jmp .L263
.L262:
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
    je .L264
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
    jmp .L265
.L264:
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
    je .L266
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
    jmp .L267
.L266:
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
    je .L268
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
    jmp .L269
.L268:
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
.L269:
.L267:
.L265:
.L263:
    jmp .L261
.L260:
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
.L261:
    jmp .L258
.L259:
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
    je .L270
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L271
.L270:
    leaq .Lstr64(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L271:
    leaq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    movq %rax, (%rcx)
    leave
    ret
.L256:
    movq -8(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L272
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
    je .L274
    leaq input_ptr(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    pushq %rax
    jmp .L276
.L278:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L277
.L279:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L277
.L280:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L277
.L281:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L277
.L282:
    leaq -16(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L277
.L283:
    leaq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L277
    jmp .L277
.L276:
    movq (%rsp), %rax
    cmpq $110, %rax
    je .L278
    cmpq $116, %rax
    je .L279
    cmpq $48, %rax
    je .L280
    cmpq $92, %rax
    je .L281
    cmpq $39, %rax
    je .L282
    jmp .L283
.L277:
    addq $8, %rsp
    jmp .L275
.L274:
    leaq -16(%rbp), %rax
    pushq %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    movq input_ptr(%rip), %rax
    movsbq (%rax), %rax
    popq %rcx
    movq %rax, (%rcx)
.L275:
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
    je .L284
    leaq .Lstr65(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L284:
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
.L272:
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
    je .L286
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
.L286:
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
    je .L288
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
.L288:
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
    je .L290
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
.L290:
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
    je .L292
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
.L292:
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
    je .L294
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
.L294:
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
    je .L296
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
.L296:
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
    je .L298
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
.L298:
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
    je .L300
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
.L300:
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
    je .L302
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
.L302:
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
    je .L304
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
.L304:
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
    je .L306
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
.L306:
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
    je .L310
    xorl %eax, %eax
    call next_token
    jmp .L311
.L310:
    leaq .Lstr79(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L311:
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
    je .L318
    leave
    ret
.L318:
.L320:
    movq -8(%rbp), %rax
    movsbq (%rax), %rax
    movq -8(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L321
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
    je .L322
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
    jmp .L323
.L322:
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
.L323:
    jmp .L320
.L321:
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
    je .L326
    leave
    ret
.L326:
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
    je .L330
    leave
    ret
.L330:
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
    je .L334
    leave
    ret
.L334:
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
    je .L338
    leave
    ret
.L338:
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
    je .L342
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
.L342:
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
    jmp .L352
.L350:
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
    je .L354
    movq -16(%rbp), %rax
    leave
    ret
.L354:
.L351:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
    jmp .L352
.L352:
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L350
.L353:
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
    je .L364
    leaq .Lstr88(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L364:
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
    je .L366
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
    je .L368
    leaq .Lstr92(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L368:
    leaq .Lstr93(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L367
.L366:
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
    je .L370
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L370:
.L367:
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
    je .L458
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
    jmp .L459
.L458:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L460
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
    je .L462
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
    je .L464
.L466:
    movq $1, %rax
    cmpq $0, %rax
    je .L467
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
    je .L468
    jmp .L467
.L468:
    movq $44, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L466
.L467:
.L464:
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
    jmp .L472
.L470:
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
.L471:
    leaq -56(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L472
.L472:
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
    jne .L470
.L473:
    movq -40(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L474
    leaq .Lstr137(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L474:
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L476
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
.L476:
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
    jmp .L463
.L462:
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
    je .L478
    leaq .Lstr141(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L478:
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
    je .L480
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
    jmp .L481
.L480:
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
    je .L482
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L484
    movq -48(%rbp), %rax
    movq (%rax), %rax
    jmp .L485
.L484:
    movq $8, %rax
.L485:
    popq %rcx
    movq %rax, (%rcx)
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L486
    leaq .Lstr143(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L487
.L486:
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
.L487:
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
    je .L488
    movq $0, %rax
    jmp .L489
.L488:
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L490
    movq -48(%rbp), %rax
    movq (%rax), %rax
    jmp .L491
.L490:
    movq $262, %rax
.L491:
.L489:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L483
.L482:
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
    je .L492
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L494
    leaq .Lstr145(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L495
.L494:
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
.L495:
    jmp .L493
.L492:
    movq -48(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L496
    leaq .Lstr147(%rip), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L497
.L496:
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
.L497:
.L493:
.L483:
.L481:
.L463:
    jmp .L461
.L460:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L498
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
    je .L500
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
    je .L502
    xorl %eax, %eax
    call next_token
.L504:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L505
    xorl %eax, %eax
    call next_token
    jmp .L504
.L505:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L506
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L506:
.L502:
    jmp .L501
.L500:
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
    je .L508
    movq tok(%rip), %rax
    movq %rax, -32(%rbp)
    xorl %eax, %eax
    call next_token
.L510:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L511
    xorl %eax, %eax
    call next_token
    jmp .L510
.L511:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L512
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
.L512:
    movq -24(%rbp), %rax
    testq %rax, %rax
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L514
    leaq tok(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %rcx
    movq %rax, (%rcx)
.L514:
.L508:
.L501:
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L516
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call unary
    jmp .L517
.L516:
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
.L517:
    jmp .L499
.L498:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L518
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
    je .L520
    leaq .Lstr149(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L521
.L520:
    leaq .Lstr150(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L521:
    jmp .L519
.L518:
    movq tok(%rip), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L522
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
    je .L524
    leaq .Lstr151(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L524:
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
    je .L526
    leaq .Lstr152(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L526:
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
    je .L528
    movq $263, %rax
    jmp .L529
.L528:
    movq $262, %rax
.L529:
    popq %rcx
    movq %rax, (%rcx)
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L530
    movq -16(%rbp), %rax
    movq (%rax), %rax
    jmp .L531
.L530:
    movq $0, %rax
.L531:
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
    je .L532
    leaq .Lstr153(%rip), %rax
    pushq %rax
    leaq token(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L533
.L532:
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
.L533:
    xorl %eax, %eax
    call next_token
    jmp .L523
.L522:
    movq tok(%rip), %rax
    pushq %rax
    movq $285, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L534
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
    je .L536
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
.L536:
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
    jmp .L535
.L534:
    movq tok(%rip), %rax
    pushq %rax
    movq $45, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L538
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
    jmp .L539
.L538:
    movq tok(%rip), %rax
    pushq %rax
    movq $33, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L540
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
    jmp .L541
.L540:
    movq tok(%rip), %rax
    pushq %rax
    movq $126, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L542
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
    jmp .L543
.L542:
    leaq .Lstr161(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L543:
.L541:
.L539:
.L535:
.L523:
.L519:
.L499:
.L461:
.L459:
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
    je .L570
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
    je .L572
    leaq .Lstr168(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L572:
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
    je .L574
    leaq current_elem_size(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L576
    movq -16(%rbp), %rax
    movq (%rax), %rax
    jmp .L577
.L576:
    movq $8, %rax
.L577:
    popq %rcx
    movq %rax, (%rcx)
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L578
    movq -16(%rbp), %rax
    movq (%rax), %rax
    jmp .L579
.L578:
    movq $262, %rax
.L579:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L575
.L574:
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
.L575:
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
    je .L580
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L581
.L580:
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L582
    leaq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L582:
.L581:
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L584
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L586
    leaq .Lstr169(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L587
.L586:
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
.L587:
    jmp .L585
.L584:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L588
    leaq .Lstr171(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L589
.L588:
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
.L589:
.L585:
    movq $1, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call handle_postfix
    jmp .L571
.L570:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L590
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
    je .L592
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
    je .L594
    movq $1, %rax
    jmp .L595
.L594:
    movq $8, %rax
.L595:
    popq %rcx
    movq %rax, (%rcx)
.L592:
    jmp .L591
.L590:
    leaq .Lstr173(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L591:
.L571:
    leave
    ret
    .globl handle_postfix
handle_postfix:
    pushq %rbp
    movq %rsp, %rbp
    subq $40, %rsp
    movq %rdi, -8(%rbp)
.L650:
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
    je .L651
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L652
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
    je .L654
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
    je .L656
    movq $1, %rax
    jmp .L657
.L656:
    movq $8, %rax
.L657:
    popq %rcx
    movq %rax, (%rcx)
.L654:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L658
    leaq .Lstr188(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L658:
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
    je .L660
    movq expr_pointed(%rip), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L662
    leaq .Lstr190(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L663
.L662:
    leaq .Lstr191(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L663:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L660:
    movq $93, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L653
.L652:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L664
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
    jmp .L668
.L666:
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
    je .L670
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
    jmp .L669
.L670:
.L667:
    leaq -40(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L668
.L668:
    movq -40(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L666
.L669:
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
    je .L672
    leaq .Lstr192(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L672:
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
    je .L674
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
    je .L676
    movq $262, %rax
    jmp .L677
.L676:
    movq $0, %rax
.L677:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L675
.L674:
    movq -24(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L678
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
    je .L680
    movq $262, %rax
    jmp .L681
.L680:
    movq $0, %rax
.L681:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L679
.L678:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L682
    leaq .Lstr193(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L683
.L682:
    leaq .Lstr194(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L683:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L679:
.L675:
    jmp .L665
.L664:
    movq tok(%rip), %rax
    pushq %rax
    movq $273, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L684
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
    jmp .L688
.L686:
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
    je .L690
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
    jmp .L689
.L690:
.L687:
    leaq -40(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L688
.L688:
    movq -40(%rbp), %rax
    pushq %rax
    movq struct_member_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L686
.L689:
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
    je .L692
    leaq .Lstr195(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L692:
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
    je .L694
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
    je .L696
    movq $262, %rax
    jmp .L697
.L696:
    movq $0, %rax
.L697:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L695
.L694:
    movq -24(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L698
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
    je .L700
    movq $262, %rax
    jmp .L701
.L700:
    movq $0, %rax
.L701:
    popq %rcx
    movq %rax, (%rcx)
    jmp .L699
.L698:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L702
    leaq .Lstr196(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L703
.L702:
    leaq .Lstr197(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L703:
    leaq expr_pointed(%rip), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L699:
.L695:
.L684:
.L665:
.L653:
    jmp .L650
.L651:
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
.L747:
    movq $1, %rax
    cmpq $0, %rax
    je .L748
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
    je .L749
    leaq -24(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L750
.L749:
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
    je .L751
    leaq -24(%rbp), %rax
    pushq %rax
    movq $20, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L752
.L751:
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
    je .L753
    leaq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L754
.L753:
    movq -16(%rbp), %rax
    pushq %rax
    movq $38, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L755
    leaq -24(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L756
.L755:
    movq -16(%rbp), %rax
    pushq %rax
    movq $94, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L757
    leaq -24(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L758
.L757:
    movq -16(%rbp), %rax
    pushq %rax
    movq $124, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L759
    leaq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L760
.L759:
    movq -16(%rbp), %rax
    pushq %rax
    movq $278, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L761
    leaq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L762
.L761:
    movq -16(%rbp), %rax
    pushq %rax
    movq $279, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L763
    leaq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L764
.L763:
    movq -16(%rbp), %rax
    pushq %rax
    movq $63, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L765
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L766
.L765:
    jmp .L748
.L766:
.L764:
.L762:
.L760:
.L758:
.L756:
.L754:
.L752:
.L750:
    movq -24(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L767
    jmp .L748
.L767:
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
    je .L769
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
    jmp .L747
.L769:
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
    jmp .L771
.L773:
    leaq .Lstr243(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L772
.L774:
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
    jmp .L772
.L775:
    leaq .Lstr246(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L772
.L776:
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
    jmp .L772
.L777:
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
    jmp .L772
.L778:
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
    jmp .L772
.L779:
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
    jmp .L772
.L780:
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
    jmp .L772
.L781:
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
    jmp .L772
.L782:
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
    jmp .L772
.L783:
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
    jmp .L772
.L784:
    leaq .Lstr272(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L772
.L785:
    leaq .Lstr273(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L772
.L786:
    leaq .Lstr274(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L772
.L787:
    leaq .Lstr275(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L772
.L788:
    leaq .Lstr276(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L772
.L789:
    leaq .Lstr277(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
    jmp .L772
.L771:
    movq (%rsp), %rax
    cmpq $43, %rax
    je .L773
    cmpq $45, %rax
    je .L774
    cmpq $42, %rax
    je .L775
    cmpq $47, %rax
    je .L776
    cmpq $37, %rax
    je .L777
    cmpq $0, %rax
    je .L778
    cmpq $0, %rax
    je .L779
    cmpq $60, %rax
    je .L780
    cmpq $62, %rax
    je .L781
    cmpq $0, %rax
    je .L782
    cmpq $0, %rax
    je .L783
    cmpq $38, %rax
    je .L784
    cmpq $94, %rax
    je .L785
    cmpq $124, %rax
    je .L786
    cmpq $0, %rax
    je .L787
    cmpq $0, %rax
    je .L788
    jmp .L789
.L772:
    addq $8, %rsp
    jmp .L747
.L748:
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
    je .L802
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
    je .L804
    movq $1, %rax
    jmp .L805
.L804:
    movq $8, %rax
.L805:
    movq %rax, -104(%rbp)
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L806
    leaq .Lstr285(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L807
.L806:
    leaq .Lstr286(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L807:
    movq -96(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L808
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L810
    leaq .Lstr287(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L811
.L810:
    leaq .Lstr288(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L811:
    jmp .L809
.L808:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L812
    leaq .Lstr289(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L813
.L812:
    leaq .Lstr290(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L813:
.L809:
    leaq .Lstr291(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    xorl %eax, %eax
    call next_token
.L802:
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
    je .L910
    xorl %eax, %eax
    call expression
    leave
    ret
.L910:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L912
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
.L914:
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
    je .L915
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L916
    movq $1, %rax
    movq %rax, -192(%rbp)
.L918:
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
    je .L919
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
    je .L920
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L921
.L920:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L922
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L922:
.L921:
    jmp .L918
.L919:
    xorl %eax, %eax
    call next_token
    jmp .L917
.L916:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L924
    movq $1, %rax
    movq %rax, -192(%rbp)
.L926:
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
    je .L927
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
    je .L928
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L929
.L928:
    movq tok(%rip), %rax
    pushq %rax
    movq $93, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L930
    leaq -192(%rbp), %rax
    movq (%rax), %rcx
    subq $1, (%rax)
    movq %rcx, %rax
.L930:
.L929:
    jmp .L926
.L927:
    xorl %eax, %eax
    call next_token
    jmp .L925
.L924:
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call next_token
.L925:
.L917:
    jmp .L914
.L915:
    movq tok(%rip), %rax
    pushq %rax
    movq $61, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L932
    leaq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L933
.L932:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L934
    leaq -184(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L935
.L934:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L936
    leaq -184(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L937
.L936:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L938
    leaq -184(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L939
.L938:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L940
    leaq -184(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L941
.L940:
    leaq -184(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
.L941:
.L939:
.L937:
.L935:
.L933:
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
    je .L942
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
    je .L944
    leaq .Lstr360(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L945
.L944:
    leaq .Lstr361(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L945:
    leave
    ret
    jmp .L943
.L942:
    movq -184(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L946
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
    je .L948
    leaq .Lstr363(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L949
.L948:
    leaq .Lstr364(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L949:
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
    je .L950
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
    jmp .L951
.L950:
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
.L951:
    leave
    ret
    jmp .L947
.L946:
    movq -184(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L952
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
    je .L954
    leaq .Lstr374(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L955
.L954:
    leaq .Lstr375(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L955:
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
    je .L956
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
    jmp .L957
.L956:
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
.L957:
    leave
    ret
    jmp .L953
.L952:
    movq -184(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L958
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L960
    movq $271, %rax
    jmp .L961
.L960:
    movq $272, %rax
.L961:
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
    je .L962
    leaq .Lstr384(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L963
.L962:
    leaq .Lstr385(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L963:
    movq -192(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L964
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L966
    leaq .Lstr386(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L967
.L966:
    leaq .Lstr387(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L967:
    jmp .L965
.L964:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L968
    leaq .Lstr388(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L969
.L968:
    leaq .Lstr389(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L969:
.L965:
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
    jmp .L959
.L958:
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
.L959:
.L953:
.L947:
.L943:
    jmp .L913
.L912:
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
    je .L970
    leaq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L971
.L970:
    movq tok(%rip), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L972
    leaq -184(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L973
.L972:
    movq tok(%rip), %rax
    pushq %rax
    movq $272, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L974
    leaq -184(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L975
.L974:
    movq tok(%rip), %rax
    pushq %rax
    movq $286, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L976
    leaq -184(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L977
.L976:
    movq tok(%rip), %rax
    pushq %rax
    movq $287, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L978
    leaq -184(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    movq %rax, (%rcx)
.L978:
.L977:
.L975:
.L973:
.L971:
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
    je .L980
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
    je .L982
    leaq .Lstr393(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L983
.L982:
    leaq .Lstr394(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L983:
    leave
    ret
    jmp .L981
.L980:
    movq -184(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L984
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
    je .L986
    leaq .Lstr396(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L987
.L986:
    leaq .Lstr397(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L987:
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
    je .L988
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
    jmp .L989
.L988:
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
.L989:
    leave
    ret
    jmp .L985
.L984:
    movq -184(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L990
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
    je .L992
    leaq .Lstr407(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L993
.L992:
    leaq .Lstr408(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L993:
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
    je .L994
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
    jmp .L995
.L994:
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
.L995:
    leave
    ret
    jmp .L991
.L990:
    movq -184(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L996
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
    je .L998
    leaq .Lstr417(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L999
.L998:
    leaq .Lstr418(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L999:
    movq -184(%rbp), %rax
    pushq %rax
    movq $271, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1000
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1002
    leaq .Lstr419(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1003
.L1002:
    leaq .Lstr420(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1003:
    jmp .L1001
.L1000:
    movq assign_size(%rip), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1004
    leaq .Lstr421(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
    jmp .L1005
.L1004:
    leaq .Lstr422(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit
.L1005:
.L1001:
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
    jmp .L997
.L996:
    xorl %eax, %eax
    call expression
    leave
    ret
.L997:
.L991:
.L985:
.L981:
.L913:
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
    je .L1192
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
    je .L1194
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
    jmp .L1195
.L1194:
    movq -8(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
.L1195:
    leave
    ret
.L1192:
    movq tok(%rip), %rax
    pushq %rax
    movq $270, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1196
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
    je .L1198
    movq tok(%rip), %rax
    movq %rax, -8(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -16(%rbp)
.L1200:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1201
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1200
.L1201:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1202
    leaq .Lstr470(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1202:
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
    je .L1204
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
.L1204:
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
    je .L1206
    movq $8, %rax
    jmp .L1207
.L1206:
    movq -8(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1208
    movq $8, %rax
    jmp .L1209
.L1208:
    movq $1, %rax
.L1209:
.L1207:
    movq %rax, -64(%rbp)
    leaq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1210
    movq -8(%rbp), %rax
    jmp .L1211
.L1210:
    movq $0, %rax
.L1211:
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
    je .L1212
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
    je .L1214
    leaq .Lstr471(%rip), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L1215
.L1214:
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
.L1215:
.L1212:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1199
.L1198:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1216
    xorl %eax, %eax
    call expression
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1217
.L1216:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
.L1217:
.L1199:
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
    je .L1218
.L1220:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1221
    xorl %eax, %eax
    call next_token
    jmp .L1220
.L1221:
.L1218:
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
    je .L1222
.L1224:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1225
    xorl %eax, %eax
    call next_token
    jmp .L1224
.L1225:
.L1222:
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
    je .L1226
    movq label_counter(%rip), %rax
    leaq label_counter(%rip), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1227
.L1226:
    movq $0, %rax
.L1227:
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
    je .L1228
    movq -208(%rbp), %rax
    jmp .L1229
.L1228:
    movq -216(%rbp), %rax
.L1229:
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
    je .L1230
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
.L1230:
    movq -216(%rbp), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call emit_label
    movq -96(%rbp), %rax
    cmpq $0, %rax
    je .L1232
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
    jmp .L1233
.L1232:
    leaq .Lstr477(%rip), %rax
    pushq %rax
    movq -200(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1233:
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
.L1196:
    movq tok(%rip), %rax
    pushq %rax
    movq $260, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1234
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
.L1234:
    movq tok(%rip), %rax
    pushq %rax
    movq $280, %rax
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
.L1238:
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
    je .L1239
    movq tok(%rip), %rax
    pushq %rax
    movq $281, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1240
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
    jmp .L1241
.L1240:
    movq tok(%rip), %rax
    pushq %rax
    movq $282, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1242
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
    jmp .L1243
.L1242:
    xorl %eax, %eax
    call statement
.L1243:
.L1241:
    jmp .L1238
.L1239:
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
    jmp .L1246
.L1244:
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
.L1245:
    leaq -64(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1246
.L1246:
    movq -64(%rbp), %rax
    pushq %rax
    movq switch_case_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1244
.L1247:
    movq switch_has_default(%rip), %rax
    cmpq $0, %rax
    je .L1248
    leaq .Lstr487(%rip), %rax
    pushq %rax
    movq switch_default_label(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1248:
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
.L1236:
    movq tok(%rip), %rax
    pushq %rax
    movq $283, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1250
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
    je .L1252
    leaq .Lstr489(%rip), %rax
    pushq %rax
    movq break_target(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1252:
    leave
    ret
.L1250:
    movq tok(%rip), %rax
    pushq %rax
    movq $284, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1254
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
    je .L1256
    leaq .Lstr490(%rip), %rax
    pushq %rax
    movq continue_target(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1256:
    leave
    ret
.L1254:
    movq tok(%rip), %rax
    pushq %rax
    movq $288, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1258
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
    je .L1260
    leaq .Lstr491(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1260:
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
.L1258:
    movq tok(%rip), %rax
    pushq %rax
    movq $261, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1262
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
    je .L1264
    xorl %eax, %eax
    call expression
.L1264:
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
.L1262:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1266
    xorl %eax, %eax
    call next_token
    movq stack_size(%rip), %rax
    movq %rax, -8(%rbp)
.L1268:
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
    je .L1269
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
    je .L1270
    xorl %eax, %eax
    call next_token
.L1270:
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1272
    xorl %eax, %eax
    call next_token
    jmp .L1268
    jmp .L1273
.L1272:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1274
    xorl %eax, %eax
    call next_token
    jmp .L1268
    jmp .L1275
.L1274:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1276
    xorl %eax, %eax
    call skip_typedef
    jmp .L1277
.L1276:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1278
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call skip_struct
    jmp .L1279
.L1278:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1280
    movq input_ptr(%rip), %rax
    movq %rax, -16(%rbp)
.L1282:
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
    je .L1283
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1282
.L1283:
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
    je .L1284
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
    jmp .L1268
.L1284:
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
    je .L1286
    xorl %eax, %eax
    call statement
    jmp .L1268
.L1286:
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
.L1288:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1289
    leaq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1288
.L1289:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1290
    leaq .Lstr498(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1290:
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
    je .L1292
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
.L1292:
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
    je .L1294
    movq $8, %rax
    jmp .L1295
.L1294:
    movq -24(%rbp), %rax
.L1295:
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -88(%rbp)
    movq -80(%rbp), %rax
    movq %rax, -96(%rbp)
.L1296:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1297
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
    je .L1298
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
    jmp .L1299
.L1298:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1300
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
    je .L1302
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
    jmp .L1303
.L1302:
    leaq .Lstr499(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1303:
    xorl %eax, %eax
    call next_token
.L1300:
.L1299:
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
    je .L1304
    movq -104(%rbp), %rax
    jmp .L1305
.L1304:
    movq $1, %rax
.L1305:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1296
.L1297:
    leaq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    cmpq $0, %rax
    je .L1306
    movq $262, %rax
    jmp .L1307
.L1306:
    movq $0, %rax
.L1307:
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
    je .L1308
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
    je .L1310
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -104(%rbp)
.L1312:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1313
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
    je .L1314
    leaq .Lstr500(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    jmp .L1315
.L1314:
    leaq .Lstr501(%rip), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1315:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1316
    xorl %eax, %eax
    call next_token
.L1316:
    leaq -104(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1312
.L1313:
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
    je .L1318
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
    je .L1320
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1320:
.L1318:
    jmp .L1311
.L1310:
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
    je .L1322
    leaq .Lstr502(%rip), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L1323
.L1322:
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
.L1323:
.L1311:
.L1308:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1324
    xorl %eax, %eax
    call next_token
    jmp restart_typedef
.L1324:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1281
.L1280:
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
    je .L1326
    movq tok(%rip), %rax
    movq %rax, -16(%rbp)
    xorl %eax, %eax
    call next_token
restart_int:
    movq $0, %rax
    movq %rax, -24(%rbp)
.L1328:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1329
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1328
.L1329:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1330
    leaq .Lstr504(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1330:
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
    je .L1332
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
.L1332:
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
    je .L1334
    movq $8, %rax
    jmp .L1335
.L1334:
    movq -16(%rbp), %rax
    pushq %rax
    movq $262, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1336
    movq $8, %rax
    jmp .L1337
.L1336:
    movq $1, %rax
.L1337:
.L1335:
    movq %rax, -72(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq -72(%rbp), %rax
    movq %rax, -88(%rbp)
.L1338:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1339
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
    je .L1340
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
    jmp .L1341
.L1340:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1342
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
    je .L1344
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
    jmp .L1345
.L1344:
    leaq .Lstr505(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1345:
    xorl %eax, %eax
    call next_token
.L1342:
.L1341:
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
    je .L1346
    movq -96(%rbp), %rax
    jmp .L1347
.L1346:
    movq $1, %rax
.L1347:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1338
.L1339:
    leaq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    cmpq $0, %rax
    je .L1348
    movq -16(%rbp), %rax
    jmp .L1349
.L1348:
    movq $0, %rax
.L1349:
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
    je .L1350
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
    je .L1352
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -96(%rbp)
.L1354:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1355
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
    je .L1356
    leaq .Lstr506(%rip), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
    jmp .L1357
.L1356:
    leaq .Lstr507(%rip), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1357:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1358
    xorl %eax, %eax
    call next_token
.L1358:
    leaq -96(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1354
.L1355:
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
    je .L1360
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
    je .L1362
    leaq max_func_stack(%rip), %rax
    pushq %rax
    movq stack_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1362:
.L1360:
    jmp .L1353
.L1352:
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
    je .L1364
    leaq .Lstr508(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_s
    jmp .L1365
.L1364:
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
.L1365:
.L1353:
.L1350:
    movq tok(%rip), %rax
    pushq %rax
    movq $44, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1366
    xorl %eax, %eax
    call next_token
    jmp restart_int
.L1366:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1327
.L1326:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1368
    xorl %eax, %eax
    call parse_enum
    jmp .L1369
.L1368:
    xorl %eax, %eax
    call statement
.L1369:
.L1327:
.L1281:
.L1279:
.L1277:
.L1275:
.L1273:
    jmp .L1268
.L1269:
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
.L1266:
    movq tok(%rip), %rax
    pushq %rax
    movq $40, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1370
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
    je .L1372
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
    je .L1374
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
.L1374:
.L1372:
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
.L1370:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1376
    xorl %eax, %eax
    call next_token
    leave
    ret
.L1376:
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
    je .L1442
    xorl %eax, %eax
    call next_token
    jmp .L1443
.L1442:
.L1444:
    movq tok(%rip), %rax
    pushq %rax
    movq $41, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1445
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1446
    xorl %eax, %eax
    call next_token
    jmp .L1444
    jmp .L1447
.L1446:
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
    je .L1448
    movq tok(%rip), %rax
    movq %rax, -65592(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -65600(%rbp)
    movq $0, %rax
    movq %rax, -65608(%rbp)
.L1450:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1451
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
    jmp .L1450
.L1451:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1452
    leaq .Lstr532(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1452:
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
    je .L1454
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
.L1454:
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
    je .L1456
    movq $8, %rax
    jmp .L1457
.L1456:
    movq -65592(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1458
    movq $1, %rax
    jmp .L1459
.L1458:
    movq $8, %rax
.L1459:
.L1457:
    movq %rax, -65624(%rbp)
    movq -65600(%rbp), %rax
    cmpq $0, %rax
    je .L1460
    movq -65608(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    cmpq %rax, %rcx
    setg %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1462
    movq $262, %rax
    jmp .L1463
.L1462:
    movq -65592(%rbp), %rax
.L1463:
    jmp .L1461
.L1460:
    movq $0, %rax
.L1461:
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
    je .L1464
    xorl %eax, %eax
    call next_token
.L1464:
    jmp .L1449
.L1448:
    movq tok(%rip), %rax
    pushq %rax
    movq $264, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1466
    xorl %eax, %eax
    call next_token
    jmp .L1467
.L1466:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1468
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
    je .L1470
    xorl %eax, %eax
    call next_token
.L1470:
    movq tok(%rip), %rax
    pushq %rax
    movq $46, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1472
    xorl %eax, %eax
    call next_token
.L1472:
    jmp .L1445
    jmp .L1469
.L1468:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1474
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
    je .L1476
    leaq .Lstr533(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1476:
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
.L1478:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1479
    leaq -65608(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1478
.L1479:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1480
    leaq .Lstr534(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1480:
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
    je .L1482
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
.L1482:
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
    je .L1484
    leaq -65600(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1484:
    leaq token(%rip), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -65600(%rbp), %rax
    pushq %rax
    movq -65608(%rbp), %rax
    cmpq $0, %rax
    je .L1486
    movq $262, %rax
    jmp .L1487
.L1486:
    movq $0, %rax
.L1487:
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
    je .L1488
    xorl %eax, %eax
    call next_token
.L1488:
    jmp .L1475
.L1474:
    leaq .Lstr535(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1475:
.L1469:
.L1467:
.L1449:
.L1447:
    jmp .L1444
.L1445:
.L1443:
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
    je .L1490
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
.L1490:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1492
    leaq .Lstr536(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1492:
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
    je .L1494
    leaq .Lstr541(%rip), %rax
    pushq %rax
    movq -65696(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call emit_i
.L1494:
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
    jmp .L1498
.L1496:
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
    je .L1500
    leaq .Lstr548(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1500:
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
    je .L1502
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
    jmp .L1503
.L1502:
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
.L1503:
.L1497:
    leaq -65712(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1498
.L1498:
    movq -65712(%rbp), %rax
    pushq %rax
    movq -65584(%rbp), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1496
.L1499:
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
    je .L1504
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
.L1504:
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
    je .L1524
    xorl %eax, %eax
    call next_token
.L1524:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1526
    leaq .Lstr558(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1526:
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -8(%rbp)
.L1528:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1529
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1530
    leaq .Lstr559(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1530:
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1532
    leaq .Lstr560(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1532:
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
    je .L1534
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
.L1534:
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
    je .L1536
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
    je .L1538
    leaq .Lstr561(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1538:
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
.L1536:
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
    je .L1540
    xorl %eax, %eax
    call next_token
.L1540:
    jmp .L1528
.L1529:
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
    je .L1572
    xorl %eax, %eax
    call next_token
.L1572:
    movq tok(%rip), %rax
    pushq %rax
    movq $123, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1574
    leaq .Lstr563(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1574:
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
.L1576:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1577
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
    je .L1578
    movq tok(%rip), %rax
    movq %rax, -8(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -16(%rbp)
.L1580:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1581
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1580
.L1581:
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1582
    movq $8, %rax
    jmp .L1583
.L1582:
    movq -8(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1584
    movq $1, %rax
    jmp .L1585
.L1584:
    movq $8, %rax
.L1585:
.L1583:
    movq %rax, -24(%rbp)
.L1586:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1587
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1588
    movq struct_member_count(%rip), %rax
    pushq %rax
    movq $32, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1590
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
    je .L1592
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
.L1592:
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
.L1590:
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
    je .L1594
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
    je .L1596
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
.L1596:
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
    je .L1598
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
.L1598:
    jmp .L1595
.L1594:
    leaq struct_total_size(%rip), %rax
    pushq %rax
    movq (%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L1595:
    jmp .L1589
.L1588:
    xorl %eax, %eax
    call next_token
.L1589:
    jmp .L1586
.L1587:
    movq $59, %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call match
    jmp .L1579
.L1578:
    movq tok(%rip), %rax
    pushq %rax
    movq $125, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1600
    jmp .L1577
    jmp .L1601
.L1600:
    xorl %eax, %eax
    call next_token
.L1601:
.L1579:
    jmp .L1576
.L1577:
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
    je .L1624
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call skip_struct
    jmp .L1625
.L1624:
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
    je .L1626
    xorl %eax, %eax
    call next_token
.L1628:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1629
    xorl %eax, %eax
    call next_token
    jmp .L1628
.L1629:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1630
    xorl %eax, %eax
    call next_token
.L1630:
.L1626:
.L1625:
    leaq .Lstr566(%rip), %rax
    movq %rax, -32(%rbp)
.L1632:
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
    je .L1636
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
.L1636:
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
.L1634:
    xorl %eax, %eax
    call next_token
    jmp .L1632
.L1633:
    leaq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    je .L1638
    movq symbol_count(%rip), %rax
    pushq %rax
    movq $2048, %rax
    popq %rcx
    cmpq %rax, %rcx
    setge %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1640
    leaq .Lstr567(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1640:
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
    je .L1642
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
.L1642:
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
    je .L1644
    movq -40(%rbp), %rax
    pushq %rax
    movq struct_total_size(%rip), %rax
    popq %rcx
    movq %rax, (%rcx)
.L1644:
.L1638:
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
.L1714:
    movq tok(%rip), %rax
    pushq %rax
    movq $289, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1715
    movq tok(%rip), %rax
    pushq %rax
    movq $266, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1716
    xorl %eax, %eax
    call next_token
    jmp .L1714
    jmp .L1717
.L1716:
    movq tok(%rip), %rax
    pushq %rax
    movq $269, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1718
    xorl %eax, %eax
    call next_token
    jmp .L1714
    jmp .L1719
.L1718:
    movq tok(%rip), %rax
    pushq %rax
    movq $267, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1720
    xorl %eax, %eax
    call skip_typedef
    jmp .L1721
.L1720:
    movq tok(%rip), %rax
    pushq %rax
    movq $268, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1722
    xorl %eax, %eax
    call next_token
    xorl %eax, %eax
    call skip_struct
    jmp .L1723
.L1722:
    movq tok(%rip), %rax
    pushq %rax
    movq $265, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1724
    xorl %eax, %eax
    call parse_enum
    jmp .L1725
.L1724:
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
    je .L1726
    movq tok(%rip), %rax
    movq %rax, -8(%rbp)
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -16(%rbp)
.L1728:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1729
    leaq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1728
.L1729:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1730
    leaq .Lstr575(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1730:
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
    je .L1732
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
.L1732:
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
    je .L1734
    leaq -48(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call parse_function
    jmp .L1735
.L1734:
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1736
    movq $8, %rax
    jmp .L1737
.L1736:
    movq -8(%rbp), %rax
    pushq %rax
    movq $263, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1738
    movq $1, %rax
    jmp .L1739
.L1738:
    movq $8, %rax
.L1739:
.L1737:
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -72(%rbp)
    movq -64(%rbp), %rax
    movq %rax, -80(%rbp)
.L1740:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1741
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
    je .L1742
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
    jmp .L1743
.L1742:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1744
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
    je .L1746
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
    jmp .L1747
.L1746:
    leaq .Lstr576(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1747:
    xorl %eax, %eax
    call next_token
.L1744:
.L1743:
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
    je .L1748
    movq -88(%rbp), %rax
    jmp .L1749
.L1748:
    movq $1, %rax
.L1749:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1740
.L1741:
    leaq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    cmpq $0, %rax
    je .L1750
    movq -8(%rbp), %rax
    jmp .L1751
.L1750:
    movq $0, %rax
.L1751:
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
    je .L1752
.L1754:
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
    je .L1755
    xorl %eax, %eax
    call next_token
    jmp .L1754
.L1755:
.L1752:
    movq tok(%rip), %rax
    pushq %rax
    movq $59, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1756
    xorl %eax, %eax
    call next_token
    jmp .L1757
.L1756:
    leaq .Lstr577(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1757:
.L1735:
    jmp .L1727
.L1726:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1758
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
    je .L1760
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
.L1760:
    xorl %eax, %eax
    call next_token
    movq $0, %rax
    movq %rax, -24(%rbp)
.L1762:
    movq tok(%rip), %rax
    pushq %rax
    movq $42, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1763
    leaq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %rcx
    movq %rax, (%rcx)
    xorl %eax, %eax
    call next_token
    jmp .L1762
.L1763:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    setne %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1764
    leaq .Lstr578(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1764:
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
    je .L1766
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
.L1766:
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
    je .L1768
    movq $8, %rax
    jmp .L1769
.L1768:
    movq -8(%rbp), %rax
.L1769:
    movq %rax, -72(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq -72(%rbp), %rax
    movq %rax, -88(%rbp)
.L1770:
    movq tok(%rip), %rax
    pushq %rax
    movq $91, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1771
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
    je .L1772
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
    jmp .L1773
.L1772:
    movq tok(%rip), %rax
    pushq %rax
    movq $257, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1774
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
    je .L1776
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
    jmp .L1777
.L1776:
    leaq .Lstr579(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1777:
    xorl %eax, %eax
    call next_token
.L1774:
.L1773:
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
    je .L1778
    movq -96(%rbp), %rax
    jmp .L1779
.L1778:
    movq $1, %rax
.L1779:
    popq %rcx
    imulq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    jmp .L1770
.L1771:
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
    je .L1780
    xorl %eax, %eax
    call next_token
    jmp .L1781
.L1780:
    leaq .Lstr580(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1781:
    jmp .L1759
.L1758:
    leaq .Lstr581(%rip), %rax
    pushq %rax
    movq 0(%rsp), %rdi
    addq $8, %rsp
    xorl %eax, %eax
    call error
.L1759:
.L1727:
.L1725:
.L1723:
.L1721:
.L1719:
.L1717:
    jmp .L1714
.L1715:
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
    je .L1800
    leave
    ret
.L1800:
    movq $0, %rax
    movq %rax, -8(%rbp)
    jmp .L1804
.L1802:
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
.L1806:
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    movq -16(%rbp), %rax
    movsbq (%rax), %rax
    cmpq $0, %rax
    je .L1807
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
    je .L1808
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr590(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    jmp .L1809
.L1808:
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1810
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr591(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    jmp .L1811
.L1810:
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1812
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr592(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    jmp .L1813
.L1812:
    movsbq -24(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L1814
    movq output(%rip), %rax
    pushq %rax
    leaq .Lstr593(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fprintf
    jmp .L1815
.L1814:
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
    je .L1816
    movsbq -24(%rbp), %rax
    pushq %rax
    movq output(%rip), %rax
    pushq %rax
    movq 8(%rsp), %rdi
    movq 0(%rsp), %rsi
    addq $16, %rsp
    xorl %eax, %eax
    call fputc
    jmp .L1817
.L1816:
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
.L1817:
.L1815:
.L1813:
.L1811:
.L1809:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1806
.L1807:
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
.L1803:
    leaq -8(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1804
.L1804:
    movq -8(%rbp), %rax
    pushq %rax
    movq string_count(%rip), %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L1802
.L1805:
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
    je .L1836
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
.L1836:
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
    je .L1838
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
.L1838:
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
    je .L1840
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
.L1840:
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
    je .L1842
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
.L1842:
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
    jmp .L1846
.L1844:
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
    je .L1848
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
.L1848:
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
    je .L1850
    movq $1, %rax
    jmp .L1851
.L1850:
    movq $0, %rax
.L1851:
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
.L1845:
    leaq -56(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L1846
.L1846:
    leaq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %rcx
    imulq $8, %rax
    addq %rcx, %rax
    movq (%rax), %rax
    cmpq $0, %rax
    jne .L1844
.L1847:
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
    je .L1852
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
.L1852:
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
