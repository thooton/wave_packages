#!/usr/bin/env python3
"""Download ~20 short public-domain 16 kHz mono PCM16 WAV clips for CI testing.

Mix of:
  - 8 LibriSpeech test-clean clips (openslr/librispeech_asr, split=test.clean)
  - 6 LibriSpeech test-other clips (openslr/librispeech_asr, split=test.other)
  - 6 AMI IHM conversational meeting clips (edinburghcstr/ami, config=ihm, split=test)

Clips are downloaded in CI only and never committed to git.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
import sys
import tempfile
import time
import urllib.parse
import urllib.request
import wave
from pathlib import Path

SAMPLE_RATE = 16000
HF_ROWS_URL = "https://datasets-server.huggingface.co/rows"


def http_get_bytes(url: str, retries: int = 5, timeout: int = 60) -> bytes:
    last_err: Exception | None = None
    for attempt in range(retries):
        try:
            req = urllib.request.Request(
                url, headers={"User-Agent": "dictation-ci-wav-fetcher/1.0"}
            )
            with urllib.request.urlopen(req, timeout=timeout) as resp:
                return resp.read()
        except Exception as e:
            last_err = e
            wait = min(20, 2 ** attempt)
            print(f"[warn] fetch failed ({attempt + 1}/{retries}): {e}; retrying in {wait}s", file=sys.stderr)
            time.sleep(wait)
    raise RuntimeError(f"Failed to fetch {url}: {last_err}")


def fetch_rows(dataset: str, config: str, split: str, offset: int, length: int) -> list[dict]:
    qs = urllib.parse.urlencode(
        {"dataset": dataset, "config": config, "split": split, "offset": offset, "length": length}
    )
    raw = http_get_bytes(f"{HF_ROWS_URL}?{qs}")
    data = json.loads(raw.decode("utf-8"))
    return data.get("rows", [])


def ensure_pcm16_16k_mono(raw_bytes: bytes, out_path: Path) -> tuple[int, float]:
    """Validate or transcode audio bytes to strict 16 kHz mono 16-bit PCM WAV."""
    with tempfile.NamedTemporaryFile(suffix=".wav", delete=False) as tmp:
        tmp.write(raw_bytes)
        tmp_path = Path(tmp.name)
    try:
        ok_direct = False
        try:
            with wave.open(str(tmp_path), "rb") as w:
                if (
                    w.getnchannels() == 1
                    and w.getsampwidth() == 2
                    and w.getframerate() == SAMPLE_RATE
                    and w.getcomptype() == "NONE"
                ):
                    ok_direct = True
        except wave.Error:
            ok_direct = False

        if ok_direct:
            out_path.write_bytes(raw_bytes)
        else:
            subprocess.run(
                [
                    "ffmpeg",
                    "-y",
                    "-loglevel",
                    "error",
                    "-i",
                    str(tmp_path),
                    "-ac",
                    "1",
                    "-ar",
                    str(SAMPLE_RATE),
                    "-sample_fmt",
                    "s16",
                    "-f",
                    "wav",
                    str(out_path),
                ],
                check=True,
            )

        with wave.open(str(out_path), "rb") as w:
            assert w.getnchannels() == 1 and w.getsampwidth() == 2 and w.getframerate() == SAMPLE_RATE
            n_frames = w.getnframes()
        return n_frames, n_frames / float(SAMPLE_RATE)
    finally:
        tmp_path.unlink(missing_ok=True)


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def collect_split(
    *,
    dataset: str,
    config: str,
    split: str,
    source_tag: str,
    target_count: int,
    min_s: float,
    max_s: float,
    min_words: int,
    out_dir: Path,
    start_index: int,
) -> list[dict]:
    selected: list[dict] = []
    offset = 0
    batch = 40
    while len(selected) < target_count and offset < 400:
        rows = fetch_rows(dataset, config, split, offset, batch)
        if not rows:
            break
        offset += len(rows)
        for item in rows:
            if len(selected) >= target_count:
                break
            row = item["row"]
            text = (row.get("text") or "").strip()
            if len(text.split()) < min_words:
                continue
            audio_list = row.get("audio") or []
            if not audio_list or "src" not in audio_list[0]:
                continue
            src_url = audio_list[0]["src"]
            raw_id = str(row.get("id") or row.get("audio_id") or f"r{item.get('row_idx', 0)}")
            safe_id = "".join(c if (c.isalnum() or c in "-_") else "_" for c in raw_id)[:40]

            raw_bytes = http_get_bytes(src_url)
            idx = start_index + len(selected)
            fname = f"{idx:02d}_{source_tag}_{safe_id}.wav"
            out_path = out_dir / fname
            n_samples, dur_s = ensure_pcm16_16k_mono(raw_bytes, out_path)
            if not (min_s <= dur_s <= max_s):
                out_path.unlink(missing_ok=True)
                continue

            selected.append(
                {
                    "id": f"{idx:02d}_{source_tag}",
                    "dataset_id": raw_id,
                    "source": source_tag,
                    "filename": fname,
                    "reference_text": text,
                    "num_samples": n_samples,
                    "duration_s": round(dur_s, 4),
                    "sha256": sha256_file(out_path),
                }
            )
            print(f"[wav] {fname} ({dur_s:.2f}s) ref={text[:60]!r}")
    if len(selected) < target_count:
        raise RuntimeError(
            f"Only collected {len(selected)}/{target_count} clips from {dataset}/{config}/{split}"
        )
    return selected


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out-dir", required=True, help="Directory to store WAVs and manifest.json")
    args = ap.parse_args()

    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    clips: list[dict] = []
    clips += collect_split(
        dataset="openslr/librispeech_asr",
        config="all",
        split="test.clean",
        source_tag="ls_clean",
        target_count=8,
        min_s=1.8,
        max_s=10.5,
        min_words=5,
        out_dir=out_dir,
        start_index=len(clips) + 1,
    )
    clips += collect_split(
        dataset="openslr/librispeech_asr",
        config="all",
        split="test.other",
        source_tag="ls_other",
        target_count=6,
        min_s=1.8,
        max_s=10.5,
        min_words=5,
        out_dir=out_dir,
        start_index=len(clips) + 1,
    )
    clips += collect_split(
        dataset="edinburghcstr/ami",
        config="ihm",
        split="test",
        source_tag="ami_ihm",
        target_count=6,
        min_s=1.5,
        max_s=9.5,
        min_words=4,
        out_dir=out_dir,
        start_index=len(clips) + 1,
    )

    manifest = {
        "sample_rate": SAMPLE_RATE,
        "count": len(clips),
        "total_duration_s": round(sum(c["duration_s"] for c in clips), 3),
        "clips": clips,
    }
    (out_dir / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
    print(f"Downloaded {len(clips)} clips ({manifest['total_duration_s']:.1f}s total) into {out_dir}")


if __name__ == "__main__":
    main()
