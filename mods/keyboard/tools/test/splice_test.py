#!/usr/bin/env python3
"""Host tests for the installer's splicer (tools/splice) on a synthetic stock-shaped APK.

usage: splice_test.py <splice-classes-dir>
"""
import os
import struct
import subprocess
import sys
import tempfile
import zipfile
import zlib

classes = sys.argv[1]
tmp = tempfile.mkdtemp()
stock, out = os.path.join(tmp, 'stock.apk'), os.path.join(tmp, 'out.apk')
dex = [os.path.join(tmp, 'classes.dex'), os.path.join(tmp, 'classes2.dex')]
open(dex[0], 'wb').write(b'dex\n035\0' + os.urandom(5001))
open(dex[1], 'wb').write(b'dex\n035\0' + os.urandom(77))

# Stock-like: stored and deflated entries, a stock classes.dex in the middle, META-INF last, and a
# fake APK Signature Scheme v2 block before the central directory.
entries = [('AndroidManifest.xml', zipfile.ZIP_DEFLATED, b'<manifest/>' * 50),
           ('res/a.png', zipfile.ZIP_STORED, os.urandom(333)),
           ('classes.dex', zipfile.ZIP_DEFLATED, b'stock dex' * 100),
           ('assets/EN.txt', zipfile.ZIP_STORED, b'hello\n' * 7),
           ('resources.arsc', zipfile.ZIP_STORED, os.urandom(1001)),
           ('META-INF/CERT.SF', zipfile.ZIP_DEFLATED, b'sf' * 40),
           ('META-INF/CERT.RSA', zipfile.ZIP_DEFLATED, os.urandom(200)),
           ('META-INF/MANIFEST.MF', zipfile.ZIP_DEFLATED, b'mf' * 40)]
with zipfile.ZipFile(stock, 'w') as z:
    for name, method, data in entries:
        z.writestr(zipfile.ZipInfo(name, (2008, 1, 1, 0, 0, 0)), data, compress_type=method)
raw = bytearray(open(stock, 'rb').read())
end = raw.rfind(b'PK\x05\x06')
cd = struct.unpack_from('<I', raw, end + 16)[0]
block = b'\0' * 32 + b'APK Sig Block 42'
raw[cd:cd] = block
struct.pack_into('<I', raw, end + len(block) + 16, cd + len(block))
open(stock, 'wb').write(raw)


def run(*args):
    return subprocess.run(['java', '-cp', classes, 'org.wave.mod.keyboard.Splice', *args],
                          capture_output=True, text=True)


def raw_data(path):
    """name -> (method, crc, raw stored/compressed bytes, data offset)."""
    b = open(path, 'rb').read()
    res = {}
    with zipfile.ZipFile(path) as z:
        for i in z.infolist():
            n, x = struct.unpack_from('<HH', b, i.header_offset + 26)
            at = i.header_offset + 30 + n + x
            res[i.filename] = (i.compress_type, i.CRC, b[at:at + i.compress_size], at)
    return res, b


r = run(stock, out, *dex)
assert r.returncode == 0, r.stderr
got, b = raw_data(out)
want, _ = raw_data(stock)
assert b'APK Sig Block 42' not in b, 'v2 block kept'
assert list(got) == ['AndroidManifest.xml', 'res/a.png', 'classes.dex', 'classes2.dex', 'assets/EN.txt',
                     'resources.arsc', 'META-INF/CERT.SF', 'META-INF/CERT.RSA', 'META-INF/MANIFEST.MF'], list(got)
for name, (method, crc, data, at) in got.items():
    if name.startswith('classes'):
        assert method == 0 and data == open(dex[0 if name == 'classes.dex' else 1], 'rb').read(), name
        assert crc == zlib.crc32(data), name
    else:
        assert (method, crc, data) == want[name][:3], name
    if method == 0:
        assert at % 4 == 0, f'{name} not aligned'
with zipfile.ZipFile(out) as z:
    assert z.testzip() is None
    for name, method, data in entries:
        if name != 'classes.dex':
            assert z.read(name) == data, name

# Failure: no stock dex to replace, and a missing input; the output must not be left behind.
with zipfile.ZipFile(os.path.join(tmp, 'nodex.apk'), 'w') as z:
    z.writestr('AndroidManifest.xml', b'x')
r = run(os.path.join(tmp, 'nodex.apk'), out, *dex)
assert r.returncode != 0 and not os.path.exists(out), r
r = run(stock, out, os.path.join(tmp, 'missing.dex'))
assert r.returncode != 0 and not os.path.exists(out), r
print('splice tests OK')
