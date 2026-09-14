#include <stdio.h>

int fib(int n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

int fact(int n) {
    if (n <= 1) return 1;
    return n * fact(n - 1);
}

int main(void) {
    printf("%d %d\n", fib(15), fact(7));
    printf("%d %d\n", fib(0), fib(1));
    return 0;
}
