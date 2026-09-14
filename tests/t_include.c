#include <stdio.h>
#include "t_outer_h.h"
#include "t_outer_h.h"

int main(void) {
    printf("%d %d %d\n", INNER_VAL, OUTER_VAL, inner_add(40, 2));
    return 0;
}
