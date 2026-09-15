#include <stdio.h>

typedef unsigned long u64;
typedef unsigned int u32;

unsigned long gstate;
unsigned int gcount;

unsigned long bump(unsigned long x) {
    return x + 1;
}

unsigned int narrow(unsigned int x) {
    return x + 1;
}

typedef struct {
    unsigned long base;
    unsigned int len;
    unsigned char tag;
} ureg_t;

unsigned long reg_base(ureg_t *r) {
    return r->base;
}

int main(void) {
    unsigned long a = 4000000000ul;
    unsigned long b, c;
    unsigned int i = 3000000000u;
    unsigned char c8 = 200;
    unsigned u = 7;
    unsigned short us = 60000;
    u64 g = 5000000000ull;
    u32 n = 9;
    ureg_t r;
    b = 5000000000ul;
    c = a + b;
    printf("%lu\n", c);
    printf("%u\n", i + 1);
    printf("%u\n", (unsigned)c8 + 1);
    printf("%u\n", u * 2);
    printf("%u\n", (unsigned)us + 1);
    printf("%lu\n", (unsigned long)(c - a));
    printf("%lu\n", g + 1);
    printf("%u\n", n + 1);
    printf("%lu\n", bump(a));
    printf("%u\n", narrow(i));
    printf("%d %d %d\n", (int)sizeof(unsigned long) == (int)sizeof(long),
        (int)sizeof(unsigned) == (int)sizeof(int),
        (int)sizeof(u64) == (int)sizeof(unsigned long));
    r.base = 100;
    r.len = 5;
    r.tag = 65;
    printf("%lu %u %u\n", reg_base(&r), r.len, (unsigned)r.tag);
    gstate = 42;
    gcount = 7;
    printf("%lu %u\n", gstate, gcount);
    b = 1;
    c = 2;
    printf("%lu\n", b + c);
    {
        unsigned char d1 = 200, d2 = 150;
        printf("%d\n", d1 + d2);
    }
    {
        unsigned k;
        unsigned long total = 0;
        for (k = 0; k < 3; k++)
            total += k;
        printf("%lu %u\n", total, k);
    }
    {
        unsigned long total2 = 0;
        unsigned char q1 = 250, q2 = 5;
        for (; q1 > q2; q1--)
            total2++;
        printf("%lu\n", total2);
    }
    {
        unsigned long total3 = 0;
        int qi;
        for (qi = 0; qi < 2; qi++)
            total3 += (unsigned long)qi;
        printf("%lu\n", total3);
    }
    {
        unsigned long total5 = 0;
        for (unsigned char g1 = 250, g2 = 150; g1 > g2; g1--)
            total5++;
        printf("%lu\n", total5);
    }
    {
        typedef unsigned char u8;
        u8 e1 = 250, e2 = 150;
        typedef u8 u8b;
        u8b y = 250;
        signed long s9 = -9;
        signed char sc = -5;
        u32 big32 = 4000000000u;
        unsigned *pp = &u;
        printf("%d\n", e1 + e2);
        printf("%d\n", y);
        printf("%d\n", sc);
        printf("%ld\n", s9);
        printf("%d\n", big32 > 100);
        printf("%u\n", *pp);
        typedef u32 uword;
        uword uw1 = 0;
        uw1 = uw1 - 1;
        printf("%u\n", uw1);
    }
    {
        typedef ureg_t ureg2;
        ureg2 q;
        q.base = 77;
        printf("%lu\n", reg_base(&q));
    }
    return 0;
}
