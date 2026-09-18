#include <stdio.h>

typedef struct {
    int x;
} A;

typedef struct {
    A a;
    int y;
} B;

typedef struct {
    B b;
    int z;
} C;

int main(void) {
    B b;
    C c;
    B *p;
    b.a.x = 7;
    b.y = 8;
    printf("%d %d\n", b.a.x, b.y);
    b.a.x += 10;
    printf("%d\n", b.a.x);
    p = &b;
    p->a.x = 3;
    p->y = 4;
    printf("%d %d\n", p->a.x, p->y);
    c.b.a.x = 11;
    c.b.y = 12;
    c.z = 13;
    printf("%d %d %d\n", c.b.a.x, c.b.y, c.z);
    return 0;
}
