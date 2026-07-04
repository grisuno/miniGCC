# MiniGCC - A Minimal C Compiler for x86-64 Linux
================================================

MiniGCC is an educational C compiler that translates a subset of the C language into x86-64 assembly (AT&T syntax) for Linux. It generates standalone ELF executables with a custom `_start` entry point.

## Features
--------
* Supports `int` and `char` types (including arrays and pointers).
* Basic control flow: `if`, `else`, `while`, `for`, `switch`, `case`, `default`, `break`, `continue`, `goto`, `return`.
* Function definitions (no variadic functions, limited to 6 integer/pointer parameters passed via registers per System V AMD64 ABI).
* Integer arithmetic, logical, and bitwise operators.
* String literals and character constants.
* Simple macro definition via `#define`.
* Global and local variable allocation with proper stack alignment.

## Limitations (Work in Progress)
------------------------------
* Function parameter support is partially implemented but not fully compliant with the System V ABI (only first 6 parameters in registers, no stack spill handling).
* No support for `float`, `double`, `long long`, or struct member access beyond basic layout.
* No library linkage; programs must use only built-in types and functions.
* This is **not yet a generation‑3 compiler** – development is ongoing to reach a complete, self‑hosting C99 subset.

## Building
--------
The compiler itself is a single C file compiled with any standard C compiler:

    gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c

## Usage
-----
1. Compile a C source file to assembly:
       ./minigcc source.c > output.s
2. Assemble the output:
       as output.s -o output.o
3. Link into an executable (no PIE for simplicity):
       gcc -no-pie output.o -o output
4. Run the program:
       ./output

## Example
-------
Given `test.c`:

    int main() {
        int a = 10;
        int b = 2;
        return a + b;
    }

Build and run:

    ./minigcc test.c > test.s
    as test.s -o test.o
    gcc -no-pie test.o -o testgcc
    ./testgcc
    echo $?   # should print 12

## Notes
-----
* The compiler writes assembly to stdout; redirect to a file as shown.
* Error messages are printed to stderr.
* The generated code uses the `leave`/`ret` epilogue and expects the stack to be 16‑byte aligned at call sites (as per the ABI).


grisun0
LazyOwn RedTeam
 
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)  [![License: AGPL v3](https://img.shields.io/badge/License-AGPLv3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y2Z73AV)
