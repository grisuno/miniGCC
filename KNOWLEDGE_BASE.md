# Polyglot Codebase Knowledge Graph

> Generated offline by **readmenator**. 10 files, 516 symbols, 7 imports. Supports C, C++, Python, Go, Rust, JS/TS, Java, C#, Shell, PHP, Dart, GDScript, Nim, ASM, Ruby, Swift, Kotlin, Scala, Lua, Elixir.
> No LLMs. No tokens. Pure static analysis. See more [here](https://github.com/grisuno/ReadMenator)

**Start here:** Statistics Dashboard for scope, God Nodes for blast radius, Architecture Reference for per-file API. Agents: prefer `readmenator-agent/INDEX.md` + `SYMBOLS.md`.

**Total Files Parsed:** 10 | **Total Symbols Extracted:** 516 | **Total Imports:** 7
 | **Resolved Imports:** 1

<!-- ranking_model: v1.0 | weights: {ppr:0.45,auth:0.2,test:0.15,doc:0.1,fresh:0.1} | alpha:0.85 | commit:b3ca3bb | date:2026-07-18 -->


## Table of Contents

1. [Statistics Dashboard](#statistics-dashboard)
2. [Architectural Layers](#architectural-layers)
3. [Ranked Context](#ranked-context)
4. [God Nodes](#god-nodes)
5. [Community Analysis](#community-analysis)
6. [Suggested Questions](#suggested-questions)
7. [Hotspot Analysis](#hotspot-analysis)
8. [Change Impact Analysis](#change-impact-analysis)
9. [Suggested Linting Rules](#suggested-linting-rules)
10. [Orphans](#orphans)
11. [Query Recipes](#query-recipes)
12. [Structural Knowledge Map](#structural-knowledge-map)
13. [UML Class Diagram](#uml-class-diagram)
14. [Code Property Graph](#code-property-graph)
15. [Architecture Reference](#architecture-reference)
    - [C (4 files)](#c-4-files)
    - [H (1 files)](#h-1-files)
    - [S (3 files)](#s-3-files)
    - [SH (2 files)](#sh-2-files)

---

## Statistics Dashboard

| Metric | Value |
|--------|-------|
| Total Files | 10 |
| Total Symbols | 516 |
| Total Imports | 7 |
| Call Edges | 0 |
| Inheritance Edges | 0 |
| Languages | 4 |
| Avg Symbols/File | 51.6 |
| Avg Imports/File | 0.7 |
| Resolved Imports | 1 |

### Top Files by Import Count (Fan-Out)

| File | Imports | Symbols | Language |
|------|---------|---------|----------|
| `minigcc.c` | 4 | 114 | c |
| `test_include.c` | 2 | 3 | c |
| `test_for.c` | 1 | 1 | c |

### Top Files by Imported-By Count (Fan-In)

| File | Imported By | Symbols | Language |
|------|-------------|---------|----------|
| `my_library.h` | 1 | 2 | h |

---

## Architectural Layers

Auto-detected from path patterns, naming conventions, and imported frameworks.

| Layer | Files |
|-------|-------|
| utility | 5 |
| testing | 5 |

### utility

- `minigcc.c` (c, 114 symbols)
- `minigccg2.s` (s, 131 symbols)
- `minigccg3.s` (s, 131 symbols)
- `minigccg4.s` (s, 131 symbols)
- `my_library.h` (h, 2 symbols)

### testing

- `test.c` (c, 1 symbols)
- `test.sh` (sh, 0 symbols)
- `test_for.c` (c, 1 symbols)
- `test_include.c` (c, 3 symbols)
- `test_ld_selfhost.sh` (sh, 2 symbols)

---

## Ranked Context

Files ranked by composite score for the current query context. The ranking combines Personalized PageRank (query relevance), global authority, test coverage, documentation coverage, and code freshness. Model: v1.0.

| Rank | File | Composite | PPR | Authority | Test | Doc |
|------|------|-----------|-----|-----------|------|-----|
| 1 | `my_library.h` | 0.5219 | 0.6491 | 0.6491 | 0.00 | 1.00 |
| 2 | `test_include.c` | 0.2947 | 0.3509 | 0.3509 | 0.00 | 0.67 |
| 3 | `test_for.c` | 0.2000 | 0.0000 | 0.0000 | 0.00 | 2.00 |
| 4 | `test.sh` | 0.1000 | 0.0000 | 0.0000 | 0.00 | 1.00 |
| 5 | `test_ld_selfhost.sh` | 0.0500 | 0.0000 | 0.0000 | 0.00 | 0.50 |
| 6 | `minigcc.c` | 0.0105 | 0.0000 | 0.0000 | 0.00 | 0.11 |
| 7 | `minigccg2.s` | 0.0000 | 0.0000 | 0.0000 | 0.00 | 0.00 |
| 8 | `minigccg3.s` | 0.0000 | 0.0000 | 0.0000 | 0.00 | 0.00 |
| 9 | `minigccg4.s` | 0.0000 | 0.0000 | 0.0000 | 0.00 | 0.00 |
| 10 | `test.c` | 0.0000 | 0.0000 | 0.0000 | 0.00 | 0.00 |

---

## God Nodes

Most architecturally central files ranked by combined import/export degree and symbol richness.

| File | Score | Connections | PageRank |
|------|-------|-------------|----------|
| `minigccg2.s` | 13.1 | | 0.0000 |
| `minigccg3.s` | 13.1 | | 0.0000 |
| `minigccg4.s` | 13.1 | | 0.0000 |
| `minigcc.c` | 11.4 | | 0.0000 |
| `test_include.c` | 2.3 | | 0.3509 |
| `my_library.h` | 2.2 | | 0.6491 |
| `test_ld_selfhost.sh` | 0.2 | | 0.0000 |
| `test.c` | 0.1 | | 0.0000 |
| `test_for.c` | 0.1 | | 0.0000 |
| `test.sh` | 0.0 | | 0.0000 |

---

## Community Analysis

Files grouped by import-based community detection. Cohesion measures how tightly connected each community is internally.

### root (Cohesion: 1.00)

**2 files** in this community:

- `my_library.h` (h, 2 symbols)
- `test_include.c` (c, 3 symbols)

---

## Suggested Questions

Auto-generated exploration prompts based on graph structure:

- What does minigccg2.s depend on, and what depends on it? (0 connections)
- What does minigccg3.s depend on, and what depends on it? (0 connections)
- What does minigccg4.s depend on, and what depends on it? (0 connections)
- What is FileContext in minigcc.c and how is it used?
- What is the overall architecture of this codebase?

---

## Hotspot Analysis

Files ranked by combined complexity (symbol count) and centrality (connection count). High-scoring files are architecturally critical and may need refactoring attention.

| File | Complexity | Centrality | Combined | Symbols | Connections |
|------|-----------|------------|----------|---------|-------------|
| `my_library.h` | 0.015 | 0.500 | 0.306 | 2 | 2 |
| `test_include.c` | 0.023 | 0.750 | 0.459 | 3 | 3 |
| `test_for.c` | 0.008 | 0.250 | 0.153 | 1 | 1 |
| `test.sh` | 0.000 | 0.000 | 0.000 | 0 | 0 |
| `test_ld_selfhost.sh` | 0.015 | 0.000 | 0.006 | 2 | 0 |
| `minigcc.c` | 0.870 | 1.000 | 0.948 | 114 | 4 |
| `minigccg2.s` | 1.000 | 0.000 | 0.400 | 131 | 0 |
| `minigccg3.s` | 1.000 | 0.000 | 0.400 | 131 | 0 |
| `minigccg4.s` | 1.000 | 0.000 | 0.400 | 131 | 0 |
| `test.c` | 0.008 | 0.000 | 0.003 | 1 | 0 |

---

## Change Impact Analysis

Files sorted by how many other files would be affected if they changed. High-impact files should be changed with caution.

| File | Direct Dependents | Transitive Dependents | Total Impact |
|------|------------------|----------------------|--------------|
| `my_library.h` | 1 | 0 | 1 |
| `minigcc.c` | 0 | 0 | 0 |
| `minigccg2.s` | 0 | 0 | 0 |
| `minigccg3.s` | 0 | 0 | 0 |
| `minigccg4.s` | 0 | 0 | 0 |
| `test.c` | 0 | 0 | 0 |
| `test.sh` | 0 | 0 | 0 |
| `test_for.c` | 0 | 0 | 0 |
| `test_include.c` | 0 | 0 | 0 |
| `test_ld_selfhost.sh` | 0 | 0 | 0 |

---

## Suggested Linting Rules

Automatically suggested linting and security rules based on patterns detected in the codebase. These can be exported as Semgrep rules using the `--export-rules` flag.

| Rule ID | Severity | Description | Language | Matches |
|---------|----------|-------------|----------|---------|
| `RM001` | info | Large number of functions in c: 98 total | c | 98 |
| `RM002` | info | Large number of functions in s: 393 total | s | 393 |

---

## Orphans

Files with no documentation or low connectivity. These are candidates for documentation investment or cleanup.

- `minigccg2.s` (131 symbols, no doc)
- `minigccg3.s` (131 symbols, no doc)
- `minigccg4.s` (131 symbols, no doc)
- `test.c` (1 symbols, no doc)

---

## Query Recipes

Example queries you can run against this knowledge base using the ranking engine:

```
# Find files most relevant to a concept
readmenator query "Where is the import resolver implemented?"

# Rank files by relevance to a topic
readmenator query "How does documentation generation work?"

# Explain why a file ranks highly
readmenator query "explain readmenator/_documentation.py"

# Trace dependency paths with ranked context
readmenator query "path from CLI to exporter"
```

The ranking model uses the following signals:

- **Personalized PageRank** (45% weight): query-specific relevance via seed propagation
- **Global Authority** (20% weight): structural importance via standard PageRank
- **Test Coverage** (15% weight): fraction of symbols referenced in test files
- **Doc Coverage** (10% weight): presence of docstrings and file-level docs
- **Freshness** (10% weight): recent modification activity

Results include score decomposition and justification paths for each ranked item.

---

## Structural Knowledge Map

```mermaid
graph TD
    classDef mod fill:#1e1e1e,stroke:#ff6666,stroke-width:2px,color:#fff;
    classDef cls fill:#2d2d2d,stroke:#4ec9b0,stroke-width:2px,color:#fff;
    classDef fn fill:#333,stroke:#dcdcaa,stroke-width:1px,color:#dcdcaa;
    classDef ext fill:#111,stroke:#666,stroke-dasharray:5 5,color:#aaa;
    minigcc_c["minigcc.c (c)"]
    class minigcc_c mod;
    minigcc_c_FileContext["FileContext"]
    class minigcc_c_FileContext cls;
    minigcc_c --> minigcc_c_FileContext
    minigcc_c_Symbol["Symbol"]
    class minigcc_c_Symbol cls;
    minigcc_c --> minigcc_c_Symbol
    minigcc_c_ParserState["ParserState"]
    class minigcc_c_ParserState cls;
    minigcc_c --> minigcc_c_ParserState
    minigcc_c_Macro["Macro"]
    class minigcc_c_Macro cls;
    minigcc_c --> minigcc_c_Macro
    minigcc_c_save_parser_state["save_parser_state"]
    class minigcc_c_save_parser_state fn;
    minigcc_c --> minigcc_c_save_parser_state
    subgraph community_0 ["root"]
    test_include_c["test_include.c (c)"]
    class test_include_c mod;
    test_for_c["test_for.c (c)"]
    class test_for_c mod;
    minigccg2_s["minigccg2.s (s)"]
    class minigccg2_s mod;
    minigccg3_s["minigccg3.s (s)"]
    class minigccg3_s mod;
    minigccg4_s["minigccg4.s (s)"]
    class minigccg4_s mod;
    my_library_h["my_library.h (h)"]
    class my_library_h mod;
    test_ld_selfhost_sh["test_ld_selfhost.sh (sh)"]
    class test_ld_selfhost_sh mod;
    test_c["test.c (c)"]
    class test_c mod;
    test_sh["test.sh (sh)"]
    class test_sh mod;
    end
    test_include_c -- resolved_imports --> my_library_h
    ext_stdio_h["stdio.h"]
    class ext_stdio_h ext;
    minigcc_c -.->|imports| ext_stdio_h
    ext_stdlib_h["stdlib.h"]
    class ext_stdlib_h ext;
    minigcc_c -.->|imports| ext_stdlib_h
    ext_string_h["string.h"]
    class ext_string_h ext;
    minigcc_c -.->|imports| ext_string_h
    ext_errno_h["errno.h"]
    class ext_errno_h ext;
    minigcc_c -.->|imports| ext_errno_h
    test_for_c -.->|imports| ext_stdio_h
    test_include_c -.->|imports| ext_stdio_h
    ext_my_library_h["my_library.h"]
    class ext_my_library_h ext;
    test_include_c -.->|imports| ext_my_library_h
```

---

## UML Class Diagram

Auto-generated Mermaid class diagram from parsed class-level symbols. Shows classes, structs, interfaces, traits, and their methods with inheritance and dependency relationships.

```mermaid
classDiagram
  class minigcc_c_FileContext {
    <<struct>>
    +save_parser_state(ParserState *state)
    +restore_parser_state(ParserState *state)
    +find_macro(const char *name)
    +add_macro(const char *name, int value)
    +macro_skipws(void)
    +macro_hex_digit(int c)
    +macro_digit_val(int c)
    +macro_primary(void)
    +macro_unary(void)
    +macro_mul(void)
  }
  class minigcc_c_Symbol {
    <<struct>>
    +save_parser_state(ParserState *state)
    +restore_parser_state(ParserState *state)
    +find_macro(const char *name)
    +add_macro(const char *name, int value)
    +macro_skipws(void)
    +macro_hex_digit(int c)
    +macro_digit_val(int c)
    +macro_primary(void)
    +macro_unary(void)
    +macro_mul(void)
  }
  class minigcc_c_ParserState {
    <<struct>>
    +save_parser_state(ParserState *state)
    +restore_parser_state(ParserState *state)
    +find_macro(const char *name)
    +add_macro(const char *name, int value)
    +macro_skipws(void)
    +macro_hex_digit(int c)
    +macro_digit_val(int c)
    +macro_primary(void)
    +macro_unary(void)
    +macro_mul(void)
  }
  class minigcc_c_Macro {
    <<struct>>
    +save_parser_state(ParserState *state)
    +restore_parser_state(ParserState *state)
    +find_macro(const char *name)
    +add_macro(const char *name, int value)
    +macro_skipws(void)
    +macro_hex_digit(int c)
    +macro_digit_val(int c)
    +macro_primary(void)
    +macro_unary(void)
    +macro_mul(void)
  }
```

---

## Code Property Graph

Machine-readable Code Property Graph (CPG) in JSON-LD format. This block allows AI agents to parse the full structural graph without additional file reads. Compatible with GraphRAG pipelines.

```json
{"@context": "https://schema.org", "analysis": {"communities": [{"cohesion": 1.0, "id": 0, "label": "root", "size": 2}], "god_nodes": [{"node_id": "minigccg2.s", "score": 13.1}, {"node_id": "minigccg3.s", "score": 13.1}, {"node_id": "minigccg4.s", "score": 13.1}, {"node_id": "minigcc.c", "score": 11.4}, {"node_id": "test_include.c", "score": 2.3}, {"node_id": "my_library.h", "score": 2.2}, {"node_id": "test_ld_selfhost.sh", "score": 0.2}, {"node_id": "test.c", "score": 0.1}, {"node_id": "test_for.c", "score": 0.1}, {"node_id": "test.sh", "score": 0.0}], "surprising_connections": []}, "edges": [{"confidence": "EXTRACTED", "relation": "imports", "source": "minigcc.c", "target": "stdio.h"}, {"confidence": "EXTRACTED", "relation": "imports", "source": "minigcc.c", "target": "stdlib.h"}, {"confidence": "EXTRACTED", "relation": "imports", "source": "minigcc.c", "target": "string.h"}, {"confidence": "EXTRACTED", "relation": "imports", "source": "minigcc.c", "target": "errno.h"}, {"confidence": "EXTRACTED", "relation": "imports", "source": "test_for.c", "target": "stdio.h"}, {"confidence": "EXTRACTED", "relation": "imports", "source": "test_include.c", "target": "stdio.h"}, {"confidence": "EXTRACTED", "relation": "imports", "source": "test_include.c", "target": "my_library.h"}, {"confidence": "EXTRACTED", "relation": "resolved_imports", "source": "test_include.c", "target": "my_library.h"}], "generator": "readmenator", "metadata": {"edge_count": 8, "file_count": 10, "language_count": 4, "symbol_count": 516}, "nodes": [{"id": "minigcc.c", "kind": "module", "label": "minigcc.c", "language": "c", "sha256": "d3db8588ef3dff34", "symbol_count": 114, "symbols": [{"kind": "struct", "line": 76, "name": "FileContext"}, {"kind": "struct", "line": 89, "name": "Symbol"}, {"kind": "struct", "line": 191, "name": "ParserState"}, {"kind": "struct", "line": 270, "name": "Macro"}, {"kind": "function", "line": 215, "name": "save_parser_state", "signature": "static void save_parser_state(ParserState *state)"}, {"kind": "function", "line": 240, "name": "restore_parser_state", "signature": "static void restore_parser_state(ParserState *state)"}, {"kind": "function", "line": 276, "name": "find_macro", "signature": "static int find_macro(const char *name)"}, {"kind": "function", "line": 285, "name": "add_macro", "signature": "static void add_macro(const char *name, int value)"}, {"kind": "function", "line": 312, "name": "macro_skipws", "signature": "static void macro_skipws(void)"}, {"kind": "function", "line": 316, "name": "macro_hex_digit", "signature": "static int macro_hex_digit(int c)"}, {"kind": "function", "line": 323, "name": "macro_digit_val", "signature": "static int macro_digit_val(int c)"}, {"kind": "function", "line": 330, "name": "macro_primary", "signature": "static int macro_primary(void)"}, {"kind": "function", "line": 404, "name": "macro_unary", "signature": "static int macro_unary(void)"}, {"kind": "function", "line": 413, "name": "macro_mul", "signature": "static int macro_mul(void)"}, {"kind": "function", "line": 438, "name": "macro_add", "signature": "static int macro_add(void)"}, {"kind": "function", "line": 455, "name": "macro_shift", "signature": "static int macro_shift(void)"}, {"kind": "function", "line": 472, "name": "macro_cmp", "signature": "static int macro_cmp(void)"}, {"kind": "function", "line": 495, "name": "macro_eq", "signature": "static int macro_eq(void)"}, {"kind": "function", "line": 512, "name": "macro_bitand", "signature": "static int macro_bitand(void)"}, {"kind": "function", "line": 526, "name": "macro_bitxor", "signature": "static int macro_bitxor(void)"}, {"kind": "function", "line": 540, "name": "macro_bitor", "signature": "static int macro_bitor(void)"}, {"kind": "function", "line": 554, "name": "macro_logand", "signature": "static int macro_logand(void)"}, {"kind": "function", "line": 568, "name": "macro_or_expr", "signature": "static int macro_or_expr(void)"}, {"kind": "function", "line": 582, "name": "macro_fold", "signature": "static int macro_fold(void)"}, {"kind": "function", "line": 587, "name": "error", "signature": "static void error(const char *msg)"}, {"kind": "function", "line": 593, "name": "safe_malloc", "signature": "static void *safe_malloc(size_t size)"}, {"kind": "function", "line": 602, "name": "safe_strcpy", "signature": "static void safe_strcpy(char *dst, const char *src, size_t dst_sz)"}, {"kind": "function", "line": 611, "name": "safe_strtoll", "signature": "static long safe_strtoll(const char *s)"}, {"kind": "function", "line": 624, "name": "is_file_processed", "signature": "static int is_file_processed(const char *path)"}, {"kind": "function", "line": 633, "name": "mark_file_processed", "signature": "static void mark_file_processed(const char *path)"}, {"kind": "function", "line": 645, "name": "get_dir_from_path", "signature": "static void get_dir_from_path(const char *path, char *dir, int dir_sz)"}, {"kind": "function", "line": 664, "name": "resolve_local_include", "signature": "static char *resolve_local_include(const char *target)"}, {"kind": "function", "line": 703, "name": "read_include_file", "signature": "static char *read_include_file(const char *path)"}, {"doc": "Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multiplication overflow.", "kind": "function", "line": 728, "name": "hash_name", "signature": "static int hash_name(const char *name)"}, {"kind": "function", "line": 737, "name": "hash_init", "signature": "static void hash_init(void)"}, {"kind": "function", "line": 742, "name": "push_scope", "signature": "static void push_scope(void)"}, {"kind": "function", "line": 750, "name": "pop_scope", "signature": "static void pop_scope(void)"}, {"doc": "Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (needed for the two-pass function body parsing pattern).", "kind": "function", "line": 780, "name": "truncate_symbols", "signature": "static void truncate_symbols(int start_idx)"}, {"kind": "function", "line": 798, "name": "my_isspace", "signature": "static int my_isspace(int c)"}, {"kind": "function", "line": 808, "name": "my_isalpha", "signature": "static int my_isalpha(int c)"}, {"kind": "function", "line": 814, "name": "my_isdigit", "signature": "static int my_isdigit(int c)"}, {"kind": "function", "line": 819, "name": "my_isalnum", "signature": "static int my_isalnum(int c)"}, {"doc": "} static int my_isdigit(int c) { if (c >= '0' && c <= '9') return 1; return 0; } static int my_isalnum(int c) { if (my_isalpha(c)) return 1; if (my_isdigit(c)) return 1; return 0; } /* Lexer", "kind": "function", "line": 827, "name": "next_token", "signature": "static void next_token(void)"}, {"kind": "function", "line": 1262, "name": "match", "signature": "static void match(int expected)"}, {"kind": "function", "line": 1267, "name": "emit", "signature": "static void emit(const char *s)"}, {"kind": "function", "line": 1281, "name": "emit_i", "signature": "static void emit_i(const char *fmt, int v)"}, {"kind": "function", "line": 1287, "name": "emit_s", "signature": "static void emit_s(const char *fmt, const char *s)"}, {"kind": "function", "line": 1293, "name": "emit_is", "signature": "static void emit_is(const char *fmt, int v, const char *s)"}, {"kind": "function", "line": 1299, "name": "emit_si", "signature": "static void emit_si(const char *fmt, const char *s, int v)"}, {"doc": "Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by the string pool and by string * initializers of global arrays.", "kind": "function", "line": 1309, "name": "emit_asciz_body", "signature": "static void emit_asciz_body(const char *s)"}, {"kind": "function", "line": 1327, "name": "emit_label", "signature": "static void emit_label(int label)"}, {"doc": "else if (c == '\\a') fprintf(output, \"\\\\a\"); else if (c == '\\b') fprintf(output, \"\\\\b\"); else if (c >= 32 && c <= 126) fputc(c, output); else fprintf(output, \"\\\\%03o\", c); s++; } } static void emit_label(int label) { if (emit_enabled) fprintf(output, \".L%d:\\n\", label); } /* Symbol table", "kind": "function", "line": 1334, "name": "find_symbol", "signature": "static int find_symbol(const char *name)"}, {"kind": "function", "line": 1344, "name": "add_symbol", "signature": "static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ..."}, {"doc": "Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace-initialized local arrays correctly (they overlap adjacent locals).", "kind": "function", "line": 1405, "name": "arg_reg", "signature": "static const char *arg_reg(int i)"}, {"doc": "Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace-initialized local arrays correctly (they overlap adjacent locals). static const char *arg_reg(int i) { if (i == 0) return \"%rdi\"; if (i == 1) return \"%rsi\"; if (i == 2) return \"%rdx\"; if (i == 3) return \"%rcx\"; if (i == 4) return \"%r8\"; return \"%r9\"; } /* Predefined libc global symbol names, indexed; returns NULL past the end.", "kind": "function", "line": 1415, "name": "libc_global_name", "signature": "static const char *libc_global_name(int i)"}, {"kind": "function", "line": 1427, "name": "unary", "signature": "static void unary(void)"}, {"kind": "function", "line": 1677, "name": "lvalue_address", "signature": "static void lvalue_address(void)"}, {"kind": "function", "line": 1729, "name": "handle_postfix", "signature": "static void handle_postfix(int is_lvalue)"}, {"kind": "function", "line": 1863, "name": "unary_expr", "signature": "static void unary_expr(void)"}, {"kind": "function", "line": 1878, "name": "multiplicative_expr", "signature": "static void multiplicative_expr(void)"}, {"kind": "function", "line": 1942, "name": "additive_expr", "signature": "static void additive_expr(void)"}, {"kind": "function", "line": 1997, "name": "shift_expr", "signature": "static void shift_expr(void)"}, {"kind": "function", "line": 2016, "name": "relational_expr", "signature": "static void relational_expr(void)"}, {"kind": "function", "line": 2069, "name": "equality_expr", "signature": "static void equality_expr(void)"}, {"kind": "function", "line": 2118, "name": "bitwise_and_expr", "signature": "static void bitwise_and_expr(void)"}, {"kind": "function", "line": 2130, "name": "bitwise_xor_expr", "signature": "static void bitwise_xor_expr(void)"}, {"kind": "function", "line": 2142, "name": "bitwise_or_expr", "signature": "static void bitwise_or_expr(void)"}, {"kind": "function", "line": 2154, "name": "logical_and_expr", "signature": "static void logical_and_expr(void)"}, {"kind": "function", "line": 2174, "name": "logical_or_expr", "signature": "static void logical_or_expr(void)"}, {"kind": "function", "line": 2194, "name": "conditional_expr", "signature": "static void conditional_expr(void)"}, {"kind": "function", "line": 2212, "name": "assignment_expr", "signature": "static void assignment_expr(void)"}, {"kind": "function", "line": 2373, "name": "statement", "signature": "static void statement(void)"}, {"kind": "function", "line": 3030, "name": "parse_function", "signature": "static void parse_function(const char *name, int ret_type)"}, {"kind": "function", "line": 3157, "name": "parse_enum", "signature": "static void parse_enum(void)"}, {"kind": "function", "line": 3206, "name": "skip_struct", "signature": "static void skip_struct(void)"}, {"kind": "function", "line": 3270, "name": "skip_typedef", "signature": "static void skip_typedef(void)"}, {"doc": "s->const_value = 8;  /* just a marker /* If a struct was just parsed, store its size if (struct_total_size > 0) s->const_value = struct_total_size; { int h = hash_name(last_name); s->next_hash = hash_table[h]; hash_table[h] = symbol_count - 1; } } match(';'); } /* Storage directive for a datum of `size` bytes.", "kind": "function", "line": 3325, "name": "data_directive", "signature": "static const char *data_directive(int size)"}, {"doc": "} } match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(int size) { if (size == 1) return \"    .byte %d\"; if (size == 2) return \"    .word %d\"; if (size == 4) return \"    .long %d\"; return \"    .quad %d\"; } /* Reserve zero-initialized storage for a global.", "kind": "function", "line": 3333, "name": "emit_global_bss", "signature": "static void emit_global_bss(const char *name, int is_static, int size)"}, {"kind": "function", "line": 3340, "name": "emit_global_data_head", "signature": "static void emit_global_data_head(const char *name, int is_static)"}, {"doc": "Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro standing for one. * Returns 1 when a constant was consumed.", "kind": "function", "line": 3350, "name": "parse_const_int", "signature": "static int parse_const_int(long long *out)"}, {"doc": "} if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg ? -v : v; return 1; } } return 0; } /* Record a string literal in the pool and return its label index.", "kind": "function", "line": 3373, "name": "intern_string", "signature": "static int intern_string(const char *text)"}, {"doc": "Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is the declared byte size and is updated in place when the initializer determines the length of an unsized array. Returns 1 when the initializer was materialized, 0 when the form is unsupported, in which case nothing was emitted and the caller falls back to * zero-initialized storage.", "kind": "function", "line": 3390, "name": "emit_global_initializer", "signature": "static int emit_global_initializer(const char *name, int is_static, int *size,\n                  ..."}, {"kind": "function", "line": 3454, "name": "parse_program", "signature": "static void parse_program(void)"}, {"kind": "function", "line": 3605, "name": "emit_float_consts", "signature": "static void emit_float_consts(void)"}, {"kind": "function", "line": 3615, "name": "emit_string_pool", "signature": "static void emit_string_pool(void)"}, {"kind": "function", "line": 3625, "name": "main", "signature": "int main(int argc, char **argv)"}, {"kind": "function", "line": 589, "name": "fprintf", "signature": "fprintf(stderr, \"%s:%d: Error at token '%s': %s\\n\", current_file ? current_file : \"(unknown)\", line, token, msg);"}, {"kind": "function", "line": 591, "name": "exit", "signature": "exit(EXIT_FAILURE);"}, {"kind": "function", "line": 668, "name": "fclose", "signature": "fclose(f);"}, {"kind": "function", "line": 707, "name": "fseek", "signature": "fseek(f, 0, SEEK_END);"}, {"kind": "function", "line": 713, "name": "rewind", "signature": "rewind(f);"}, {"kind": "function", "line": 717, "name": "free", "signature": "free(buf);"}, {"kind": "function", "line": 1062, "name": "snprintf", "signature": "snprintf(token, MAX_TOKEN_LEN, \"%d\", macros[mi].value);"}, {"kind": "function", "line": 1104, "name": "strcpy", "signature": "strcpy(float_const_str[float_const_count], token);"}, {"kind": "function", "line": 1272, "name": "fputc", "signature": "fputc('%', output);"}, {"kind": "function", "line": 1350, "name": "strncpy", "signature": "strncpy(d, name, MAX_IDENT_LEN - 1);"}, {"kind": "function", "line": 2421, "name": "memcpy", "signature": "memcpy(varname, token, nlen);"}, {"kind": "macro", "line": 14, "name": "MAX_TOKEN_LEN", "signature": "#define MAX_TOKEN_LEN"}, {"kind": "macro", "line": 16, "name": "MAX_SYMBOLS", "signature": "#define MAX_SYMBOLS"}, {"kind": "macro", "line": 17, "name": "MAX_IDENT_LEN", "signature": "#define MAX_IDENT_LEN"}, {"kind": "macro", "line": 18, "name": "MAX_SOURCE_SIZE", "signature": "#define MAX_SOURCE_SIZE"}, {"kind": "macro", "line": 19, "name": "MAX_INCLUDE_DEPTH", "signature": "#define MAX_INCLUDE_DEPTH"}, {"kind": "macro", "line": 20, "name": "MAX_PROCESSED_FILES", "signature": "#define MAX_PROCESSED_FILES"}, {"kind": "macro", "line": 21, "name": "STACK_ALIGN", "signature": "#define STACK_ALIGN"}, {"kind": "macro", "line": 111, "name": "HASH_TABLE_SIZE", "signature": "#define HASH_TABLE_SIZE"}, {"kind": "macro", "line": 113, "name": "MAX_SCOPE_DEPTH", "signature": "#define MAX_SCOPE_DEPTH"}, {"kind": "macro", "line": 135, "name": "MAX_FLOAT_CONSTS", "signature": "#define MAX_FLOAT_CONSTS"}, {"kind": "macro", "line": 140, "name": "MAX_CASES_PER_SWITCH", "signature": "#define MAX_CASES_PER_SWITCH"}, {"kind": "macro", "line": 153, "name": "MAX_STRINGS", "signature": "#define MAX_STRINGS"}, {"kind": "macro", "line": 162, "name": "MAX_PTR_INITS", "signature": "#define MAX_PTR_INITS"}, {"kind": "macro", "line": 172, "name": "MAX_STRUCT_MEMBERS", "signature": "#define MAX_STRUCT_MEMBERS"}, {"kind": "macro", "line": 179, "name": "MAX_IF_NESTING", "signature": "#define MAX_IF_NESTING"}, {"kind": "macro", "line": 181, "name": "CONST_VAR_FLAG", "signature": "#define CONST_VAR_FLAG"}, {"kind": "macro", "line": 187, "name": "MAX_MACROS", "signature": "#define MAX_MACROS"}]}, {"id": "minigccg2.s", "kind": "module", "label": "minigccg2.s", "language": "s", "sha256": "a908f92d869c9c2d", "symbol_count": 131, "symbols": [{"kind": "function", "line": 3, "name": "input_ptr"}, {"kind": "function", "line": 7, "name": "source_start"}, {"kind": "function", "line": 11, "name": "token"}, {"kind": "function", "line": 15, "name": "tok"}, {"kind": "function", "line": 19, "name": "line"}, {"kind": "function", "line": 23, "name": "output"}, {"kind": "function", "line": 27, "name": "ctx_stack"}, {"kind": "function", "line": 31, "name": "ctx_top"}, {"kind": "function", "line": 35, "name": "current_file"}, {"kind": "function", "line": 39, "name": "processed_files"}, {"kind": "function", "line": 43, "name": "processed_count"}, {"kind": "function", "line": 47, "name": "symbols"}, {"kind": "function", "line": 51, "name": "symbol_count"}, {"kind": "function", "line": 55, "name": "hash_table"}, {"kind": "function", "line": 59, "name": "scope_stack_sym"}, {"kind": "function", "line": 63, "name": "scope_stack_stk"}, {"kind": "function", "line": 67, "name": "scope_depth"}, {"kind": "function", "line": 71, "name": "stack_size"}, {"kind": "function", "line": 75, "name": "label_counter"}, {"kind": "function", "line": 79, "name": "function_has_return"}, {"kind": "function", "line": 83, "name": "emit_enabled"}, {"kind": "function", "line": 87, "name": "max_func_stack"}, {"kind": "function", "line": 91, "name": "assign_size"}, {"kind": "function", "line": 95, "name": "expr_pointed"}, {"kind": "function", "line": 99, "name": "current_elem_size"}, {"kind": "function", "line": 103, "name": "current_elem_size2"}, {"kind": "function", "line": 107, "name": "no_postfix_deref"}, {"kind": "function", "line": 111, "name": "expr_type"}, {"kind": "function", "line": 115, "name": "static_flag"}, {"kind": "function", "line": 119, "name": "unsigned_type"}, {"kind": "function", "line": 123, "name": "const_flag"}, {"kind": "function", "line": 127, "name": "extern_flag"}, {"kind": "function", "line": 131, "name": "global_emit_deferred"}, {"kind": "function", "line": 135, "name": "float_const_str"}, {"kind": "function", "line": 139, "name": "float_const_is_float"}, {"kind": "function", "line": 143, "name": "float_const_count"}, {"kind": "function", "line": 147, "name": "switch_case_values"}, {"kind": "function", "line": 151, "name": "switch_case_labels"}, {"kind": "function", "line": 155, "name": "switch_case_count"}, {"kind": "function", "line": 159, "name": "switch_has_default"}, {"kind": "function", "line": 163, "name": "switch_default_label"}, {"kind": "function", "line": 167, "name": "break_target"}, {"kind": "function", "line": 171, "name": "break_target_valid"}, {"kind": "function", "line": 175, "name": "continue_target"}, {"kind": "function", "line": 179, "name": "continue_target_valid"}, {"kind": "function", "line": 183, "name": "str_label_counter"}, {"kind": "function", "line": 187, "name": "string_pool"}, {"kind": "function", "line": 191, "name": "string_count"}, {"kind": "function", "line": 195, "name": "ptr_init_name"}, {"kind": "function", "line": 199, "name": "ptr_init_label"}, {"kind": "function", "line": 203, "name": "ptr_init_count"}, {"kind": "function", "line": 207, "name": "struct_total_size"}, {"kind": "function", "line": 211, "name": "struct_member_names"}, {"kind": "function", "line": 215, "name": "struct_member_offsets"}, {"kind": "function", "line": 219, "name": "struct_member_sizes"}, {"kind": "function", "line": 223, "name": "struct_member_elem_sizes"}, {"kind": "function", "line": 227, "name": "struct_member_count"}, {"kind": "function", "line": 231, "name": "if_nest"}, {"kind": "function", "line": 235, "name": "if_depth"}, {"kind": "function", "line": 240, "name": "macro_count"}, {"kind": "function", "line": 244, "name": "save_parser_state"}, {"kind": "function", "line": 383, "name": "restore_parser_state"}, {"kind": "function", "line": 571, "name": "macros"}, {"kind": "function", "line": 575, "name": "find_macro"}, {"kind": "function", "line": 639, "name": "add_macro"}, {"kind": "function", "line": 769, "name": "error"}, {"kind": "function", "line": 821, "name": "safe_malloc"}, {"kind": "function", "line": 876, "name": "safe_strcpy"}, {"kind": "function", "line": 953, "name": "safe_strtoll"}, {"kind": "function", "line": 1068, "name": "is_file_processed"}, {"kind": "function", "line": 1129, "name": "mark_file_processed"}, {"kind": "function", "line": 1241, "name": "get_dir_from_path"}, {"kind": "function", "line": 1384, "name": "resolve_local_include"}, {"kind": "function", "line": 1834, "name": "read_include_file"}, {"kind": "function", "line": 2042, "name": "hash_name"}, {"kind": "function", "line": 2100, "name": "hash_init"}, {"kind": "function", "line": 2139, "name": "push_scope"}, {"kind": "function", "line": 2191, "name": "pop_scope"}, {"kind": "function", "line": 2387, "name": "truncate_symbols"}, {"kind": "function", "line": 2540, "name": "my_isspace"}, {"kind": "function", "line": 2629, "name": "my_isalpha"}, {"kind": "function", "line": 2698, "name": "my_isdigit"}, {"kind": "function", "line": 2738, "name": "my_isalnum"}, {"kind": "function", "line": 2783, "name": "next_token"}, {"kind": "function", "line": 2787, "name": "restart"}, {"kind": "function", "line": 8892, "name": "match"}, {"kind": "function", "line": 8930, "name": "emit"}, {"kind": "function", "line": 9044, "name": "emit_i"}, {"kind": "function", "line": 9093, "name": "emit_s"}, {"kind": "function", "line": 9142, "name": "emit_is"}, {"kind": "function", "line": 9195, "name": "emit_si"}, {"kind": "function", "line": 9248, "name": "emit_asciz_body"}, {"kind": "function", "line": 9572, "name": "emit_label"}, {"kind": "function", "line": 9601, "name": "find_symbol"}, {"kind": "function", "line": 9688, "name": "add_symbol"}, {"kind": "function", "line": 10056, "name": "arg_reg"}, {"kind": "function", "line": 10132, "name": "libc_global_name"}, {"kind": "function", "line": 10260, "name": "unary"}, {"kind": "function", "line": 12789, "name": "lvalue_address"}, {"kind": "function", "line": 13294, "name": "handle_postfix"}, {"kind": "function", "line": 14271, "name": "unary_expr"}, {"kind": "function", "line": 14296, "name": "multiplicative_expr"}, {"kind": "function", "line": 14918, "name": "additive_expr"}, {"kind": "function", "line": 15413, "name": "shift_expr"}, {"kind": "function", "line": 15559, "name": "relational_expr"}, {"kind": "function", "line": 16161, "name": "equality_expr"}, {"kind": "function", "line": 16639, "name": "bitwise_and_expr"}, {"kind": "function", "line": 16717, "name": "bitwise_xor_expr"}, {"kind": "function", "line": 16795, "name": "bitwise_or_expr"}, {"kind": "function", "line": 16873, "name": "logical_and_expr"}, {"kind": "function", "line": 17036, "name": "logical_or_expr"}, {"kind": "function", "line": 17199, "name": "conditional_expr"}, {"kind": "function", "line": 17331, "name": "assignment_expr"}, {"kind": "function", "line": 19851, "name": "statement"}, {"kind": "function", "line": 23297, "name": "restart_typedef"}, {"kind": "function", "line": 24328, "name": "restart_int"}, {"kind": "function", "line": 25484, "name": "parse_function"}, {"kind": "function", "line": 26800, "name": "parse_enum"}, {"kind": "function", "line": 27212, "name": "skip_struct"}, {"kind": "function", "line": 27798, "name": "skip_typedef"}, {"kind": "function", "line": 28288, "name": "data_directive"}, {"kind": "function", "line": 28338, "name": "emit_global_bss"}, {"kind": "function", "line": 28429, "name": "emit_global_data_head"}, {"kind": "function", "line": 28484, "name": "parse_const_int"}, {"kind": "function", "line": 28647, "name": "intern_string"}, {"kind": "function", "line": 28740, "name": "emit_global_initializer"}, {"kind": "function", "line": 29457, "name": "parse_program"}, {"kind": "function", "line": 31173, "name": "emit_float_consts"}, {"kind": "function", "line": 31272, "name": "emit_string_pool"}, {"kind": "function", "line": 31374, "name": "main"}, {"kind": "function", "line": 34714, "name": "_start"}]}, {"id": "minigccg3.s", "kind": "module", "label": "minigccg3.s", "language": "s", "sha256": "4c5938eac34ce670", "symbol_count": 131, "symbols": [{"kind": "function", "line": 3, "name": "input_ptr"}, {"kind": "function", "line": 7, "name": "source_start"}, {"kind": "function", "line": 11, "name": "token"}, {"kind": "function", "line": 15, "name": "tok"}, {"kind": "function", "line": 19, "name": "line"}, {"kind": "function", "line": 23, "name": "output"}, {"kind": "function", "line": 27, "name": "ctx_stack"}, {"kind": "function", "line": 31, "name": "ctx_top"}, {"kind": "function", "line": 35, "name": "current_file"}, {"kind": "function", "line": 39, "name": "processed_files"}, {"kind": "function", "line": 43, "name": "processed_count"}, {"kind": "function", "line": 47, "name": "symbols"}, {"kind": "function", "line": 51, "name": "symbol_count"}, {"kind": "function", "line": 55, "name": "hash_table"}, {"kind": "function", "line": 59, "name": "scope_stack_sym"}, {"kind": "function", "line": 63, "name": "scope_stack_stk"}, {"kind": "function", "line": 67, "name": "scope_depth"}, {"kind": "function", "line": 71, "name": "stack_size"}, {"kind": "function", "line": 75, "name": "label_counter"}, {"kind": "function", "line": 79, "name": "function_has_return"}, {"kind": "function", "line": 83, "name": "emit_enabled"}, {"kind": "function", "line": 87, "name": "max_func_stack"}, {"kind": "function", "line": 91, "name": "assign_size"}, {"kind": "function", "line": 95, "name": "expr_pointed"}, {"kind": "function", "line": 99, "name": "current_elem_size"}, {"kind": "function", "line": 103, "name": "current_elem_size2"}, {"kind": "function", "line": 107, "name": "no_postfix_deref"}, {"kind": "function", "line": 111, "name": "expr_type"}, {"kind": "function", "line": 115, "name": "static_flag"}, {"kind": "function", "line": 119, "name": "unsigned_type"}, {"kind": "function", "line": 123, "name": "const_flag"}, {"kind": "function", "line": 127, "name": "extern_flag"}, {"kind": "function", "line": 131, "name": "global_emit_deferred"}, {"kind": "function", "line": 135, "name": "float_const_str"}, {"kind": "function", "line": 139, "name": "float_const_is_float"}, {"kind": "function", "line": 143, "name": "float_const_count"}, {"kind": "function", "line": 147, "name": "switch_case_values"}, {"kind": "function", "line": 151, "name": "switch_case_labels"}, {"kind": "function", "line": 155, "name": "switch_case_count"}, {"kind": "function", "line": 159, "name": "switch_has_default"}, {"kind": "function", "line": 163, "name": "switch_default_label"}, {"kind": "function", "line": 167, "name": "break_target"}, {"kind": "function", "line": 171, "name": "break_target_valid"}, {"kind": "function", "line": 175, "name": "continue_target"}, {"kind": "function", "line": 179, "name": "continue_target_valid"}, {"kind": "function", "line": 183, "name": "str_label_counter"}, {"kind": "function", "line": 187, "name": "string_pool"}, {"kind": "function", "line": 191, "name": "string_count"}, {"kind": "function", "line": 195, "name": "ptr_init_name"}, {"kind": "function", "line": 199, "name": "ptr_init_label"}, {"kind": "function", "line": 203, "name": "ptr_init_count"}, {"kind": "function", "line": 207, "name": "struct_total_size"}, {"kind": "function", "line": 211, "name": "struct_member_names"}, {"kind": "function", "line": 215, "name": "struct_member_offsets"}, {"kind": "function", "line": 219, "name": "struct_member_sizes"}, {"kind": "function", "line": 223, "name": "struct_member_elem_sizes"}, {"kind": "function", "line": 227, "name": "struct_member_count"}, {"kind": "function", "line": 231, "name": "if_nest"}, {"kind": "function", "line": 235, "name": "if_depth"}, {"kind": "function", "line": 240, "name": "macro_count"}, {"kind": "function", "line": 244, "name": "save_parser_state"}, {"kind": "function", "line": 383, "name": "restore_parser_state"}, {"kind": "function", "line": 571, "name": "macros"}, {"kind": "function", "line": 575, "name": "find_macro"}, {"kind": "function", "line": 639, "name": "add_macro"}, {"kind": "function", "line": 769, "name": "error"}, {"kind": "function", "line": 821, "name": "safe_malloc"}, {"kind": "function", "line": 876, "name": "safe_strcpy"}, {"kind": "function", "line": 953, "name": "safe_strtoll"}, {"kind": "function", "line": 1068, "name": "is_file_processed"}, {"kind": "function", "line": 1129, "name": "mark_file_processed"}, {"kind": "function", "line": 1241, "name": "get_dir_from_path"}, {"kind": "function", "line": 1384, "name": "resolve_local_include"}, {"kind": "function", "line": 1834, "name": "read_include_file"}, {"kind": "function", "line": 2042, "name": "hash_name"}, {"kind": "function", "line": 2100, "name": "hash_init"}, {"kind": "function", "line": 2139, "name": "push_scope"}, {"kind": "function", "line": 2191, "name": "pop_scope"}, {"kind": "function", "line": 2387, "name": "truncate_symbols"}, {"kind": "function", "line": 2540, "name": "my_isspace"}, {"kind": "function", "line": 2629, "name": "my_isalpha"}, {"kind": "function", "line": 2698, "name": "my_isdigit"}, {"kind": "function", "line": 2738, "name": "my_isalnum"}, {"kind": "function", "line": 2783, "name": "next_token"}, {"kind": "function", "line": 2787, "name": "restart"}, {"kind": "function", "line": 8892, "name": "match"}, {"kind": "function", "line": 8930, "name": "emit"}, {"kind": "function", "line": 9044, "name": "emit_i"}, {"kind": "function", "line": 9093, "name": "emit_s"}, {"kind": "function", "line": 9142, "name": "emit_is"}, {"kind": "function", "line": 9195, "name": "emit_si"}, {"kind": "function", "line": 9248, "name": "emit_asciz_body"}, {"kind": "function", "line": 9572, "name": "emit_label"}, {"kind": "function", "line": 9601, "name": "find_symbol"}, {"kind": "function", "line": 9688, "name": "add_symbol"}, {"kind": "function", "line": 10056, "name": "arg_reg"}, {"kind": "function", "line": 10132, "name": "libc_global_name"}, {"kind": "function", "line": 10260, "name": "unary"}, {"kind": "function", "line": 12789, "name": "lvalue_address"}, {"kind": "function", "line": 13294, "name": "handle_postfix"}, {"kind": "function", "line": 14271, "name": "unary_expr"}, {"kind": "function", "line": 14296, "name": "multiplicative_expr"}, {"kind": "function", "line": 14918, "name": "additive_expr"}, {"kind": "function", "line": 15413, "name": "shift_expr"}, {"kind": "function", "line": 15559, "name": "relational_expr"}, {"kind": "function", "line": 16161, "name": "equality_expr"}, {"kind": "function", "line": 16639, "name": "bitwise_and_expr"}, {"kind": "function", "line": 16717, "name": "bitwise_xor_expr"}, {"kind": "function", "line": 16795, "name": "bitwise_or_expr"}, {"kind": "function", "line": 16873, "name": "logical_and_expr"}, {"kind": "function", "line": 17036, "name": "logical_or_expr"}, {"kind": "function", "line": 17199, "name": "conditional_expr"}, {"kind": "function", "line": 17331, "name": "assignment_expr"}, {"kind": "function", "line": 19851, "name": "statement"}, {"kind": "function", "line": 23297, "name": "restart_typedef"}, {"kind": "function", "line": 24328, "name": "restart_int"}, {"kind": "function", "line": 25484, "name": "parse_function"}, {"kind": "function", "line": 26800, "name": "parse_enum"}, {"kind": "function", "line": 27212, "name": "skip_struct"}, {"kind": "function", "line": 27798, "name": "skip_typedef"}, {"kind": "function", "line": 28288, "name": "data_directive"}, {"kind": "function", "line": 28338, "name": "emit_global_bss"}, {"kind": "function", "line": 28429, "name": "emit_global_data_head"}, {"kind": "function", "line": 28484, "name": "parse_const_int"}, {"kind": "function", "line": 28647, "name": "intern_string"}, {"kind": "function", "line": 28740, "name": "emit_global_initializer"}, {"kind": "function", "line": 29457, "name": "parse_program"}, {"kind": "function", "line": 31173, "name": "emit_float_consts"}, {"kind": "function", "line": 31272, "name": "emit_string_pool"}, {"kind": "function", "line": 31374, "name": "main"}, {"kind": "function", "line": 34714, "name": "_start"}]}, {"id": "minigccg4.s", "kind": "module", "label": "minigccg4.s", "language": "s", "sha256": "28ca85f037f9a309", "symbol_count": 131, "symbols": [{"kind": "function", "line": 3, "name": "input_ptr"}, {"kind": "function", "line": 7, "name": "source_start"}, {"kind": "function", "line": 11, "name": "token"}, {"kind": "function", "line": 15, "name": "tok"}, {"kind": "function", "line": 19, "name": "line"}, {"kind": "function", "line": 23, "name": "output"}, {"kind": "function", "line": 27, "name": "ctx_stack"}, {"kind": "function", "line": 31, "name": "ctx_top"}, {"kind": "function", "line": 35, "name": "current_file"}, {"kind": "function", "line": 39, "name": "processed_files"}, {"kind": "function", "line": 43, "name": "processed_count"}, {"kind": "function", "line": 47, "name": "symbols"}, {"kind": "function", "line": 51, "name": "symbol_count"}, {"kind": "function", "line": 55, "name": "hash_table"}, {"kind": "function", "line": 59, "name": "scope_stack_sym"}, {"kind": "function", "line": 63, "name": "scope_stack_stk"}, {"kind": "function", "line": 67, "name": "scope_depth"}, {"kind": "function", "line": 71, "name": "stack_size"}, {"kind": "function", "line": 75, "name": "label_counter"}, {"kind": "function", "line": 79, "name": "function_has_return"}, {"kind": "function", "line": 83, "name": "emit_enabled"}, {"kind": "function", "line": 87, "name": "max_func_stack"}, {"kind": "function", "line": 91, "name": "assign_size"}, {"kind": "function", "line": 95, "name": "expr_pointed"}, {"kind": "function", "line": 99, "name": "current_elem_size"}, {"kind": "function", "line": 103, "name": "current_elem_size2"}, {"kind": "function", "line": 107, "name": "no_postfix_deref"}, {"kind": "function", "line": 111, "name": "expr_type"}, {"kind": "function", "line": 115, "name": "static_flag"}, {"kind": "function", "line": 119, "name": "unsigned_type"}, {"kind": "function", "line": 123, "name": "const_flag"}, {"kind": "function", "line": 127, "name": "extern_flag"}, {"kind": "function", "line": 131, "name": "global_emit_deferred"}, {"kind": "function", "line": 135, "name": "float_const_str"}, {"kind": "function", "line": 139, "name": "float_const_is_float"}, {"kind": "function", "line": 143, "name": "float_const_count"}, {"kind": "function", "line": 147, "name": "switch_case_values"}, {"kind": "function", "line": 151, "name": "switch_case_labels"}, {"kind": "function", "line": 155, "name": "switch_case_count"}, {"kind": "function", "line": 159, "name": "switch_has_default"}, {"kind": "function", "line": 163, "name": "switch_default_label"}, {"kind": "function", "line": 167, "name": "break_target"}, {"kind": "function", "line": 171, "name": "break_target_valid"}, {"kind": "function", "line": 175, "name": "continue_target"}, {"kind": "function", "line": 179, "name": "continue_target_valid"}, {"kind": "function", "line": 183, "name": "str_label_counter"}, {"kind": "function", "line": 187, "name": "string_pool"}, {"kind": "function", "line": 191, "name": "string_count"}, {"kind": "function", "line": 195, "name": "ptr_init_name"}, {"kind": "function", "line": 199, "name": "ptr_init_label"}, {"kind": "function", "line": 203, "name": "ptr_init_count"}, {"kind": "function", "line": 207, "name": "struct_total_size"}, {"kind": "function", "line": 211, "name": "struct_member_names"}, {"kind": "function", "line": 215, "name": "struct_member_offsets"}, {"kind": "function", "line": 219, "name": "struct_member_sizes"}, {"kind": "function", "line": 223, "name": "struct_member_elem_sizes"}, {"kind": "function", "line": 227, "name": "struct_member_count"}, {"kind": "function", "line": 231, "name": "if_nest"}, {"kind": "function", "line": 235, "name": "if_depth"}, {"kind": "function", "line": 240, "name": "macro_count"}, {"kind": "function", "line": 244, "name": "save_parser_state"}, {"kind": "function", "line": 383, "name": "restore_parser_state"}, {"kind": "function", "line": 571, "name": "macros"}, {"kind": "function", "line": 575, "name": "find_macro"}, {"kind": "function", "line": 639, "name": "add_macro"}, {"kind": "function", "line": 769, "name": "error"}, {"kind": "function", "line": 821, "name": "safe_malloc"}, {"kind": "function", "line": 876, "name": "safe_strcpy"}, {"kind": "function", "line": 953, "name": "safe_strtoll"}, {"kind": "function", "line": 1068, "name": "is_file_processed"}, {"kind": "function", "line": 1129, "name": "mark_file_processed"}, {"kind": "function", "line": 1241, "name": "get_dir_from_path"}, {"kind": "function", "line": 1384, "name": "resolve_local_include"}, {"kind": "function", "line": 1834, "name": "read_include_file"}, {"kind": "function", "line": 2042, "name": "hash_name"}, {"kind": "function", "line": 2100, "name": "hash_init"}, {"kind": "function", "line": 2139, "name": "push_scope"}, {"kind": "function", "line": 2191, "name": "pop_scope"}, {"kind": "function", "line": 2387, "name": "truncate_symbols"}, {"kind": "function", "line": 2540, "name": "my_isspace"}, {"kind": "function", "line": 2629, "name": "my_isalpha"}, {"kind": "function", "line": 2698, "name": "my_isdigit"}, {"kind": "function", "line": 2738, "name": "my_isalnum"}, {"kind": "function", "line": 2783, "name": "next_token"}, {"kind": "function", "line": 2787, "name": "restart"}, {"kind": "function", "line": 8892, "name": "match"}, {"kind": "function", "line": 8930, "name": "emit"}, {"kind": "function", "line": 9044, "name": "emit_i"}, {"kind": "function", "line": 9093, "name": "emit_s"}, {"kind": "function", "line": 9142, "name": "emit_is"}, {"kind": "function", "line": 9195, "name": "emit_si"}, {"kind": "function", "line": 9248, "name": "emit_asciz_body"}, {"kind": "function", "line": 9572, "name": "emit_label"}, {"kind": "function", "line": 9601, "name": "find_symbol"}, {"kind": "function", "line": 9688, "name": "add_symbol"}, {"kind": "function", "line": 10056, "name": "arg_reg"}, {"kind": "function", "line": 10132, "name": "libc_global_name"}, {"kind": "function", "line": 10260, "name": "unary"}, {"kind": "function", "line": 12789, "name": "lvalue_address"}, {"kind": "function", "line": 13294, "name": "handle_postfix"}, {"kind": "function", "line": 14271, "name": "unary_expr"}, {"kind": "function", "line": 14296, "name": "multiplicative_expr"}, {"kind": "function", "line": 14918, "name": "additive_expr"}, {"kind": "function", "line": 15413, "name": "shift_expr"}, {"kind": "function", "line": 15559, "name": "relational_expr"}, {"kind": "function", "line": 16161, "name": "equality_expr"}, {"kind": "function", "line": 16639, "name": "bitwise_and_expr"}, {"kind": "function", "line": 16717, "name": "bitwise_xor_expr"}, {"kind": "function", "line": 16795, "name": "bitwise_or_expr"}, {"kind": "function", "line": 16873, "name": "logical_and_expr"}, {"kind": "function", "line": 17036, "name": "logical_or_expr"}, {"kind": "function", "line": 17199, "name": "conditional_expr"}, {"kind": "function", "line": 17331, "name": "assignment_expr"}, {"kind": "function", "line": 19851, "name": "statement"}, {"kind": "function", "line": 23297, "name": "restart_typedef"}, {"kind": "function", "line": 24328, "name": "restart_int"}, {"kind": "function", "line": 25484, "name": "parse_function"}, {"kind": "function", "line": 26800, "name": "parse_enum"}, {"kind": "function", "line": 27212, "name": "skip_struct"}, {"kind": "function", "line": 27798, "name": "skip_typedef"}, {"kind": "function", "line": 28288, "name": "data_directive"}, {"kind": "function", "line": 28338, "name": "emit_global_bss"}, {"kind": "function", "line": 28429, "name": "emit_global_data_head"}, {"kind": "function", "line": 28484, "name": "parse_const_int"}, {"kind": "function", "line": 28647, "name": "intern_string"}, {"kind": "function", "line": 28740, "name": "emit_global_initializer"}, {"kind": "function", "line": 29457, "name": "parse_program"}, {"kind": "function", "line": 31173, "name": "emit_float_consts"}, {"kind": "function", "line": 31272, "name": "emit_string_pool"}, {"kind": "function", "line": 31374, "name": "main"}, {"kind": "function", "line": 34714, "name": "_start"}]}, {"doc": "ifndef MY_LIBRARY_H define MY_LIBRARY_H  Test function to verify that inclusion works correctly", "id": "my_library.h", "kind": "module", "label": "my_library.h", "language": "h", "sha256": "e0f4932331e5dce6", "symbol_count": 2, "symbols": [{"doc": "Test function to verify that inclusion works correctly", "kind": "function", "line": 5, "name": "greet", "signature": "void greet(void);"}, {"kind": "macro", "line": 2, "name": "MY_LIBRARY_H", "signature": "#define MY_LIBRARY_H"}]}, {"id": "test.c", "kind": "module", "label": "test.c", "language": "c", "sha256": "2106b8757a54e31b", "symbol_count": 1, "symbols": [{"kind": "function", "line": 1, "name": "main", "signature": "int main(void)"}]}, {"doc": "Cleaning env", "id": "test.sh", "kind": "module", "label": "test.sh", "language": "sh", "sha256": "2a5a4539c1bfb714", "symbol_count": 0, "symbols": []}, {"doc": "include <stdio.h>", "id": "test_for.c", "kind": "module", "label": "test_for.c", "language": "c", "sha256": "b41cecb08d6bd4c5", "symbol_count": 1, "symbols": [{"doc": "include <stdio.h>", "kind": "function", "line": 2, "name": "main", "signature": "int main()"}]}, {"doc": "include <stdio.h> include \"my_library.h\"", "id": "test_include.c", "kind": "module", "label": "test_include.c", "language": "c", "sha256": "45945f57091716b5", "symbol_count": 3, "symbols": [{"doc": "include <stdio.h> include \"my_library.h\"", "kind": "function", "line": 3, "name": "main", "signature": "int main(void)"}, {"kind": "function", "line": 9, "name": "greet", "signature": "void greet(void)"}, {"kind": "function", "line": 5, "name": "printf", "signature": "printf(\"Compilation successful! The compiler includes files correctly.\\n\");"}]}, {"doc": "Self-host test: miniGCC bootstraps itself with the sibling 'ld' repository as the assembler and linker. GNU as/ld are not used after generation 1:  gcc    -> minigcc (gen1, the only foreign binary) gen1   -> g2.s  -> ld -> g2.elf g2.elf -> g3.s  -> ld -> g3.elf g3.elf -> g4.s  Success requires the fixed point (g3.s == g4.s) and that the self-hosted compiler behaves exactly like generation 1 on the test fixtures.  Environment overrides: LD_DIR (path to the ld repository, default ../ld).", "id": "test_ld_selfhost.sh", "kind": "module", "label": "test_ld_selfhost.sh", "language": "sh", "sha256": "0a33ea3718b4aa9d", "symbol_count": 2, "symbols": [{"kind": "function", "line": 27, "name": "pass"}, {"kind": "function", "line": 32, "name": "fail"}]}], "type": "CodePropertyGraph", "version": "1.0"}
```

---

## Architecture Reference

### C (4 files)

#### `minigcc.c`
**Path:** `minigcc.c`

**Functions:**
- `save_parser_state` (line 215) `static void save_parser_state(ParserState *state)`
- `restore_parser_state` (line 240) `static void restore_parser_state(ParserState *state)`
- `find_macro` (line 276) `static int find_macro(const char *name)`
- `add_macro` (line 285) `static void add_macro(const char *name, int value)`
- `macro_skipws` (line 312) `static void macro_skipws(void)`
- `macro_hex_digit` (line 316) `static int macro_hex_digit(int c)`
- `macro_digit_val` (line 323) `static int macro_digit_val(int c)`
- `macro_primary` (line 330) `static int macro_primary(void)`
- `macro_unary` (line 404) `static int macro_unary(void)`
- `macro_mul` (line 413) `static int macro_mul(void)`
- `macro_add` (line 438) `static int macro_add(void)`
- `macro_shift` (line 455) `static int macro_shift(void)`
- `macro_cmp` (line 472) `static int macro_cmp(void)`
- `macro_eq` (line 495) `static int macro_eq(void)`
- `macro_bitand` (line 512) `static int macro_bitand(void)`
- `macro_bitxor` (line 526) `static int macro_bitxor(void)`
- `macro_bitor` (line 540) `static int macro_bitor(void)`
- `macro_logand` (line 554) `static int macro_logand(void)`
- `macro_or_expr` (line 568) `static int macro_or_expr(void)`
- `macro_fold` (line 582) `static int macro_fold(void)`
- `error` (line 587) `static void error(const char *msg)`
- `safe_malloc` (line 593) `static void *safe_malloc(size_t size)`
- `safe_strcpy` (line 602) `static void safe_strcpy(char *dst, const char *src, size_t dst_sz)`
- `safe_strtoll` (line 611) `static long safe_strtoll(const char *s)`
- `is_file_processed` (line 624) `static int is_file_processed(const char *path)`
- `mark_file_processed` (line 633) `static void mark_file_processed(const char *path)`
- `get_dir_from_path` (line 645) `static void get_dir_from_path(const char *path, char *dir, int dir_sz)`
- `resolve_local_include` (line 664) `static char *resolve_local_include(const char *target)`
- `read_include_file` (line 703) `static char *read_include_file(const char *path)`
- `hash_name` (line 728) `static int hash_name(const char *name)` - *Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multiplication overflow.*
- `hash_init` (line 737) `static void hash_init(void)`
- `push_scope` (line 742) `static void push_scope(void)`
- `pop_scope` (line 750) `static void pop_scope(void)`
- `truncate_symbols` (line 780) `static void truncate_symbols(int start_idx)` - *Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (needed for the two-pass function body parsing pattern).*
- `my_isspace` (line 798) `static int my_isspace(int c)`
- `my_isalpha` (line 808) `static int my_isalpha(int c)`
- `my_isdigit` (line 814) `static int my_isdigit(int c)`
- `my_isalnum` (line 819) `static int my_isalnum(int c)`
- `next_token` (line 827) `static void next_token(void)` - *} static int my_isdigit(int c) { if (c >= '0' && c <= '9') return 1; return 0; } static int my_isalnum(int c) { if (my_isalpha(c)) return 1; if (my_isdigit(c)) return 1; return 0; } /* Lexer*
- `match` (line 1262) `static void match(int expected)`
- `emit` (line 1267) `static void emit(const char *s)`
- `emit_i` (line 1281) `static void emit_i(const char *fmt, int v)`
- `emit_s` (line 1287) `static void emit_s(const char *fmt, const char *s)`
- `emit_is` (line 1293) `static void emit_is(const char *fmt, int v, const char *s)`
- `emit_si` (line 1299) `static void emit_si(const char *fmt, const char *s, int v)`
- `emit_asciz_body` (line 1309) `static void emit_asciz_body(const char *s)` - *Write a C string as the body of a .asciz directive, escaping everything the assembler cannot take literally. Shared by the string pool and by string * initializers of global arrays.*
- `emit_label` (line 1327) `static void emit_label(int label)`
- `find_symbol` (line 1334) `static int find_symbol(const char *name)` - *else if (c == '\a') fprintf(output, "\\a"); else if (c == '\b') fprintf(output, "\\b"); else if (c >= 32 && c <= 126) fputc(c, output); else fprintf(output, "\\%03o", c); s++; } } static void emit_label(int label) { if (emit_enabled) fprintf(output, ".L%d:\n", label); } /* Symbol table*
- `add_symbol` (line 1344) `static void add_symbol(const char *name, int is_global, int size, int pointed, int is_array, int ...`
- `arg_reg` (line 1405) `static const char *arg_reg(int i)` - *Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace-initialized local arrays correctly (they overlap adjacent locals).*
- `libc_global_name` (line 1415) `static const char *libc_global_name(int i)` - *Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace-initialized local arrays correctly (they overlap adjacent locals). static const char *arg_reg(int i) { if (i == 0) return "%rdi"; if (i == 1) return "%rsi"; if (i == 2) return "%rdx"; if (i == 3) return "%rcx"; if (i == 4) return "%r8"; return "%r9"; } /* Predefined libc global symbol names, indexed; returns NULL past the end.*
- `unary` (line 1427) `static void unary(void)`
- `lvalue_address` (line 1677) `static void lvalue_address(void)`
- `handle_postfix` (line 1729) `static void handle_postfix(int is_lvalue)`
- `unary_expr` (line 1863) `static void unary_expr(void)`
- `multiplicative_expr` (line 1878) `static void multiplicative_expr(void)`
- `additive_expr` (line 1942) `static void additive_expr(void)`
- `shift_expr` (line 1997) `static void shift_expr(void)`
- `relational_expr` (line 2016) `static void relational_expr(void)`
- `equality_expr` (line 2069) `static void equality_expr(void)`
- `bitwise_and_expr` (line 2118) `static void bitwise_and_expr(void)`
- `bitwise_xor_expr` (line 2130) `static void bitwise_xor_expr(void)`
- `bitwise_or_expr` (line 2142) `static void bitwise_or_expr(void)`
- `logical_and_expr` (line 2154) `static void logical_and_expr(void)`
- `logical_or_expr` (line 2174) `static void logical_or_expr(void)`
- `conditional_expr` (line 2194) `static void conditional_expr(void)`
- `assignment_expr` (line 2212) `static void assignment_expr(void)`
- `statement` (line 2373) `static void statement(void)`
- `parse_function` (line 3030) `static void parse_function(const char *name, int ret_type)`
- `parse_enum` (line 3157) `static void parse_enum(void)`
- `skip_struct` (line 3206) `static void skip_struct(void)`
- `skip_typedef` (line 3270) `static void skip_typedef(void)`
- `data_directive` (line 3325) `static const char *data_directive(int size)` - *s->const_value = 8;  /* just a marker /* If a struct was just parsed, store its size if (struct_total_size > 0) s->const_value = struct_total_size; { int h = hash_name(last_name); s->next_hash = hash_table[h]; hash_table[h] = symbol_count - 1; } } match(';'); } /* Storage directive for a datum of `size` bytes.*
- `emit_global_bss` (line 3333) `static void emit_global_bss(const char *name, int is_static, int size)` - *} } match(';'); } /* Storage directive for a datum of `size` bytes. static const char *data_directive(int size) { if (size == 1) return "    .byte %d"; if (size == 2) return "    .word %d"; if (size == 4) return "    .long %d"; return "    .quad %d"; } /* Reserve zero-initialized storage for a global.*
- `emit_global_data_head` (line 3340) `static void emit_global_data_head(const char *name, int is_static)`
- `parse_const_int` (line 3350) `static int parse_const_int(long long *out)` - *Parse an integer constant usable as a static initializer: an optionally signed numeric or character literal, or a macro standing for one. * Returns 1 when a constant was consumed.*
- `intern_string` (line 3373) `static int intern_string(const char *text)` - *} if (tok == T_ID) { int mi = find_macro(token); if (mi >= 0) { long long v = macros[mi].value; next_token(); out = neg ? -v : v; return 1; } } return 0; } /* Record a string literal in the pool and return its label index.*
- `emit_global_initializer` (line 3390) `static int emit_global_initializer(const char *name, int is_static, int *size,
                  ...` - *Emit the definition of a global that carries an initializer. On entry the current token is the one after '='. `size` is the declared byte size and is updated in place when the initializer determines the length of an unsized array. Returns 1 when the initializer was materialized, 0 when the form is unsupported, in which case nothing was emitted and the caller falls back to * zero-initialized storage.*
- `parse_program` (line 3454) `static void parse_program(void)`
- `emit_float_consts` (line 3605) `static void emit_float_consts(void)`
- `emit_string_pool` (line 3615) `static void emit_string_pool(void)`
- `main` (line 3625) `int main(int argc, char **argv)`
- `fprintf` (line 589) `fprintf(stderr, "%s:%d: Error at token '%s': %s\n", current_file ? current_file : "(unknown)", line, token, msg);`
- `exit` (line 591) `exit(EXIT_FAILURE);`
- `fclose` (line 668) `fclose(f);`
- `fseek` (line 707) `fseek(f, 0, SEEK_END);`
- `rewind` (line 713) `rewind(f);`
- `free` (line 717) `free(buf);`
- `snprintf` (line 1062) `snprintf(token, MAX_TOKEN_LEN, "%d", macros[mi].value);`
- `strcpy` (line 1104) `strcpy(float_const_str[float_const_count], token);`
- `fputc` (line 1272) `fputc('%', output);`
- `strncpy` (line 1350) `strncpy(d, name, MAX_IDENT_LEN - 1);`
- `memcpy` (line 2421) `memcpy(varname, token, nlen);`

**Macros:**
- `MAX_TOKEN_LEN` (line 14) `#define MAX_TOKEN_LEN`
- `MAX_SYMBOLS` (line 16) `#define MAX_SYMBOLS`
- `MAX_IDENT_LEN` (line 17) `#define MAX_IDENT_LEN`
- `MAX_SOURCE_SIZE` (line 18) `#define MAX_SOURCE_SIZE`
- `MAX_INCLUDE_DEPTH` (line 19) `#define MAX_INCLUDE_DEPTH`
- `MAX_PROCESSED_FILES` (line 20) `#define MAX_PROCESSED_FILES`
- `STACK_ALIGN` (line 21) `#define STACK_ALIGN`
- `HASH_TABLE_SIZE` (line 111) `#define HASH_TABLE_SIZE`
- `MAX_SCOPE_DEPTH` (line 113) `#define MAX_SCOPE_DEPTH`
- `MAX_FLOAT_CONSTS` (line 135) `#define MAX_FLOAT_CONSTS`
- `MAX_CASES_PER_SWITCH` (line 140) `#define MAX_CASES_PER_SWITCH`
- `MAX_STRINGS` (line 153) `#define MAX_STRINGS`
- `MAX_PTR_INITS` (line 162) `#define MAX_PTR_INITS`
- `MAX_STRUCT_MEMBERS` (line 172) `#define MAX_STRUCT_MEMBERS`
- `MAX_IF_NESTING` (line 179) `#define MAX_IF_NESTING`
- `CONST_VAR_FLAG` (line 181) `#define CONST_VAR_FLAG`
- `MAX_MACROS` (line 187) `#define MAX_MACROS`

**Structs:**
- `FileContext` (line 76)
- `Symbol` (line 89)
- `ParserState` (line 191)
- `Macro` (line 270)

#### `test.c`
**Path:** `test.c`

**Functions:**
- `main` (line 1) `int main(void)`

#### `test_for.c`
**Path:** `test_for.c`
**File Doc:** *include <stdio.h>*

**Functions:**
- `main` (line 2) `int main()` - *include <stdio.h>*

#### `test_include.c`
**Path:** `test_include.c`
**File Doc:** *include <stdio.h> include "my_library.h"*

**Functions:**
- `main` (line 3) `int main(void)` - *include <stdio.h> include "my_library.h"*
- `greet` (line 9) `void greet(void)`
- `printf` (line 5) `printf("Compilation successful! The compiler includes files correctly.\n");`

### H (1 files)

#### `my_library.h`
**Path:** `my_library.h`
**File Doc:** *ifndef MY_LIBRARY_H define MY_LIBRARY_H  Test function to verify that inclusion works correctly*

**Imported by:** `test_include.c`

**Functions:**
- `greet` (line 5) `void greet(void);` - *Test function to verify that inclusion works correctly*

**Macros:**
- `MY_LIBRARY_H` (line 2) `#define MY_LIBRARY_H`

### S (3 files)

#### `minigccg2.s`
**Path:** `minigccg2.s`

**Functions:**
- `input_ptr` (line 3)
- `source_start` (line 7)
- `token` (line 11)
- `tok` (line 15)
- `line` (line 19)
- `output` (line 23)
- `ctx_stack` (line 27)
- `ctx_top` (line 31)
- `current_file` (line 35)
- `processed_files` (line 39)
- `processed_count` (line 43)
- `symbols` (line 47)
- `symbol_count` (line 51)
- `hash_table` (line 55)
- `scope_stack_sym` (line 59)
- `scope_stack_stk` (line 63)
- `scope_depth` (line 67)
- `stack_size` (line 71)
- `label_counter` (line 75)
- `function_has_return` (line 79)
- `emit_enabled` (line 83)
- `max_func_stack` (line 87)
- `assign_size` (line 91)
- `expr_pointed` (line 95)
- `current_elem_size` (line 99)
- `current_elem_size2` (line 103)
- `no_postfix_deref` (line 107)
- `expr_type` (line 111)
- `static_flag` (line 115)
- `unsigned_type` (line 119)
- `const_flag` (line 123)
- `extern_flag` (line 127)
- `global_emit_deferred` (line 131)
- `float_const_str` (line 135)
- `float_const_is_float` (line 139)
- `float_const_count` (line 143)
- `switch_case_values` (line 147)
- `switch_case_labels` (line 151)
- `switch_case_count` (line 155)
- `switch_has_default` (line 159)
- `switch_default_label` (line 163)
- `break_target` (line 167)
- `break_target_valid` (line 171)
- `continue_target` (line 175)
- `continue_target_valid` (line 179)
- `str_label_counter` (line 183)
- `string_pool` (line 187)
- `string_count` (line 191)
- `ptr_init_name` (line 195)
- `ptr_init_label` (line 199)
- `ptr_init_count` (line 203)
- `struct_total_size` (line 207)
- `struct_member_names` (line 211)
- `struct_member_offsets` (line 215)
- `struct_member_sizes` (line 219)
- `struct_member_elem_sizes` (line 223)
- `struct_member_count` (line 227)
- `if_nest` (line 231)
- `if_depth` (line 235)
- `macro_count` (line 240)
- `save_parser_state` (line 244)
- `restore_parser_state` (line 383)
- `macros` (line 571)
- `find_macro` (line 575)
- `add_macro` (line 639)
- `error` (line 769)
- `safe_malloc` (line 821)
- `safe_strcpy` (line 876)
- `safe_strtoll` (line 953)
- `is_file_processed` (line 1068)
- `mark_file_processed` (line 1129)
- `get_dir_from_path` (line 1241)
- `resolve_local_include` (line 1384)
- `read_include_file` (line 1834)
- `hash_name` (line 2042)
- `hash_init` (line 2100)
- `push_scope` (line 2139)
- `pop_scope` (line 2191)
- `truncate_symbols` (line 2387)
- `my_isspace` (line 2540)
- `my_isalpha` (line 2629)
- `my_isdigit` (line 2698)
- `my_isalnum` (line 2738)
- `next_token` (line 2783)
- `restart` (line 2787)
- `match` (line 8892)
- `emit` (line 8930)
- `emit_i` (line 9044)
- `emit_s` (line 9093)
- `emit_is` (line 9142)
- `emit_si` (line 9195)
- `emit_asciz_body` (line 9248)
- `emit_label` (line 9572)
- `find_symbol` (line 9601)
- `add_symbol` (line 9688)
- `arg_reg` (line 10056)
- `libc_global_name` (line 10132)
- `unary` (line 10260)
- `lvalue_address` (line 12789)
- `handle_postfix` (line 13294)
- `unary_expr` (line 14271)
- `multiplicative_expr` (line 14296)
- `additive_expr` (line 14918)
- `shift_expr` (line 15413)
- `relational_expr` (line 15559)
- `equality_expr` (line 16161)
- `bitwise_and_expr` (line 16639)
- `bitwise_xor_expr` (line 16717)
- `bitwise_or_expr` (line 16795)
- `logical_and_expr` (line 16873)
- `logical_or_expr` (line 17036)
- `conditional_expr` (line 17199)
- `assignment_expr` (line 17331)
- `statement` (line 19851)
- `restart_typedef` (line 23297)
- `restart_int` (line 24328)
- `parse_function` (line 25484)
- `parse_enum` (line 26800)
- `skip_struct` (line 27212)
- `skip_typedef` (line 27798)
- `data_directive` (line 28288)
- `emit_global_bss` (line 28338)
- `emit_global_data_head` (line 28429)
- `parse_const_int` (line 28484)
- `intern_string` (line 28647)
- `emit_global_initializer` (line 28740)
- `parse_program` (line 29457)
- `emit_float_consts` (line 31173)
- `emit_string_pool` (line 31272)
- `main` (line 31374)
- `_start` (line 34714)

#### `minigccg3.s`
**Path:** `minigccg3.s`

**Functions:**
- `input_ptr` (line 3)
- `source_start` (line 7)
- `token` (line 11)
- `tok` (line 15)
- `line` (line 19)
- `output` (line 23)
- `ctx_stack` (line 27)
- `ctx_top` (line 31)
- `current_file` (line 35)
- `processed_files` (line 39)
- `processed_count` (line 43)
- `symbols` (line 47)
- `symbol_count` (line 51)
- `hash_table` (line 55)
- `scope_stack_sym` (line 59)
- `scope_stack_stk` (line 63)
- `scope_depth` (line 67)
- `stack_size` (line 71)
- `label_counter` (line 75)
- `function_has_return` (line 79)
- `emit_enabled` (line 83)
- `max_func_stack` (line 87)
- `assign_size` (line 91)
- `expr_pointed` (line 95)
- `current_elem_size` (line 99)
- `current_elem_size2` (line 103)
- `no_postfix_deref` (line 107)
- `expr_type` (line 111)
- `static_flag` (line 115)
- `unsigned_type` (line 119)
- `const_flag` (line 123)
- `extern_flag` (line 127)
- `global_emit_deferred` (line 131)
- `float_const_str` (line 135)
- `float_const_is_float` (line 139)
- `float_const_count` (line 143)
- `switch_case_values` (line 147)
- `switch_case_labels` (line 151)
- `switch_case_count` (line 155)
- `switch_has_default` (line 159)
- `switch_default_label` (line 163)
- `break_target` (line 167)
- `break_target_valid` (line 171)
- `continue_target` (line 175)
- `continue_target_valid` (line 179)
- `str_label_counter` (line 183)
- `string_pool` (line 187)
- `string_count` (line 191)
- `ptr_init_name` (line 195)
- `ptr_init_label` (line 199)
- `ptr_init_count` (line 203)
- `struct_total_size` (line 207)
- `struct_member_names` (line 211)
- `struct_member_offsets` (line 215)
- `struct_member_sizes` (line 219)
- `struct_member_elem_sizes` (line 223)
- `struct_member_count` (line 227)
- `if_nest` (line 231)
- `if_depth` (line 235)
- `macro_count` (line 240)
- `save_parser_state` (line 244)
- `restore_parser_state` (line 383)
- `macros` (line 571)
- `find_macro` (line 575)
- `add_macro` (line 639)
- `error` (line 769)
- `safe_malloc` (line 821)
- `safe_strcpy` (line 876)
- `safe_strtoll` (line 953)
- `is_file_processed` (line 1068)
- `mark_file_processed` (line 1129)
- `get_dir_from_path` (line 1241)
- `resolve_local_include` (line 1384)
- `read_include_file` (line 1834)
- `hash_name` (line 2042)
- `hash_init` (line 2100)
- `push_scope` (line 2139)
- `pop_scope` (line 2191)
- `truncate_symbols` (line 2387)
- `my_isspace` (line 2540)
- `my_isalpha` (line 2629)
- `my_isdigit` (line 2698)
- `my_isalnum` (line 2738)
- `next_token` (line 2783)
- `restart` (line 2787)
- `match` (line 8892)
- `emit` (line 8930)
- `emit_i` (line 9044)
- `emit_s` (line 9093)
- `emit_is` (line 9142)
- `emit_si` (line 9195)
- `emit_asciz_body` (line 9248)
- `emit_label` (line 9572)
- `find_symbol` (line 9601)
- `add_symbol` (line 9688)
- `arg_reg` (line 10056)
- `libc_global_name` (line 10132)
- `unary` (line 10260)
- `lvalue_address` (line 12789)
- `handle_postfix` (line 13294)
- `unary_expr` (line 14271)
- `multiplicative_expr` (line 14296)
- `additive_expr` (line 14918)
- `shift_expr` (line 15413)
- `relational_expr` (line 15559)
- `equality_expr` (line 16161)
- `bitwise_and_expr` (line 16639)
- `bitwise_xor_expr` (line 16717)
- `bitwise_or_expr` (line 16795)
- `logical_and_expr` (line 16873)
- `logical_or_expr` (line 17036)
- `conditional_expr` (line 17199)
- `assignment_expr` (line 17331)
- `statement` (line 19851)
- `restart_typedef` (line 23297)
- `restart_int` (line 24328)
- `parse_function` (line 25484)
- `parse_enum` (line 26800)
- `skip_struct` (line 27212)
- `skip_typedef` (line 27798)
- `data_directive` (line 28288)
- `emit_global_bss` (line 28338)
- `emit_global_data_head` (line 28429)
- `parse_const_int` (line 28484)
- `intern_string` (line 28647)
- `emit_global_initializer` (line 28740)
- `parse_program` (line 29457)
- `emit_float_consts` (line 31173)
- `emit_string_pool` (line 31272)
- `main` (line 31374)
- `_start` (line 34714)

#### `minigccg4.s`
**Path:** `minigccg4.s`

**Functions:**
- `input_ptr` (line 3)
- `source_start` (line 7)
- `token` (line 11)
- `tok` (line 15)
- `line` (line 19)
- `output` (line 23)
- `ctx_stack` (line 27)
- `ctx_top` (line 31)
- `current_file` (line 35)
- `processed_files` (line 39)
- `processed_count` (line 43)
- `symbols` (line 47)
- `symbol_count` (line 51)
- `hash_table` (line 55)
- `scope_stack_sym` (line 59)
- `scope_stack_stk` (line 63)
- `scope_depth` (line 67)
- `stack_size` (line 71)
- `label_counter` (line 75)
- `function_has_return` (line 79)
- `emit_enabled` (line 83)
- `max_func_stack` (line 87)
- `assign_size` (line 91)
- `expr_pointed` (line 95)
- `current_elem_size` (line 99)
- `current_elem_size2` (line 103)
- `no_postfix_deref` (line 107)
- `expr_type` (line 111)
- `static_flag` (line 115)
- `unsigned_type` (line 119)
- `const_flag` (line 123)
- `extern_flag` (line 127)
- `global_emit_deferred` (line 131)
- `float_const_str` (line 135)
- `float_const_is_float` (line 139)
- `float_const_count` (line 143)
- `switch_case_values` (line 147)
- `switch_case_labels` (line 151)
- `switch_case_count` (line 155)
- `switch_has_default` (line 159)
- `switch_default_label` (line 163)
- `break_target` (line 167)
- `break_target_valid` (line 171)
- `continue_target` (line 175)
- `continue_target_valid` (line 179)
- `str_label_counter` (line 183)
- `string_pool` (line 187)
- `string_count` (line 191)
- `ptr_init_name` (line 195)
- `ptr_init_label` (line 199)
- `ptr_init_count` (line 203)
- `struct_total_size` (line 207)
- `struct_member_names` (line 211)
- `struct_member_offsets` (line 215)
- `struct_member_sizes` (line 219)
- `struct_member_elem_sizes` (line 223)
- `struct_member_count` (line 227)
- `if_nest` (line 231)
- `if_depth` (line 235)
- `macro_count` (line 240)
- `save_parser_state` (line 244)
- `restore_parser_state` (line 383)
- `macros` (line 571)
- `find_macro` (line 575)
- `add_macro` (line 639)
- `error` (line 769)
- `safe_malloc` (line 821)
- `safe_strcpy` (line 876)
- `safe_strtoll` (line 953)
- `is_file_processed` (line 1068)
- `mark_file_processed` (line 1129)
- `get_dir_from_path` (line 1241)
- `resolve_local_include` (line 1384)
- `read_include_file` (line 1834)
- `hash_name` (line 2042)
- `hash_init` (line 2100)
- `push_scope` (line 2139)
- `pop_scope` (line 2191)
- `truncate_symbols` (line 2387)
- `my_isspace` (line 2540)
- `my_isalpha` (line 2629)
- `my_isdigit` (line 2698)
- `my_isalnum` (line 2738)
- `next_token` (line 2783)
- `restart` (line 2787)
- `match` (line 8892)
- `emit` (line 8930)
- `emit_i` (line 9044)
- `emit_s` (line 9093)
- `emit_is` (line 9142)
- `emit_si` (line 9195)
- `emit_asciz_body` (line 9248)
- `emit_label` (line 9572)
- `find_symbol` (line 9601)
- `add_symbol` (line 9688)
- `arg_reg` (line 10056)
- `libc_global_name` (line 10132)
- `unary` (line 10260)
- `lvalue_address` (line 12789)
- `handle_postfix` (line 13294)
- `unary_expr` (line 14271)
- `multiplicative_expr` (line 14296)
- `additive_expr` (line 14918)
- `shift_expr` (line 15413)
- `relational_expr` (line 15559)
- `equality_expr` (line 16161)
- `bitwise_and_expr` (line 16639)
- `bitwise_xor_expr` (line 16717)
- `bitwise_or_expr` (line 16795)
- `logical_and_expr` (line 16873)
- `logical_or_expr` (line 17036)
- `conditional_expr` (line 17199)
- `assignment_expr` (line 17331)
- `statement` (line 19851)
- `restart_typedef` (line 23297)
- `restart_int` (line 24328)
- `parse_function` (line 25484)
- `parse_enum` (line 26800)
- `skip_struct` (line 27212)
- `skip_typedef` (line 27798)
- `data_directive` (line 28288)
- `emit_global_bss` (line 28338)
- `emit_global_data_head` (line 28429)
- `parse_const_int` (line 28484)
- `intern_string` (line 28647)
- `emit_global_initializer` (line 28740)
- `parse_program` (line 29457)
- `emit_float_consts` (line 31173)
- `emit_string_pool` (line 31272)
- `main` (line 31374)
- `_start` (line 34714)

### SH (2 files)

#### `test.sh`
**Path:** `test.sh`
**File Doc:** *Cleaning env*

*No symbols extracted*

#### `test_ld_selfhost.sh`
**Path:** `test_ld_selfhost.sh`
**File Doc:** *Self-host test: miniGCC bootstraps itself with the sibling 'ld' repository as the assembler and linker. GNU as/ld are not used after generation 1:  gcc    -> minigcc (gen1, the only foreign binary) gen1   -> g2.s  -> ld -> g2.elf g2.elf -> g3.s  -> ld -> g3.elf g3.elf -> g4.s  Success requires the fixed point (g3.s == g4.s) and that the self-hosted compiler behaves exactly like generation 1 on the test fixtures.  Environment overrides: LD_DIR (path to the ld repository, default ../ld).*

**Functions:**
- `pass` (line 27)
- `fail` (line 32)
