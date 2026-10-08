# Subsystem: root (page 3 of 3)
Previous: [KB_root_p2.md](KB_root_p2.md)

## test.sh
- Doc: Cleaning env
- Layer: testing
- Language: sh

## test_all.sh
- Doc: feature test suite for miniGCC.
- Layer: testing
- Language: sh
- Symbols:
  - `pass` (function, line 20)
  - `fail` (function, line 25)
  - `run_test` (function, line 37)
  - `run_neg` (function, line 101)

## test_for.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 3) `int main()`

## test_include.c
- Layer: testing
- Language: c
- Symbols:
  - `main` (function, line 4) `int main(void)`
  - `greet` (function, line 10) `void greet(void)`
- Depends on: `my_library.h`

## test_ld_selfhost.sh
- Doc: Self-host test: miniGCC bootstraps itself with the sibling 'ld' repository as the assembler and...
- Layer: testing
- Language: sh
- Symbols:
  - `pass` (function, line 27)
  - `fail` (function, line 32)

