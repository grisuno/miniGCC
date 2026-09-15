#include <stdio.h>

long ctr = 0;
long flag = 0;

int main(void) {
    long a = 0;
    long b = 0;
    a = __sync_fetch_and_add(&ctr, 5);
    b = __sync_fetch_and_add(&ctr, 3);
    printf("%d %d %d\n", a, b, ctr);
    long old = __sync_lock_test_and_set(&flag, 1);
    printf("%d %d\n", old, flag);
    old = __sync_lock_test_and_set(&flag, 0);
    printf("%d %d\n", old, flag);
    __sync_lock_release(&flag);
    printf("%d\n", flag);
    long arr[2];
    arr[0] = 10;
    arr[1] = 20;
    long r = __sync_fetch_and_add(&arr[1], 5) + 1;
    printf("%d %d\n", r, arr[1]);
    long cell = 7;
    long *p = &cell;
    printf("%d\n", __sync_fetch_and_add(p, 8));
    printf("%d\n", cell);
    __sync_synchronize();
    printf("fence\n");
    return 0;
}
