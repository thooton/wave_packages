"""Admit only externally signed builds with the stock signer and requested payload."""
import re
import subprocess
import sys
import zipfile
from pathlib import Path

signer, stock, request, candidate = map(Path, sys.argv[1:])

def certificates(apk):
    result = subprocess.run([signer, 'verify', '--min-sdk-version', '27', '--max-sdk-version', '27',
                             '--print-certs', apk], capture_output=True, text=True)
    if result.returncode:
        sys.exit(f'{apk}: APK signature did not verify for API 27: {result.stderr.strip()}')
    hashes = re.findall(r'^Signer #\d+ certificate SHA-256 digest: ([a-fA-F0-9]{64})$', result.stdout, re.M)
    if not hashes:
        sys.exit(f'{apk}: missing signer')
    return sorted(hashes)

def contents(apk):
    with zipfile.ZipFile(apk) as z:
        if len(set(z.namelist())) != len(z.namelist()):
            sys.exit(f'{apk}: duplicate entries')
        return {f: z.read(f) for f in z.namelist() if not f.endswith('/') and not re.fullmatch(
            r'META-INF/(?:[^/]+\.(?:SF|RSA|EC|DSA)|MANIFEST\.MF|SIG-[^/]+)', f, re.I)}

if certificates(candidate) != certificates(stock):
    sys.exit(f'{candidate}: wrong signer; OEM authorization required')
if contents(candidate) != contents(request):
    sys.exit(f'{candidate}: payload differs from local build')
