    .section .text
    .globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    leaq -16(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %rcx
    movq %rax, (%rcx)
    leaq -32(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %rcx
    addq %rcx, %rax
    popq %rcx
    movq %rax, (%rcx)
    movq -32(%rbp), %rax
    leave
    ret
    leave
    ret
    .globl _start
