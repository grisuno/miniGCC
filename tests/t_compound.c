#include <stdio.h>

int main(void) {
    int m = 10;
    m *= 3;
    m /= 2;
    m %= 4;
    printf("%d\n", m);
    int b = 0xF0;
    b &= 0x3C;
    b |= 0x03;
    b ^= 0xFF;
    printf("%d\n", b);
    int s = 1;
    s <<= 4;
    s >>= 2;
    printf("%d\n", s);
    int a = 5;
    a += 10;
    a -= 3;
    printf("%d\n", a);
    char c = 100;
    c += 10;
    c *= 2;
    printf("%d\n", c);
    int arr[2];
    arr[0] = 7;
    arr[0] *= 6;
    arr[1] = 20;
    arr[1] /= 4;
    printf("%d %d\n", arr[0], arr[1]);
    return 0;
}
