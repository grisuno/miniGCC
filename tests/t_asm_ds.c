#include <stdio.h>
#include <stdint.h>

long via_d(long x) {
    long r;
    __asm__ volatile("movq %1, %0" : "=r"(r) : "D"(x));
    return r;
}

long via_s(long x) {
    long r;
    __asm__ volatile("movq %1, %0" : "=r"(r) : "S"(x));
    return r;
}

long add_ds(long a, long b) {
    long r;
    __asm__ volatile("movq %1, %0; addq %2, %0" : "=&r"(r) : "D"(a), "S"(b));
    return r;
}

long ret_d(long x) {
    long r;
    __asm__ volatile("movq %1, %0" : "=D"(r) : "r"(x));
    return r;
}

long ret_s(long x) {
    long r;
    __asm__ volatile("movq %1, %0" : "=S"(r) : "r"(x));
    return r;
}

int ret_di(void) {
    int r = 0;
    __asm__ volatile("movl $12345, %%edi" : "=D"(r));
    return r;
}

char ret_dc(void) {
    char r = 0;
    __asm__ volatile("movb $65, %%dil" : "=D"(r));
    return r;
}

int16_t ret_ds(void) {
    int16_t r = 0;
    __asm__ volatile("movw $1234, %%di" : "=D"(r));
    return r;
}

int32_t ret_dw(void) {
    int32_t r = 0;
    __asm__ volatile("movl $22222, %%edi" : "=D"(r));
    return r;
}

int main(void) {
    printf("%ld\n", via_d(41));
    printf("%ld\n", via_s(42));
    printf("%ld\n", add_ds(100, 23));
    printf("%ld\n", ret_d(7));
    printf("%ld\n", ret_s(9));
    printf("%ld\n", via_d(-5) + via_s(-6));
    printf("%d\n", ret_di());
    printf("%d\n", ret_dc());
    printf("%d\n", ret_ds());
    printf("%d\n", (int)ret_dw());
    return 0;
}
