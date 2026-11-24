#!/usr/bin/env python3
"""Verify Android armeabi-v7a ELF headers, NEON/VFPv4 attributes, JNI exports,
XNNPACK ARMv7 kernels, and API 27 symbol compatibility against NDK sysroot stubs."""

from __future__ import annotations

import argparse
import subprocess
import sys
from pathlib import Path

ALLOWED_NEEDED = {"libc.so", "libm.so", "libdl.so", "liblog.so"}

REQUIRED_JNI_EXPORTS = {
    "Java_com_dictation_xp3_NativeRuntime_nativeSetNumThreads",
    "Java_com_dictation_xp3_NativeRuntime_nativeOpenFile",
    "Java_com_dictation_xp3_NativeRuntime_nativeOpenFd",
    "Java_com_dictation_xp3_NativeRuntime_nativeClose",
    "Java_com_dictation_xp3_NativeRuntime_nativeLoadMethod",
    "Java_com_dictation_xp3_NativeRuntime_nativeUnloadMethod",
    "Java_com_dictation_xp3_NativeRuntime_nativeMethodMeta",
    "Java_com_dictation_xp3_NativeRuntime_nativeExecute",
    "Java_com_dictation_xp3_NativeRuntime_nativeLastError",
}


def run(cmd: list[str]) -> str:
    res = subprocess.run(cmd, check=True, capture_output=True, text=True)
    return res.stdout


def collect_defined_dyn_syms(nm: str, lib: Path) -> set[str]:
    out = run([nm, "-D", "--defined-only", str(lib)])
    syms: set[str] = set()
    for line in out.splitlines():
        parts = line.split()
        if len(parts) >= 3:
            syms.add(parts[2].split("@")[0])
        elif len(parts) == 2 and parts[0] not in ("U", "w"):
            syms.add(parts[1].split("@")[0])
    return syms


def collect_undef_dyn_syms(nm: str, binary: Path) -> list[str]:
    out = run([nm, "-D", "--undefined-only", str(binary)])
    syms: list[str] = []
    for line in out.splitlines():
        parts = line.split()
        if not parts:
            continue
        # Skip weak undefined symbols ('w'): dynamic linker allows them to be NULL
        if parts[0] == "w":
            continue
        syms.append(parts[-1].split("@")[0])
    return sorted(set(syms))


def check_binary(
    *,
    binary: Path,
    unstripped: Path,
    is_shared: bool,
    readelf: str,
    nm: str,
    api27_syms: set[str],
) -> None:
    print(f"=== Checking {binary.name} ({binary.stat().st_size:,} bytes) ===")

    # 1. ELF header
    hdr = run([readelf, "-h", str(binary)])
    assert "ELF32" in hdr, f"{binary.name}: not ELF32"
    assert "ARM" in hdr, f"{binary.name}: not ARM"
    assert "DYN" in hdr, f"{binary.name}: not ET_DYN (PIE / shared object)"

    # 2. ARM build attributes
    attrs = run([readelf, "-A", str(binary)])
    print(attrs.strip())
    assert "Tag_CPU_arch: v7" in attrs, f"{binary.name}: missing ARMv7 arch tag"
    assert "NEON" in attrs, f"{binary.name}: missing NEON attribute"
    assert "VFPv4" in attrs, f"{binary.name}: missing VFPv4 attribute"
    assert "Tag_ABI_VFP_args: VFP registers" not in attrs, (
        f"{binary.name}: compiled as hardfp instead of softfp!"
    )

    # 3. DT_NEEDED
    dyn = run([readelf, "-d", str(binary)])
    needed: set[str] = set()
    for line in dyn.splitlines():
        if "(NEEDED)" in line and "[" in line and "]" in line:
            needed.add(line.split("[", 1)[1].split("]", 1)[0])
    print(f"DT_NEEDED: {sorted(needed)}")
    extra = needed - ALLOWED_NEEDED
    assert not extra, f"{binary.name}: unexpected DT_NEEDED libraries: {extra}"

    # 4. API 27 symbol verification
    undef = collect_undef_dyn_syms(nm, binary)
    missing = [s for s in undef if s not in api27_syms]
    print(f"Undefined strong dynamic symbols: {len(undef)}, missing from API 27: {len(missing)}")
    if missing:
        raise AssertionError(
            f"{binary.name}: undefined symbols NOT present in Android API 27 stubs: {missing}"
        )

    # 5. JNI exports check (for libasr4all.so)
    if is_shared:
        exports = collect_defined_dyn_syms(nm, binary)
        missing_jni = REQUIRED_JNI_EXPORTS - exports
        assert not missing_jni, f"{binary.name}: missing JNI exports: {missing_jni}"
        leaked = [
            s
            for s in exports
            if not s.startswith("Java_com_dictation_xp3_NativeRuntime_")
            and s not in {"JNI_OnLoad", "__bss_start", "_edata", "_end", "_init", "_fini"}
        ]
        print(f"JNI exports verified ({len(REQUIRED_JNI_EXPORTS)}/9). Non-JNI dynamic symbols: {len(leaked)}")
        if leaked:
            print(f"  Note: other dynamic symbols: {leaked[:20]}")

    # 6. Verify XNNPACK ARMv7 NEON/Cortex-A7 kernels are linked in unstripped binary
    unstripped_syms = run([nm, str(unstripped)])
    for kernel_pat in (
        "xnn_qd8_f32_qc8w_gemm_minmax_ukernel",
        "xnn_f32_gemm_minmax_ukernel_4x8__asm_aarch32_neon_cortex_a7",
    ):
        assert kernel_pat in unstripped_syms, (
            f"{binary.name}: expected XNNPACK ARMv7 kernel symbol matching '{kernel_pat}' not found!"
        )
    print(f"Verified XNNPACK ARMv7 NEON + Cortex-A7 kernels present in {binary.name}.")


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--ndk", required=True, help="Path to Android NDK root")
    ap.add_argument("--bench", required=True, help="Stripped armeabi-v7a asr4all_bench")
    ap.add_argument("--bench-unstripped", required=True)
    ap.add_argument("--so", required=True, help="Stripped armeabi-v7a libasr4all.so")
    ap.add_argument("--so-unstripped", required=True)
    args = ap.parse_args()

    ndk = Path(args.ndk)
    bin_dir = ndk / "toolchains/llvm/prebuilt/linux-x86_64/bin"
    readelf = str(bin_dir / "llvm-readelf")
    nm = str(bin_dir / "llvm-nm")

    api27_dir = ndk / "toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/27"
    api27_syms: set[str] = set()
    for lib_name in ALLOWED_NEEDED:
        lib_path = api27_dir / lib_name
        assert lib_path.is_file(), f"Missing NDK API 27 stub: {lib_path}"
        api27_syms |= collect_defined_dyn_syms(nm, lib_path)
    # Standard bionic runtime / compiler-rt CRT helpers provided by linker/libc
    api27_syms |= {"__aeabi_atexit", "__cxa_atexit", "__cxa_finalize"}
    print(f"Loaded {len(api27_syms)} Android API 27 stub symbols from {api27_dir}")

    check_binary(
        binary=Path(args.bench),
        unstripped=Path(args.bench_unstripped),
        is_shared=False,
        readelf=readelf,
        nm=nm,
        api27_syms=api27_syms,
    )
    check_binary(
        binary=Path(args.so),
        unstripped=Path(args.so_unstripped),
        is_shared=True,
        readelf=readelf,
        nm=nm,
        api27_syms=api27_syms,
    )
    print("\nALL ANDROID ARMEABI-V7A ELF & API 27 CHECKS PASSED.")


if __name__ == "__main__":
    main()
