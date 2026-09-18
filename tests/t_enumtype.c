#include <stdio.h>

enum E { EA = 5, EB, EC };

enum E pick(enum E e) { return e; }

int main(void) {
    enum E e;
    e = EB;
    printf("[%d]\n", e);
    printf("[%d]\n", pick(EC));
    e = 42;
    printf("[%d]\n", e);
    printf("[%d %d]\n", EA, EC);
    return 0;
}
