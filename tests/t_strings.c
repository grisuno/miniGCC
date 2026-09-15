#include <stdio.h>

int main(void) {
    printf("hello\n");
    printf("tab\there\n");
    printf("quote\"q\"\n");
    printf("slash\\back\n");
    printf("A%cC\n", 66);
    printf("%d %d %d\n", 65, '\n', '\0');
    printf("%d %d\n", '\x41', '\101');
    printf("%d %d\n", '0', 'z');
    char *s = "world";
    printf("%s %s\n", "hi", s);
    printf("%s\n", "con" "cat");
    printf("x" "y" "z\n");
    return 0;
}
