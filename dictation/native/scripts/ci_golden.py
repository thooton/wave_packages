#!/usr/bin/env python3
"""Run FUTO's Python reference (executorch==1.6.0) to generate:
  1. golden_transcripts.json (all ~20 clips x 4 tiers, both acoustic and PCEC)
  2. core_fixtures.json (3 diverse clips at stream_c16r4 for :dictation:core:selfTest)
"""

from __future__ import annotations

import argparse
import base64
import hashlib
import importlib.util
import json
import sys
from pathlib import Path

import numpy as np
import torch

TIERS = ["stream_c16r4", "stream_c32r8", "stream_c64r16", "stream_c512r8"]
HF_COMMIT = "87a6b5d093723fe37e9f69ad26307a3b95a31af0"
EXECUTORCH_VERSION = "1.6.0"


def load_reference_module(py_path: Path):
    spec = importlib.util.spec_from_file_location("asr4all_executorch", str(py_path))
    assert spec is not None and spec.loader is not None
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


def f32_b64(arr: np.ndarray) -> str:
    le = np.ascontiguousarray(arr, dtype="<f4")
    return base64.b64encode(le.tobytes()).decode("ascii")


def method_meta_dict(model, method_name: str) -> dict:
    mm = model.metadata(method_name)
    return {
        "inputs": [
            {
                "dtype": int(mm.input_tensor_meta(i).dtype()),
                "sizes": [int(s) for s in mm.input_tensor_meta(i).sizes()],
            }
            for i in range(mm.num_inputs())
        ],
        "outputs": [
            {
                "dtype": int(mm.output_tensor_meta(i).dtype()),
                "sizes": [int(s) for s in mm.output_tensor_meta(i).sizes()],
            }
            for i in range(mm.num_outputs())
        ],
    }


