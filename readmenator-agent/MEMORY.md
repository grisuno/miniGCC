# Project Memory

> Cross-session context for agents. Sections 1-6 are regenerated from the source tree with zero LLM tokens: declared rules are quoted verbatim with `file:line`, measured baselines come from the scan. Section 7 is written by agents and humans and is preserved across rebuilds.

Generated from 81 files at commit `c01ad221bd4e`. Read this first, then `readmenator-wiki/index.md`, then `readmenator . ask "<question>"` for anything specific.

## 1. Purpose and domain

- What it is: MiniGCC is an educational, **self-hosting** C compiler that translates a substantial subset of the C language into x86-64 assembly (AT&T syntax) for Linux. (`README.md:9`)
- Domain vocabulary (term, files): `neg` (22), `fnptr` (11), `include` (11), `add` (9), `asm` (8), `struct` (6), `typedef` (6), `float` (6), `name` (6), `gcc` (6), `val` (6), `fail` (6), `add2` (6), `pass` (6), `member` (5)
- Subsystem `tests: t_inner_h`: 3 files, core `tests/t_inner_h.h`
- Subsystem `root`: 2 files, core `my_library.h`: Test function to verify that inclusion works correctly
- Subsystem `tests: t_inline`: 2 files, core `tests/t_inline.c`
- Business rules that the code cannot show live in section 7: record them there.

## 2. Workflow

Detected commands:
- `make all` (Makefile)
- `make minigcc` (Makefile)
- `make test` (Makefile)
- `make clean` (Makefile)
- `CI workflow github-actions-demo.yml` (workflows/github-actions-demo.yml)

Session protocol:
1. Start: read this file, then `readmenator . fresh` (exit 1 means run `readmenator . --rebuild`).
2. Orient: `readmenator-wiki/index.md`; for a question use `readmenator . ask "<question>"` (local = entities + sources, `--global` = community reports).
3. Before editing a file: `grep -n '<file>' readmenator-agent/GOTCHAS.md readmenator-agent/SECURITY.md`.
4. After the change: run the tests above, then `readmenator . --rebuild` so the maps, wiki, and this file stay true.
5. End: record decisions, business rules, and gotchas with `readmenator . remember "<note>" --kind decision`.

## 3. Rules and constraints

Declared:
- No bare `strcpy`/`memcpy` without verified bounds. (`CLAUDE.md:29`)
- Input validation at all entry points. (`CLAUDE.md:30`)
- Error paths must not leak memory. (`CLAUDE.md:31`)
- No format string vulnerabilities. (`CLAUDE.md:32`)
- No integer overflow in size calculations. (`CLAUDE.md:33`)
- No absolute filesystem paths. (`CLAUDE.md:34`)

Measured baseline:
- Security findings at medium or above: 0 (see `readmenator-agent/SECURITY.md`); do not add new ones.
- Dependency cycles: 0; layer violations: 0 (see `readmenator-agent/GOTCHAS.md`).

## 4. Style norms

Declared:
- none declared in instruction files (add them to AGENTS.md or record them in section 7)

Measured baseline:
- c: 71 files, 325 symbols; docstrings on 6% of symbols; functions snake_case (100%); types PascalCase (85%); median file 20 lines, max 6119.
- h: 4 files, 9 symbols; docstrings on 11% of symbols; functions snake_case (100%); median file 8 lines, max 10.
- s: 3 files, 705 symbols; docstrings on 0% of symbols; functions snake_case (100%); median file 61461 lines, max 61461.
- sh: 3 files, 6 symbols; docstrings on 0% of symbols; functions snake_case (100%); median file 131 lines, max 191.
- Tests: 74 files under ., tests; follow the existing naming (e.g. `test_all.sh`).

## 5. Minimum deliverables

Declared:
- none declared in instruction files (add them to AGENTS.md or record them in section 7)

Measured baseline:
- Tests pass: `make test`.
- Docstring coverage stays at or above 2%.
- No new security findings at medium or above (current: 0).
- No new dependency cycles (current: 0).
- Files stay under 300 lines where possible (`readmenator . lint`).
- Docs refreshed: `readmenator . --rebuild`, and decisions recorded in section 7.

## 6. Risks to respect

- God nodes (changes ripple widely): `minigccg2.s`, `minigccg3.s`, `minigccg4.s`, `minigcc.c`, `tests/t_outer_h.h`
- Hotspots (complex and central): `minigcc.c`, `tests/t_inline.c`, `test_include.c`, `tests/t_outer_h.h`, `tests/t_include.c`
- Full blast radius: `readmenator-agent/GOTCHAS.md`; findings: `readmenator-agent/SECURITY.md`.

## 7. Session log (preserved across rebuilds)

Append with `readmenator . remember "<note>" --kind <kind>` (kinds: business, decision, rule, workflow, style, deliverable, gotcha, todo, note) or the MCP tool `readmenator.remember`. Record business rules, decisions and their reasons, workflow changes, and anything the next session must not rediscover.

<!-- readmenator:memory:notes:begin -->
<!-- readmenator:memory:notes:end -->
