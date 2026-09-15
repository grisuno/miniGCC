int main(void) {
    __builtin_va_list ap;
    __builtin_va_start(ap, ap);
    __builtin_va_end(ap);
    return 0;
}
