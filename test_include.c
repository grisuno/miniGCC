#include <stdio.h>
#include "my_library.h"

int main(void) {
    printf("Compilation successful! The compiler includes files correctly.\n");
    greet();
    return 0;
}

void greet(void) {
    printf("Hello from my_library.h and main.c\n");
}
