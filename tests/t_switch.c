#include <stdio.h>

int classify(int v) {
    switch (v) {
        case 1: return 10;
        case 2:
        case 3: return 20;
        case 4: break;
        default: return 99;
    }
    return 40;
}

int main(void) {
    printf("%d %d %d\n", classify(1), classify(2), classify(3));
    printf("%d %d\n", classify(4), classify(50));
    int i = 0;
    switch (i) {
        case 0:
            i = 5;
            break;
    }
    printf("%d\n", i);
    switch (7) {
        case 7: printf("seven\n"); break;
        default: printf("bad\n"); break;
    }
    return 0;
}
