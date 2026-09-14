#include <stdio.h>

int gscalar = 42;
int garr[4] = { 1, 2, 3, 4 };
char gstr[] = "global";
int gzero;

int main(void) {
    printf("%d %d %d\n", gscalar, garr[0], garr[3]);
    printf("%s %d\n", gstr, gzero);
    gscalar = 1;
    garr[1] = 20;
    printf("%d %d\n", gscalar, garr[1]);
    return 0;
}
