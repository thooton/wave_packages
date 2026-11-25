# x86 parity references

`build-dictation-runtime.yml` checks that the C++ runtime reproduces FUTO's Python reference exactly on x86_64.
These files make that check independent of the GitHub runner's CPU.

## Why
Both the Python reference (pip `executorch`) and our bench use XNNPACK, which picks kernels from the host's CPUID at
run time. Newer hosted runners have AVX512/VNNI/AMX (Intel Xeon 6975P-C, AMD EPYC 9V74), and on them a few transcripts
change in both stacks (5 of 160 C++, 6 of 160 Python), while AVX2 hosts (AMD EPYC 7763) reproduce the references exactly.
XNNPACK has no environment override, and `ATEN_CPU_CAPABILITY` affects only torch.

## Files
- `frozen_golden_transcripts.json`, `frozen_core_fixtures.json`: the `dictation-phase1-bundle` outputs of green run
  45519383992 (commit 0239ff65, an AVX2 host). They are byte-identical to the files in that bundle.
- `pins.json`: their sha256, the model/metadata/ExecuTorch provenance, per-clip WAV file and PCM sha256, and the sha256 of
  the reference fixtures when recomputed under the CPU mask below.

## The gate (all exact, any failure fails the run)
- `x86-golden-and-verify`: builds the x86 bench with XNNPACK capped at AVX2/FMA3 (`X86_AVX2_CAP`, x86 verify build only;
  the armeabi-v7a library and CMakeLists.txt are unchanged), checks the WAVs against `pins.json`, and runs
  `ci_verify_cli.py` against the pinned golden for feedback off, copy and resident (480 checks), plus exact
  off == copy == resident agreement and the resident pair count of every tier.
- `x86-reference-qemu`: runs the unmodified `ci_golden.py` under `qemu-x86_64 -cpu Haswell`, after checking with a CPUID
  probe that the mask reports AVX2/FMA on and every wider family off. The recomputed golden must equal
  `frozen_golden_transcripts.json` byte for byte, and the recomputed fixtures must equal the pinned qemu sha256 byte for byte.
  Under emulation the fixtures differ from the AVX2-host ones only in the six `vad_dft` score arrays (at most 2.4e-7,
  float32 rounding); that's checked and reported, and every other field is identical.
- `package-artifacts`: bundles the pinned golden and fixtures (the same bytes as before) and checks that they equal the
  recomputation.

## What the bundle's x86 files mean now
`golden_transcripts.json` and `core_fixtures.json` are the pinned references (verified against a fresh recomputation),
not whatever the runner's native CPU produced. `asr4all_bench_x86_64` is the AVX2-capped build that passed the gate;
the armeabi-v7a `asr4all_bench` and `libasr4all.so` are built exactly as before.

## Updating
Only when the model, ExecuTorch or the reference script changes. Regenerate on an AVX2-only host (or under the mask),
review the differences, and update the files and every sha256 here and in the workflow in one commit.
