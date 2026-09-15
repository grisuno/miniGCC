int main(void) {
    long a = 0;
    long b = 0;
    __asm__ volatile("nop" : "=a"(a), "=a"(b));
    return 0;
}