def record_fixture_clip(ref_mod, engine, clip_id: str, wav_name: str, pcm: np.ndarray, vad_method_name: str) -> dict:
    """Run stream_c16r4 + PCEC + VAD step-by-step and capture exact replay fixtures."""
    engine.set_tier("stream_c16r4")
    t = engine.tiers[engine.idx]
    pcec = engine.pcec
    assert pcec is not None

    # 1. Capture expected_stream_snapshots (feeding 8000 samples at a time, like --stream)
    engine.reset()
    snapshots: list[str] = []
    for i in range(0, len(pcm), 8000):
        snapshots.append(engine.decode_stream(pcm[i : i + 8000]))
    ref_acoustic = engine.finish()
    ref_pcec = engine.decode_pcec(decode_tail=True)

    # 2. Replay deterministically while recording every stream_c16r4, pcec_c16, and pcec_c16_flush call
    engine.reset()
    stream_steps: list[dict] = []
    pcec_steps: list[dict] = []

    stream_method = engine.model.load_method(t["name"])
    pcec_method = engine.model.load_method(pcec.name)
    pcec_flush_method = engine.model.load_method(pcec.flush_name)

    def drain_recorded() -> None:
        k = pcec.commit
        while len(pcec.ids) >= k:
            feats = pcec._feats(k, k)
            outs = pcec_method.execute(feats + pcec.cache)
            raw_slots = [int(x) for x in outs[0][0].tolist()]
            pcec_steps.append(
                {
                    "input_ids": [int(x) for x in feats[0][0].tolist()],
                    "input_pause": [int(x) for x in feats[1][0].tolist()],
                    "slots": raw_slots,
                }
            )
            skip = min(2 * k, max(0, 2 * pcec.lookahead - 2 * pcec.consumed))
            pcec.slots += raw_slots[skip : 2 * k]
            pcec.cache = [c.clone() for c in outs[-pcec.n_cache :]]
            del pcec.ids[:k], pcec.pause[:k], pcec.acoustic[:k], pcec.keep[:k]
            pcec.consumed += k

    next_frame = 0
    while next_frame * engine.spf < len(pcm):
        start = next_frame * engine.spf
        win = np.zeros(t["window"], dtype=np.float32)
        hi = min(len(pcm), start + t["window"])
        if hi > start:
            win[: hi - start] = pcm[start:hi]
        outs = stream_method.execute(
            [torch.from_numpy(win)[None, :], engine.filter_cache, engine.attn_cache]
        )
        engine.filter_cache = outs[ref_mod.T_FILTER].clone()
        engine.attn_cache = outs[ref_mod.T_ATTN].clone()
        valid = max(0, min(t["commit"], len(pcm) // engine.spf - next_frame))

        full_logits = outs[ref_mod.T_LOGITS][0].float().numpy()
        full_hidden = outs[ref_mod.T_HIDDEN][0].float().numpy()
        frame_ids = full_logits[:valid].argmax(-1).tolist() if valid > 0 else []

        stream_steps.append(
            {
                "valid": int(valid),
                "logits_argmax": [int(x) for x in frame_ids],
                "logits_f32_b64": f32_b64(full_logits),
                "hidden_f32_b64": f32_b64(full_hidden),
            }
        )

        engine.ids += frame_ids
        if valid > 0:
            pcec.pool(frame_ids, full_hidden[:valid], engine.blank)
            drain_recorded()
        next_frame += t["commit"]

    pcec.flush()
    drain_recorded()

    # Record pcec_flush
    n_real = len(pcec.ids)
    flush_feats = pcec._feats(pcec.commit, n_real)
    flush_in_ids = [int(x) for x in flush_feats[0][0].tolist()]
    flush_in_pause = [int(x) for x in flush_feats[1][0].tolist()]
    flush_feats.append(torch.tensor(n_real, dtype=torch.long))
    flush_outs = pcec_flush_method.execute(flush_feats + pcec.cache)
    flush_raw_slots = [int(x) for x in flush_outs[0][0].tolist()]
    valid_slots = 2 * pcec.lookahead + 2 * n_real + 1
    skip_slots = max(0, 2 * pcec.lookahead - 2 * pcec.consumed)
    rec_pcec_text = pcec.render(pcec.slots + flush_raw_slots[skip_slots:valid_slots])
    rec_acoustic_text = engine._text()

    assert rec_acoustic_text == ref_acoustic, (
        f"Fixture acoustic mismatch for {clip_id}: {rec_acoustic_text!r} != {ref_acoustic!r}"
    )
    assert rec_pcec_text == ref_pcec, (
        f"Fixture PCEC mismatch for {clip_id}: {rec_pcec_text!r} != {ref_pcec!r}"
    )

    # 3. Record up to 2 VAD windows (vad_dft)
    vad_m = engine.model.load_method(vad_method_name)
    vad_samples = int(vad_m.metadata.input_tensor_meta(0).sizes()[-1])
    vad_windows: list[dict] = []
    for w_idx in range(2):
        off = w_idx * vad_samples
        if w_idx > 0 and off >= len(pcm):
            break
        vwin = np.zeros(vad_samples, dtype=np.float32)
        hi = min(len(pcm), off + vad_samples)
        if hi > off:
            vwin[: hi - off] = pcm[off:hi]
        scores = vad_m.execute([torch.from_numpy(vwin)[None, :]])[0].float().numpy()
        vad_windows.append(
            {
                "start_sample": int(off),
                "scores_f32_b64": f32_b64(scores),
            }
        )

    return {
        "id": clip_id,
        "wav": wav_name,
        "num_samples": int(len(pcm)),
        "expected_acoustic": ref_acoustic,
        "expected_pcec": ref_pcec,
        "expected_stream_snapshots": snapshots,
        "stream_steps": stream_steps,
        "pcec_steps": pcec_steps,
        "pcec_flush": {
            "n_real": int(n_real),
            "input_ids": flush_in_ids,
            "input_pause": flush_in_pause,
            "slots": flush_raw_slots,
        },
        "vad_windows": vad_windows,
    }


def count_c16_tokens(engine, pcm: np.ndarray) -> int:
    engine.set_tier("stream_c16r4")
    engine.reset()
    engine.decode_stream(pcm)
    engine.finish()
    # Total pooled tokens = consumed + remaining in pcec.ids
    return int(engine.pcec.consumed + len(engine.pcec.ids))


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--bundle-dir", required=True, help="Directory with asr_encoder.pte & metadata.json")
    ap.add_argument("--ref-py", required=True, help="Path to asr4all_executorch.py")
    ap.add_argument("--wav-dir", required=True, help="Directory with WAVs and manifest.json")
    ap.add_argument("--golden-out", required=True, help="Output path for golden_transcripts.json")
    ap.add_argument("--fixtures-out", required=True, help="Output path for core_fixtures.json")
    args = ap.parse_args()

    bundle_dir = Path(args.bundle_dir)
    wav_dir = Path(args.wav_dir)
    manifest = json.loads((wav_dir / "manifest.json").read_text())

    ref_mod = load_reference_module(Path(args.ref_py))
    engine = ref_mod.load_engine(str(bundle_dir))

    # Pre-load clips into memory
    clips_pcm: dict[str, np.ndarray] = {}
    for entry in manifest["clips"]:
        wav_path = wav_dir / entry["filename"]
        clips_pcm[entry["filename"]] = ref_mod.load_wav(str(wav_path))

    # 1. Generate golden_transcripts.json across all clips x 4 tiers
    golden_clips: list[dict] = [
        {
            "id": entry["id"],
            "dataset_id": entry["dataset_id"],
            "source": entry["source"],
            "filename": entry["filename"],
            "reference_text": entry["reference_text"],
            "num_samples": entry["num_samples"],
            "duration_s": entry["duration_s"],
            "wav_sha256": entry["sha256"],
            "transcripts": {},
        }
        for entry in manifest["clips"]
    ]

    for tier in TIERS:
        print(f"=== Running Python reference on tier {tier} ({len(golden_clips)} clips) ===")
        engine.set_tier(tier)
        for gc in golden_clips:
            pcm = clips_pcm[gc["filename"]]
            engine.reset()
            engine.decode_stream(pcm)
            acoustic = engine.finish()
            pcec_txt = engine.decode_pcec(decode_tail=True)
            gc["transcripts"][tier] = {
                "acoustic": acoustic,
                "pcec": pcec_txt,
            }
            print(f"  [{tier}] {gc['filename']}: {pcec_txt}")

    golden_doc = {
        "hf_commit": HF_COMMIT,
        "executorch_version": EXECUTORCH_VERSION,
        "pte_sha256": sha256_file(bundle_dir / "asr_encoder.pte"),
        "tiers": TIERS,
        "clips": golden_clips,
    }
    Path(args.golden_out).write_text(json.dumps(golden_doc, indent=2, ensure_ascii=False) + "\n")
    print(f"Wrote {args.golden_out}")

    # 2. Select 3 diverse fixture clips for core_fixtures.json at stream_c16r4
    # Measure token count for each clip at stream_c16r4
    tok_counts: list[tuple[int, int, dict]] = []
    for entry in manifest["clips"]:
        pcm = clips_pcm[entry["filename"]]
        ntok = count_c16_tokens(engine, pcm)
        tok_counts.append((ntok, len(pcm), entry))
        print(f"  [fixture-scan] {entry['filename']}: samples={len(pcm)} tokens={ntok}")

    # (a) clip_short: 1 <= tokens < 16 (0 PCEC blocks, tests consumed == 0)
    short_candidates = [x for x in tok_counts if 2 <= x[0] < 16]
    if short_candidates:
        short_candidates.sort(key=lambda x: x[1])
        short_entry = short_candidates[0][2]
        short_pcm = clips_pcm[short_entry["filename"]]
    else:
        # Trim the shortest clip cleanly until 4 <= tokens <= 12
        tok_counts_by_len = sorted(tok_counts, key=lambda x: x[1])
        short_entry = tok_counts_by_len[0][2]
        full_pcm = clips_pcm[short_entry["filename"]]
        short_pcm = full_pcm[: min(len(full_pcm), 16000 * 2)]
        for sec in (1.2, 1.5, 1.8, 2.0, 2.4, 2.8):
            cand = full_pcm[: min(len(full_pcm), int(sec * 16000))]
            nt = count_c16_tokens(engine, cand)
            if 2 <= nt < 16:
                short_pcm = cand
                break
        assert 1 <= count_c16_tokens(engine, short_pcm) < 16, "Failed to craft short fixture clip"

    # (b) clip_multi: > 32 tokens (>= 2 PCEC blocks + flush), pick shortest to keep JSON compact
    multi_candidates = [x for x in tok_counts if x[0] > 32]
    if not multi_candidates:
        # Concatenate two medium clips to guarantee > 32 tokens
        ordered = sorted(tok_counts, key=lambda x: x[0], reverse=True)
        multi_entry = ordered[0][2]
        multi_pcm = np.concatenate([clips_pcm[ordered[0][2]["filename"]], clips_pcm[ordered[1][2]["filename"]]])
    else:
        multi_candidates.sort(key=lambda x: x[1])
        multi_entry = multi_candidates[0][2]
        multi_pcm = clips_pcm[multi_entry["filename"]]
    assert count_c16_tokens(engine, multi_pcm) > 32

    # (c) clip_partial: non-multiple of 640 samples (mod 640 == 317), compact (~2.5-4s)
    used_names = {short_entry["filename"], multi_entry["filename"]}
    partial_candidates = [x for x in tok_counts if x[2]["filename"] not in used_names]
    partial_candidates.sort(key=lambda x: abs(x[1] - 48000))
    partial_entry = partial_candidates[0][2]
    base_partial = clips_pcm[partial_entry["filename"]]
    # Cap around ~3.5s so total fixtures JSON stays compact, and force mod 640 == 317
    max_len = min(len(base_partial), 56000)
    frames = max(20, max_len // 640)
    target_samples = (frames - 1) * 640 + 317
    if target_samples > len(base_partial):
        target_samples = ((len(base_partial) - 317) // 640) * 640 + 317
    partial_pcm = base_partial[:target_samples]
    assert len(partial_pcm) % 640 == 317

    vad_method_name = "vad_dft"
    fixture_clips = [
        record_fixture_clip(ref_mod, engine, "clip_short", short_entry["filename"], short_pcm, vad_method_name),
        record_fixture_clip(ref_mod, engine, "clip_multi", multi_entry["filename"], multi_pcm, vad_method_name),
        record_fixture_clip(ref_mod, engine, "clip_partial", partial_entry["filename"], partial_pcm, vad_method_name),
    ]

    assert len(fixture_clips[0]["pcec_steps"]) == 0, "clip_short must have 0 pcec_steps"
    assert len(fixture_clips[1]["pcec_steps"]) >= 2, "clip_multi must have >= 2 pcec_steps"
    assert fixture_clips[2]["num_samples"] % 640 != 0, "clip_partial must be non-multiple of 640"

    fixtures_doc = {
        "hf_commit": HF_COMMIT,
        "executorch_version": EXECUTORCH_VERSION,
        "tier": "stream_c16r4",
        "pcec_method": "pcec_c16",
        "pcec_flush_method": "pcec_c16_flush",
        "vad_method": vad_method_name,
        "method_metas": {
            "stream_c16r4": method_meta_dict(engine.model, "stream_c16r4"),
            "pcec_c16": method_meta_dict(engine.model, "pcec_c16"),
            "pcec_c16_flush": method_meta_dict(engine.model, "pcec_c16_flush"),
            "vad_dft": method_meta_dict(engine.model, "vad_dft"),
        },
        "clips": fixture_clips,
    }

    fixtures_path = Path(args.fixtures_out)
    fixtures_text = json.dumps(fixtures_doc, separators=(",", ":"), ensure_ascii=False)
    fixtures_path.write_text(fixtures_text + "\n")
    size_bytes = fixtures_path.stat().st_size
    print(
        f"Wrote {fixtures_path} ({size_bytes / 1024:.1f} KiB): "
        + ", ".join(
            f"{c['id']}(steps={len(c['stream_steps'])}, pcec_blocks={len(c['pcec_steps'])}, n_real={c['pcec_flush']['n_real']})"
            for c in fixture_clips
        )
    )
    if size_bytes > 1_800_000:
        raise RuntimeError(f"core_fixtures.json unexpectedly large: {size_bytes} bytes")


if __name__ == "__main__":
    main()
