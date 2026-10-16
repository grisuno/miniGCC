# GraphRAG Community Reports

Entities: 1181 | Relationships: 1398 | Communities: 4 | Themes: 0 | Text units: 1048

Query with `readmenator . ask "<question>"` (local: BM25 + Personalized PageRank; global: map-reduce over these reports) or the MCP tool `readmenator.graphrag`.

## Project overview (`root`, root, rating 7.0)

81 files in 4 communities. Highest-impact communities: unassigned files (7.0), tests: t_inner_h (0.5), root (0.3). God nodes: minigccg2.s, minigccg3.s, minigccg4.s, minigcc.c, tests/t_outer_h.h.

- [unassigned files] rating 7.0: `minigcc.c` ranks 1 by PageRank, 0 importers, 161 symbols: hash_name: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multiplication overflow.
- [tests: t_inner_h] rating 0.5: `tests/t_inner_h.h` ranks 1 by PageRank, 1 importers, 3 symbols.
- [root] rating 0.3: `my_library.h` ranks 1 by PageRank, 1 importers, 2 symbols: Test function to verify that inclusion works correctly
- [tests: t_inline] rating 0.3: `tests/t_inline_h.h` ranks 1 by PageRank, 1 importers, 2 symbols.
- Key entities: file:minigccg2.s, file:minigccg3.s, file:tests/t_inner_h.h, file:tests/t_outer_h.h, file:test_include.c, file:my_library.h
- Children: c0, c1, c2, c3
- Root rating = highest community rating.

## unassigned files (`c3`, community, rating 7.0)

74 files under tests (c 68, s 3, sh 3), mostly testing. Core file minigcc.c (PageRank 0.0117, imported by 0 files): hash_name: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multiplication overflow. Key abstractions: FileContext, Symbol, ParserState, Macro, MAX_TOKEN_LEN, MAX_SYMBOLS.

- `minigcc.c` ranks 1 by PageRank, 0 importers, 161 symbols: hash_name: Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multiplication overflow.
- `minigccg2.s` ranks 2 by PageRank, 0 importers, 235 symbols.
- `minigccg3.s` ranks 3 by PageRank, 0 importers, 235 symbols.
- Hotspot `minigcc.c`: 161 symbols, 4 connections (score 0.87).
- Hotspot `minigccg2.s`: 235 symbols, 0 connections (score 0.40).
- Dataflow: 6 INFERRED issues (first: DEAD_STORE in main).
- Key entities: file:minigccg2.s, file:minigccg3.s, file:minigccg4.s, file:minigcc.c, file:tests/t_unsigned.c, file:tests/t_asm_ds.c, file:tests/t_attr.c, file:tests/t_macros.c
- Rating 7.0/10 = 7 x PageRank share 1.00 + 3 x risk 0.00. Internal imports: 0.

## tests: t_inner_h (`c0`, community, rating 0.5)

3 files under tests (h 2, c 1), mostly testing. Core file tests/t_inner_h.h (PageRank 0.0302, imported by 1 files). Key abstractions: T_INNER_H, INNER_VAL, inner_add, T_OUTER_H, OUTER_VAL, main.

- `tests/t_inner_h.h` ranks 1 by PageRank, 1 importers, 3 symbols.
- `tests/t_outer_h.h` ranks 2 by PageRank, 1 importers, 2 symbols.
- `tests/t_include.c` ranks 3 by PageRank, 0 importers, 1 symbols.
- Hotspot `tests/t_outer_h.h`: 2 symbols, 3 connections (score 0.45).
- Hotspot `tests/t_include.c`: 1 symbols, 3 connections (score 0.45).
- Key entities: file:tests/t_inner_h.h, file:tests/t_outer_h.h, file:tests/t_include.c, sym:tests/t_inner_h.h::INNER_VAL@4, sym:tests/t_inner_h.h::T_INNER_H@2, sym:tests/t_inner_h.h::inner_add@6, sym:tests/t_outer_h.h::OUTER_VAL@6, sym:tests/t_outer_h.h::T_OUTER_H@2
- Rating 0.5/10 = 7 x PageRank share 0.07 + 3 x risk 0.00. Internal imports: 2.

## root (`c1`, community, rating 0.3)

2 files under root (c 1, h 1), mostly testing. Core file my_library.h (PageRank 0.0217, imported by 1 files): Test function to verify that inclusion works correctly Key abstractions: MY_LIBRARY_H, greet, main, greet.

- `my_library.h` ranks 1 by PageRank, 1 importers, 2 symbols: Test function to verify that inclusion works correctly
- `test_include.c` ranks 2 by PageRank, 0 importers, 2 symbols.
- Hotspot `test_include.c`: 2 symbols, 3 connections (score 0.45).
- Hotspot `my_library.h`: 2 symbols, 2 connections (score 0.30).
- Key entities: file:test_include.c, file:my_library.h, sym:my_library.h::MY_LIBRARY_H@2, sym:my_library.h::greet@5, sym:test_include.c::greet@10, sym:test_include.c::main@4
- Rating 0.3/10 = 7 x PageRank share 0.04 + 3 x risk 0.00. Internal imports: 1.

## tests: t_inline (`c2`, community, rating 0.3)

2 files under tests (c 1, h 1), mostly testing. Core file tests/t_inline_h.h (PageRank 0.0217, imported by 1 files). Key abstractions: T_INLINE_H, isq, icube, idbl, iinc, main.

- `tests/t_inline_h.h` ranks 1 by PageRank, 1 importers, 2 symbols.
- `tests/t_inline.c` ranks 2 by PageRank, 0 importers, 4 symbols.
- Hotspot `tests/t_inline.c`: 4 symbols, 3 connections (score 0.46).
- Hotspot `tests/t_inline_h.h`: 2 symbols, 1 connections (score 0.15).
- Key entities: file:tests/t_inline.c, file:tests/t_inline_h.h, sym:tests/t_inline_h.h::T_INLINE_H@2, sym:tests/t_inline_h.h::isq@4, sym:tests/t_inline.c::icube@4, sym:tests/t_inline.c::idbl@8, sym:tests/t_inline.c::iinc@12, sym:tests/t_inline.c::main@16
- Rating 0.3/10 = 7 x PageRank share 0.04 + 3 x risk 0.00. Internal imports: 1.
