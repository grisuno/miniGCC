#include <stdio.h>

int main(void) {
    printf("[%s]\n", "A\101");
    printf("[%s]\n", "\101");
    printf("[%s]\n", "\12");
    printf("[%s]\n", "\1");
    printf("[%s]\n", "X\101Y");
    printf("[%s]\n", "\x41");
    printf("[%d]\n", '\101');
    printf("[%d]\n", '\12');
    return 0;
}
