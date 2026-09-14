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
   `bash test_all.sh` (25 runtime tests + 4 negative lexer tests in `tests/`,
   each diffed against a gcc reference) must report 29 passed, 0 failed.

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
The GNU-free variant links every generation with the sibling `ld` instead of
as/gcc; it is automated by `test_ld_selfhost.sh`, which `test.sh` runs
whenever `../ld/ld.c` exists.

## Current Features
- Types: int, char, float, double, void, pointers, arrays (1D/2D), structs, enums, typedefs
- Storage: static, extern (no assembly emission for extern declarations)
- Control: if/else, while, for, do/while, switch/case/default, break, continue, goto, return
- Operators: +, -, *, /, %, <, <=, >, >=, ==, !=, &&, ||, !, &, |, ^, ~, <<, >>, =, +=, -=, *=, /=, %=, &=, |=, ^=, <<=, >>=, ++, --, ?:, [], ., ->, sizeof(type-name)
- Literals: decimal, octal `0...` and hex `0x...` integers with `uUlL` suffixes, floats with exponent and `fFlL` suffixes
- `inline` / `__inline` / `__inline__` accepted as a no-op qualifier and
  skipped by the parser (functions always emit out-of-line, so a plain
  `inline` definition links like a normal global instead of following the
  C99 no-emit rule)
- Function definitions in headers work: pass 1 of the two-pass body sizing
  is clamped to its include level (`lex_pass_top`), so the over-read past
  the closing `}` can no longer POP an include and strand the rewind on a
  freed buffer (which silently dropped every declaration after the header)
- Functions: up to 6 reg params (SysV AMD64 ABI), recursion, 16-byte stack alignment
- Preprocessor: #define (numeric constant-expression folding: decimal and hex literals, char literals with escapes, prior macros, and the operators + - * / % << >> & | ^ ~ ! < <= > >= == != && || with parentheses; any non-foldable RHS such as a function-like macro or string falls back to value 0 as before), #include (<> and ""), #ifdef, #ifndef, #if (0/1), #else, #endif
- Floating-point: SSE (float/double), mixed int-float expressions
- String/char literals with full escape sequences (\n, \t, \r, \f, \v, \a, \b, \0, \\, \", \', \xNN, octal)
- Global initializers: scalar constants, brace lists for arrays, string
  literals for `char` arrays (which size an unsized array), and string
  literals for `char *`. Uninitialized globals stay in `.bss`; initialized
  ones go to `.data` with the storage directive matching their width.
- Self-hosting (3+ gen bootstrap verified)
- Standalone ELF executables with .weak _start entry point
- Bounds-checked string operations (safe_strcpy, safe_strtoll)

## Global Initializer Contract
Output is position independent and carries no load-time relocations, so an
absolute address stored in `.data` would be wrong wherever the image is
loaded other than its link address. A pointer global initialized with a
string literal therefore keeps a zero slot and is filled in by rip-relative
code emitted into `_start` before `main` is called. Initializer forms that
are not supported fall back to zero-initialized storage; they must never be
allowed to become a silently wrong value.

## Lexer Contract (stb_c_lexer-inspired)
`next_token` keeps its `token[]`/`tok` interface so the parser is untouched,
but scans stb-style: identifiers and numbers are measured with start/end
pointers over the source buffer (zero-copy scan, single bounded copy into
`token[]`); keywords live in a runtime-packed blob (`lex_kw_blob` +
`lex_kw_ids`, filled once by `lex_init_keywords`) instead of an
if/else chain; multi-char operators match longest-first through
`lex_match_op`. Integer literals cover C89: decimal, octal `0...` and hex
`0x...` (both normalized to decimal text, so every downstream
`safe_strtoll` consumer keeps working), with `uUlL` suffixes stripped and
float `fFlL` suffixes stripped before `.rodata` emission (the old code
emitted `.float 1.5f`, which GAS rejects). Malformed literals, overlong
identifiers and unterminated block comments are fail-closed lexer errors
naming the offending text. Compound assignment `*= /= %= &= |= ^= <<= >>=`
lexes as dedicated tokens with codegen in `emit_compound_op` reusing only
instruction forms the binary operators already emit. New lexer code uses
decimal constants only, so the previous generation (which cannot parse hex)
still bootstraps it.

## Known Gaps (Priority Order)
1. `unsigned` type semantics partial (div, comparisons use signed ops)
2. No function pointers
3. No variadic parameters
4. No `short` / `long long` / `long double` types
5. No compound literals or designated initializers
6. Global initializers accept constants only: no address-of, no arithmetic on
   symbols, and no nested brace lists for 2D arrays
7. No `asm` inline (lexer groundwork done: a future `T_ASM` keyword must be
   wired through the parser to emit the string body verbatim)
8. Structs only through `typedef struct {...} Name;` with single-level
   `ptr->field` / `value.field` access; chained member access (`a.b.c`),
   `enum` used as a declared type, and `typedef` names for locals are
   rejected or miscompiled instead of working
9. Pointer arithmetic and `++`/`--` on multi-byte pointers are unscaled
   (correct only for `char*`); array subscripting scales correctly
10. Float model gaps: no `float`/`double` mixing in one expression, no
    compound assignment or `double` to `float` narrowing on floats, and
    `(int)` casts of doubles; clean single-model code works
11. `static` locals re-initialize on every entry (no persistence); `static`
    globals persist correctly
12. Array dimensions accept a single number or macro only (no expressions);
    `case` labels accept numeric literals only (an enumerator reads as 0)
13. `char *` globals initialized with a string literal only materialize when
    linked with the sibling `ld` (the weak `_start` fill loses to crt1 under
    a gcc link); `char[]` globals work everywhere

<!-- readmenator-agent-kb-link -->
## Project Knowledge Base (MUST read before coding)

MUST read `readmenator-agent/MANIFEST.json` first for freshness. NEVER `glob src/**` before `grep` in `readmenator-agent/INDEX.md`.

Workflow: 1) `grep -n '<keyword>' readmenator-agent/INDEX.md readmenator-agent/SYMBOLS.md` 2) `cat readmenator-agent/KB_<subsystem>.md` 3) check `readmenator-agent/GOTCHAS.md` before editing.

This project contains analysis outputs generated by [ReadMenator](https://github.com/grisuno/ReadMenator), a zero-token polyglot static analysis tool.

**For humans:** Read `KNOWLEDGE_BASE.md` -- full architecture reference.

**For agents:** Read `readmenator-agent/INDEX.md` -- grep-friendly index.
  - `readmenator-agent/MANIFEST.json` -- freshness + entrypoints (start here)
  - `readmenator-agent/INDEX.md` -- file -> purpose map
  - `readmenator-agent/SYMBOLS.md` -- symbol index (grep-friendly)
  - `readmenator-agent/API.md` -- public functions + contracts
  - `readmenator-agent/GOTCHAS.md` -- "don't change X because Y breaks"
  - `readmenator-agent/KB_<subsystem>.md` -- per-subsystem context (grep-friendly)
  - `readmenator-agent/SECURITY.md` -- findings by severity
  - `readmenator-agent/recipes/*.md` -- actionable task blocks

If MANIFEST date/commit is stale vs `git HEAD`, regenerate:

    pip install readmenator && readmenator . --rebuild
<!-- /readmenator-agent-kb-link -->
