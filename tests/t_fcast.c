#include <stdio.h>

int main(void) {
    double d = 3.7;
    double neg = -2.5;
    float f = 2.5f;
    int x = 7;
    char c;
    double dd;
    float ff;
    printf("[%d]\n", (int)d);
    printf("[%d]\n", (int)f);
    printf("[%d]\n", (int)neg);
    printf("[%d]\n", (int)3.9);
    printf("[%d]\n", (int)(d + 0.5));
    c = (char)d;
    printf("[%d]\n", c);
    dd = (double)x;
    printf("[%d]\n", dd == 7.0);
    ff = (float)x;
    printf("[%d]\n", ff == 7.0f);
    printf("[%d]\n", (int)(double)x);
    printf("[%d]\n", (float)d == (float)3.7);
    return 0;
}
