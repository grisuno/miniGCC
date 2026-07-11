# MiniGCC - A Minimal Self-Hosting C Compiler for x86-64 Linux

<img width="627" height="551" alt="logo" src="https://github.com/user-attachments/assets/54792e08-5349-4def-a767-2838d7cefd8f" />

![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) [![License: AGPL v3](https://img.shields.io/badge/License-AGPLv3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y2Z73AV)

MiniGCC is an educational, **self-hosting** C compiler that translates a substantial subset of the C language into x86-64 assembly (AT&T syntax) for Linux. It generates standalone ELF executables and is capable of compiling its own source code (bootstrapping).

## Features

### Self-Hosting (Generation 3+)
Fully capable of compiling its own source code to reach complete technical sovereignty. Verified through 3+ generation bootstrapping where the compiler reaches a fixed point (identical output).

### Supported Types
- Primitive types: `int`, `char`, `float`, `double`, `void`
- Pointers (single and multi-level)
- Arrays (including 2D arrays)
- Structs with member access (`.` and `->` operators)
- Enums
- Typedefs

### Control Flow
- `if` / `else`
- `while` loops
- `for` loops (including complex increment expressions)
- `switch` / `case` / `default`
- `break` and `continue`
- `goto` and labels
- `return`

### Operators
- Arithmetic: `+`, `-`, `*`, `/`, `%`
- Comparison: `<`, `<=`, `>`, `>=`, `==`, `!=`
- Logical: `&&`, `||`, `!`
- Bitwise: `&`, `|`, `^`, `~`, `<<`, `>>`
- Assignment: `=`, `+=`, `-=`, `++`, `--`
- Ternary: `? :`
- Array subscripting: `arr[i]`
- Struct member access: `s.field` and `ptr->field`
- Pointer dereference: `*ptr`
- Address-of: `&var`
- Comma operator

### Functions
- Function definitions and calls
- Up to 6 integer/pointer parameters passed via registers (System V AMD64 ABI)
- Recursive functions supported
- Proper stack alignment (16-byte) per ABI

### Other Features
- String literals and character constants
- Escape sequences in strings (`\n`, `\t`, `\\`, `\"`)
- Simple macro definitions via `#define`
- File inclusion via `#include` (supports both `<>` and `""` styles)
- Global and local variable allocation
- Floating-point arithmetic (single and double precision)
- Type casting: `(int)`, `(char)`, `(float)`, `(double)`, `(type*)`
- Two-pass compilation for accurate stack size calculation
- Hash table-based symbol table for O(1) lookups
- Scope management with proper symbol cleanup

## Limitations

- Function calls limited to 6 arguments (no stack spill handling)
- No support for `long long`, `long double`, or bitfields
- No variadic functions (no `...` parameter support)
- No standard library linkage; programs must use only built-in types and direct system calls
- The compiler uses 8-byte `int` internally but `skip_struct` treats `int` as 4 bytes (matching GCC's x86-64 ABI). This means `int` struct fields are sign-extended on load (`movslq`) to match the compiler's 64-bit integer model
- Limited preprocessor: only `#define` with numeric values and `#include` are supported (no `#ifdef`, no `#ifndef`, no macros with arguments)
- No function pointers
- No `sizeof` operator
- No unions

## Building the Bootstrap (Generation 1)

The compiler itself is a single C file that can be bootstrapped using any standard C compiler:

```bash
gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c
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

> **Note:** The current version has been verified to bootstrap correctly — `g3.s` and `g4.s` are identical.

## Usage

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

## Example

Given `test.c`:

```c
int main() {
    int a = 10;
    int b = 2;
    return a + b;
}
```

Build and run using the self-hosted compiler:

```bash
./minigccg3 test.c > test.s
as test.s -o test.o
gcc -no-pie test.o -o testgcc
./testgcc
echo $?   # Should print 12
```

## Technical Notes

- The compiler writes assembly directly to `stdout`; redirect to a file as shown in the examples
- Error messages and diagnostics are printed to `stderr`
- The generated code uses the `leave`/`ret` epilogue and expects the stack to be 16-byte aligned at call sites as per the System V AMD64 ABI
- Floating-point operations use the SSE instruction set (`movss`, `movsd`, `addss`, `addsd`, etc.)
- The compiler performs a two-pass analysis: the first pass calculates stack sizes, the second pass generates code
- Global variables are emitted to `.bss` section (zero-initialized)
- String literals are stored in `.rodata` section
- The symbol table uses open hashing with a 512-bucket table for O(1) average-case lookups

---

## Wiki

- [https://deepwiki.com/grisuno/miniGCC](https://deepwiki.com/grisuno/miniGCC)

---

**Signed:** *grisun0*

*LazyOwn RedTeam*

![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) [![License: AGPL v3](https://img.shields.io/badge/License-AGPLv3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y2Z73AV)
