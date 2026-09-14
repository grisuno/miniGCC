#include <stdio.h>

int main(void) {
    int i = 0;
    goto fwd;
back:
    i += 10;
    if (i >= 30) goto end;
    goto back;
fwd:
    i += 1;
    goto back;
end:
    printf("%d\n", i);
    goto skip;
    printf("bad\n");
skip:
    printf("ok\n");
    return 0;
}
