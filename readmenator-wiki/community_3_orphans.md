# orphans

*Community 3 | 61 files | cohesion 0.00*

## Definition

This community groups 61 file(s) rooted at `tests` with dominant language c (cohesion 0.00). Central symbols: `ASM_MAX_OPS`, `ASM_TMPL_SZ`, `ASM_TXT_SZ`, `CONST_VAR_FLAG`, `Color`, `FileContext`, `HASH_TABLE_SIZE`, `HEXED`. Core file: `minigccg2.s` (221 symbols). Documented purpose: Cleaning env.

## Files

### `tests` (52 files)

| File | Language | Layer | Symbols | Doc |
|------|----------|-------|---------|-----|
| `tests/neg_asm.c` | c | testing | 1 | no |
| `tests/neg_asm2.c` | c | testing | 1 | no |
| `tests/neg_asm3.c` | c | testing | 1 | no |
| `tests/neg_asm_ds.c` | c | testing | 2 | no |
| `tests/neg_attr.c` | c | testing | 1 | no |
| `tests/neg_comment.c` | c | testing | 1 | no |
| `tests/neg_float.c` | c | testing | 1 | no |
| `tests/neg_fnptr.c` | c | testing | 2 | no |
| `tests/neg_fnptr_call.c` | c | testing | 1 | no |
| `tests/neg_fnptr_cmp.c` | c | testing | 3 | no |
| `tests/neg_fnptr_cmp0.c` | c | testing | 2 | no |

### `.` (9 files)

| File | Language | Layer | Symbols | Doc |
|------|----------|-------|---------|-----|
| `minigcc.c` | c | utility | 152 | no |
| `minigccg2.s` | s | utility | 221 | no |
| `minigccg3.s` | s | utility | 221 | no |
| `minigccg4.s` | s | utility | 221 | no |
| `test.c` | c | testing | 1 | no |
| `test.sh` | sh | testing | 0 | yes |
| `test_all.sh` | sh | testing | 4 | yes |
| `test_for.c` | c | testing | 1 | no |
| `test_ld_selfhost.sh` | sh | testing | 2 | yes |

*... and 41 more files in this community.*


## Key Symbols

- `MAX_TOKEN_LEN` (macro, `minigcc.c:15`) `#define MAX_TOKEN_LEN`
- `MAX_SYMBOLS` (macro, `minigcc.c:16`) `#define MAX_SYMBOLS`
- `MAX_IDENT_LEN` (macro, `minigcc.c:17`) `#define MAX_IDENT_LEN`
- `MAX_SOURCE_SIZE` (macro, `minigcc.c:18`) `#define MAX_SOURCE_SIZE`
- `MAX_INCLUDE_DEPTH` (macro, `minigcc.c:19`) `#define MAX_INCLUDE_DEPTH`
- `MAX_PROCESSED_FILES` (macro, `minigcc.c:20`) `#define MAX_PROCESSED_FILES`
- `STACK_ALIGN` (macro, `minigcc.c:21`) `#define STACK_ALIGN`
- `LEX_KW_CAP` (macro, `minigcc.c:81`) `#define LEX_KW_CAP`
- `LEX_KW_BLOB` (macro, `minigcc.c:82`) `#define LEX_KW_BLOB`
- `FileContext` (struct, `minigcc.c:96`)
- `Symbol` (struct, `minigcc.c:109`)
- `HASH_TABLE_SIZE` (macro, `minigcc.c:132`) `#define HASH_TABLE_SIZE`
- `MAX_SCOPE_DEPTH` (macro, `minigcc.c:135`) `#define MAX_SCOPE_DEPTH`
- `MAX_FLOAT_CONSTS` (macro, `minigcc.c:167`) `#define MAX_FLOAT_CONSTS`
- `MAX_CASES_PER_SWITCH` (macro, `minigcc.c:172`) `#define MAX_CASES_PER_SWITCH`
- `MAX_STRINGS` (macro, `minigcc.c:184`) `#define MAX_STRINGS`
- `MAX_PTR_INITS` (macro, `minigcc.c:193`) `#define MAX_PTR_INITS`
- `MAX_STRUCT_MEMBERS` (macro, `minigcc.c:203`) `#define MAX_STRUCT_MEMBERS`
- `MAX_DEFINED_FUNCS` (macro, `minigcc.c:214`) `#define MAX_DEFINED_FUNCS`
- `MAX_IF_NESTING` (macro, `minigcc.c:219`) `#define MAX_IF_NESTING`
- `CONST_VAR_FLAG` (macro, `minigcc.c:220`) `#define CONST_VAR_FLAG`
- `MAX_MACROS` (macro, `minigcc.c:227`) `#define MAX_MACROS`
- `ParserState` (struct, `minigcc.c:230`)
- `save_parser_state` (function, `minigcc.c:259`) `static void save_parser_state(ParserState *state)`
- `restore_parser_state` (function, `minigcc.c:288`) `static void restore_parser_state(ParserState *state)`
- `Macro` (struct, `minigcc.c:321`)
- `find_macro` (function, `minigcc.c:329`) `static int find_macro(const char *name)`
- `add_macro` (function, `minigcc.c:337`) `static void add_macro(const char *name, int value)`
- `macro_skipws` (function, `minigcc.c:364`) `static void macro_skipws(void)`
- `macro_hex_digit` (function, `minigcc.c:368`) `static int macro_hex_digit(int c)`

## Internal vs External Edges

- Internal resolved imports (EXTRACTED): 0
- Cross-boundary resolved imports (EXTRACTED): 0

## Connections

- [INFERRED] shares_context community 1 <-> 3 (strength 0.5): Inferred shared context (layer testing) with no import path between community 1 (tests) and community 3 (orphans).
- [INFERRED] shares_context community 2 <-> 3 (strength 0.5): Inferred shared context (layer testing) with no import path between community 2 (tests) and community 3 (orphans).

## Risks

- [dataflow DEAD_STORE] `tests/neg_float.c:2` `main` `d`: `d` assigned at line 2 but never read afterwards.
- [dataflow DEAD_STORE] `tests/t_pointers.c:30` `main` `cp`: `cp` assigned at line 30 but never read afterwards.
- [dataflow DEAD_STORE] `tests/t_sizeof.c:6` `main` `lv`: `lv` assigned at line 6 but never read afterwards.
- [dataflow DEAD_STORE] `tests/t_sizeof.c:7` `main` `c`: `c` assigned at line 7 but never read afterwards.
- [dataflow DEAD_STORE] `tests/t_sizeof.c:8` `main` `d`: `d` assigned at line 8 but never read afterwards.
- [dataflow DEAD_STORE] `tests/t_sizeof.c:9` `main` `p`: `p` assigned at line 9 but never read afterwards.

## Open Questions

- Why do 58 file(s) lack file-level docs (e.g. `minigcc.c`)? What purpose do they serve?
- What would break if the most connected file in orphans changed?
- Should orphans be split, given cohesion 0.00?

## Sources

- `minigcc.c`
- `minigccg2.s`
- `minigccg3.s`
- `minigccg4.s`
- `test.c`
- `test.sh`
- `test_all.sh`
- `test_for.c`
- `test_ld_selfhost.sh`
- `tests/neg_asm.c`
- `tests/neg_asm2.c`
- `tests/neg_asm3.c`
- `tests/neg_asm_ds.c`
- `tests/neg_attr.c`
- `tests/neg_comment.c`
- `tests/neg_float.c`
- `tests/neg_fnptr.c`
- `tests/neg_fnptr_call.c`
- `tests/neg_fnptr_cmp.c`
- `tests/neg_fnptr_cmp0.c`
- *... and 41 more*
