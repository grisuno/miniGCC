#!/bin/bash
# test_all.sh: feature test suite for miniGCC.
# For each tests/t_NAME.c: build a gcc reference, run it, and require its
# stdout to equal tests/t_NAME.expected; then build the same file with the
# miniGCC under test and require byte-identical stdout. Negative tests
# (tests/neg_NAME.c) must fail compilation with a diagnostic.
# Usage: bash test_all.sh
set -u

HERE="$(cd "$(dirname "$0")" && pwd)"
MGCC="$HERE/minigcc"
WORK="$(mktemp -d "${TMPDIR:-/tmp}/mgcc_all.XXXXXX")" || exit 1
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

if [ ! -x "$MGCC" ]; then
    if ! $CC -o "$MGCC" "$HERE/minigcc.c"; then
        echo "FAIL: cannot build minigcc with host gcc"
        exit 1
    fi
fi

run_test() {
    name="$1"
    src="$HERE/tests/t_$name.c"
    exp="$HERE/tests/t_$name.expected"
    if [ ! -f "$src" ]; then
        fail "$name: missing $src"
        return
    fi
    if [ ! -f "$exp" ]; then
        fail "$name: missing $exp"
        return
    fi
    args=()
    if [ -f "$HERE/tests/t_$name.args" ]; then
        while IFS= read -r line; do
            args+=("$line")
        done < "$HERE/tests/t_$name.args"
    fi
    if ! $CC -o "$WORK/ref_$name" "$src" 2> "$WORK/ref_$name.err"; then
        fail "$name: gcc reference build failed"
        head -n 5 "$WORK/ref_$name.err"
        return
    fi
    if ! "$WORK/ref_$name" "${args[@]}" > "$WORK/ref_$name.out" 2> /dev/null; then
        fail "$name: gcc reference run failed"
        return
    fi
    if ! cmp -s "$WORK/ref_$name.out" "$exp"; then
        fail "$name: gcc reference output differs from .expected (stale expectation?)"
        diff "$exp" "$WORK/ref_$name.out" | head -n 10
        return
    fi
    if ! "$MGCC" "$src" > "$WORK/$name.s" 2> "$WORK/$name.mgccerr"; then
        fail "$name: minigcc compile failed"
        head -n 5 "$WORK/$name.mgccerr"
        return
    fi
    if [ -s "$WORK/$name.mgccerr" ]; then
        fail "$name: minigcc emitted diagnostics"
        head -n 5 "$WORK/$name.mgccerr"
        return
    fi
    if ! as "$WORK/$name.s" -o "$WORK/$name.o" 2> "$WORK/$name.aserr"; then
        fail "$name: as failed on minigcc output"
        head -n 5 "$WORK/$name.aserr"
        return
    fi
    if ! gcc -no-pie "$WORK/$name.o" -o "$WORK/$name" 2> "$WORK/$name.lderr"; then
        fail "$name: link failed"
        head -n 5 "$WORK/$name.lderr"
        return
    fi
    if ! "$WORK/$name" "${args[@]}" > "$WORK/$name.out" 2> /dev/null; then
        fail "$name: minigcc-built run failed"
        return
    fi
    if cmp -s "$WORK/$name.out" "$exp"; then
        pass "$name"
    else
        fail "$name: output mismatch"
        diff "$exp" "$WORK/$name.out" | head -n 10
    fi
}

run_neg() {
    name="$1"
    want="$2"
    src="$HERE/tests/neg_$name.c"
    if [ ! -f "$src" ]; then
        fail "neg_$name: missing $src"
        return
    fi
    if "$MGCC" "$src" > /dev/null 2> "$WORK/neg_$name.err"; then
        fail "neg_$name: minigcc accepted invalid input"
        return
    fi
    if grep -q "$want" "$WORK/neg_$name.err"; then
        pass "neg_$name"
    else
        fail "neg_$name: wrong diagnostic (want '$want')"
        head -n 3 "$WORK/neg_$name.err"
    fi
}

run_test arith
run_test logic
run_test if
run_test while
run_test for
run_test dowhile
run_test switch
run_test goto
run_test pointers
run_test arrays
run_test strings
run_test struct
run_test enum
run_test typedef
run_test scope
run_test float
run_test hexoct
run_test compound
run_test inline
run_test include
run_test macros
run_test sizeof
run_test recursion
run_test globinit
run_test args
run_test asm
run_test asm3

run_neg octal "invalid octal constant"
run_neg hex "invalid hex constant"
run_neg comment "unterminated comment"
run_neg float "invalid float constant"
run_neg asm "unsupported asm output constraint"
run_neg asm2 "duplicate asm register"
run_neg asm3 "unsupported asm output constraint"

echo "=== test_all summary: $PASS passed, $FAIL failed ==="
[ "$FAIL" -eq 0 ]
