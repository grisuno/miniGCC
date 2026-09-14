#include <stdio.h>

int main(void) {
    int sum = 0;
    int i;
    for (i = 0; i < 10; i++) sum += i;
    printf("%d\n", sum);
    int prod = 1;
    int j;
    for (j = 10; j > 0; j -= 2) prod *= j;
    printf("%d\n", prod);
    int c = 0;
    int k;
    for (k = 0; k < 100; k++) {
        if (k == 3) continue;
        if (k == 6) break;
        c++;
    }
    printf("%d\n", c);
    int nest = 0;
    int a;
    int b;
    for (a = 0; a < 4; a++)
        for (b = 0; b < 4; b++)
            nest++;
    printf("%d\n", nest);
    return 0;
}
