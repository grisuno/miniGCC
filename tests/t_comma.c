#include <stdio.h>

int add(int a, int b) { return a + b; }

int main(void) {
    int i = 0;
    int j = 0;
    i = (1, 2, 3);
    printf("[%d]\n", i);
    printf("[%d]\n", add((1, 2), (3, 4)));
    for (i = 0, j = 10; i < 3; i++, j--) {
        printf("[%d %d]\n", i, j);
    }
    i = 0;
    while ((i++, i < 3)) {
        printf("[%d]\n", i);
    }
    if ((j = 5, j > 3)) printf("[%d]\n", j);
    i = (7, 8);
    printf("[%d]\n", i);
    return 0;
}
