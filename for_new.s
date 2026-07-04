    .section .text
    .globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    leaq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq $1, %rax
    movq %rax, -16(%rbp)
    jmp .L6
.L4:
    leaq -8(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
.L5:
    leaq -16(%rbp), %rax
    movq (%rax), %rcx
    addq $1, (%rax)
    movq %rcx, %rax
    jmp .L6
.L6:
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %rcx
    cmpq %rax, %rcx
    setl %al
    movzbq %al, %rax
    cmpq $0, %rax
    jne .L4
.L7:
    movq -8(%rbp), %rax
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
