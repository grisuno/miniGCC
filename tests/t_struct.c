#include <stdio.h>

typedef struct {
    int x;
    int y;
} Point;

Point origin;

int manhattan(Point *p) {
    int ax = p->x;
    if (ax < 0) ax = 0 - ax;
    int ay = p->y;
    if (ay < 0) ay = 0 - ay;
    return ax + ay;
}

int main(void) {
    origin.x = 3;
    origin.y = 0 - 4;
    Point *pp = &origin;
    printf("%d %d\n", pp->x, pp->y);
    printf("%d\n", pp->y < 0);
    pp->x = 30;
    printf("%d %d\n", origin.x, manhattan(pp));
    Point local;
    local.x = 1;
    Point *lp = &local;
    lp->y = 2;
    printf("%d %d\n", lp->x, lp->y);
    return 0;
}
