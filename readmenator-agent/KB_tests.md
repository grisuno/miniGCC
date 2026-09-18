# Subsystem: tests

## tests/neg_asm.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_asm2.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_asm3.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_asm_ds.c
- Layer: testing
- Language: c
- Symbols:
  - `sum_d5` (function, line 1) `long sum_d5(long d, long a, long b, long c, long e, long f)`
  - `main` (function, line 8) `int main(void)`

## tests/neg_attr.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/neg_comment.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_error.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 2) `int main(void)`

## tests/neg_float.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_fnptr.c
- Layer: testing
- Language: c
- Symbols:
  - `add2` (function, line 3) `long add2(long a, long b)`
  - `main` (function, line 7) `int main(void)`

## tests/neg_fnptr_call.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/neg_fnptr_cmp.c
- Layer: testing
- Language: c
- Symbols:
  - `add2` (function, line 3) `long add2(long a, long b)`
  - `mul2` (function, line 7) `long mul2(long a, long b)`
  - `main` (function, line 11) `int main(void)`

## tests/neg_fnptr_cmp0.c
- Layer: testing
- Language: c
- Symbols:
  - `add2` (function, line 3) `long add2(long a, long b)`
  - `main` (function, line 7) `int main(void)`

## tests/neg_fnptr_globalinit.c
- Layer: testing
- Language: c
- Symbols:
  - `add2` (function, line 1) `long add2(long a, long b)`
  - `main` (function, line 7) `int main(void)`

## tests/neg_fnptr_tern.c
- Layer: testing
- Language: c
- Symbols:
  - `add2` (function, line 3) `long add2(long a, long b)`
  - `main` (function, line 7) `int main(void)`

## tests/neg_funmacro.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`
  - `ADD` (macro, line 2) `#define ADD(a, b)`

## tests/neg_hex.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/neg_member.c
- Layer: testing
- Language: c
- Symbols:
  - `A` (struct, line 1)
  - `main` (function, line 5) `int main(void)`

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
  - `main` (function, line 3) `int main(void)`

## tests/neg_va.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 1) `int main(void)`

## tests/t_args.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(int argc, char **argv)`

## tests/t_args7.c
- Layer: testing
- Language: c
- Symbols:
  - `sum7` (function, line 3) `long sum7(long a, long b, long c, long d, long e, long f, long g)`
  - `sum8` (function, line 7) `long sum8(long a, long b, long c, long d, long e, long f, long g, long h)`
  - `mix8` (function, line 11) `long mix8(long a, long b, long c, long d, long e, long f, long g, long h)`
  - `main` (function, line 16) `int main(void)`

## tests/t_arith.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_arrays.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_asm.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 5) `int main(void)`

## tests/t_asm3.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 6) `int main(void)`

## tests/t_asm_ds.c
- Layer: testing
- Language: c
- Symbols:
  - `via_d` (function, line 4) `long via_d(long x)`
  - `via_s` (function, line 10) `long via_s(long x)`
  - `add_ds` (function, line 16) `long add_ds(long a, long b)`
  - `ret_d` (function, line 22) `long ret_d(long x)`
  - `ret_s` (function, line 28) `long ret_s(long x)`
  - `ret_di` (function, line 34) `int ret_di(void)`
  - `ret_dc` (function, line 40) `char ret_dc(void)`
  - `ret_ds` (function, line 46) `int16_t ret_ds(void)`
  - `ret_dw` (function, line 52) `int32_t ret_dw(void)`
  - `main` (function, line 58) `int main(void)`

## tests/t_attr.c
- Layer: testing
- Language: c
- Symbols:
  - `limit` (type_alias, line 3) `typedef struct __attribute__((packed)) { uint16_t limit;`
  - `__attribute__` (function, line 4) `typedef struct __attribute__((packed))`
  - `__attribute__` (function, line 12) `__attribute__((always_inline)) static inline int sq(int x)`
  - `ksetjmp` (function, line 17) `int ksetjmp(long buf)`
  - `knoreturn` (function, line 22) `void knoreturn(void)`
  - `main` (function, line 25) `int main(void)`

## tests/t_chained.c
- Layer: testing
- Language: c
- Symbols:
  - `A` (struct, line 3)
  - `B` (struct, line 7)
  - `C` (struct, line 12)
  - `main` (function, line 17) `int main(void)`

## tests/t_comma.c
- Layer: testing
- Language: c
- Symbols:
  - `add` (function, line 3) `int add(int a, int b)`
  - `main` (function, line 5) `int main(void)`

## tests/t_compound.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_dowhile.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_elif.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 49) `int main(void)`
  - `V` (macro, line 3) `#define V`

## tests/t_enum.c
- Layer: testing
- Language: c
- Symbols:
  - `Color` (enum, line 3)
  - `Single` (enum, line 9)
  - `main` (function, line 13) `int main(void)`

## tests/t_enumtype.c
- Layer: testing
- Language: c
- Symbols:
  - `E` (enum, line 3)
  - `pick` (function, line 5) `enum E pick(enum E e)`
  - `main` (function, line 7) `int main(void)`

## tests/t_fcast.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_float.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_fnptr.c
- Layer: testing
- Language: c
- Symbols:
  - `ops_t` (struct, line 15)
  - `add2` (function, line 3) `long add2(long a, long b)`
  - `mul2` (function, line 7) `long mul2(long a, long b)`
  - `apply2` (function, line 11) `long apply2(long (*f)(long, long), long x, long y)`
  - `run_op` (function, line 22) `long run_op(ops_t *o, long x, long y)`
  - `main` (function, line 26) `int main(void)`

## tests/t_for.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_globinit.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 8) `int main(void)`

