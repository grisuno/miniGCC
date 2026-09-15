#include <stdio.h>

long sum7(long a, long b, long c, long d, long e, long f, long g) {
    return a + b + c + d + e + f + g;
}

long sum8(long a, long b, long c, long d, long e, long f, long g, long h) {
    return a + b + c + d + e + f + g + h;
}

long mix8(long a, long b, long c, long d, long e, long f, long g, long h) {
    long t = a * g + b * h;
    return t - c - d - e - f;
}

int main(void) {
    long (*fp)(long, long, long, long, long, long, long);
    printf("%ld\n", sum7(1, 2, 3, 4, 5, 6, 7));
    printf("%ld\n", sum8(1, 2, 3, 4, 5, 6, 7, 8));
    printf("%ld\n", sum7(10, 20, 30, 40, 50, 60, 70) + sum7(1, 1, 1, 1, 1, 1, 1));
    printf("%ld\n", mix8(2, 3, 1, 1, 1, 1, 10, 20));
    fp = sum7;
    printf("%ld\n", fp(1, 2, 3, 4, 5, 6, 7));
    printf("%ld\n", sum7(-1, -2, -3, -4, -5, -6, -7));
    printf("%ld %ld %ld\n", sum7(1, 1, 1, 1, 1, 1, 1), sum8(1, 1, 1, 1, 1, 1, 1, 1), mix8(1, 1, 1, 1, 1, 1, 1, 1));
    return 0;
}
