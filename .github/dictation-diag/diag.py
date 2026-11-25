#!/usr/bin/env python3
"""x86 parity diagnostics for the dictation runtime (scratch CI only).

pcm      verify fetched WAVs against pinned PCM and file digests
bench    run asr4all_bench for modes x tiers, optionally under a prefix (e.g. qemu)
compare  exact comparison of bench report sets and Python goldens against the frozen golden
"""
from __future__ import annotations

import argparse
import hashlib
import json
import shlex
import subprocess
import sys
import time
import wave
from pathlib import Path


def read_digests(path: Path) -> dict[str, str]:
    out = {}
    for line in path.read_text().splitlines():
        if line.strip():
            digest, name = line.split(None, 1)
            out[name.strip()] = digest
    return out


def cmd_pcm(a) -> int:
    pcm_ref = read_digests(Path(a.pcm_sha))
    file_ref = read_digests(Path(a.file_sha))
    wav_dir = Path(a.wav_dir)
    bad_pcm = bad_file = 0
    for name in sorted(pcm_ref):
        p = wav_dir / name
        with wave.open(str(p), "rb") as w:
            fmt = (w.getnchannels(), w.getsampwidth(), w.getframerate(), w.getcomptype())
            pcm = hashlib.sha256(w.readframes(w.getnframes())).hexdigest()
        fsha = hashlib.sha256(p.read_bytes()).hexdigest()
        ok_pcm = pcm == pcm_ref[name] and fmt == (1, 2, 16000, "NONE")
        ok_file = fsha == file_ref.get(name)
        bad_pcm += not ok_pcm
        bad_file += not ok_file
        print(f"{'ok ' if ok_pcm else 'BAD'} pcm {pcm}  file {'same' if ok_file else 'diff ' + fsha}  {name}")
    print(f"PCM: {len(pcm_ref) - bad_pcm}/{len(pcm_ref)} identical; file bytes: {len(pcm_ref) - bad_file}/{len(pcm_ref)} identical")
    return 1 if bad_pcm else 0


def cmd_bench(a) -> int:
    golden = json.loads(Path(a.golden).read_text())
    tiers = golden["tiers"]
    wavs = [str(Path(a.wav_dir) / c["filename"]) for c in golden["clips"]]
    out = Path(a.out_dir)
    out.mkdir(parents=True, exist_ok=True)
    prefix = shlex.split(a.prefix) if a.prefix else []
    for mode in [m for m in a.modes.split(",") if m]:
        for tier in tiers:
            rp = out / f"report_{mode}_{tier}.json"
            cmd = [*prefix, a.bench, "--model", a.model, "--meta", a.meta, "--tier", tier,
                   "--threads", str(a.threads), "--feedback", mode, "--json-out", str(rp), *wavs]
            t0 = time.time()
            with open(out / f"log_{mode}_{tier}.txt", "w") as log:
                subprocess.run(cmd, check=True, stdout=log, stderr=subprocess.STDOUT)
            print(f"[{a.label}] feedback={mode} tier={tier} {time.time() - t0:.1f}s", flush=True)
    return 0


def load_reports(d: Path) -> dict[tuple[str, str], dict]:
    reps = {}
    for p in sorted(d.glob("report_*_stream_*.json")):
        _, mode, tier = p.stem.split("_", 2)
        reps[(mode, tier)] = json.loads(p.read_text())
    return reps