## tests/t_goto.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_hexoct.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_if.c
- Layer: testing
- Language: c
- Symbols:
  - `grade` (function, line 3) `int grade(int s)`
  - `main` (function, line 10) `int main(void)`

## tests/t_include.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 5) `int main(void)`
- Depends on: `tests/t_outer_h.h`

## tests/t_inline.c
- Layer: testing
- Language: c
- Symbols:
  - `icube` (function, line 4) `static inline int icube(int x)`
  - `idbl` (function, line 8) `__inline__ static int idbl(int x)`
  - `iinc` (function, line 12) `__inline static int iinc(int x)`
  - `main` (function, line 16) `int main(void)`
- Depends on: `tests/t_inline_h.h`

## tests/t_inline_h.h
- Layer: testing
- Language: h
- Symbols:
  - `isq` (function, line 4) `static inline int isq(int x)`
  - `T_INLINE_H` (macro, line 2) `#define T_INLINE_H`
- Imported by: `tests/t_inline.c`

## tests/t_inner_h.h
- Layer: testing
- Language: h
- Symbols:
  - `inner_add` (function, line 6) `static inline int inner_add(int a, int b)`
  - `T_INNER_H` (macro, line 2) `#define T_INNER_H`
  - `INNER_VAL` (macro, line 4) `#define INNER_VAL`
- Imported by: `tests/t_outer_h.h`

## tests/t_logic.c
- Layer: business_logic
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_longlong.c
- Layer: testing
- Language: c
- Symbols:
  - `u64` (type_alias, line 2) `typedef unsigned long long u64;`
  - `s64` (type_alias, line 4) `typedef long long s64;`
  - `bump` (function, line 6) `u64 bump(u64 x)`
  - `negate` (function, line 10) `s64 negate(s64 x)`
  - `add64` (function, line 14) `unsigned long long add64(unsigned long long a, unsigned long long b)`
  - `main` (function, line 20) `int main(void)`

## tests/t_macros.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 10) `int main(void)`
  - `KONST` (macro, line 3) `#define KONST`
  - `SHIFTED` (macro, line 4) `#define SHIFTED`
  - `HEXED` (macro, line 5) `#define HEXED`
  - `SUMMED` (macro, line 6) `#define SUMMED`
  - `NEGD` (macro, line 7) `#define NEGD`
  - `SZ` (macro, line 8) `#define SZ`

## tests/t_octesc.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_outer_h.h
- Layer: testing
- Language: h
- Symbols:
  - `T_OUTER_H` (macro, line 2) `#define T_OUTER_H`
  - `OUTER_VAL` (macro, line 6) `#define OUTER_VAL`
- Depends on: `tests/t_inner_h.h`
- Imported by: `tests/t_include.c`

## tests/t_pointers.c
- Layer: testing
- Language: c
- Symbols:
  - `bump` (function, line 3) `void bump(int *p)`
  - `main` (function, line 7) `int main(void)`

## tests/t_recursion.c
- Layer: testing
- Language: c
- Symbols:
  - `fib` (function, line 3) `int fib(int n)`
  - `fact` (function, line 8) `int fact(int n)`
  - `main` (function, line 13) `int main(void)`

## tests/t_regauto.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_scope.c
- Layer: testing
- Language: c
- Symbols:
  - `touch` (function, line 7) `void touch(void)`
  - `main` (function, line 12) `int main(void)`

## tests/t_sizeof.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_static.c
- Layer: testing
- Language: c
- Symbols:
  - `counter` (function, line 3) `int counter(void)`
  - `adder` (function, line 9) `int adder(int v)`
  - `same_name` (function, line 15) `int same_name(void)`
  - `main` (function, line 21) `int main(void)`

## tests/t_stdint.c
- Layer: infrastructure
- Language: c
- Symbols:
  - `idtr_t` (struct, line 4)
  - `loads_u8` (function, line 22) `uint8_t loads_u8(uint8_t v)`
  - `loads_s16` (function, line 26) `int16_t loads_s16(int16_t v)`
  - `loads_u32` (function, line 30) `uint32_t loads_u32(uint32_t v)`
  - `add_shorts` (function, line 34) `short add_shorts(short a, short b)`
  - `main` (function, line 38) `int main(void)`

## tests/t_strings.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main(void)`

## tests/t_struct.c
- Layer: testing
- Language: c
- Symbols:
  - `Point` (struct, line 3)
  - `manhattan` (function, line 10) `int manhattan(Point *p)`
  - `main` (function, line 18) `int main(void)`

## tests/t_struct_ul.c
- Layer: testing
- Language: c
- Symbols:
  - `R` (struct, line 3)
  - `main` (function, line 13) `int main(void)`

## tests/t_switch.c
- Layer: testing
- Language: c
- Symbols:
  - `classify` (function, line 3) `int classify(int v)`
  - `main` (function, line 14) `int main(void)`

## tests/t_sync.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 6) `int main(void)`

## tests/t_tagstruct.c
- Layer: testing
- Language: c
- Symbols:
  - `P` (struct, line 3)
  - `dist` (function, line 10) `int dist(struct P *p)`
  - `main` (function, line 12) `int main(void)`

## tests/t_typedef.c
- Layer: testing
- Language: c
- Symbols:
  - `Pair` (struct, line 9)
  - `myint` (type_alias, line 2) `typedef int myint;`
  - `main` (function, line 16) `int main(void)`

## tests/t_union.c
- Layer: testing
- Language: c
- Symbols:
  - `In` (struct, line 13)
  - `Out` (struct, line 18)
  - `U` (union, line 3)
  - `main` (function, line 23) `int main(void)`

## tests/t_unsigned.c
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
- Layer: infrastructure
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
