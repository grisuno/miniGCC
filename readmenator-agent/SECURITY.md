# Security Findings

## HIGH (26)

- `minigcc.c:1831` (in `strcpy`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:1837` (in `strcpy`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:1856` (in `strcpy`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3177` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3192` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3227` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3230` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3237` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3247` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3258` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3268` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3275` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3284` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3331` (in `assignment_expr`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3500` (in `asm_parse_mem`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3535` (in `asm_parse_mem`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3967` (in `statement`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:3979` (in `statement`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:4016` (in `statement`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:4021` (in `statement`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:4054` (in `statement`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:4088` (in `statement`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:4575` (in `statement`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:4589` (in `statement`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:4724` (in `pointer`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:4766` (in `pointer`) -- Buffer overflow risk: strcpy — use strncpy or snprintf instead [CWE-121]
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.

## MEDIUM (2)

- `test_all.sh:12` -- Command substitution with user input — potential injection [CWE-78]
  Fix: Avoid shell=True and string-built commands; use argument arrays and input allowlists.
- `test_ld_selfhost.sh:19` -- Command substitution with user input — potential injection [CWE-78]
  Fix: Avoid shell=True and string-built commands; use argument arrays and input allowlists.
