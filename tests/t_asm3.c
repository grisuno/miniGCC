#include <stdio.h>

long g1 = 100;
long g2 = 0;

int main(void) {
    long lo;
    long hi;
    __asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi));
    printf("%d\n", (lo == 0 && hi == 0) ? 0 : 1);
    long x = 40;
    long y = 0;
    __asm__ volatile("movq %1, %%rax; addq $2, %%rax; movq %%rax, %0"
        : "=r"(y) : "r"(x) : "memory");
    printf("%d %d\n", x, y);
    long t = 0;
    __asm__ volatile("movq %1, %0" : "=b"(t) : "b"(g1));
    printf("%d\n", t);
    long u = 0;
    __asm__ volatile("movq %1, %0" : "=c"(u) : "c"(g1));
    printf("%d\n", u);
    long v = 0;
    __asm__ volatile("movq %1, %0" : "=d"(v) : "d"(g1));
    printf("%d\n", v);
    long w = 0;
    __asm__ volatile("movq %1, %0" : "=r"(w) : "m"(g1));
    printf("%d\n", w);
    long lcl = 33;
    long wl = 0;
    __asm__ volatile("movq %1, %0" : "=r"(wl) : "m"(lcl));
    printf("%d\n", wl);
    __asm__ volatile("movq $55, %0" : "=m"(g2));
    printf("%d\n", g2);
    long nd = 0;
    __asm__ volatile("movq %1, %0" : "=r"(nd) : "Nd"(42));
    printf("%d\n", nd);
    char ch = 0;
    __asm__ volatile("movb $66, %%al" : "=a"(ch));
    printf("%d\n", ch);
    long arr[2];
    arr[0] = 7;
    arr[1] = 0;
    __asm__ volatile("movq %1, %%rax; addq $3, %%rax; movq %%rax, %0"
        : "=r"(arr[1]) : "r"(arr[0]) : "memory");
    printf("%d %d\n", arr[0], arr[1]);
    long jp = 0;
    long jv = 9;
    __asm__ volatile("movq %1, %0; jmp L%=; L%=:" : "=r"(jp) : "r"(jv));
    printf("%d\n", jp);
    long pv = 5;
    long *pp = &pv;
    __asm__ volatile("movq $77, %%rax; movq %%rax, %0" : "=r"(*pp));
    printf("%d\n", pv);
    __asm__ volatile("movq $88, %%rax; movq %%rax, %0" : "=r"(g2));
    printf("%d\n", g2);
    char cb = 0;
    __asm__ volatile("movb $67, %%bl" : "=b"(cb));
    printf("%d\n", cb);
    return 0;
}
