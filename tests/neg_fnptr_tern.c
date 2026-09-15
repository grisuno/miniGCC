#include <stdio.h>

long add2(long a, long b) {
    return a + b;
}

int main(void) {
    long (*f)(long, long);
    long r;
    int c;
    f = add2;
    c = 1;
    r = (c ? 0 : f)(1, 2);
    printf("%ld\n", r);
    return 0;
}
