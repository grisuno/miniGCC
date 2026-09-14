#include <stdio.h>

enum Color {
    RED,
    GREEN = 5,
    BLUE
};

enum Single {
    ONLY = 42
};

int main(void) {
    printf("%d %d %d\n", RED, GREEN, BLUE);
    printf("%d\n", ONLY);
    int c = GREEN;
    printf("%d\n", c + BLUE);
    int arr[7];
    arr[0] = RED;
    arr[6] = BLUE;
    printf("%d %d\n", arr[0], arr[6]);
    if (c == GREEN) printf("green\n");
    return 0;
}
