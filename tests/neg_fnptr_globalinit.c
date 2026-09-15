long add2(long a, long b) {
    return a + b;
}

long (*g)(long, long) = add2;

int main(void) {
    return 0;
}
