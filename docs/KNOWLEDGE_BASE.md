# Polyglot Codebase Knowledge Graph

> Generated offline by **readmenator**. Supports C, C++, Python, Go, Rust, JS/TS, Java, C#, Shell, PHP, Dart, GDScript, Nim, ASM.
> No LLMs. No tokens. Pure static analysis.

**Total Files Parsed:** 4 | **Total Symbols Extracted:** 65 | **Total Imports:** 5

## Structural Knowledge Map
```mermaid
graph TD
    classDef mod fill:#1e1e1e,stroke:#ff6666,stroke-width:2px,color:#fff;
    classDef cls fill:#2d2d2d,stroke:#4ec9b0,stroke-width:2px,color:#fff;
    classDef fn fill:#333,stroke:#dcdcaa,stroke-width:1px,color:#dcdcaa;
    classDef ext fill:#111,stroke:#666,stroke-dasharray: 5 5,color:#aaa;
    minigcc_c["minigcc.c (c)"]
    class minigcc_c mod;
    minigcc_c_save_parser_state["save_parser_state"]
    class minigcc_c_save_parser_state fn;
    minigcc_c --> minigcc_c_save_parser_state
    minigcc_c_restore_parser_state["restore_parser_state"]
    class minigcc_c_restore_parser_state fn;
    minigcc_c --> minigcc_c_restore_parser_state
    minigcc_c_find_macro["find_macro"]
    class minigcc_c_find_macro fn;
    minigcc_c --> minigcc_c_find_macro
    minigcc_c_add_macro["add_macro"]
    class minigcc_c_add_macro fn;
    minigcc_c --> minigcc_c_add_macro
    minigcc_c_error["error"]
    class minigcc_c_error fn;
    minigcc_c --> minigcc_c_error
    test_for_c["test_for.c (c)"]
    class test_for_c mod;
    test_for_c_main["main"]
    class test_for_c_main fn;
    test_for_c --> test_for_c_main
    test_c["test.c (c)"]
    class test_c mod;
    test_c_main["main"]
    class test_c_main fn;
    test_c --> test_c_main
    test_sh["test.sh (sh)"]
    class test_sh mod;
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
```

---

## Architecture Reference

### C (3 files)

#### `minigcc.c`
**Path:** `minigcc.c`

**Functions:**
- `save_parser_state` (line 171)
- `restore_parser_state` (line 196)
- `find_macro` (line 232)
- `add_macro` (line 241)
- `error` (line 254)
- `safe_malloc` (line 259)
- `hash_name` (line 271) - *Must produce identical results under gcc (32-bit int) and under the compiler's own model (64-bit int), so avoid multiplication overflow.*
- `hash_init` (line 280)
- `push_scope` (line 285)
- `pop_scope` (line 293)
- `truncate_symbols` (line 323) - *Remove all symbols from start_idx onward from the hash table and truncate symbol_count. Does NOT touch the scope stack (needed for the two-pass fun...*
- `my_isspace` (line 341)
- `my_isalpha` (line 351)
- `my_isdigit` (line 357)
- `my_isalnum` (line 362)
- `next_token` (line 370) - *}  static int my_isdigit(int c) { if (c >= '0' && c <= '9') return 1; return 0; }  static int my_isalnum(int c) { if (my_isalpha(c)) return 1; if (...*
- `match` (line 598)
- `emit` (line 603)
- `emit_i` (line 617)
- `emit_s` (line 623)
- `emit_is` (line 629)
- `emit_si` (line 635)
- `emit_label` (line 641)
- `find_symbol` (line 648) - *}  static void emit_si(const char *fmt, const char *s, int v) { if (!emit_enabled) return; fprintf(output, fmt, s, v); fputc('\n', output); }  stat...*
- `add_symbol` (line 658)
- `arg_reg` (line 708) - *Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace...*
- `libc_global_name` (line 718) - *Argument/parameter register names by ABI index. Written as a function instead of a local array literal because the compiler does not allocate brace...*
- `unary` (line 730)
- `lvalue_address` (line 937)
- `handle_postfix` (line 986)
- `unary_expr` (line 1111)
- `multiplicative_expr` (line 1126)
- `additive_expr` (line 1190)
- `relational_expr` (line 1245)
- `equality_expr` (line 1298)
- `bitwise_and_expr` (line 1347)
- `bitwise_xor_expr` (line 1359)
- `bitwise_or_expr` (line 1371)
- `logical_and_expr` (line 1383)
- `logical_or_expr` (line 1403)
- `conditional_expr` (line 1423)
- `assignment_expr` (line 1441)
- `statement` (line 1602)
- `parse_function` (line 2221)
- `parse_enum` (line 2345)
- `skip_struct` (line 2394)
- `skip_typedef` (line 2458)
- `parse_program` (line 2511)
- `emit_float_consts` (line 2643)
- `emit_string_pool` (line 2653)
- `main` (line 2673)

**Macros:**
- `MAX_TOKEN_LEN` (line 14)
- `MAX_SYMBOLS` (line 16)
- `MAX_IDENT_LEN` (line 17)
- `MAX_SOURCE_SIZE` (line 18)
- `STACK_ALIGN` (line 19)
- `HASH_TABLE_SIZE` (line 87)
- `MAX_SCOPE_DEPTH` (line 89)
- `MAX_FLOAT_CONSTS` (line 106)
- `MAX_CASES_PER_SWITCH` (line 111)
- `MAX_STRINGS` (line 124)
- `MAX_STRUCT_MEMBERS` (line 133)
- `MAX_MACROS` (line 143)

#### `test.c`
**Path:** `test.c`

**Functions:**
- `main` (line 1)

#### `test_for.c`
**Path:** `test_for.c`

**Functions:**
- `main` (line 2) - *include <stdio.h>*

### SH (1 files)

#### `test.sh`
**Path:** `test.sh`

*No symbols extracted*
