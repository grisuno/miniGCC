#include <stdio.h>

struct P {
    int x;
    int y;
};

struct P g;

int dist(struct P *p) { return p->x + p->y; }

int main(void) {
    struct P p;
    struct P *pp;
    p.x = 3;
    p.y = 4;
    printf("[%d %d]\n", p.x, p.y);
    pp = &p;
    pp->x = 5;
    printf("[%d %d]\n", pp->x, pp->y);
    g.x = 7;
    g.y = 8;
    printf("[%d %d]\n", g.x, g.y);
    printf("[%d]\n", dist(&p));
    return 0;
}
