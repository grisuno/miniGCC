# Second Brain

*Last synthesized: 2026-09-17 | 68 files | 4 concept pages | offline, zero tokens*

> Raw sources -> readmenator wiki -> links (Karpathy LLM Wiki Pattern, deterministic).
> Start here, then open one community page. Prefer grep over full reads.

## Vault Overview

The codebase centres on `minigccg2.s`, `minigccg3.s`, `minigccg4.s`. Architecturally it is 4 layers, dominant testing (60 files) across 4 import-based communities. Recorded risk surface: 28 security findings and 0 dependency cycles.

Surprising tissue lives between root, tests (community 1), tests (community 2): 0 extracted cross-community imports and 5 inferred bridges. Follow `connections.json` sorted by strength before refactoring.

Open work clusters around documentation (6% file coverage), 28 security findings, 0 taint paths, and 5 suggested exploration questions in `queries.md`.

## Stats

| Metric | Value |
|--------|-------|
| Files | 68 |
| Symbols | 1032 |
| Resolved imports | 4 |
| Languages | c, h, s, sh |
| Communities | 4 |
| Doc coverage | 6% (4/68 files) |
| Security findings | 28 |
| Estimated read cost | ~5050 tokens (chars/4, offline so $0) |
| Large files (>256KB, maybe generated) | 3: `minigccg2.s`, `minigccg3.s`, `minigccg4.s` |

## Reading Order

1. Skim Stats and God Nodes below for blast radius.
2. Open the largest community page first, then follow Connections.
3. Use `queries.md` for the next question; log the answer there.

```
grep -rn '<keyword>' index.md community_*.md
readmenator query "<question>" --target miniGCC
```

## Concept Wiki

- [root (2 files, cohesion 1.00)](./community_0_root.md)
- [tests (community 1) (3 files, cohesion 1.00)](./community_1_tests.md)
- [tests (community 2) (2 files, cohesion 1.00)](./community_2_tests.md)
- [orphans (61 files, cohesion 0.00)](./community_3_orphans.md)

## God Nodes

| File | Score |
|------|-------|
| `minigccg2.s` | 21.8 (large, maybe generated) |
| `minigccg3.s` | 21.8 (large, maybe generated) |
| `minigccg4.s` | 21.8 (large, maybe generated) |
| `minigcc.c` | 16.4 |
| `tests/t_outer_h.h` | 4.2 |

## Strongest Connections

- 0 -> 1: shares_context (strength 0.5, INFERRED)
- 0 -> 2: shares_context (strength 0.5, INFERRED)
- 1 -> 2: shares_context (strength 0.5, INFERRED)
- 1 -> 3: shares_context (strength 0.5, INFERRED)
- 2 -> 3: shares_context (strength 0.5, INFERRED)

## Navigation Tips

- Obsidian Graph View works: every community page links back here.
- `connections.json` is machine-readable for GraphRAG pipelines.
- `REPORT.md` states what was extracted vs inferred and current limits.
- Regenerate offline: `readmenator . --rebuild` (no network, no tokens).
