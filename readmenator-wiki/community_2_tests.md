# tests

*Community 2 | 2 files | cohesion 1.00*

## Definition

This community groups 2 file(s) rooted at `tests` with dominant language c (cohesion 1.00). Central symbols: `T_INLINE_H`, `icube`, `idbl`, `iinc`, `isq`, `main`, `printf`. Core file: `tests/t_inline.c` (5 symbols).

## Files

| File | Language | Layer | Symbols | Doc |
|------|----------|-------|---------|-----|
| `tests/t_inline.c` | c | testing | 5 | no |
| `tests/t_inline_h.h` | h | testing | 2 | no |

## Key Symbols

- `icube` (function, `tests/t_inline.c:3`) `static inline int icube(int x)` - include <stdio.h> include "t_inline_h.h"
- `idbl` (function, `tests/t_inline.c:7`) `__inline__ static int idbl(int x)`
- `iinc` (function, `tests/t_inline.c:11`) `__inline static int iinc(int x)`
- `main` (function, `tests/t_inline.c:15`) `int main(void)`
- `printf` (function, `tests/t_inline.c:17`) `printf("%d %d %d\n", isq(6), icube(3), idbl(20));`
- `T_INLINE_H` (macro, `tests/t_inline_h.h:2`) `#define T_INLINE_H`
- `isq` (function, `tests/t_inline_h.h:3`) `static inline int isq(int x)` - ifndef T_INLINE_H define T_INLINE_H

## Internal vs External Edges

- Internal resolved imports (EXTRACTED): 1
- Cross-boundary resolved imports (EXTRACTED): 0

## Connections

- [INFERRED] shares_context community 0 <-> 2 (strength 0.5): Inferred shared context (language h) with no import path between community 0 (root) and community 2 (tests).
- [INFERRED] shares_context community 1 <-> 2 (strength 0.5): Inferred shared context (language h and layer testing) with no import path between community 1 (tests) and community 2 (tests).
- [INFERRED] shares_context community 2 <-> 3 (strength 0.5): Inferred shared context (layer testing) with no import path between community 2 (tests) and community 3 (orphans).

## Risks

- No scoped security, taint, cycle, or layer risks.

## Open Questions

- Why do 2 file(s) lack file-level docs (e.g. `tests/t_inline.c`)? What purpose do they serve?
- What would break if the most connected file in tests changed?
- Should tests be split, given cohesion 1.00?

## Sources

- `tests/t_inline.c`
- `tests/t_inline_h.h`
