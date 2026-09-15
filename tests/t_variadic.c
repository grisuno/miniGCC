#include <stdio.h>

int putchar(int c);

void mini_puts(const char *s) {
    while (*s) {
        putchar(*s);
        s++;
    }
}

void mini_kprintf(const char *fmt, ...) {
    __builtin_va_list ap;
    __builtin_va_start(ap, fmt);
    while (*fmt) {
        if (*fmt == '%') {
            fmt++;
            if (*fmt == 'd') {
                long v = __builtin_va_arg(ap, long);
                if (v < 0) {
                    putchar(45);
                    v = 0 - v;
                }
                if (v == 0) putchar(48);
                if (v >= 10) {
                    long q = v / 10;
                    if (q >= 10) putchar(48 + q / 10);
                    putchar(48 + q % 10);
                }
                if (v > 0) putchar(48 + v % 10);
            } else if (*fmt == 's') {
                char *s = __builtin_va_arg(ap, char *);
                mini_puts(s);
            } else if (*fmt == '%') {
                putchar(37);
            }
            fmt++;
        } else {
            putchar(*fmt);
            fmt++;
        }
    }
    __builtin_va_end(ap);
}

long vsum(int n, ...) {
    __builtin_va_list ap;
    long total = 0;
    int i = 0;
    __builtin_va_start(ap, n);
    while (i < n) {
        total += __builtin_va_arg(ap, long);
        i++;
    }
    __builtin_va_end(ap);
    return total;
}

int main(void) {
    long a = 42;
    long b = 0 - 7;
    long c1 = 1;
    long c2 = 2;
    long c3 = 3;
    long c4 = 4;
    mini_kprintf("num=%d str=%s pct=%% neg=%d zero=%d\n", a, "hi", b, 0L);
    mini_kprintf("%d %d %d %d\n", c1, c2, c3, c4);
    printf("%d %d\n", vsum(3, 10L, 20L, 30L), vsum(1, 99L));
    return 0;
}
