# miniGCC C99 Compiler Project Contract

## Architecture
Single-file self-hosting C compiler for x86-64 Linux (ELF, AT&T syntax).
Bootstraps through 3+ generations to fixed-point assembly output.
All ints are 8 bytes internally. Generates standalone ELF with `_start`.

## Development Methodology (SDD + TDD + BDD)
1. **SDD (Spec-Driven Development):** Every feature begins with a spec in this file.
2. **TDD (Test-Driven Development):** Write test case -> verify failure -> implement -> verify pass.
3. **BDD (Behavior-Driven Development):** Test behavior via bootstrap + test suite.
4. **Boy Scout Rule:** Fix any technical debt or security issue encountered; never out of scope.
5. **Validation:** After every change: `gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c` must succeed, then `./test.sh` must pass.

## Code Standards
- No comments, no emojis.
- Production-ready, secure code. No placeholders, no simplifications.
- DRY + SOLID principles.
- All constants in centralized `Config` section (no magic numbers, no hardcoded paths).
- Self-contained; single file per contract.
- Bounds-checked string operations (no bare `strcpy`/`memcpy` without size verification).
- Explicit buffer overflow prevention on all arrays.

## Security Requirements (Non-Negotiable)
- No bare `strcpy`/`memcpy` without verified bounds.
- Input validation at all entry points.
- Error paths must not leak memory.
- No format string vulnerabilities.
- No integer overflow in size calculations.
- No absolute filesystem paths.

## Compiler Pipeline
```
Source -> Lexer (next_token) -> Parser (recursive descent) -> Code Gen (emit_*) -> Assembly
```
Two-pass compilation for functions: pass 1 computes stack sizes, pass 2 generates code.

## Symbol Table
Open hashing with 512 buckets. O(1) average lookup.
Scoped: `push_scope`/`pop_scope` manage local symbols.
`truncate_symbols` for two-pass function body parsing.

## Self-Hosting Verification
```bash
gcc -std=c99 -Wall -Wextra -O2 -o minigcc minigcc.c
./minigcc minigcc.c > minigccg2.s
as minigccg2.s -o minigccg2.o && gcc -no-pie minigccg2.o -o minigccg2
./minigccg2 minigcc.c > minigccg3.s
as minigccg3.s -o minigccg3.o && gcc -no-pie minigccg3.o -o minigccg3
./minigccg3 minigcc.c > minigccg4.s
diff minigccg3.s minigccg4.s   # must be empty (fixed point)
```

## Current Features
- Types: int, char, float, double, void, pointers, arrays (1D/2D), structs, enums, typedefs
- Storage: static, extern (no assembly emission for extern declarations)
- Control: if/else, while, for, do/while, switch/case/default, break, continue, goto, return
- Operators: +, -, *, /, %, <, <=, >, >=, ==, !=, &&, ||, !, &, |, ^, ~, <<, >>, =, +=, -=, ++, --, ?:, [], ., ->, sizeof(type-name)
- Functions: up to 6 reg params (SysV AMD64 ABI), recursion, 16-byte stack alignment
- Preprocessor: #define (numeric), #include (<> and ""), #ifdef, #ifndef, #if (0/1), #else, #endif
- Floating-point: SSE (float/double), mixed int-float expressions
- String/char literals with full escape sequences (\n, \t, \r, \f, \v, \a, \b, \0, \\, \", \', \xNN, octal)
- Self-hosting (3+ gen bootstrap verified)
- Standalone ELF executables with .weak _start entry point
- Bounds-checked string operations (safe_strcpy, safe_strtoll)

## Known Gaps (Priority Order)
1. No hex (0x) / octal (0) integer literal parsing (self-hosted codegen bug blocks bootstrap)
2. `unsigned` type semantics partial (div, comparisons use signed ops)
3. No function pointers
4. No variadic parameters
5. No `short` / `long long` / `long double` types
6. No compound literals or designated initializers
