#include <stdio.h>

long add2(long a, long b) {
    return a + b;
}

long mul2(long a, long b) {
    return a * b;
}

long apply2(long (*f)(long, long), long x, long y) {
    return f(x, y);
}

typedef struct {
    long (*op)(long, long);
    long base;
} ops_t;

long (*gop)(long, long);

long run_op(ops_t *o, long x, long y) {
    return o->op(x, y) + o->base;
}

int main(void) {
    long (*f)(long, long);
    long (*tbl[2])(long, long);
    ops_t o;
    f = add2;
    printf("%ld\n", f(10, 20));
    f = mul2;
    printf("%ld\n", f(10, 20));
    printf("%ld\n", apply2(add2, 5, 6));
    printf("%ld\n", apply2(mul2, 5, 6));
    o.op = add2;
    o.base = 100;
    printf("%ld\n", run_op(&o, 1, 2));
    o.op = mul2;
    printf("%ld\n", run_op(&o, 3, 4));
    tbl[0] = add2;
    tbl[1] = mul2;
    printf("%ld\n", tbl[0](7, 8) + tbl[1](7, 8));
    f = 0;
    printf("%d\n", f == 0);
    gop = mul2;
    printf("%ld\n", gop(6, 7));
    gop = add2;
    printf("%ld\n", gop(6, 7));
    f = mul2;
    printf("%ld\n", (*f)(3, 4));
    printf("%d\n", !f);
    {
        typedef long (*cb_t)(long, long);
        cb_t g;
        g = add2;
        printf("%ld\n", g(100, 23));
        printf("%ld\n", apply2(g, 2, 3));
    }
    {
        typedef long (*cb2_t)(long, long);
        cb2_t h = 0;
        h = mul2;
        printf("%ld\n", h(6, 7));
    }
    return 0;
}