def cmd_compare(a) -> int:
    frozen = json.loads(Path(a.frozen).read_text())
    tiers = frozen["tiers"]
    fclips = frozen["clips"]
    summary: dict = {"frozen_sha256": hashlib.sha256(Path(a.frozen).read_bytes()).hexdigest()}
    lines = [f"frozen golden sha256 {summary['frozen_sha256']}"]

    for spec in a.python or []:
        label, path = spec.split("=", 1)
        p = Path(path)
        if not p.exists():
            lines.append(f"== python {label}: MISSING ({path})")
            summary[f"python:{label}"] = None
            continue
        g = {c["filename"]: c for c in json.loads(p.read_text())["clips"]}
        diffs = []
        n = 0
        for c in fclips:
            for t in tiers:
                for k in ("acoustic", "pcec"):
                    n += 1
                    got = g[c["filename"]]["transcripts"][t][k]
                    if got != c["transcripts"][t][k]:
                        diffs.append(f"  [{t}] {c['filename']} {k}\n    frozen: {c['transcripts'][t][k]!r}\n    got:    {got!r}")
        lines.append(f"== python {label}: {n} checks, {len(diffs)} mismatches vs frozen")
        lines += diffs
        summary[f"python:{label}"] = {"checks": n, "mismatches": len(diffs)}

    for spec in a.cpp or []:
        label, path = spec.split("=", 1)
        reps = load_reports(Path(path))
        if not reps:
            lines.append(f"== c++ {label}: NO REPORTS ({path})")
            summary[f"cpp:{label}"] = None
            continue
        modes = sorted({m for m, _ in reps})
        info: dict = {}
        lines.append(f"== c++ {label}: modes {modes}")
        for mode in modes:
            n = 0
            diffs = []
            pairs = {}
            for t in tiers:
                r = reps.get((mode, t))
                if r is None:
                    diffs.append(f"  [{t}] missing report")
                    continue
                pairs[t] = r.get("feedback_resident_pairs", 0)
                for c, rc in zip(fclips, r["clips"]):
                    assert Path(rc["wav"]).name == c["filename"], (rc["wav"], c["filename"])
                    for k, rk in (("acoustic", "acoustic_text"), ("pcec", "pcec_text")):
                        n += 1
                        if rc[rk] != c["transcripts"][t][k]:
                            diffs.append(f"  [{t}] {c['filename']} {k}\n    frozen: {c['transcripts'][t][k]!r}\n    c++:    {rc[rk]!r}")
            lines.append(f"  feedback={mode}: {n} checks, {len(diffs)} mismatches vs frozen; resident_pairs={pairs}")
            lines += diffs
            info[mode] = {"checks": n, "mismatches": len(diffs), "resident_pairs": pairs}
        if len(modes) > 1:
            base = modes[0]
            n = diff = 0
            for mode in modes[1:]:
                for t in tiers:
                    ra, rb = reps.get((base, t)), reps.get((mode, t))
                    if ra is None or rb is None:
                        continue
                    for ca, cb in zip(ra["clips"], rb["clips"]):
                        for rk in ("acoustic_text", "pcec_text"):
                            n += 1
                            if ca[rk] != cb[rk]:
                                diff += 1
                                lines.append(f"  MODE-DIFF [{t}] {Path(ca['wav']).name} {rk} {base}={ca[rk]!r} {mode}={cb[rk]!r}")
            lines.append(f"  same-host mode equality vs {base}: {n} checks, {diff} differences")
            info["mode_equality"] = {"checks": n, "differences": diff}
        summary[f"cpp:{label}"] = info

    text = "\n".join(lines)
    print(text)
    if a.out:
        Path(a.out).write_text(text + "\n")
        Path(a.out).with_suffix(".json").write_text(json.dumps(summary, indent=2) + "\n")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser()
    sub = ap.add_subparsers(dest="cmd", required=True)
    p = sub.add_parser("pcm")
    p.add_argument("--wav-dir", required=True)
    p.add_argument("--pcm-sha", required=True)
    p.add_argument("--file-sha", required=True)
    p = sub.add_parser("bench")
    for k in ("--bench", "--model", "--meta", "--wav-dir", "--golden", "--out-dir", "--label"):
        p.add_argument(k, required=True)
    p.add_argument("--threads", type=int, default=4)
    p.add_argument("--modes", default="off,copy,resident")
    p.add_argument("--prefix", default="")
    p = sub.add_parser("compare")
    p.add_argument("--frozen", required=True)
    p.add_argument("--python", action="append", help="label=golden.json")
    p.add_argument("--cpp", action="append", help="label=reports_dir")
    p.add_argument("--out")
    a = ap.parse_args()
    return {"pcm": cmd_pcm, "bench": cmd_bench, "compare": cmd_compare}[a.cmd](a)


if __name__ == "__main__":
    sys.exit(main())
