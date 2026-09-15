#include <stdio.h>

long add2(long a, long b) {
    return a + b;
}

long mul2(long a, long b) {
    return a * b;
}

int main(void) {
    long (*f)(long, long);
    long (*g)(long, long);
    long r;
    f = add2;
    g = mul2;
    r = (f == g)(1, 2);
    printf("%ld\n", r);
    return 0;
}
