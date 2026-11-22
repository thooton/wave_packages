#!/usr/bin/env python3
"""Host tests for the installer's library patcher (tools/splice LibPatch) and module/xt9lib.patch.

usage: libpatch_test.py <splice-classes-dir> <module/xt9lib.patch> [<stock library>]
With the stock library at hand, the committed patch is also applied to it for real.
"""
import hashlib
import os
import random
import re
import subprocess
import sys
import tempfile

classes, committed = sys.argv[1], sys.argv[2]
stock = sys.argv[3] if len(sys.argv) > 3 else None
tmp = tempfile.mkdtemp()


def run(lib, patch, out):
    return subprocess.run(['java', '-cp', classes, 'org.wave.mod.keyboard.LibPatch', lib, patch, out],
                          capture_output=True, text=True)


def write(name, data):
    p = os.path.join(tmp, name)
    open(p, 'wb' if isinstance(data, bytes) else 'w').write(data)
    return p


def sha(b):
    return hashlib.sha256(b).hexdigest()


# A synthetic library and patch: writes over it and past its end.
rnd = random.Random(7)
lib = bytes(rnd.randrange(256) for _ in range(5000))
want = bytearray(lib) + bytes(3000)
edits = [(0, bytes([1, 2, 3])), (4990, bytes(range(30))), (7000, b'\xaa' * 64), (100, b'')]
for at, b in edits:
    want[at:at + len(b)] = b
text = '# test\nin %s %d\nout %s %d\n' % (sha(lib), len(lib), sha(bytes(want)), len(want))
text += ''.join('at %x %s\n' % (at, b.hex()) for at, b in edits if b)
L, P, O = write('lib.so', lib), write('p.patch', text), os.path.join(tmp, 'out.so')
r = run(L, P, O)
assert r.returncode == 0, r.stderr
assert open(O, 'rb').read() == bytes(want)
assert not os.path.exists(O + '.tmp')

# Another library: exit 3, nothing written.
os.remove(O)
r = run(write('other.so', lib[:-1] + b'\0'), P, O)
assert r.returncode == 3 and not os.path.exists(O), (r.returncode, r.stderr)
# A patch whose result isn't its "out" hash: exit 1, nothing written.
r = run(L, write('bad.patch', text.replace('at 0 010203', 'at 0 010204')), O)
assert r.returncode == 1 and not os.path.exists(O), (r.returncode, r.stderr)
# Malformed lines and writes out of range are refused.
for bad in ('at 1f40 zz', 'at 2000 00', 'frob 1 2', 'at 1 0'):
    r = run(L, write('bad.patch', text + bad + '\n'), O)
    assert r.returncode == 1 and not os.path.exists(O), (bad, r.returncode, r.stderr)

# The committed patch: well formed, writes only into the image it declares.
lines = [l.split(' ') for l in open(committed).read().splitlines() if l and not l.startswith('#')]
assert lines[0][0] == 'in' and re.fullmatch('[0-9a-f]{64}', lines[0][1])
assert lines[1][0] == 'out' and re.fullmatch('[0-9a-f]{64}', lines[1][1])
size = int(lines[1][2])
for f in lines[2:]:
    assert f[0] == 'at' and len(f) == 3 and int(f[1], 16) + len(bytes.fromhex(f[2])) <= size, f
if stock:
    r = run(stock, committed, O)
    assert r.returncode == 0, r.stderr
    assert sha(open(O, 'rb').read()) == lines[1][1]
    print('libpatch: ok (the committed patch applied to the stock library)')
else:
    print('libpatch: ok (no stock library here: the committed patch was only checked for form)')
