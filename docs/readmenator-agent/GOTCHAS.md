# Gotchas

## God Nodes (high connectivity)

These files have the most connections. Changes here have high blast radius.

- `minigccg2.s` (score: 20.20)
- `minigccg3.s` (score: 20.20)
- `minigccg4.s` (score: 20.20)
- `minigcc.c` (score: 15.40)
- `tests/t_outer_h.h` (score: 4.20)
- `tests/t_inline.c` (score: 2.50)
- `test_include.c` (score: 2.30)
- `tests/t_inner_h.h` (score: 2.30)
- `my_library.h` (score: 2.20)
- `tests/t_include.c` (score: 2.20)

## Hotspots (complexity + centrality)

- `minigcc.c` -- complexity: 0.8, centrality: 1.0, combined: 0.9
- `tests/t_inline.c` -- complexity: 0.0, centrality: 0.8, combined: 0.5
- `test_include.c` -- complexity: 0.0, centrality: 0.8, combined: 0.5
- `tests/t_include.c` -- complexity: 0.0, centrality: 0.8, combined: 0.5
- `tests/t_outer_h.h` -- complexity: 0.0, centrality: 0.8, combined: 0.5
- `minigccg2.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `minigccg3.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `minigccg4.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `tests/t_attr.c` -- complexity: 0.0, centrality: 0.5, combined: 0.3
- `tests/t_stdint.c` -- complexity: 0.0, centrality: 0.5, combined: 0.3
