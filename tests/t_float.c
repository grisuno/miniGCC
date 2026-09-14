#include <stdio.h>

int main(void) {
    double a = 1.5;
    double b = 2.5;
    printf("%d %d %d\n", a + b == 4.0, a * b == 3.75, b - a == 1.0);
    printf("%d %d\n", b / a == 1.6666666666666667, a < b);
    double e = 1e3;
    double h = 1.5e-1;
    double d = .25;
    printf("%d %d %d\n", e == 1000.0, h == 0.15, d + d == 0.5);
    double lg = 2.0L;
    printf("%d\n", lg == 2.0);
    float f = 0.5f;
    float f2 = 1.5f;
    printf("%d %d\n", f + f == 1.0f, f2 - f == 1.0f);
    int t = 0;
    float x = 0.0f;
    while (x < 1.0f) {
        x = x + 0.25f;
        t++;
    }
    printf("%d %d\n", t, x == 1.0f);
    return 0;
}
