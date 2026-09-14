#include <stdio.h>

#define KONST 40
#define SHIFTED (1 << 4)
#define HEXED 0x10
#define SUMMED (KONST + 2)
#define NEGD (0 - 3)
#define SZ 4

int main(void) {
    printf("%d %d %d\n", KONST, SHIFTED, HEXED);
    printf("%d %d\n", SUMMED, NEGD);
    int arr[SZ];
    arr[0] = 7;
    arr[3] = 9;
    printf("%d %d\n", arr[0], arr[3]);
#ifdef KONST
    printf("defined\n");
#else
    printf("bad\n");
#endif
#ifndef MISSING_MACRO
    printf("missing-ok\n");
#else
    printf("bad\n");
#endif
#if 1
    printf("if1\n");
#endif
#if 0
    printf("bad\n");
#endif
    return 0;
}
