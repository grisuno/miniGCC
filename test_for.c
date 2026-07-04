#include <stdio.h>

int main() {
    for (;;) {
        if (getchar() == '#') {
            continue;
        } else {
            break;
        }
    }
    return 0;
}