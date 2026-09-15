#include <stdio.h>

long add2(long a, long b) {
    return a + b;
}

int main(void) {
    long (*f)(long, long);
    long r;
    f = add2;
    r = (f == 0)(1, 2);
    printf("%ld\n", r);
    return 0;
}
