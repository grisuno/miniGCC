#include <stdio.h>

void bump(int *p) {
    *p = *p + 1;
}

int main(void) {
    int x = 10;
    int *p = &x;
    printf("%d %d\n", x, *p);
    *p = 42;
    printf("%d\n", x);
    bump(&x);
    printf("%d\n", x);
    int arr[3];
    arr[0] = 5;
    arr[1] = 6;
    arr[2] = 7;
    int *q = arr;
    printf("%d %d %d\n", *q, q[1], q[2]);
    printf("%d\n", *(q + 0));
    char s[3];
    s[0] = 65;
    s[1] = 66;
    s[2] = 0;
    char *cp = s;
    printf("%d %d\n", *cp, *(cp + 1));
    cp++;
    printf("%d\n", *cp);
    *cp = 67;
    printf("%s\n", s);
    return 0;
}
