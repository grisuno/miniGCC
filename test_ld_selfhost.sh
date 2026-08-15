#!/bin/bash
# Self-host test: miniGCC bootstraps itself with the sibling 'ld' repository
# as the assembler and linker. GNU as/ld are not used after generation 1:
#
#   gcc    -> minigcc (gen1, the only foreign binary)
#   gen1   -> g2.s  -> ld -> g2.elf
#   g2.elf -> g3.s  -> ld -> g3.elf
#   g3.elf -> g4.s
#
# Success requires the fixed point (g3.s == g4.s) and that the self-hosted
# compiler behaves exactly like generation 1 on the test fixtures.
#
# Environment overrides: LD_DIR (path to the ld repository, default ../ld).

set -u

HERE="$(cd "$(dirname "$0")" && pwd)"
LD_DIR="${LD_DIR:-$HERE/../ld}"
WORK="$(mktemp -d "${TMPDIR:-/tmp}/mgcc_selfhost.XXXXXX")" || exit 1
trap 'rm -rf "$WORK"' EXIT

CC="gcc -std=c99 -Wall -Wextra -O2"

PASS=0
FAIL=0

pass() {
    echo "PASS: $1"
    PASS=$((PASS + 1))
}

fail() {
    echo "FAIL: $1"
    FAIL=$((FAIL + 1))
}

if [ ! -f "$LD_DIR/ld.c" ]; then
    echo "SKIP: ld sources not found at $LD_DIR (set LD_DIR=...)"
    exit 0
fi

if [ ! -s "$HERE/minigcc.c" ]; then
    echo "FAIL: minigcc.c is missing or empty"
    exit 1
fi

echo "=== self-host chain: minigcc + ld ==="

if ! $CC -o "$WORK/minigcc" "$HERE/minigcc.c"; then
    fail "gen1 build"
    exit 1
fi
pass "gen1 built by gcc (the only foreign tool)"

if ! $CC -Wpedantic -o "$WORK/ld" "$LD_DIR/ld.c"; then
    fail "ld build"
    exit 1
fi
pass "ld built from $LD_DIR"

# Generation 2: gen1 compiles its own source; our ld links the result.
if "$WORK/minigcc" "$HERE/minigcc.c" > "$WORK/g2.s" 2> "$WORK/g2.err"; then
    if [ -s "$WORK/g2.err" ]; then
        fail "gen2 emitted diagnostics"
    else
        pass "gen2 assembly emitted"
    fi
else
    fail "gen2 assembly generation"
fi
"$WORK/ld" -f elf -o "$WORK/g2.elf" "$WORK/g2.s" && pass "gen2 linked by ld" || fail "gen2 link"
chmod +x "$WORK/g2.elf"

# Generation 3: the ld-linked compiler compiles itself again.
if "$WORK/g2.elf" "$HERE/minigcc.c" > "$WORK/g3.s" 2> "$WORK/g3.err"; then
    if [ -s "$WORK/g3.err" ]; then
        fail "gen3 emitted diagnostics"
    else
        pass "gen3 assembly emitted"
    fi
else
    fail "gen3 assembly generation"
fi
"$WORK/ld" -f elf -o "$WORK/g3.elf" "$WORK/g3.s" && pass "gen3 linked by ld" || fail "gen3 link"
chmod +x "$WORK/g3.elf"

# Generation 4 / fixed point: gen3 compiles itself; outputs must be identical.
if "$WORK/g3.elf" "$HERE/minigcc.c" > "$WORK/g4.s" 2>/dev/null; then
    if cmp -s "$WORK/g3.s" "$WORK/g4.s"; then
        pass "fixed point: g3.s == g4.s"
    else
        fail "fixed point not reached"
    fi
else
    fail "gen4 assembly generation"
fi

# Behaviour: the self-hosted compiler emits the same assembly as gen1.
for f in test.c test_for.c; do
    [ -f "$HERE/$f" ] || continue
    if "$WORK/minigcc" "$HERE/$f" > "$WORK/ref.s" 2>/dev/null &&
       "$WORK/g3.elf" "$HERE/$f" > "$WORK/self.s" 2>/dev/null; then
        if cmp -s "$WORK/ref.s" "$WORK/self.s"; then
            pass "$f: self-hosted output identical to gen1"
        else
            fail "$f: self-hosted output differs"
        fi
    else
        fail "$f: could not compile"
    fi
done

# End to end: source -> self-hosted compiler -> ld -> native run.
"$WORK/g3.elf" "$HERE/test.c" > "$WORK/t.s" 2>/dev/null
"$WORK/ld" -f elf -o "$WORK/t.elf" "$WORK/t.s" 2>/dev/null && chmod +x "$WORK/t.elf"
"$WORK/t.elf" > "$WORK/t.out" 2>/dev/null
self_rc=$?
"$WORK/minigcc" "$HERE/test.c" > "$WORK/tr.s" 2>/dev/null
"$WORK/ld" -f elf -o "$WORK/tr.elf" "$WORK/tr.s" 2>/dev/null && chmod +x "$WORK/tr.elf"
"$WORK/tr.elf" > "$WORK/tr.out" 2>/dev/null
ref_rc=$?
if [ "$self_rc" -eq "$ref_rc" ] && cmp -s "$WORK/t.out" "$WORK/tr.out"; then
    pass "test.c runs identically (exit $self_rc)"
else
    fail "test.c run differs (self $self_rc vs gen1 $ref_rc)"
fi

echo ""
echo "=== self-host summary: $PASS passed, $FAIL failed ==="
[ "$FAIL" -eq 0 ] || exit 1
exit 0
