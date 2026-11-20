#!/usr/bin/env python3
"""Splice compiled dex into the stock, OEM-signed system APK.

The stock APKs are signed with Sonim's key, which we do not have. Android 8.1
(PackageParser.collectCertificates, android-8.1.0_r1) verifies an APK from the
system partition with the v1 JAR scheme against AndroidManifest.xml only, and
does not verify JAR digests or signature-stripping protection for it. It still
fully verifies an APK Signature Scheme v2 block if one is present, so the v2
block has to go. This copies every stock entry byte-for-byte (including
META-INF with its original signature), replaces the dex entries, and writes a
fresh zip, which cannot carry the old v2 block.

AndroidManifest.xml and all resources must stay byte-identical, so the stock
v1 digest for the manifest still matches and the package keeps its original
certificate.

usage: splice_apk.py <stock.apk> <compiled-dex-dir> <out.apk>
"""
import base64
import hashlib
import re
import sys
import zipfile
from pathlib import Path

DEX_RE = re.compile(r'classes\d*\.dex$')


def manifest_digest(manifest_mf):
    """The (algorithm, base64 digest) for AndroidManifest.xml in a v1 manifest."""
    for section in re.split(r'\r?\n\r?\n', manifest_mf.decode('utf-8', 'replace')):
        lines = section.splitlines()
        if not lines or lines[0].strip() != 'Name: AndroidManifest.xml':
            continue
        for line in lines[1:]:
            match = re.match(r'(SHA-256|SHA1)-Digest:\s*(\S+)', line.strip())
            if match:
                return match.group(1), match.group(2)
    return None


def dex_order(path):
    match = re.search(r'\d+', path.stem)
    return int(match.group()) if match else 1


def main(stock, dexdir, out):
    dexes = sorted(dexdir.glob('classes*.dex'), key=dex_order)
    if not dexes:
        sys.exit(f'{dexdir}: no classes*.dex')

    with zipfile.ZipFile(stock) as src:
        manifest = src.read('AndroidManifest.xml')
        found = manifest_digest(src.read('META-INF/MANIFEST.MF'))
        if not found:
            sys.exit(f'{stock}: no v1 digest for AndroidManifest.xml')
        algorithm, expected = found
        digest = hashlib.sha256(manifest).digest() if algorithm == 'SHA-256' \
            else hashlib.sha1(manifest).digest()
        if base64.b64encode(digest).decode() != expected:
            sys.exit(f'{stock}: AndroidManifest.xml does not match its v1 digest')

        # Replace dex entries where they sit; any stock dex without a replacement
        # is dropped so no stock classes survive beside the patched ones.
        replacement = {dex.name: dex.read_bytes() for dex in dexes}
        with zipfile.ZipFile(out, 'w') as dst:
            for info in src.infolist():
                if DEX_RE.fullmatch(info.filename):
                    data = replacement.pop(info.filename, None)
                    if data is None:
                        continue
                else:
                    data = src.read(info.filename)
                item = zipfile.ZipInfo(info.filename, date_time=info.date_time)
                item.compress_type = info.compress_type
                item.external_attr = info.external_attr
                dst.writestr(item, data)
            for name, data in sorted(replacement.items()):
                item = zipfile.ZipInfo(name, date_time=(2009, 1, 1, 0, 0, 0))
                item.compress_type = zipfile.ZIP_DEFLATED
                item.external_attr = 0o644 << 16
                dst.writestr(item, data)

    with zipfile.ZipFile(out) as written:
        got = sorted(f for f in written.namelist() if DEX_RE.fullmatch(f))
    if got != sorted(dex.name for dex in dexes):
        sys.exit(f'{out}: dex entries {got} do not match {sorted(dex.name for dex in dexes)}')
    print(f'{out.name}: v1 manifest digest OK ({algorithm}), {len(dexes)} dex')


if __name__ == '__main__':
    if len(sys.argv) != 4:
        sys.exit(__doc__)
    main(Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3]))
