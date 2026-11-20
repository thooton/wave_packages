#!/usr/bin/env python3
"""Which key signed an APK, and may it be published?

    check_signer.py [--report] APK...

Prints the SHA-256 of each APK's signing certificate. Exits 1 when an APK is
signed with a key whose private half is in a public repository (listed in
public-key-digests.txt beside this file: the shared debug key and the old
App Drawer key), or, when release-key.sha256 exists beside this file, with any
key but that one. --report only prints and never fails (builds that are not
going to be published use it to say so loudly).

The release gates (.github/release_package.py in wave_packages,
tools/wavesrc/release_wave.py in wave) import refused() and call it before
anything is uploaded. The same file is kept, byte for byte, in both
repositories; a change here is a change there.
"""
import os
import re
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
DIGEST = re.compile(r"[0-9a-f]{64}")


def apksigner():
    found = None
    for root in (os.environ.get("ANDROID_SDK_ROOT"), os.environ.get("ANDROID_HOME"), "/opt/android-sdk"):
        if root:
            tools = sorted(Path(root, "build-tools").glob("*/apksigner"))
            if tools:
                found = str(tools[-1])
                break
    return found or "apksigner"


def signers(apk):
    """The SHA-256 digests of the APK's signing certificates (an invalid signature is an error)."""
    out = subprocess.run([apksigner(), "verify", "--min-sdk-version", "27", "--print-certs", str(apk)],
                         text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if out.returncode != 0:
        raise ValueError(f"{apk}: signature does not verify: {out.stderr.strip() or out.stdout.strip()}")
    found = re.findall(r"Signer #\d+ certificate SHA-256 digest: ([0-9a-fA-F]{64})", out.stdout)
    if not found:
        raise ValueError(f"{apk}: no signer found")
    return [digest.lower() for digest in found]


def digests(name):
    """Digests listed in a file beside this one: one per line, '#' starts a comment."""
    path = HERE / name
    if not path.is_file():
        return {}
    found = {}
    for line in path.read_text().splitlines():
        text = line.split("#", 1)[0].strip()
        if text:
            digest, _, label = text.partition(" ")
            if not DIGEST.fullmatch(digest.lower()):
                raise ValueError(f"{path}: not a SHA-256 digest: {digest}")
            found[digest.lower()] = label.strip() or "listed key"
    return found


def refusal(apk, signed=None):
    """Why this APK must not be published, or None."""
    signed = signers(apk) if signed is None else signed
    public = digests("public-key-digests.txt")
    for digest in signed:
        if digest in public:
            return (f"{apk}: signed with the PUBLIC {public[digest]} ({digest}); its private key is in a public "
                    "repository, so anyone could build an update to this app. Build the release with the "
                    "WAVE_KEYSTORE_* variables set (docs/tasks/01-owner-checklist.md in wave)")
    pinned = digests("release-key.sha256")
    if pinned and not set(signed) <= set(pinned):
        return f"{apk}: signed with {', '.join(signed)}, not the release key recorded in signing/release-key.sha256"
    return None


def refused(apk):
    """Raise ValueError when the APK may not be published."""
    why = refusal(apk)
    if why:
        raise ValueError(why)


def main(argv):
    report = "--report" in argv
    apks = [a for a in argv if a != "--report"]
    if not apks:
        print(__doc__, file=sys.stderr)
        return 2
    bad = 0
    for apk in apks:
        signed = signers(apk)
        why = refusal(apk, signed)
        public = digests("public-key-digests.txt")
        kind = "PUBLIC DEBUG KEY, NOT PUBLISHABLE" if why and any(d in public for d in signed) else (
            "WRONG KEY" if why else "release key")
        print(f"signed-with {kind}: {os.path.basename(str(apk))} {' '.join(signed)}")
        if why and not report:
            print(why, file=sys.stderr)
            bad += 1
    return 1 if bad else 0


if __name__ == "__main__":
    try:
        sys.exit(main(sys.argv[1:]))
    except ValueError as exc:
        sys.exit(str(exc))
