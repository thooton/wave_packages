#!/usr/bin/env python3
"""Provenance checks for the x86 parity gate in build-dictation-runtime.yml.

files      pinned golden_transcripts.json / core_fixtures.json match pins.json
wavs       fetched WAVs match the pinned file and PCM digests (and only those clips)
mask       a CPUID probe run under qemu reports an AVX2/FMA-only CPU (every wider family off)
reference  a freshly recomputed Python reference equals the pinned one exactly

Every check is exact and exits non-zero on any difference. See dictation/native/ci/README.md.
"""
from __future__ import annotations

import argparse
import base64
import hashlib
import json
import re
import struct
import sys
import wave
from pathlib import Path

# CPUID feature names the probe prints, by required value under the mask.
MASK_ON = ("avx", "fma", "f16c", "avx2")
MASK_OFF = ("avx512f", "avx512dq", "avx512bw", "avx512vl", "avx512vbmi", "avx512vnni", "gfni",
            "avx512fp16", "avx512bf16", "amx_int8", "avxvnni", "avxvnniint8")
HASWELL_LEAF1_EAX = "0x000306c4"
VAD_SCORES = re.compile(r"^/clips\[\d+\]/vad_windows\[\d+\]/scores_f32_b64$")


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def fail(msg: str) -> None:
    print(f"FAILED: {msg}", file=sys.stderr)
    sys.exit(1)


def cmd_files(a) -> None:
    pins = json.loads(Path(a.pins).read_text())
    for path, key in ((Path(a.golden), "golden_transcripts_sha256"), (Path(a.fixtures), "core_fixtures_sha256")):
        got = sha256(path)
        print(f"{got}  {path} (pinned {pins[key]})")
        if got != pins[key]:
            fail(f"{path} does not match pins.json {key}")
    print("pinned reference files: OK")


def cmd_wavs(a) -> None:
    pins = json.loads(Path(a.pins).read_text())["wavs"]
    wav_dir = Path(a.wav_dir)
    present = sorted(p.name for p in wav_dir.glob("*.wav"))
    if present != sorted(pins):
        fail(f"clip set differs from pins: {sorted(set(present) ^ set(pins))}")
    bad = 0
    for name in sorted(pins):
        p = wav_dir / name
        with wave.open(str(p), "rb") as w:
            fmt = (w.getnchannels(), w.getsampwidth(), w.getframerate(), w.getcomptype(), w.getnframes())
            pcm = hashlib.sha256(w.readframes(w.getnframes())).hexdigest()
        exp = pins[name]
        ok = (fmt == (1, 2, 16000, "NONE", exp["num_samples"]) and pcm == exp["pcm_sha256"]
              and sha256(p) == exp["file_sha256"])
        bad += not ok
        print(f"{'ok ' if ok else 'BAD'} pcm {pcm} file {sha256(p)} {name}")
    if bad:
        fail(f"{bad}/{len(pins)} clips differ from the pinned file or PCM digests")
    print(f"WAV clips: {len(pins)}/{len(pins)} match pinned file and PCM digests")


def parse_probe(path: Path) -> dict[str, str]:
    lines = [l for l in path.read_text().splitlines() if l.startswith("vendor=")]
    if len(lines) != 1:
        fail(f"expected exactly one CPUID probe line in {path}, found {len(lines)}")
    return dict(re.findall(r"([a-z0-9_.]+)=(\S+)", lines[0]))


def cmd_mask(a) -> None:
    native = parse_probe(Path(a.native))
    masked = parse_probe(Path(a.masked))
    print("native: " + " ".join(f"{k}={v}" for k, v in native.items()))
    print("masked: " + " ".join(f"{k}={v}" for k, v in masked.items()))
    problems = [f"{k}={masked.get(k)}" for k in MASK_ON if masked.get(k) != "1"]
    problems += [f"{k}={masked.get(k)}" for k in MASK_OFF if masked.get(k) != "0"]
    if masked.get("leaf1.eax") != HASWELL_LEAF1_EAX:
        problems.append(f"leaf1.eax={masked.get('leaf1.eax')} (want {HASWELL_LEAF1_EAX})")
    if problems:
        fail("qemu CPU mask is not an AVX2/FMA-only Haswell: " + ", ".join(problems))
    wide = [k for k in MASK_OFF if native.get(k) == "1"]
    print(f"host wide features: {' '.join(wide) or 'none'}; mask: OK")


