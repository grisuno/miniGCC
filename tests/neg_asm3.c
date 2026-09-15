int main(void) {
    long a = 1;
    __asm__ volatile("nop" : "+r"(a));
    return 0;
}
