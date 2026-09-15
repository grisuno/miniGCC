#include <stdio.h>

int main(void) {
    int a[5];
    int i;
    for (i = 0; i < 5; i++) a[i] = i * i;
    printf("%d %d %d\n", a[0], a[2], a[4]);
    int b[3];
    b[0] = 1;
    b[1] = 2;
    b[2] = 3;
    int s = b[0] + b[1] + b[2];
    printf("%d\n", s);
    int neg[3];
    neg[0] = 0 - 9;
    neg[1] = 7;
    neg[2] = 0 - 1;
    printf("%d %d %d\n", neg[0], neg[2], neg[0] < 0);
    int m[2][3];
    m[0][0] = 1;
    m[0][1] = 2;
    m[0][2] = 3;
    m[1][0] = 4;
    m[1][1] = 5;
    m[1][2] = 6;
    printf("%d %d\n", m[0][2], m[1][1]);
    int t = 0;
    for (i = 0; i < 2; i++) {
        int j;
        for (j = 0; j < 3; j++) t += m[i][j];
    }
    printf("%d\n", t);
    char s2[4];
    s2[0] = 104;
    s2[1] = 105;
    s2[2] = 33;
    s2[3] = 0;
    printf("%s\n", s2);
    return 0;
}
