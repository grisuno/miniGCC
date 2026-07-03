    .section .text
    .globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    leaq -8(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -16(%rbp), %rax
    leave
    ret
    .globl _start
_start:
    call main
    movq %rax, %rdi
    movq $60, %rax
    syscall
