int main(void) {
    int x = 1;
    __asm__ volatile("mov %0, %%eax" : "=r"(x));
    return x;
}
