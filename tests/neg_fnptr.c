#include <stdio.h>

long add2(long a, long b) {
    return a + b;
}

int main(void) {
    long (*f)(long, long);
    long x;
    f = add2;
    x = f + 1;
    printf("%ld\n", x);
    return 0;
}
