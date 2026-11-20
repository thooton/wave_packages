#!/usr/bin/env python3
"""Check that a spliced APK keeps the stock signature and exactly the built dex.

A spliced APK is not a properly signed APK: its dex no longer matches the stock
v1 digests. It installs because Android 8.1 checks system-partition APKs by v1
on AndroidManifest.xml only (see splice_apk.py). apksigner therefore refuses
it, and this checker stands in for it:

* no APK Signature Scheme v2 block (it would be verified in full and fail);
* META-INF signature files byte-identical to the stock APK, which keeps the
  stock signer identity and the v1 signature over the manifest;
* every non-signature entry byte-identical to the stock APK except the dex,
  which must be exactly the compiled dex from the build;
* the manifest still matches its v1 digest.

usage: verify_splice.py <stock.apk> <compiled-dex-dir> <candidate.apk>
"""
import base64
import hashlib
import re
import struct
import sys
import zipfile
from pathlib import Path

SIG_RE = re.compile(r'META-INF/(?:[^/]+\.(?:SF|RSA|EC|DSA)|MANIFEST\.MF|SIG-[^/]+)', re.I)
DEX_RE = re.compile(r'classes\d*\.dex$')


def files(apk):
    with zipfile.ZipFile(apk) as z:
        names = [i.filename for i in z.infolist() if not i.filename.endswith('/')]
        if len(set(names)) != len(names):
            sys.exit(f'{apk}: duplicate entries')
        return {name: z.read(name) for name in names}


def has_v2_block(apk):
    with open(apk, 'rb') as f:
        f.seek(0, 2)
        size = f.tell()
        f.seek(max(0, size - 65557))
        tail = f.read()
        end = tail.rfind(b'PK\x05\x06')
        if end < 0:
            sys.exit(f'{apk}: not a zip')
        central = struct.unpack('<I', tail[end + 16:end + 20])[0]
        if central < 16:
            return False
        f.seek(central - 16)
        return f.read(16) == b'APK Sig Block 42'


def manifest_digest(manifest_mf):
    for section in re.split(r'\r?\n\r?\n', manifest_mf.decode('utf-8', 'replace')):
        lines = section.splitlines()
        if not lines or lines[0].strip() != 'Name: AndroidManifest.xml':
            continue
        for line in lines[1:]:
            match = re.match(r'(SHA-256|SHA1)-Digest:\s*(\S+)', line.strip())
            if match:
                return match.group(1), match.group(2)
    return None


def expected_payload(stock, dexdir):
    with zipfile.ZipFile(stock) as z:
        payload = {name: z.read(name) for name in z.namelist()
                   if not name.endswith('/') and not SIG_RE.fullmatch(name)
                   and not DEX_RE.fullmatch(name)}
    dexes = sorted(Path(dexdir).glob('classes*.dex'))
    if not dexes:
        sys.exit(f'{dexdir}: no classes*.dex; run tools/build.sh first')
    for dex in dexes:
        payload[dex.name] = dex.read_bytes()
    return payload


def main(stock, dexdir, candidate):
    if has_v2_block(candidate):
        sys.exit(f'{candidate}: has an APK Signature Scheme v2 block; Android 8.1 would verify it in full')

    stock_files = files(stock)
    candidate_files = files(candidate)

    stock_sig = {n: b for n, b in stock_files.items() if SIG_RE.fullmatch(n)}
    candidate_sig = {n: b for n, b in candidate_files.items() if SIG_RE.fullmatch(n)}
    if candidate_sig != stock_sig:
        sys.exit(f'{candidate}: signature files differ from {stock.name}')

    expected = expected_payload(stock, dexdir)
    payload = {n: b for n, b in candidate_files.items() if not SIG_RE.fullmatch(n)}
    if payload != expected:
        missing = sorted(expected.keys() - payload.keys())
        extra = sorted(payload.keys() - expected.keys())
        changed = sorted(n for n in expected.keys() & payload.keys() if expected[n] != payload[n])
        detail = ', '.join(filter(None, [
            f'missing {missing}' if missing else '',
            f'extra {extra}' if extra else '',
            f'changed {changed}' if changed else '']))
        sys.exit(f'{candidate}: payload differs from the build ({detail})')

    manifest = candidate_files.get('AndroidManifest.xml')
    manifest_mf = candidate_files.get('META-INF/MANIFEST.MF')
    if manifest is None or manifest_mf is None:
        sys.exit(f'{candidate}: missing manifest or v1 signature manifest')
    found = manifest_digest(manifest_mf)
    if not found:
        sys.exit(f'{candidate}: no v1 digest for AndroidManifest.xml')
    algorithm, expected_digest = found
    digest = hashlib.sha256(manifest).digest() if algorithm == 'SHA-256' \
        else hashlib.sha1(manifest).digest()
    if base64.b64encode(digest).decode() != expected_digest:
        sys.exit(f'{candidate}: AndroidManifest.xml does not match its v1 digest')

    print(f'{candidate.name}: stock signer, v1 manifest digest OK ({algorithm}), payload matches')


if __name__ == '__main__':
    if len(sys.argv) != 4:
        sys.exit(__doc__)
    main(Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3]))
