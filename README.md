# MiniGCC - A Minimal Self-Hosting C Compiler for x86-64 Linux

<img width="627" height="551" alt="logo" src="https://github.com/user-attachments/assets/54792e08-5349-4def-a767-2838d7cefd8f" />

![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) [![License: AGPL v3](https://img.shields.io/badge/License-AGPLv3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y2Z73AV)

MiniGCC is an educational, **self-hosting** C compiler that translates a substantial subset of the C language into x86-64 assembly (AT&T syntax) for Linux. It generates standalone ELF executables and is capable of compiling its own source code (bootstrapping).

## Related projects

| Repository | Role |
|------------|------|
| [miniGCC](https://github.com/grisuno/miniGCC) | C compiler: C to x86-64 AT&T assembly |
| [ld](https://github.com/grisuno/ld) | this repository: assembly to a Linux ELF or a CVM module |
| [cvm](https://github.com/grisuno/cvm) | the CVM / cvm2 bytecode interpreter |
| [miniOS](https://github.com/grisuno/miniOS) | the kernel that hosts the whole toolchain |

## Features

### Self-Hosting (Generation 3+)
Fully capable of compiling its own source code to reach complete technical sovereignty. Verified through 3+ generation bootstrapping where the compiler reaches a fixed point (identical output).

### Supported Types
- Primitive types: `int`, `char`, `float`, `double`, `void`
- Fixed-width integers with true 1/2/4/8-byte storage: `int8_t`, `int16_t`,
  `int32_t`, `int64_t`, `uint8_t`, `uint16_t`, `uint32_t`, `uint64_t`,
  `uintptr_t`, `intptr_t`, plus `short` / `unsigned short`. Loads
  sign- or zero-extend to 64 bits, so sub-64 arithmetic, shifts and
  comparisons are exact, unsigned included; stores narrow to the width
- Pointers (single and multi-level)
- Arrays (including 2D arrays)
- Structs with member access (`.` and `->` operators)
- Enums
- Typedefs (including `typedef struct {...} Name` and chained function types)

### Control Flow
- `if` / `else`
- `while` loops
- `for` loops (including complex increment expressions)
- `do`/`while` loops
- `switch` / `case` / `default`
- `break` and `continue`
- `goto` and labels
- `return`

### Operators
- Arithmetic: `+`, `-`, `*`, `/`, `%`
- Comparison: `<`, `<=`, `>`, `>=`, `==`, `!=`
- Logical: `&&`, `||`, `!`
- Bitwise: `&`, `|`, `^`, `~`, `<<`, `>>`
- Assignment: `=`, `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`,
  `<<=`, `>>=`, `++`, `--`
- Ternary: `? :`
- Array subscripting: `arr[i]`
- Struct member access: `s.field` and `ptr->field`
- Pointer dereference: `*ptr`
- Address-of: `&var`
- Comma operator
- `sizeof` operator (expressions and type-names)

### Functions
- Function definitions and calls
- Up to 6 integer/pointer parameters passed via registers (System V AMD64 ABI)
- Variadic definitions (`int kprintf(const char *fmt, ...)`) with
  `va_list` / `__builtin_va_list` and `va_start` / `va_arg` / `va_end`
  (plus the `__builtin_` spellings); every vararg rides a uniform 8-byte slot
- Recursive functions supported
- Proper stack alignment (16-byte) per ABI

### Storage Class & Linkage
- `static` variables (local file scope)
- `extern` declarations (no assembly emission, link-time resolution)
- `inline` / `__inline` / `__inline__` (accepted, always emitted out-of-line)
- `volatile` / `__volatile__` qualifiers (accepted, fully spilled codegen)
- Global variables (`.bss` section, `.globl` exported)

### Inline Assembly
- Basic `asm` (`asm` / `__asm` / `__asm__`, optional `volatile`) in function
  bodies and at top level, emitted verbatim (including multi-line templates
  built from adjacent string literals)
- Extended `asm` with operands: inputs `r a b c d m Nd`, outputs
  `=r =a =b =c =d =m`, `%0`-`%9` / `%%` / `%=` substitution, `memory` / `cc` /
  register clobbers. Anything else is a fail-closed parse error

### Atomic Builtins
- `__sync_fetch_and_add` (`lock xaddq`, returns the old value),
  `__sync_lock_test_and_set` (plain `xchgq`), `__sync_lock_release`
  (store 0), `__sync_synchronize` (`mfence`), with arity checks. 64-bit only,
  matching the 8-byte int model

### Attributes
- `__attribute__` / `__attribute`: `packed` (layout is already packed),
  `aligned(N)` on trailing declarators (emits `.balign N`; locals already
  satisfy it), `noreturn` / `returns_twice` / `always_inline` accepted;
  unknown attributes warn, a non-power-of-two alignment is an error

### Other Features
- Integer literals: decimal, octal `0...` and hex `0x...` (normalized, so
  every consumer keeps working), with `uUlL` suffixes; floats with exponents
  and `fFlL` suffixes (stripped before `.rodata` emission, which GAS accepts)
- String literals and character constants
- Full escape sequences in strings and chars (`\n`, `\t`, `\r`, `\f`, `\v`, `\a`, `\b`, `\0`, `\\`, `\"`, `\'`, `\xNN`, octal `\NNN`)
- Simple macro definitions via `#define`, with constant-expression folding so `#define N (1 << 8)` and `#define CH 'A'` evaluate to real values (not 0)
- Conditional compilation: `#ifdef`, `#ifndef`, `#if`, `#else`, `#endif`
- File inclusion via `#include` (supports both `<>` and `""` styles)
- Global and local variable allocation
- Global initializers: scalar constants, brace lists for arrays, and string
  literals for `char` arrays (which size an unsized array) and for `char *`.
  Uninitialized globals stay in `.bss`; initialized ones go to `.data`. A
  pointer global initialized with a string literal keeps a zero slot and is
  filled in by rip-relative code emitted into `_start`, because the output is
  position independent and carries no load-time relocations.
- Floating-point arithmetic (single and double precision)
- Type casting: `(int)`, `(char)`, `(float)`, `(double)`, `(type*)`
- Two-pass compilation for accurate stack size calculation
- Hash table-based symbol table for O(1) lookups
- Scope management with proper symbol cleanup
- Standalone ELF executables with `_start` entry point (weak symbol, does not conflict with crt1.o)

## Limitations

- Function calls limited to 6 total arguments (fixed plus variadic); no
  stack spill handling
- No support for `long long`, `long double`, or bitfields
- No standard library linkage; programs must use only built-in types and direct system calls
- The compiler uses 8-byte `int` internally but `skip_struct` treats plain
  `int` members as 4 bytes (matching GCC's x86-64 ABI)
- 64-bit `uint64_t` values at or above 2^63 still use signed operations
- `static` locals re-initialize on every entry (no persistence); `static`
  globals persist correctly
- Chained typedefs lose their base size (`typedef unsigned char u8`
  registers size 8); only the predefined stdint names carry exact sizes.
  Typedef'd globals accept no initializer
- Pointer arithmetic and `++`/`--` on multi-byte pointers are unscaled
  (correct only for `char *`); array subscripting scales correctly
- No function pointers
- No unions (parsed but members accumulate in global struct table)
- Global initializers accept constants only: no address-of, no arithmetic on
  symbols, and no nested brace lists for 2D arrays
- Extended `asm` has no read-write (`+`) operands, no `D`/`S` constraints,
  and fixed homes are full-width registers; `char *` globals initialized
  with a string literal only materialize when linked with the sibling `ld`

## Building the Bootstrap (Generation 1)

The compiler itself is a single C file that can be bootstrapped using any standard C compiler:

```bash
make          # same as: gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c
make test     # bootstrap chain (test.sh) + feature suite (test_all.sh)
```

## Bootstrapping & Self-Hosting Verification

To verify the compiler's self-hosting stability, run it through a 3-generation compilation cycle. The generated assembly should reach a fixed point (identical binary output):

```bash
# Generation 2: Compile minigcc.c using the Gen 1 binary
./minigcc minigcc.c > minigccg2.s
as minigccg2.s -o minigccg2.o
gcc -no-pie minigccg2.o -o minigccg2

# Generation 3: Compile minigcc.c using the Gen 2 binary
./minigccg2 minigcc.c > minigccg3.s
as minigccg3.s -o minigccg3.o
gcc -no-pie minigccg3.o -o minigccg3

# Generation 4 / Verification: Compile minigcc.c using the Gen 3 binary
./minigccg3 minigcc.c > minigccg4.s

# Check if the compiler has stabilized (outputs should be identical)
diff minigccg3.s minigccg4.s
```

*If `diff` returns no output, the compiler has successfully achieved perfect self-hosting stability.*

The chain above leans on GNU as/ld. With the sibling [ld](https://github.com/grisuno/ld)
assembler/linker, gcc is the only foreign tool left (generation 1); every
generation after it is compiled by miniGCC and linked by `ld`:

```bash
gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c
./minigcc minigcc.c > minigccg2.s
ld -f elf -o minigccg2 minigccg2.s && chmod +x minigccg2
./minigccg2 minigcc.c > minigccg3.s
ld -f elf -o minigccg3 minigccg3.s && chmod +x minigccg3
./minigccg3 minigcc.c > minigccg4.s
diff minigccg3.s minigccg4.s
```

`test_ld_selfhost.sh` automates this GNU-free chain end to end (fixed point
plus behavioural equivalence with generation 1) and runs as part of
`test.sh`. The same chain builds the `minigcc.elf` that ships on the MiniOS
ramdisk.

> **Note:** The current version has been verified to bootstrap correctly through both chains — `g3.s` and `g4.s` are identical.

## Testing

```bash
make test     # bootstrap chain (test.sh) + feature suite (test_all.sh)
```

`test_all.sh` compiles every `tests/t_*.c` with both host gcc (reference)
and miniGCC and requires byte-identical stdout (30 runtime tests), plus
negative tests that must fail compilation with a diagnostic (10 tests):
arithmetic, control flow, pointers, arrays, strings, structs, enums,
typedefs, floats, hex/octal/suffixes, compound assignment, `inline`,
`#include`, macros, `sizeof`, recursion, global initializers, argv, basic
and extended `asm`, fixed-width integers, attributes, atomics and variadics.

## Usage

### Option 1: Link with GCC (standard)

1. **Compile a C source file to assembly:**
```bash
./minigccg3 source.c > output.s
```

2. **Assemble the output:**
```bash
as output.s -o output.o
```

3. **Link into an executable (no PIE for simplicity):**
```bash
gcc -no-pie output.o -o output
```

4. **Run the program:**
```bash
./output
```

### Option 2: Standalone ELF (no external crt)

The compiler now emits a `.weak _start` entry point for standalone executables:

```bash
./minigccg3 source.c > output.s
as output.s -o output.o
ld output.o -o output
./output
```

### Option 3: Link with the sibling ld (no GNU tools)

`ld` encodes x86-64 machine code directly and bundles a mini libc, so the
output is a static PIE that runs on Linux and inside MiniOS:

```bash
./minigccg3 source.c > output.s
ld -f elf -o output output.s
chmod +x output
./output
```

### Option 4: CVM v2 module (bytecode, no machine code)

The same assembly, linked by `ld -f cvm`, becomes a CVM v2 module for the
cvm2 interpreter — the format that runs inside MiniOS as `run file.cvm`:

```bash
./minigccg3 source.c > output.s
ld -f cvm -o output.cvm output.s

# host: run it with the cvm2 interpreter
../cvm/cvm2/cvm output.cvm arg1

# inside MiniOS
miniOS> run minigcc.o source.c > output.s
miniOS> run ld.o -f cvm -o output.cvm output.s
miniOS> run output.cvm
```

CVM modules receive a Linux-style argv (the module path is `argv[0]`), and
the interpreter's x86 stack model lets a module run with or without
arguments identically.

## Example

Given `test.c`:

```c
int main(void) {
    int a = 10;
    int b = 2;
    return a + b;
}
```

Build and run:
```bash
./minigccg3 test.c > test.s
as test.s -o test.o
ld test.o -o test
./test
echo $?   # Should print 12
```

## Technical Notes

- The compiler writes assembly directly to `stdout`; redirect to a file as shown in the examples
- Error messages and diagnostics are printed to `stderr`
- The generated code uses the `leave`/`ret` epilogue and expects the stack to be 16-byte aligned at call sites as per the System V AMD64 ABI
- Floating-point operations use the SSE instruction set (`movss`, `movsd`, `addss`, `addsd`, etc.)
- The compiler performs a two-pass analysis: the first pass calculates stack sizes, the second pass generates code
- Global variables are emitted to `.bss` section (zero-initialized)
- `extern` declarations are recognized but do not emit assembly directives (linker resolves them)
- String literals are stored in `.rodata` section
- The symbol table uses open hashing with a 512-bucket table for O(1) average-case lookups
- The `_start` entry point is emitted as a `.weak` symbol — `gcc` linking uses crt1.o's `_start`, `ld` linking uses the compiler's `_start`
- Bounds-checked string operations prevent buffer overflows in all string copy paths

---

## Wiki

- [https://deepwiki.com/grisuno/miniGCC](https://deepwiki.com/grisuno/miniGCC)

---

**Signed:** *grisun0*

*LazyOwn RedTeam*

![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) [![License: AGPL v3](https://img.shields.io/badge/License-AGPLv3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y2Z73AV)

<!-- readmenator-kb-link -->
## Knowledge Base

This project has been analyzed by [ReadMenator](https://github.com/grisuno/ReadMenator),
a zero-token polyglot static analysis tool. Analysis outputs are available:

- **[KNOWLEDGE_BASE.md](./KNOWLEDGE_BASE.md)** -- Full architecture reference with all
  classes, functions, imports, dependency graphs, UML class diagrams, security
  audit findings, community analysis, and more.
- **[readmenator-agent/](./readmenator-agent/)** -- Agent-friendly, grep-optimized index.
  - `INDEX.md` -- Quick reference: what each file does
  - `API.md` -- Public function contracts
  - `GOTCHAS.md` -- Change warnings
  - `SECURITY.md` -- Findings by severity

AI agents: Read `readmenator-agent/INDEX.md` for fast project context.
Developers: Read `KNOWLEDGE_BASE.md` for full architecture reference.
<!-- /readmenator-kb-link -->

