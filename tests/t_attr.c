#include <stdio.h>
#include <stdint.h>

typedef struct __attribute__((packed)) {
    uint16_t limit;
    uint64_t base;
} idtr_t;

static long arr[4] __attribute__((aligned(16)));
int g __attribute__((aligned(16)));

__attribute__((always_inline)) static inline int sq(int x) {
    return x * x;
}

int ksetjmp(long buf) __attribute__((returns_twice));
int ksetjmp(long buf) {
    return (int)buf;
}

void knoreturn(void) __attribute__((noreturn));
void knoreturn(void) {
}

int main(void) {
    idtr_t id;
    id.limit = 100;
    id.base = 200;
    arr[0] = 7;
    g = 42;
    printf("%d %d %d %d %d\n", id.limit, id.base == 200, arr[0], g, sq(6));
    printf("%d\n", ksetjmp(3));
    return 0;
}
