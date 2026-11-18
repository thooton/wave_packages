#!/usr/bin/env python3
"""dexcheck.py <dexdir> <javaclassesdir>

Fails if a class is defined in more than one dex file (a stock class replaced by Java whose smali
was not deleted: Android would silently load the stock one from classes.dex), or if a class in the
Java dex was not compiled from java/ (a stub leaked in)."""
import os, struct, sys

def uleb(b, o):
    r = s = 0
    while True:
        x = b[o]; o += 1
        r |= (x & 0x7f) << s; s += 7
        if x < 0x80: return r, o

def classes(path):
    b = open(path, "rb").read()
    sid_n, sid_off, tid_n, tid_off = struct.unpack_from("<IIII", b, 0x38)
    cd_n, cd_off = struct.unpack_from("<II", b, 0x60)
    def string(i):
        off = struct.unpack_from("<I", b, sid_off + 4 * i)[0]
        n, o = uleb(b, off)
        return b[o:b.index(b"\0", o)].decode("utf-8", "replace")
    out = set()
    for i in range(cd_n):
        tidx = struct.unpack_from("<I", b, cd_off + 32 * i)[0]
        out.add(string(struct.unpack_from("<I", b, tid_off + 4 * tidx)[0]))
    return out

dexdir, cdir = sys.argv[1:]
seen, bad = {}, []
for f in sorted(os.listdir(dexdir)):
    for c in classes(os.path.join(dexdir, f)):
        if c in seen: bad.append(f"{c} in both {seen[c]} and {f}")
        seen[c] = f
last = sorted(os.listdir(dexdir), key=lambda f: int(f[7:-4] or 1))[-1]
compiled = set()
for root, _, files in os.walk(cdir):
    for f in files:
        if f.endswith(".class"):
            compiled.add("L" + os.path.relpath(os.path.join(root, f), cdir)[:-6] + ";")
for c, f in seen.items():
    if f == last and c not in compiled and "$$ExternalSynthetic" not in c: bad.append(f"{c} in {f} but not compiled from java/")
if bad:
    sys.exit("dexcheck failed:\n  " + "\n  ".join(sorted(bad)))
print(f"dexcheck OK ({len(seen)} classes, {len(compiled)} from java/ in {last})")
