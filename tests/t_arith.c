#include <stdio.h>

int main(void) {
    int a = 2 + 3 * 4;
    int b = (2 + 3) * 4;
    int c = 100 / 7;
    int d = 100 % 7;
    int e = 0 - 17;
    int f = 0 - e * 2;
    int g = 1 << 10;
    int h = 1024 >> 3;
    int i = 255 & 15;
    int j = 240 | 15;
    int k = 255 ^ 170;
    int m = ~0;
    int n = 7 / 2;
    int o = 0 - 7 / 2;
    int p = 0 - 7 % 2;
    printf("%d %d %d\n", a, b, c);
    printf("%d %d %d\n", d, e, f);
    printf("%d %d %d\n", g, h, i);
    printf("%d %d %d\n", j, k, n);
    printf("%d %d\n", o, p);
    printf("%d\n", m == 0 - 1);
    return 0;
}
