#!/bin/bash
# Builds the RCS engine + tests with the host JDK and runs unit, integration and TLS tests.
# Integration/TLS tests start their own mock instances on non-default ports (28xxx / 38xxx).
# Usage: tools/rcs/run_tests.sh [unit|integration|tls|all]   (RCS_TEST=<substring> filters test names)
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"
WHAT="${1:-all}"
OUT="$ROOT/build/rcs-test"
CLS="$OUT/classes"
rm -rf "$CLS"; mkdir -p "$CLS" "$OUT"
echo "== compiling"
javac -nowarn -Xlint:-options -source 8 -target 8 -encoding UTF-8 -d "$CLS" \
    $(find apps/BMms/java/org/wave -name '*.java') tools/rcs/test/*.java 2>&1 | grep -v '^Note:'
[ -f "$CLS/IntegrationTests.class" ] && [ -f "$CLS/org/wave/rcs/RcsEngine.class" ] || { echo "compile failed"; exit 1; }

PIDS=()
cleanup() { for p in "${PIDS[@]:-}"; do [ -n "$p" ] && kill "$p" 2>/dev/null; done; }
trap cleanup EXIT

# start_mock <logname> <base> [flags...]: ports base+080 (ACS), +443, +060 SIP, +061 SIPS, +855 MSRP, +856, +099 control
start_mock() {
    local name=$1 b=$2; shift 2
    python3 -m tools.rcs.mock --acs-port ${b}080 --acs-tls-port ${b}443 --sip-port ${b}060 --sip-tls-port ${b}061 \
        --msrp-port ${b}855 --msrps-port ${b}856 --control-port ${b}099 -v "$@" > "$OUT/$name.log" 2>&1 &
    PIDS+=($!)
    for i in $(seq 1 75); do
        curl -s -o /dev/null "http://127.0.0.1:${b}099/api/state" && return 0
        sleep 0.2
    done
    echo "mock $name did not start"; cat "$OUT/$name.log"; return 1
}

rc=0
if [ "$WHAT" = all ] || [ "$WHAT" = unit ]; then
    echo "== unit tests"
    java -cp "$CLS" -Drcs.root="$ROOT" UnitTests || rc=1
fi

if [ "$WHAT" = all ] || [ "$WHAT" = integration ]; then
    echo "== integration tests (engine log: $OUT/work/engine.log, mock log: $OUT/mock.log)"
    if start_mock mock 28; then
        java -cp "$CLS" -Dmock.acs=28080 -Dmock.control=28099 -Drcs.work="$OUT/work" IntegrationTests || rc=1
    else rc=1; fi
fi

if [ "$WHAT" = all ] || [ "$WHAT" = tls ]; then
    echo "== TLS tests (engine log: $OUT/work-tls/engine.log, mock log: $OUT/mock-tls.log)"
    if start_mock mock-tls 38 --tls --no-otp; then
        java -cp "$CLS" -Dmock.acs=38080 -Dmock.acss=38443 -Dmock.control=38099 -Drcs.work="$OUT/work-tls" TlsTests || rc=1
    else rc=1; fi
fi
[ $rc = 0 ] && echo "== ALL RCS TESTS PASSED" || echo "== RCS TESTS FAILED"
exit $rc
