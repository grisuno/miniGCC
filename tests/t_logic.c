#include <stdio.h>

int main(void) {
    int t = 1;
    int f = 0;
    printf("%d %d %d\n", t && t, t && f, f || f);
    printf("%d %d %d\n", !t, !f, !5);
    printf("%d %d %d\n", 3 < 4, 4 < 4, 5 <= 5);
    printf("%d %d %d\n", 4 > 3, 4 >= 5, 3 == 3);
    printf("%d %d %d\n", 3 != 3, 3 != 4, (5 > 3) && (2 < 4));
    printf("%d %d %d\n", t ? 10 : 20, f ? 10 : 20, 2 + 2 == 4 ? 1 : 0);
    printf("%d %d\n", (t || f) && (!f), 0 - 3 < 2);
    return 0;
}
