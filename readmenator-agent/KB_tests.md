# Subsystem: tests

## tests/neg_asm.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`
  - `volatile` (function, line 3) `__asm__ volatile("mov %0, %%rax" : "=z"(x));`

## tests/neg_asm2.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`
  - `volatile` (function, line 4) `__asm__ volatile("nop" : "=a"(a), "=a"(b));`

## tests/neg_asm3.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`
  - `volatile` (function, line 3) `__asm__ volatile("nop" : "+r"(a));`

## tests/neg_asm_ds.c
- Layer: testing
- Language: c
- Symbols:
  - `sum_d5` (function, line 1) `long sum_d5(long d, long a, long b, long c, long e, long f)`
  - `main` (function, line 7) `int main(void)`
  - `printf` (function, line 9) `printf("%ld\n", sum_d5(1, 2, 3, 4, 5, 6));`

## tests/neg_attr.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`

## tests/neg_comment.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_float.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_fnptr.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `add2` (function, line 2) `long add2(long a, long b)`
  - `main` (function, line 6) `int main(void)`
  - `long` (function, line 8) `long (*f)(long, long);`
  - `printf` (function, line 12) `printf("%ld\n", x);`

## tests/neg_fnptr_call.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 8) `printf("%ld\n", y);`

## tests/neg_fnptr_cmp.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `add2` (function, line 2) `long add2(long a, long b)`
  - `mul2` (function, line 6) `long mul2(long a, long b)`
  - `main` (function, line 10) `int main(void)`
  - `long` (function, line 12) `long (*f)(long, long);`
  - `printf` (function, line 18) `printf("%ld\n", r);`

## tests/neg_fnptr_cmp0.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `add2` (function, line 2) `long add2(long a, long b)`
  - `main` (function, line 6) `int main(void)`
  - `long` (function, line 8) `long (*f)(long, long);`
  - `printf` (function, line 12) `printf("%ld\n", r);`

## tests/neg_fnptr_globalinit.c
- Layer: testing
- Language: c
- Symbols:
  - `add2` (function, line 1) `long add2(long a, long b)`
  - `main` (function, line 6) `int main(void)`

## tests/neg_fnptr_tern.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `add2` (function, line 2) `long add2(long a, long b)`
  - `main` (function, line 6) `int main(void)`
  - `long` (function, line 8) `long (*f)(long, long);`
  - `printf` (function, line 14) `printf("%ld\n", r);`

## tests/neg_hex.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_octal.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_typedef_arrcont.c
- Layer: testing
- Language: c
- Symbols:
  - `c` (type_alias, line 1) `typedef int b, c[4];`
  - `main` (function, line 2) `int main(void)`

## tests/neg_va.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`
  - `__builtin_va_start` (function, line 3) `__builtin_va_start(ap, ap);`
  - `__builtin_va_end` (function, line 4) `__builtin_va_end(ap);`

## tests/t_args.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(int argc, char **argv)`
  - `printf` (function, line 4) `printf("%d\n", argc);`

## tests/t_args7.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `sum7` (function, line 2) `long sum7(long a, long b, long c, long d, long e, long f, long g)`
  - `sum8` (function, line 6) `long sum8(long a, long b, long c, long d, long e, long f, long g, long h)`
  - `mix8` (function, line 10) `long mix8(long a, long b, long c, long d, long e, long f, long g, long h)`
  - `main` (function, line 15) `int main(void)`
  - `long` (function, line 17) `long (*fp)(long, long, long, long, long, long, long);`
  - `printf` (function, line 18) `printf("%ld\n", sum7(1, 2, 3, 4, 5, 6, 7));`

## tests/t_arith.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 19) `printf("%d %d %d\n", a, b, c);`

## tests/t_arrays.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 7) `printf("%d %d %d\n", a[0], a[2], a[4]);`

## tests/t_asm.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 4) `int main(void)`
  - `volatile` (function, line 6) `__asm__ volatile("nop");`
  - `__asm` (function, line 7) `__asm("nop");`
  - `__asm__` (function, line 8) `__asm__("nop");`
  - `printf` (function, line 11) `printf("%d %d\n", probe, v);`

