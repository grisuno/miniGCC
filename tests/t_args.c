#include <stdio.h>

int main(int argc, char **argv) {
    printf("%d\n", argc);
    if (argc > 1) printf("%s\n", argv[1]);
    if (argc > 2) printf("%s\n", argv[2]);
    if (argc > 1) printf("%d\n", argv[1][0] == 104);
    return 0;
}
