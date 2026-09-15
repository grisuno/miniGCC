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
5. **Validation:** After every change: `make test` must pass — it builds
   with `gcc -std=c99 -Wall -Wextra -O2`, then runs `test.sh` (bootstrap
   fixed point + ld self-host chain) and `test_all.sh` (28 runtime tests +
   7 negative tests in `tests/`, each diffed against a gcc reference:
   35 passed, 0 failed).

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
- Fixed-width integers: `int8/16/32/64_t`, `uint8/16/32/64_t`, `uintptr_t`,
  `intptr_t` and `short` are predefined typedefs with true 1/2/4/8 sizes;
  loads sign- or zero-extend to 64 bits (C promotion for free, so all
  sub-64 arithmetic, shifts and comparisons are exact, unsigned included),
  stores narrow, `sizeof` and struct members honor widths. Only 64-bit
  `uint64_t` arithmetic above 2^63 still uses signed ops.
- `inline` / `__inline` / `__inline__` accepted as a no-op qualifier and
  skipped by the parser (functions always emit out-of-line, so a plain
  `inline` definition links like a normal global instead of following the
  C99 no-emit rule)
- Basic `asm` (`asm` / `__asm` / `__asm__`, optional `volatile`) in function
  bodies and at top level: the template string is parsed structurally and
  emitted verbatim by a dedicated raw emitter (LLVM InlineAsm-style
  separation); any `:` operand section is a fail-closed parse error.
  `volatile` / `__volatile__` are also skipped as declaration qualifiers.
  Adjacent string literals concatenate in the lexer (translation phase 6),
  which top-level `__asm__` blocks rely on
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
7. Extended `asm` supports exactly the kernel's constraint set — inputs
   `r a b c d m Nd`, outputs `=r =a =b =c =d =m` — with `%0`-`%9`/`%%`/`%=`
   substitution, `memory`/`cc`/register clobbers accepted and satisfied by
   the spill-everything model (`rbx` saved/restored around every block).
   Fixed homes are full-width (`%rax`, never `%eax`: the 8-byte int model);
   `char` stores narrow at write-back. Anything else (`+` read-write, `D`/`S`
   constraints, `%x` modifiers, >8 operands) is a fail-closed parse error.
   Operand values and addresses ride the stack; homes come from
   rax/rbx/rcx/rdx plus the `r10 r8 r9 rsi rdi` scratch pool (`r11` is the
   address temp and never allocated)
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
14. Chained typedefs lose their base size (`typedef unsigned char u8` or
    `typedef uint32_t U32` registers size 8); only the predefined stdint
    names and single-level `typedef struct` carry exact sizes. Typedef'd
    globals accept no initializer; typedef'd functions and parameters work

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