## tests/t_asm3.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 5) `int main(void)`
  - `volatile` (function, line 9) `__asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi));`
  - `printf` (function, line 10) `printf("%d\n", (lo == 0 && hi == 0) ? 0 : 1);`

## tests/t_asm_ds.c
- Layer: testing
- Doc: include <stdio.h> include <stdint.h>
- Language: c
- Symbols:
  - `via_d` (function, line 3) `long via_d(long x)`
  - `via_s` (function, line 9) `long via_s(long x)`
  - `add_ds` (function, line 15) `long add_ds(long a, long b)`
  - `ret_d` (function, line 21) `long ret_d(long x)`
  - `ret_s` (function, line 27) `long ret_s(long x)`
  - `ret_di` (function, line 33) `int ret_di(void)`
  - `ret_dc` (function, line 39) `char ret_dc(void)`
  - `ret_ds` (function, line 45) `int16_t ret_ds(void)`
  - `ret_dw` (function, line 51) `int32_t ret_dw(void)`
  - `main` (function, line 57) `int main(void)`
  - `volatile` (function, line 6) `__asm__ volatile("movq %1, %0" : "=r"(r) : "D"(x));`
  - `printf` (function, line 59) `printf("%ld\n", via_d(41));`

## tests/t_attr.c
- Layer: testing
- Doc: include <stdio.h> include <stdint.h>
- Language: c
- Symbols:
  - `limit` (type_alias, line 3) `typedef struct __attribute__((packed)) { uint16_t limit;`
  - `__attribute__` (function, line 3) `typedef struct __attribute__((packed))`
  - `__attribute__` (function, line 11) `__attribute__((always_inline)) static inline int sq(int x)`
  - `ksetjmp` (function, line 17) `int ksetjmp(long buf)`
  - `knoreturn` (function, line 22) `void knoreturn(void)`
  - `main` (function, line 24) `int main(void)`
  - `printf` (function, line 31) `printf("%d %d %d %d %d\n", id.limit, id.base == 200, arr[0], g, sq(6));`

## tests/t_compound.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 8) `printf("%d\n", m);`

## tests/t_dowhile.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 10) `printf("%d %d\n", sum, i);`

## tests/t_enum.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `Color` (enum, line 3)
  - `Single` (enum, line 9)
  - `main` (function, line 12) `int main(void)`
  - `printf` (function, line 14) `printf("%d %d %d\n", RED, GREEN, BLUE);`

## tests/t_float.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 6) `printf("%d %d %d\n", a + b == 4.0, a * b == 3.75, b - a == 1.0);`

## tests/t_fnptr.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `ops_t` (struct, line 15)
  - `add2` (function, line 2) `long add2(long a, long b)`
  - `mul2` (function, line 6) `long mul2(long a, long b)`
  - `apply2` (function, line 10) `long apply2(long (*f)(long, long), long x, long y)`
  - `run_op` (function, line 21) `long run_op(ops_t *o, long x, long y)`
  - `main` (function, line 25) `int main(void)`
  - `f` (function, line 12) `return f(x, y);`
  - `long` (function, line 16) `long (*op)(long, long);`
  - `printf` (function, line 31) `printf("%ld\n", f(10, 20));`

## tests/t_for.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 7) `printf("%d\n", sum);`

## tests/t_globinit.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 7) `int main(void)`
  - `printf` (function, line 9) `printf("%d %d %d\n", gscalar, garr[0], garr[3]);`

## tests/t_goto.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 13) `end: printf("%d\n", i);`

## tests/t_hexoct.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 11) `printf("%d %d %d\n", h1, h2, h3);`

## tests/t_if.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `grade` (function, line 2) `int grade(int s)`
  - `main` (function, line 9) `int main(void)`
  - `printf` (function, line 12) `printf("%d %d %d\n", grade(95), grade(80), grade(60));`

## tests/t_include.c
- Layer: testing
- Doc: include <stdio.h> include "t_outer_h.h" include "t_outer_h.h"
- Language: c
- Symbols:
  - `main` (function, line 4) `int main(void)`
  - `printf` (function, line 6) `printf("%d %d %d\n", INNER_VAL, OUTER_VAL, inner_add(40, 2));`
