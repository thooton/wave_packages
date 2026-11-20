#!/usr/bin/env bash
set -eu
cd "$(dirname "$0")/.."
for t in tools/testing/*_test.py; do python3 "$t"; done
