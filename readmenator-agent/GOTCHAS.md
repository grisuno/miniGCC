# Gotchas

## God Nodes (high connectivity)

These files have the most connections. Changes here have high blast radius.

- `minigccg2.s` (score: 23.50)
- `minigccg3.s` (score: 23.50)
- `minigccg4.s` (score: 23.50)
- `minigcc.c` (score: 16.10)
- `tests/t_outer_h.h` (score: 4.20)
- `tests/t_inline.c` (score: 2.40)
- `tests/t_inner_h.h` (score: 2.30)
- `my_library.h` (score: 2.20)
- `test_include.c` (score: 2.20)
- `tests/t_inline_h.h` (score: 2.20)

## Hotspots (complexity + centrality)

- `minigcc.c` -- complexity: 0.7, centrality: 1.0, combined: 0.9
- `tests/t_inline.c` -- complexity: 0.0, centrality: 0.8, combined: 0.5
- `test_include.c` -- complexity: 0.0, centrality: 0.8, combined: 0.5
- `tests/t_outer_h.h` -- complexity: 0.0, centrality: 0.8, combined: 0.5
- `tests/t_include.c` -- complexity: 0.0, centrality: 0.8, combined: 0.5
- `minigccg2.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `minigccg3.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `minigccg4.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `tests/t_asm_ds.c` -- complexity: 0.0, centrality: 0.5, combined: 0.3
- `tests/t_attr.c` -- complexity: 0.0, centrality: 0.5, combined: 0.3

## Dataflow Issues (INFERRED, review each lead)

- `tests/neg_float.c:2` `main` [DEAD_STORE] `d`: `d` assigned at line 2 but never read afterwards.
- `tests/t_pointers.c:30` `main` [DEAD_STORE] `cp`: `cp` assigned at line 30 but never read afterwards.
- `tests/t_sizeof.c:6` `main` [DEAD_STORE] `lv`: `lv` assigned at line 6 but never read afterwards.
- `tests/t_sizeof.c:7` `main` [DEAD_STORE] `c`: `c` assigned at line 7 but never read afterwards.
- `tests/t_sizeof.c:8` `main` [DEAD_STORE] `d`: `d` assigned at line 8 but never read afterwards.
- `tests/t_sizeof.c:9` `main` [DEAD_STORE] `p`: `p` assigned at line 9 but never read afterwards.
