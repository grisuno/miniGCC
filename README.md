# MiniGCC - A Minimal Self-Hosting C Compiler for x86-64 Linux

<img width="1024" height="559" alt="image" src="https://github.com/user-attachments/assets/d989df1c-dfe1-4059-8b2f-be0763485191" />

![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) [![License: AGPL v3](https://img.shields.io/badge/License-AGPLv3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y2Z73AV)

MiniGCC is an educational, **self-hosting** C compiler that translates a subset of the C language into x86-64 assembly (AT&T syntax) for Linux. It generates standalone ELF executables with a custom `_start` entry point and is capable of compiling its own source code.

## Features
- **Self-Hosting (Generation 3+):** Fully capable of compiling its own source code to reach complete technical sovereignty.
- Supports `int` and `char` types (including arrays and pointers).
- Basic control flow: `if`, `else`, `while`, `for`, `switch`, `case`, `default`, `break`, `continue`, `goto`, `return`.
- Function definitions limited to 6 integer/pointer parameters passed via registers per System V AMD64 ABI.
- Integer arithmetic, logical, and bitwise operators.
- String literals and character constants.
- Simple macro definition via `#define`.
- Global and local variable allocation with proper stack alignment.

## Limitations & Work in Progress
- Function parameter support is partially implemented; only the first 6 parameters in registers are supported (no stack spill handling yet).
- No support for `float`, `double`, `long long`, or `struct` member access beyond basic layout.
- No standard library linkage; programs must use only built-in types and direct system calls or custom definitions.

## Building the Bootstrap (Generation 1)
The compiler itself is a single C file that can be bootstrapped using any standard C compiler:

```bash
gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c

```

## Bootstrapping & Self-Hosting Verification

To verify the compiler's self-hosting stability, you can run it through a 3-generation compilation cycle to ensure the generated assembly reaches a fixed point (identical binary output):

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

* The compiler writes assembly directly to `stdout`; redirect to a file as shown in the examples.
* Error messages and diagnostics are printed to `stderr`.
* The generated code uses the `leave`/`ret` epilogue and expects the stack to be 16-byte aligned at call sites as per the System V AMD64 ABI.

---

## Wiki

- [https://deepwiki.com/grisuno/miniGCC](https://deepwiki.com/grisuno/miniGCC)

---

**Signed:** *grisun0*

*LazyOwn RedTeam*

![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) [![License: AGPL v3](https://img.shields.io/badge/License-AGPLv3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y2Z73AV)

