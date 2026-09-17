# tests

*Community 1 | 3 files | cohesion 1.00*

## Definition

This community groups 3 file(s) rooted at `tests` with dominant language h (cohesion 1.00). Central symbols: `INNER_VAL`, `OUTER_VAL`, `T_INNER_H`, `T_OUTER_H`, `inner_add`, `main`, `printf`. Core file: `tests/t_inner_h.h` (3 symbols).

## Files

| File | Language | Layer | Symbols | Doc |
|------|----------|-------|---------|-----|
| `tests/t_include.c` | c | testing | 2 | no |
| `tests/t_inner_h.h` | h | testing | 3 | no |
| `tests/t_outer_h.h` | h | testing | 2 | no |

## Key Symbols

- `main` (function, `tests/t_include.c:4`) `int main(void)` - include <stdio.h> include "t_outer_h.h" include "t_outer_h.h"
- `printf` (function, `tests/t_include.c:6`) `printf("%d %d %d\n", INNER_VAL, OUTER_VAL, inner_add(40, 2));`
- `T_INNER_H` (macro, `tests/t_inner_h.h:2`) `#define T_INNER_H`
- `INNER_VAL` (macro, `tests/t_inner_h.h:3`) `#define INNER_VAL`
- `inner_add` (function, `tests/t_inner_h.h:5`) `static inline int inner_add(int a, int b)` - define INNER_VAL 111
- `T_OUTER_H` (macro, `tests/t_outer_h.h:2`) `#define T_OUTER_H`
- `OUTER_VAL` (macro, `tests/t_outer_h.h:5`) `#define OUTER_VAL`

## Internal vs External Edges

- Internal resolved imports (EXTRACTED): 2
- Cross-boundary resolved imports (EXTRACTED): 0

## Connections

- [INFERRED] shares_context community 0 <-> 1 (strength 0.5): Inferred shared context (language h) with no import path between community 0 (root) and community 1 (tests).
- [INFERRED] shares_context community 1 <-> 2 (strength 0.5): Inferred shared context (language h and layer testing) with no import path between community 1 (tests) and community 2 (tests).
- [INFERRED] shares_context community 1 <-> 3 (strength 0.5): Inferred shared context (layer testing) with no import path between community 1 (tests) and community 3 (orphans).

## Risks

- No scoped security, taint, cycle, or layer risks.

## Open Questions

- Why do 3 file(s) lack file-level docs (e.g. `tests/t_include.c`)? What purpose do they serve?
- What would break if the most connected file in tests changed?
- Should tests be split, given cohesion 1.00?

## Sources

- `tests/t_include.c`
- `tests/t_inner_h.h`
- `tests/t_outer_h.h`
