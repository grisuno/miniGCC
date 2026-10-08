# root

*Community 1 | 2 files | cohesion 1.00*

## Definition

This community groups 2 file(s) rooted at `root` with dominant language h (cohesion 1.00). Central symbols: `MY_LIBRARY_H`, `greet`, `main`. Core file: `my_library.h` (2 symbols). Documented purpose: Test function to verify that inclusion works correctly.

## Files

| File | Language | Layer | Symbols | Doc |
|------|----------|-------|---------|-----|
| `my_library.h` | h | utility | 2 | yes |
| `test_include.c` | c | testing | 2 | no |

## Key Symbols

- `MY_LIBRARY_H` (macro, `my_library.h:2`) `#define MY_LIBRARY_H`
- `greet` (function, `my_library.h:5`) `void greet(void);` - Test function to verify that inclusion works correctly
- `main` (function, `test_include.c:4`) `int main(void)`
- `greet` (function, `test_include.c:10`) `void greet(void)`

## Internal vs External Edges

- Internal resolved imports (EXTRACTED): 1
- Cross-boundary resolved imports (EXTRACTED): 0

## Connections

- [INFERRED] shares_context community 0 <-> 1 (strength 0.5): Inferred shared context (language h) with no import path between community 0 (tests: t_inner_h) and community 1 (root).
- [INFERRED] shares_context community 1 <-> 2 (strength 0.5): Inferred shared context (language h) with no import path between community 1 (root) and community 2 (tests: t_inline).

## Risks

- No scoped security, taint, cycle, or layer risks.

## Open Questions

- Why do 1 file(s) lack file-level docs (e.g. `test_include.c`)? What purpose do they serve?
- What would break if the most connected file in root changed?
- Should root be split, given cohesion 1.00?

## Sources

- `my_library.h`
- `test_include.c`
