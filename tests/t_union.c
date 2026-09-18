#include <stdio.h>

union U {
    int i;
    char c;
};

typedef union {
    int x;
    int y;
} W;

struct In {
    int a;
    int b;
};

struct Out {
    struct In in;
    int z;
};

int main(void) {
    union U u;
    union U *up;
    W w;
    struct Out o;
    u.i = 16909060;
    printf("[%d]\n", u.c);
    u.c = 9;
    printf("[%d]\n", u.i);
    w.x = 42;
    printf("[%d]\n", w.y);
    w.y = 43;
    printf("[%d]\n", w.x);
    up = &u;
    up->i = 100;
    printf("[%d %d]\n", u.i, up->c);
    o.in.a = 11;
    o.in.b = 12;
    o.z = 13;
    printf("[%d %d %d]\n", o.in.a, o.in.b, o.z);
    return 0;
}
