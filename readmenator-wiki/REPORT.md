# Audit Report

*Project: miniGCC | 2026-09-17 | offline, deterministic*

## Confidence Trail

Every edge is tagged. Extracted means parsed from source; inferred means derived heuristically; ambiguous is reported, never hidden.

| Confidence | Count | Meaning |
|------------|-------|---------|
| EXTRACTED | 4 | Resolved import edges parsed from source |
| EXTRACTED | 55 | Raw import statements (may include externals) |
| INFERRED | 0 | Surprising cross-community bridges |
| AMBIGUOUS | 0 | No uncertain edges are emitted by the static scanner |

## Coverage

- Files: 68, communities: 4
- File doc coverage: 4/68
- Orphans (no docs at any level): 26
- Layers detected: 4
- Security findings: 28
- Large files (>256KB, maybe generated): 3 (minigccg2.s, minigccg3.s, minigccg4.s)

## Limits

- Python uses the ast module; all other languages use regex parsers.
- No dataflow or runtime tracing; taint follows the import graph only.
- Symbol docs come from adjacent comments; missing docs are listed, not invented.
- Centrality scores count every scanned file equally, including checked-in build artifacts; verify large files before refactoring.

## Token Benchmark

- Wiki index plus community pages estimate: ~4900 tokens (chars/4).
- Full re-read of every source file would cost strictly more on any non-trivial project; this wiki is the cheaper entry point.
- Generation cost: $0, offline, no network calls.

## Reproduce

```
readmenator . --rebuild
readmenator . wiki
```
