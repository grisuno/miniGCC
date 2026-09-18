#include <stdio.h>

int counter(void) {
    static int n = 0;
    n = n + 1;
    return n;
}

int adder(int v) {
    static int total = 10;
    total = total + v;
    return total;
}

int same_name(void) {
    static int n = 100;
    n = n + 1;
    return n;
}

int main(void) {
    printf("[%d]\n", counter());
    printf("[%d]\n", counter());
    printf("[%d]\n", counter());
    printf("[%d]\n", adder(5));
    printf("[%d]\n", adder(5));
    printf("[%d]\n", same_name());
    printf("[%d]\n", counter());
    static int m;
    printf("[%d]\n", m);
    m = 7;
    printf("[%d]\n", m);
    static char c = 65;
    printf("[%d]\n", c);
    return 0;
}
