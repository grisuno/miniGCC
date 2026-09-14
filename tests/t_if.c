#include <stdio.h>

int grade(int s) {
    if (s >= 90) return 1;
    else if (s >= 70) return 2;
    else if (s >= 50) return 3;
    else return 4;
}

int main(void) {
    int i = 0;
    printf("%d %d %d\n", grade(95), grade(80), grade(60));
    printf("%d\n", grade(10));
    if (i == 0) printf("zero\n");
    else printf("nonzero\n");
    if (i != 0) printf("bad\n");
    else if (i == 0) printf("good\n");
    else printf("bad\n");
    if (1) if (0) printf("bad\n");
    else printf("nested\n");
    return 0;
}
