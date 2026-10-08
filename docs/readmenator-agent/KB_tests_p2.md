# Subsystem: tests (page 2 of 2)
Previous: [KB_tests.md](KB_tests.md)

## tests/t_union.c
- Layer: testing
- Language: c
- Symbols:
  - `In` (struct, line 13)
  - `Out` (struct, line 18)
  - `U` (union, line 3)
  - `main` (function, line 23) `int main(void)`

## tests/t_unsigned.c
- Doc: u64: include <stdio.h>
- Layer: testing
- Language: c
- Symbols:
  - `ureg_t` (struct, line 17)
  - `u64` (type_alias, line 2) `typedef unsigned long u64;`
  - `u32` (type_alias, line 4) `typedef unsigned int u32;`
  - `u8` (type_alias, line 94) `typedef unsigned char u8;`
  - `u8b` (type_alias, line 96) `typedef u8 u8b;`
  - `uword` (type_alias, line 108) `typedef u32 uword;`
  - `ureg2` (type_alias, line 114) `typedef ureg_t ureg2;`
  - `bump` (function, line 9) `unsigned long bump(unsigned long x)`
  - `narrow` (function, line 13) `unsigned int narrow(unsigned int x)`
  - `reg_base` (function, line 23) `unsigned long reg_base(ureg_t *r)`
  - `main` (function, line 27) `int main(void)`

## tests/t_variadic.c
- Layer: testing
- Language: c
- Symbols:
  - `mini_puts` (function, line 5) `void mini_puts(const char *s)`
  - `mini_kprintf` (function, line 12) `void mini_kprintf(const char *fmt, ...)`
  - `vsum` (function, line 46) `long vsum(int n, ...)`
  - `main` (function, line 59) `int main(void)`
  - `putchar` (function, line 3) `int putchar(int c);`

## tests/t_while.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

