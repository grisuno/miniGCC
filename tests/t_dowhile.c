#include <stdio.h>

int main(void) {
    int i = 0;
    int sum = 0;
    do {
        sum += i;
        i++;
    } while (i < 5);
    printf("%d %d\n", sum, i);
    int once = 0;
    do {
        once = 7;
    } while (0);
    printf("%d\n", once);
    return 0;
}
