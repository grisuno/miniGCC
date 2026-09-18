#include <stdio.h>

int main(void) {
    register int r = 5;
    auto int a = 6;
    register int q;
    q = r + a;
    printf("[%d %d %d]\n", r, a, q);
    {
        auto int b = 2;
        register int c = 3;
        printf("[%d]\n", b * c);
    }
    return 0;
}
