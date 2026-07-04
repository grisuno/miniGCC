    .section .text
    .globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    jmp .L6
.L5:
    xorl %eax, %eax
    call getchar
    pushq %rax
    movq $35, %rax
    popq %rcx
    cmpq %rax, %rcx
    sete %al
    movzbq %al, %rax
    cmpq $0, %rax
    je .L8
    jmp .L6
    jmp .L9
.L8:
    jmp .L7
.L9:
.L6:
    jmp .L5
.L7:
    movq $0, %rax
    leave
    ret
    .globl _start
_start:
    movq (%rsp), %rdi
    leaq 8(%rsp), %rsi
    leaq 16(%rsp,%rdi,8), %rdx
    call main
    movq %rax, %rdi
    movq $60, %rax
    syscall