def leaves(a, b, path: str, out: list) -> None:
    if isinstance(a, dict) and isinstance(b, dict):
        if set(a) != set(b):
            out.append((path, "keys"))
        for k in sorted(set(a) & set(b)):
            leaves(a[k], b[k], f"{path}/{k}", out)
    elif isinstance(a, list) and isinstance(b, list):
        if len(a) != len(b):
            out.append((path, "length"))
            return
        for i, (x, y) in enumerate(zip(a, b)):
            leaves(x, y, f"{path}[{i}]", out)
    elif a != b:
        out.append((path, (a, b)))


def f32(b64: str) -> list[float]:
    raw = base64.b64decode(b64)
    return list(struct.unpack(f"<{len(raw) // 4}f", raw))


def cmd_reference(a) -> None:
    pins = json.loads(Path(a.pins).read_text())
    q = pins["qemu_reference"]
    golden, fresh_golden = Path(a.frozen_golden), Path(a.fresh_golden)
    fixtures, fresh_fixtures = Path(a.frozen_fixtures), Path(a.fresh_fixtures)

    if fresh_golden.read_bytes() != golden.read_bytes():
        fail(f"fresh golden_transcripts.json ({sha256(fresh_golden)}) != pinned ({sha256(golden)})")
    print(f"fresh golden_transcripts.json == pinned, byte for byte ({sha256(golden)})")

    got = sha256(fresh_fixtures)
    if got != q["core_fixtures_sha256"]:
        fail(f"fresh core_fixtures.json {got} != pinned qemu reference {q['core_fixtures_sha256']}")
    print(f"fresh core_fixtures.json == pinned qemu reference, byte for byte ({got})")

    # Document how the emulated reference relates to the pinned (native AVX2) fixtures: only vad_dft
    # scores may differ, at float32 rounding level. The exact check above is what gates.
    out: list = []
    leaves(json.loads(fixtures.read_text()), json.loads(fresh_fixtures.read_text()), "", out)
    worst = 0.0
    for path, diff in out:
        if not VAD_SCORES.match(path) or not isinstance(diff, tuple):
            fail(f"fresh fixtures differ from pinned outside vad_dft scores at {path}")
        x, y = f32(diff[0]), f32(diff[1])
        if len(x) != len(y):
            fail(f"vad score count changed at {path}")
        d = max(abs(p - r) for p, r in zip(x, y))
        worst = max(worst, d)
        print(f"  {path}: {sum(p != r for p, r in zip(x, y))}/{len(x)} floats differ, max |d| {d:.3g}")
    if worst > 1e-6:
        fail(f"vad_dft scores differ by {worst:.3g} (> 1e-6, FixtureReplay's tolerance)")
    print(f"fixtures vs pinned: {len(out)} vad_dft score arrays differ by at most {worst:.3g}; all else identical")


def main() -> None:
    ap = argparse.ArgumentParser()
    sub = ap.add_subparsers(dest="cmd", required=True)
    p = sub.add_parser("files")
    p.add_argument("--pins", required=True)
    p.add_argument("--golden", required=True)
    p.add_argument("--fixtures", required=True)
    p = sub.add_parser("wavs")
    p.add_argument("--pins", required=True)
    p.add_argument("--wav-dir", required=True)
    p = sub.add_parser("mask")
    p.add_argument("--native", required=True)
    p.add_argument("--masked", required=True)
    p = sub.add_parser("reference")
    for k in ("--pins", "--frozen-golden", "--frozen-fixtures", "--fresh-golden", "--fresh-fixtures"):
        p.add_argument(k, required=True)
    a = ap.parse_args()
    {"files": cmd_files, "wavs": cmd_wavs, "mask": cmd_mask, "reference": cmd_reference}[a.cmd](a)


if __name__ == "__main__":
    main()
