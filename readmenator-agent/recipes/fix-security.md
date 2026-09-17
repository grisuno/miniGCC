# Recipe: Fix a Security Finding

- `minigcc.c:1831` [high] C001: Buffer overflow risk: strcpy — use strncpy or snprintf instead
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:1837` [high] C001: Buffer overflow risk: strcpy — use strncpy or snprintf instead
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.
- `minigcc.c:1856` [high] C001: Buffer overflow risk: strcpy — use strncpy or snprintf instead
  Fix: Use bounded functions (strncpy, snprintf) with explicit sizes and NUL termination.

Verify: `readmenator . --audit && grep -c 'CRITICAL\|HIGH' readmenator-agent/SECURITY.md`
