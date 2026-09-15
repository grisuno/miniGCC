#include <stdio.h>

typedef struct {
    unsigned long base;
    long off;
    unsigned int len;
    int x;
    unsigned short w;
    unsigned char tag;
    long long big;
} R;

int main(void) {
    R r;
    r.base = 5000000000ull;
    r.off = -7000000000ll;
    r.len = 4000000000u;
    r.x = -3;
    r.w = 60000;
    r.tag = 200;
    r.big = -8000000000ll;
    printf("%lu\n", r.base);
    printf("%ld\n", r.off);
    printf("%u\n", r.len);
    printf("%d\n", r.x);
    printf("%u\n", (unsigned)r.w);
    printf("%u\n", (unsigned)r.tag);
    printf("%lld\n", r.big);
    r.base = 1;
    printf("%lu %ld %u %d %u %u %lld\n", r.base, r.off, r.len, r.x, (unsigned)r.w, (unsigned)r.tag, r.big);
    return 0;
}
