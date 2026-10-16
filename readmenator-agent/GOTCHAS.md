# Gotchas

## God Nodes (high connectivity)

These files have the most connections. Changes here have high blast radius.

- `minigccg2.s` (score: 23.50)
- `minigccg3.s` (score: 23.50)
- `minigccg4.s` (score: 23.50)
- `minigcc.c` (score: 16.10)
- `my_library.h` (score: 2.20, imported by 1 files)

## Blast Radius (change impact)

Editing these files can break the listed number of dependents. Run their tests after any change.

- `my_library.h` -- 1 direct, 1 total dependents

## Hotspots (complexity + centrality)

- `minigcc.c` -- complexity: 0.7, centrality: 1.0, combined: 0.9
- `minigccg2.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `minigccg3.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `minigccg4.s` -- complexity: 1.0, centrality: 0.0, combined: 0.4
- `my_library.h` -- complexity: 0.0, centrality: 0.5, combined: 0.3
- `tests/t_logic.c` -- complexity: 0.0, centrality: 0.2, combined: 0.2

## Dataflow Issues (INFERRED, review each lead)

- `tests/neg_float.c:2` `main` [DEAD_STORE] `d`: `d` assigned at line 2 but never read afterwards.
- `tests/t_pointers.c:30` `main` [DEAD_STORE] `cp`: `cp` assigned at line 30 but never read afterwards.
- `tests/t_sizeof.c:6` `main` [DEAD_STORE] `lv`: `lv` assigned at line 6 but never read afterwards.
- `tests/t_sizeof.c:7` `main` [DEAD_STORE] `c`: `c` assigned at line 7 but never read afterwards.
- `tests/t_sizeof.c:8` `main` [DEAD_STORE] `d`: `d` assigned at line 8 but never read afterwards.
- `tests/t_sizeof.c:9` `main` [DEAD_STORE] `p`: `p` assigned at line 9 but never read afterwards.
