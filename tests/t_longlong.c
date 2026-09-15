#include <stdio.h>

typedef unsigned long long u64;
typedef long long s64;

u64 bump(u64 x) {
    return x + 1;
}

s64 negate(s64 x) {
    return -x;
}

unsigned long long add64(unsigned long long a, unsigned long long b) {
    return a + b;
}

long long gg;

int main(void) {
    unsigned long long a = 4000000000ull;
    unsigned long long b = 5000000000ull;
    u64 c = 6000000000ull;
    s64 d = -5;
    long long e = -7;
    printf("%llu\n", a + b);
    printf("%llu\n", c + 1);
    printf("%lld\n", d + e);
    printf("%llu\n", bump(a));
    printf("%lld\n", negate(9));
    printf("%llu\n", add64(a, b));
    printf("%d %d\n", (int)sizeof(unsigned long long) == (int)sizeof(long),
        (int)sizeof(u64) == (int)sizeof(unsigned long));
    printf("%llu\n", (unsigned long long)7000000000ull);
    gg = -11;
    printf("%lld\n", gg);
    return 0;
}