- Depends on: `tests/t_outer_h.h`

## tests/t_inline.c
- Layer: testing
- Doc: include <stdio.h> include "t_inline_h.h"
- Language: c
- Symbols:
  - `icube` (function, line 3) `static inline int icube(int x)`
  - `idbl` (function, line 7) `__inline__ static int idbl(int x)`
  - `iinc` (function, line 11) `__inline static int iinc(int x)`
  - `main` (function, line 15) `int main(void)`
  - `printf` (function, line 17) `printf("%d %d %d\n", isq(6), icube(3), idbl(20));`
- Depends on: `tests/t_inline_h.h`

## tests/t_inline_h.h
- Layer: testing
- Doc: ifndef T_INLINE_H define T_INLINE_H
- Language: h
- Symbols:
  - `isq` (function, line 3) `static inline int isq(int x)`
  - `T_INLINE_H` (macro, line 2) `#define T_INLINE_H`
- Imported by: `tests/t_inline.c`

## tests/t_inner_h.h
- Layer: testing
- Doc: ifndef T_INNER_H define T_INNER_H  define INNER_VAL 111
- Language: h
- Symbols:
  - `inner_add` (function, line 5) `static inline int inner_add(int a, int b)`
  - `T_INNER_H` (macro, line 2) `#define T_INNER_H`
  - `INNER_VAL` (macro, line 3) `#define INNER_VAL`
- Imported by: `tests/t_outer_h.h`

## tests/t_logic.c
- Layer: business_logic
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 6) `printf("%d %d %d\n", t && t, t && f, f || f);`

## tests/t_longlong.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `u64` (type_alias, line 2) `typedef unsigned long long u64;`
  - `s64` (type_alias, line 4) `typedef long long s64;`
  - `bump` (function, line 5) `u64 bump(u64 x)`
  - `negate` (function, line 9) `s64 negate(s64 x)`
  - `add64` (function, line 13) `unsigned long long add64(unsigned long long a, unsigned long long b)`
  - `main` (function, line 19) `int main(void)`
  - `printf` (function, line 26) `printf("%llu\n", a + b);`

