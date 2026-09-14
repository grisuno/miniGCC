#include <stdio.h>

int main(void) {
    int i = 0;
    int sum = 0;
    while (i < 10) {
        i++;
        if (i % 2 == 0) continue;
        if (i > 7) break;
        sum += i;
    }
    printf("%d %d\n", i, sum);
    int n = 5;
    int fact = 1;
    while (n > 1) {
        fact *= n;
        n--;
    }
    printf("%d\n", fact);
    while (0) printf("bad\n");
    printf("done\n");
    return 0;
}
