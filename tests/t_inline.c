#include <stdio.h>
#include "t_inline_h.h"

static inline int icube(int x) {
    return x * x * x;
}

__inline__ static int idbl(int x) {
    return x + x;
}

__inline static int iinc(int x) {
    return x + 1;
}

int main(void) {
    printf("%d %d %d\n", isq(6), icube(3), idbl(20));
    printf("%d\n", iinc(41));
    return 0;
}
