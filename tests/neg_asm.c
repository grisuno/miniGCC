int main(void) {
    long x = 1;
    __asm__ volatile("mov %0, %%rax" : "=z"(x));
    return 0;
}
