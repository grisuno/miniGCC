#include <stdio.h>

int main(void) {
    int h1 = 0x40;
    int h2 = 0Xff;
    int h3 = 0x40000000L;
    int o1 = 010;
    int o2 = 0777;
    int d1 = 100u;
    int d2 = 200UL;
    printf("%d %d %d\n", h1, h2, h3);
    printf("%d %d\n", o1, o2);
    printf("%d %d\n", d1, d2);
    printf("%d %d\n", 0x10 + 010, 0xFF & 0x0F);
    printf("%d\n", 0x7FFFFFFF);
    switch (0x41) {
        case 0x41: printf("hexcase\n"); break;
        default: printf("bad\n"); break;
    }
    int arr[0x10];
    arr[15] = 123;
    printf("%d\n", arr[15]);
    return 0;
}
