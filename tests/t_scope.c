#include <stdio.h>

int g = 100;
const int K = 7;
static int hidden = 0;

void touch(void) {
    hidden++;
    g += hidden;
}

int main(void) {
    printf("%d %d\n", g, K);
    int g = 1;
    printf("%d\n", g);
    {
        int g = 2;
        printf("%d\n", g);
    }
    printf("%d\n", g);
    touch();
    touch();
    touch();
    printf("%d %d\n", g, hidden);
    const int local = 33;
    printf("%d\n", local);
    return 0;
}
