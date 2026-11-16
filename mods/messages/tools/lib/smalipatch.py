#!/usr/bin/env python3
"""Tiny smali patch helper: patch(file, old, new) replaces exactly one occurrence or fails.
Used interactively during development; the patched smali is what's committed."""
import sys

def patch(path, old, new, count=1):
    s = open(path).read()
    n = s.count(old)
    if n != count:
        sys.exit(f"{path}: expected {count} match(es), found {n} for:\n{old}")
    s = s.replace(old, new)
    open(path, 'w').write(s)
    print(f"patched {path.split('/')[-1]}")
