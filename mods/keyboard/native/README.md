# The engine library patch

`module/xt9lib.patch` makes the phone's XT9 engine (`/system/lib/libjni_xt9input.so` of
firmware 11.20.00, sha256 `b048504b…`) faster without changing any result: every engine call
returns the same bits and leaves the same state as stock. The module installer applies it to
the phone's own copy (`tools/splice/.../LibPatch.java`, which checks the hashes before and
after) and Magisk mounts the result over the stock file; nothing of Nuance's is shipped.

`native/gen.py` makes the patch from the stock library (pulled from the phone into
`mods/firmware/system/lib/`) and `native/*.S`, with LLVM's clang and ld.lld; `gen.py --check`
tells whether the committed patch is current. Function names come from the library's own
`.gnu_debugdata` (MiniDebugInfo) symbol table.

## What it changes

- **Single-precision float helpers.** The library is built for soft float: every `float`
  operation calls a software routine (`__aeabi_fadd`, `fmul`, `fdiv`, the compares, the
  conversions). `cave.S` gives each a VFP fast path and points the routine's dynamic symbols
  at it, so the PLT slots bind there. A fast path is taken only when every operand is a
  normal number and so is the result (above the lowest binade), where IEEE round-to-nearest is
  exactly what the original computes; anything else (zeros, denormals, infinities, NaNs,
  overflow, results that may round to or from a denormal) goes to the untouched original
  routine. This matters: the original `fadd` is not IEEE for some denormal sums, and its NaN
  results differ from VFP's, so those must stay with it. The compares hand denormal operands
  back too, and `__aeabi_cfcmple` returns the same NZCV as the original (V clear when
  unordered). The fast paths never put a denormal into a VFP operation, so flush-to-zero mode
  doesn't matter.
- **PLT stubs.** The library calls its own exported functions through its PLT. Those slots can
  only bind to the library's own definitions (it comes first in its own lookup order), so each
  such stub becomes a direct branch to the same address.
- **pow(10, n).** `__ET9AWLdbGetCandidates` scales word frequencies with
  `(float)pow(10.0, (float)min(n, 15))` for an unsigned n; that is a 16-entry table (bionic's
  pow is exact for integer powers of ten up to 10^15, which was checked on the phone).

The code goes in the zero padding after the code segment, which is extended over it; the code
mapping grows from 0x168000 to 0x169000 bytes (WaveMem accepts both) and the data segment and
its layout are unchanged.

## How it was checked

- Each fast path against the original routine, called on the phone through both libraries:
  all 2^32 inputs for the conversions (`i2f`, `ui2f`, `f2iz`, `f2d`), 200–300 million random
  operand pairs per binary operation and compare (biased to exponent edges, denormals,
  zeros, infinities and NaNs), comparing the result registers and, for `cfcmple`, all of NZCV.
  No difference.
- The whole library: a recording of 10,007 engine calls made while typing (key presses,
  builds, word reads, selections, learning), replayed on the phone through the stock and the
  patched library from the same databases; every call's result and output arguments are the
  same. In that replay the builds take 13% less time in all (p99 71 → 57 ms).
- The keyboard: the suggestion lists and the databases after typing the same text are
  identical with the stock and patched library (the module's parity check).