## tests/t_macros.c
- Layer: testing
- Doc: include <stdio.h>  define KONST 40 define SHIFTED (1 << 4) define HEXED 0x10 define SUMMED (KONST + 2) define NEGD (0 - 
- Language: c
- Symbols:
  - `main` (function, line 9) `int main(void)`
  - `printf` (function, line 11) `printf("%d %d %d\n", KONST, SHIFTED, HEXED);`
  - `KONST` (macro, line 2) `#define KONST`
  - `SHIFTED` (macro, line 4) `#define SHIFTED`
  - `HEXED` (macro, line 5) `#define HEXED`
  - `SUMMED` (macro, line 6) `#define SUMMED`
  - `NEGD` (macro, line 7) `#define NEGD`
  - `SZ` (macro, line 8) `#define SZ`

## tests/t_outer_h.h
- Layer: testing
- Doc: ifndef T_OUTER_H define T_OUTER_H  include "t_inner_h.h"  define OUTER_VAL (INNER_VAL + 1)  endif
- Language: h
- Symbols:
  - `T_OUTER_H` (macro, line 2) `#define T_OUTER_H`
  - `OUTER_VAL` (macro, line 5) `#define OUTER_VAL`
- Depends on: `tests/t_inner_h.h`
- Imported by: `tests/t_include.c`

## tests/t_pointers.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `bump` (function, line 2) `void bump(int *p)`
  - `main` (function, line 6) `int main(void)`
  - `printf` (function, line 10) `printf("%d %d\n", x, *p);`

## tests/t_recursion.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `fib` (function, line 2) `int fib(int n)`
  - `fact` (function, line 7) `int fact(int n)`
  - `main` (function, line 12) `int main(void)`
  - `printf` (function, line 14) `printf("%d %d\n", fib(15), fact(7));`

## tests/t_scope.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `touch` (function, line 6) `void touch(void)`
  - `main` (function, line 11) `int main(void)`
  - `printf` (function, line 13) `printf("%d %d\n", g, K);`

## tests/t_sizeof.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 4) `printf("%d %d %d\n", sizeof(char), sizeof(float), sizeof(double));`

## tests/t_stdint.c
- Layer: infrastructure
- Doc: include <stdio.h> include <stdint.h>
- Language: c
- Symbols:
  - `idtr_t` (struct, line 4)
  - `loads_u8` (function, line 21) `uint8_t loads_u8(uint8_t v)`
  - `loads_s16` (function, line 25) `int16_t loads_s16(int16_t v)`
  - `loads_u32` (function, line 29) `uint32_t loads_u32(uint32_t v)`
  - `add_shorts` (function, line 33) `short add_shorts(short a, short b)`
  - `main` (function, line 37) `int main(void)`
  - `printf` (function, line 49) `printf("%d %d %d\n", gu8, gi8, gu16);`

## tests/t_strings.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 4) `printf("hello\n");`

## tests/t_struct.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `Point` (struct, line 3)
  - `manhattan` (function, line 9) `int manhattan(Point *p)`
  - `main` (function, line 17) `int main(void)`
  - `printf` (function, line 22) `printf("%d %d\n", pp->x, pp->y);`

## tests/t_struct_ul.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `R` (struct, line 3)
  - `main` (function, line 12) `int main(void)`
  - `printf` (function, line 22) `printf("%lu\n", r.base);`

## tests/t_switch.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `classify` (function, line 2) `int classify(int v)`
  - `main` (function, line 13) `int main(void)`
  - `printf` (function, line 15) `printf("%d %d %d\n", classify(1), classify(2), classify(3));`

## tests/t_sync.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 5) `int main(void)`
  - `printf` (function, line 11) `printf("%d %d %d\n", a, b, ctr);`
  - `__sync_lock_release` (function, line 16) `__sync_lock_release(&flag);`
  - `__sync_synchronize` (function, line 27) `__sync_synchronize();`

## tests/t_typedef.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `Pair` (struct, line 9)
  - `myint` (type_alias, line 2) `typedef int myint;`
  - `main` (function, line 15) `int main(void)`
  - `printf` (function, line 18) `printf("%d\n", shared + 2);`

## tests/t_unsigned.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `ureg_t` (struct, line 17)
  - `u64` (type_alias, line 2) `typedef unsigned long u64;`
  - `u32` (type_alias, line 4) `typedef unsigned int u32;`
  - `u8` (type_alias, line 94) `typedef unsigned char u8;`
  - `u8b` (type_alias, line 96) `typedef u8 u8b;`
  - `uword` (type_alias, line 108) `typedef u32 uword;`
  - `ureg2` (type_alias, line 114) `typedef ureg_t ureg2;`
  - `bump` (function, line 8) `unsigned long bump(unsigned long x)`
  - `narrow` (function, line 12) `unsigned int narrow(unsigned int x)`
  - `reg_base` (function, line 22) `unsigned long reg_base(ureg_t *r)`
  - `main` (function, line 26) `int main(void)`
  - `printf` (function, line 39) `printf("%lu\n", c);`

## tests/t_variadic.c
- Layer: infrastructure
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `mini_puts` (function, line 4) `void mini_puts(const char *s)`
  - `mini_kprintf` (function, line 11) `void mini_kprintf(const char *fmt, ...)`
  - `vsum` (function, line 45) `long vsum(int n, ...)`
  - `main` (function, line 58) `int main(void)`
  - `putchar` (function, line 2) `int putchar(int c);`
  - `__builtin_va_start` (function, line 14) `__builtin_va_start(ap, fmt);`
  - `__builtin_va_end` (function, line 43) `__builtin_va_end(ap);`
  - `printf` (function, line 68) `printf("%d %d\n", vsum(3, 10L, 20L, 30L), vsum(1, 99L));`

## tests/t_while.c
- Layer: testing
- Doc: include <stdio.h>
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`
  - `printf` (function, line 12) `printf("%d %d\n", i, sum);`
