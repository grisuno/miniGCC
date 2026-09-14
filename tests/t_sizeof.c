#include <stdio.h>

int main(void) {
    printf("%d %d %d\n", sizeof(char), sizeof(float), sizeof(double));
    printf("%d %d %d\n", sizeof(void *), sizeof(int *), sizeof(char *));
    long lv = 0;
    char c = 0;
    double d = 0.0;
    int *p = 0;
    printf("%d %d\n", sizeof(lv), sizeof(c));
    printf("%d %d\n", sizeof(d), sizeof(p));
    return 0;
}
