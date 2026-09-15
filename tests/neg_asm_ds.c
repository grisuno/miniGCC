long sum_d5(long d, long a, long b, long c, long e, long f) {
    long r;
    __asm__ volatile("movq %1, %0; addq %2, %0; addq %3, %0; addq %4, %0; addq %5, %0; addq %6, %0"
        : "=&r"(r) : "D"(d), "r"(a), "r"(b), "r"(c), "r"(e), "r"(f));
    return r;
}

int main(void) {
    printf("%ld\n", sum_d5(1, 2, 3, 4, 5, 6));
    return 0;
}
