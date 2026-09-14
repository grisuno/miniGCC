#include <stdio.h>

typedef int myint;
typedef char *str;

myint shared;
str greeting;

typedef struct {
    int x;
    int y;
} Pair;

Pair origin2;

int main(void) {
    shared = 40;
    printf("%d\n", shared + 2);
    greeting = "typedef";
    printf("%s\n", greeting);
    origin2.x = 9;
    Pair *pp = &origin2;
    pp->y = 8;
    printf("%d %d\n", pp->x, pp->y);
    return 0;
}
