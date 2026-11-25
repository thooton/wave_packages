#!/usr/bin/env python3
"""Verify x86_64 C++ asr4all_bench reproduces golden_transcripts.json with 0 mismatches."""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
import tempfile
from pathlib import Path


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--bench", required=True, help="Path to asr4all_bench executable")
    ap.add_argument("--model", required=True, help="Path to asr_encoder.pte")
    ap.add_argument("--meta", required=True, help="Path to metadata.json")
    ap.add_argument("--wav-dir", required=True, help="Directory with WAV clips")
    ap.add_argument("--golden", required=True, help="Path to golden_transcripts.json")
    ap.add_argument("--threads", type=int, default=4)
    ap.add_argument(
        "--feedback-modes",
        default="off",
        help="Comma-separated asr4all_bench --feedback modes to check (off,copy,resident)",
    )
    ap.add_argument(
        "--expect-resident-pairs",
        default="",
        help="tier=N,... exact feedback_resident_pairs for every tier in resident mode",
    )
    args = ap.parse_args()
    modes = [m for m in args.feedback_modes.split(",") if m]
    expect_resident = {
        k: int(v) for k, v in (item.split("=", 1) for item in args.expect_resident_pairs.split(",") if item)
    }

    golden = json.loads(Path(args.golden).read_text())
    wav_dir = Path(args.wav_dir)
    tiers: list[str] = golden["tiers"]
    clips: list[dict] = golden["clips"]
    wav_paths = [str(wav_dir / c["filename"]) for c in clips]
    if expect_resident and sorted(expect_resident) != sorted(tiers):
        sys.exit(f"--expect-resident-pairs must list every tier: {sorted(tiers)}")
    texts: dict[tuple[str, str], list[tuple[str, str]]] = {}

    total_checks = 0
    mismatches: list[str] = []
    per_mode: dict[str, list[int]] = {}

    with tempfile.TemporaryDirectory() as td:
        td_path = Path(td)
        for mode in modes:
            mode_checks = 0
            mode_bad = len(mismatches)
            for tier in tiers:
                report_path = td_path / f"report_{mode}_{tier}.json"
                cmd = [
                    args.bench,
                    "--model",
                    args.model,
                    "--meta",
                    args.meta,
                    "--tier",
                    tier,
                    "--threads",
                    str(args.threads),
                    "--feedback",
                    mode,
                    "--json-out",
                    str(report_path),
                    *wav_paths,
                ]
                print(f"=== Running C++ asr4all_bench on tier {tier}, feedback {mode} ({len(clips)} clips) ===")
                subprocess.run(cmd, check=True)
                report = json.loads(report_path.read_text())
                assert len(report["clips"]) == len(clips), (
                    f"Clip count mismatch: {len(report['clips'])} vs {len(clips)}"
                )
                resident = report.get("feedback_resident_pairs", 0)
                if mode == "resident" and tier == "stream_c16r4":
                    # The shipping tier must actually take the zero-copy path.
                    assert resident == 2, f"stream_c16r4 resident pairs {resident}, expected 2"
                if mode != "resident":
                    assert resident == 0, f"[{tier}] feedback {mode} reported {resident} resident pairs"
                elif expect_resident:
                    assert resident == expect_resident[tier], (
                        f"[{tier}] resident pairs {resident}, expected {expect_resident[tier]}"
                    )
                texts[(mode, tier)] = [(rc["acoustic_text"], rc["pcec_text"]) for rc in report["clips"]]

                for gc, rc in zip(clips, report["clips"]):
                    exp = gc["transcripts"][tier]
                    total_checks += 2
                    mode_checks += 2
                    if rc["acoustic_text"] != exp["acoustic"]:
                        mismatches.append(
                            f"[{tier} feedback={mode}] {gc['filename']} ACOUSTIC mismatch:\n"
                            f"  expected: {exp['acoustic']!r}\n"
                            f"  actual:   {rc['acoustic_text']!r}"
                        )
                    if rc["pcec_text"] != exp["pcec"]:
                        mismatches.append(
                            f"[{tier} feedback={mode}] {gc['filename']} PCEC mismatch:\n"
                            f"  expected: {exp['pcec']!r}\n"
                            f"  actual:   {rc['pcec_text']!r}"
                        )

                print(
                    f"  [{tier} feedback={mode}] load_ms={report['load_ms']:.1f} "
                    f"warmup_ms={report['warmup_ms']:.1f} peak_rss_kb={report['peak_rss_kb']} "
                    f"resident_pairs={resident}"
                )
            per_mode[mode] = [mode_checks, len(mismatches) - mode_bad]

        # Smoke-test --vad vad_dft, --no-pcec, and --repeat-seconds on first clip
        smoke_json = td_path / "smoke.json"
        subprocess.run(
            [
                args.bench,
                "--model",
                args.model,
                "--meta",
                args.meta,
                "--tier",
                "stream_c16r4",
                "--threads",
                "2",
                "--no-pcec",
                "--vad",
                "vad_dft",
                "--repeat-seconds",
                "4",
                "--json-out",
                str(smoke_json),
                wav_paths[0],
            ],
            check=True,
        )
        smoke = json.loads(smoke_json.read_text())
        assert smoke["clips"][0]["vad_ms"] > 0.0, "Expected positive vad_ms in smoke test"
        assert smoke["sustained"]["total_audio_s"] >= 4.0, "Expected sustained loop >= 4s"
        assert smoke["clips"][0]["acoustic_text"] == clips[0]["transcripts"]["stream_c16r4"]["acoustic"]

    for mode, (checks, bad) in per_mode.items():
        print(f"feedback={mode}: {checks} checks, {bad} mismatches")

    # The modes must also agree with each other exactly, independently of the golden.
    mode_checks = 0
    mode_bad = len(mismatches)
    for mode in modes[1:]:
        for tier in tiers:
            for gc, base, other in zip(clips, texts[(modes[0], tier)], texts[(mode, tier)]):
                for kind, b, o in zip(("ACOUSTIC", "PCEC"), base, other):
                    mode_checks += 1
                    if b != o:
                        mismatches.append(
                            f"[{tier}] {gc['filename']} {kind} feedback={modes[0]} vs feedback={mode}:\n"
                            f"  {modes[0]}: {b!r}\n  {mode}: {o!r}"
                        )
    if len(modes) > 1:
        print(
            f"feedback modes {'=='.join(modes)}: {mode_checks} checks, "
            f"{len(mismatches) - mode_bad} differences"
        )

    if mismatches:
        print(f"\nFAILED: {len(mismatches)}/{total_checks} transcript mismatches:", file=sys.stderr)
        for m in mismatches:
            print(m, file=sys.stderr)
        sys.exit(1)

    print(
        f"\nPASSED: 100% exact string equality across {len(clips)} clips x {len(tiers)} tiers "
        f"({total_checks} acoustic+PCEC checks, 0 mismatches)."
    )


if __name__ == "__main__":
    main()
