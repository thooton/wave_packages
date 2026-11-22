@ Fast paths for the XT9 library's soft-float helpers, placed in the padding after the code
@ segment (0x167e64..0x16818c). Each one does the operation with VFP only when every input and
@ the result are in a range where the original routine is known to give the same bits (finite,
@ normal, not at the denormal boundary); everything else goes to the untouched original code,
@ so NaN payloads, signed zeros, denormals (including the original's denormal quirks), overflow
@ and every corner case stay exactly as stock. VFP use is FZ-independent: no denormal ever
@ reaches or leaves a VFP operation on the fast path. Rounding is round-to-nearest (ART threads).
@ Scratch: r2, r3, ip (and s0-s1/d0, caller-saved; the library itself never uses VFP).
    .syntax unified
    .arm
    .fpu vfpv4
    .section .cave,"ax"

@ x normal: (x<<1) - (1<<24) < (254<<24)
    .macro normal reg, tmp
    lsl \tmp, \reg, #1
    sub \tmp, \tmp, #0x01000000
    cmp \tmp, #0xfe000000
    .endm
@ result normal and not in the lowest binade (excludes anything rounded up from a denormal)
    .macro result reg, tmp
    lsl \tmp, \reg, #1
    sub \tmp, \tmp, #0x02000000
    cmp \tmp, #0xfd000000
    .endm

    .global fsub_fast
fsub_fast:
    eor r1, r1, #0x80000000         @ as the original __aeabi_fsub, then into fadd
    .global fadd_fast
fadd_fast:
    normal r0, r2
    bhs orig_fadd
    normal r1, r3
    bhs orig_fadd
    vmov s0, s1, r0, r1
    vadd.f32 s0, s0, s1
    vmov r2, s0
    result r2, r3
    movlo r0, r2
    bxlo lr
    b orig_fadd

    .global fmul_fast
fmul_fast:
    normal r0, r2
    bhs orig_fmul
    normal r1, r3
    bhs orig_fmul
    vmov s0, s1, r0, r1
    vmul.f32 s0, s0, s1
    vmov r2, s0
    result r2, r3
    movlo r0, r2
    bxlo lr
    b orig_fmul

    .global fdiv_fast
fdiv_fast:
    normal r0, r2
    bhs orig_fdiv
    normal r1, r3
    bhs orig_fdiv
    vmov s0, s1, r0, r1
    vdiv.f32 s0, s0, s1
    vmov r2, s0
    result r2, r3
    movlo r0, r2
    bxlo lr
    b orig_fdiv

@ float -> double: exact for every normal float.
    .global f2d_fast
f2d_fast:
    normal r0, r2
    bhs orig_f2d
    vmov s0, r0
    vcvt.f64.f32 d0, s0
    vmov r0, r1, d0
    bx lr

@ double -> float: a normal double whose float result is normal (above the lowest binade).
    .global d2f_fast
d2f_fast:
    lsl r2, r1, #1
    sub r2, r2, #0x00200000
    cmp r2, #0xffc00000             @ double exponent 1..2046
    bhs orig_d2f
    vmov d0, r0, r1
    vcvt.f32.f64 s0, d0
    vmov r2, s0
    result r2, r3
    movlo r0, r2
    bxlo lr
    b orig_d2f

@ Compares. The original orders by IEEE rules (NaN unordered, +0 == -0, denormals exact);
@ VFP's vcmp does the same when FZ is clear. Denormal operands go to the original anyway, so
@ the result doesn't depend on FZ. (x<<1) in [1, 0x00ffffff] <=> x is denormal.
    .macro nodenorm reg, tmp, slow
    lsl \tmp, \reg, #1
    sub \tmp, \tmp, #1
    cmp \tmp, #0x01000000
    blo \slow
    .endm
@ __aeabi_cfcmple/cfcmpeq: flags only, r0-r3 kept. Original flags: less 1000, equal 0110,
@ greater and unordered 0010 (vcmp gives 0011 for unordered: V cleared to match).
    .global cfcmple_fast
cfcmple_fast:
    nodenorm r0, ip, orig_cfcmple
    nodenorm r1, ip, orig_cfcmple
    vmov s0, s1, r0, r1
    vcmp.f32 s0, s1
    vmrs APSR_nzcv, fpscr
    movvs ip, #1
    cmpvs ip, #0
    bx lr

    .macro fcmp name, first, second, cond, ncond, orig
    .global \name
\name:
    nodenorm r0, r2, \orig
    nodenorm r1, r2, \orig
    vmov s0, s1, r0, r1
    vcmp.f32 \first, \second
    vmrs APSR_nzcv, fpscr
    mov\cond r0, #1
    mov\ncond r0, #0
    bx lr
    .endm
    fcmp fcmpeq_fast, s0, s1, eq, ne, orig_fcmpeq
    fcmp fcmplt_fast, s0, s1, lo, hs, orig_fcmplt
    fcmp fcmple_fast, s0, s1, ls, hi, orig_fcmple
    fcmp fcmpge_fast, s1, s0, ls, hi, orig_fcmpge   @ original: cfrcmple, i.e. compare (b, a)
    fcmp fcmpgt_fast, s1, s0, lo, hs, orig_fcmpgt

@ int -> float (round to nearest, as the original) and float -> int (toward zero, saturating,
@ NaN -> 0, as the original): VFP gives the same bits for every input (checked exhaustively).
    .global i2f_fast
i2f_fast:
    vmov s0, r0
    vcvt.f32.s32 s0, s0
    vmov r0, s0
    bx lr
    .global ui2f_fast
ui2f_fast:
    vmov s0, r0
    vcvt.f32.u32 s0, s0
    vmov r0, s0
    bx lr
    .global f2iz_fast
f2iz_fast:
    vmov s0, r0
    vcvt.s32.f32 s0, s0
    vmov r0, s0
    bx lr

@ (float)pow(10.0, n) for n = ip in 0..15 (see patchlib2.py SITES); r0 = result.
    .global pow10f_fast
pow10f_fast:
    adr r0, pow10tab
    ldr r0, [r0, ip, lsl #2]
    bx lr
    .p2align 2
pow10tab:
    .word 0x3f800000, 0x41200000, 0x42c80000, 0x447a0000, 0x461c4000, 0x47c35000, 0x49742400, 0x4b189680, 0x4cbebc20, 0x4e6e6b28, 0x501502f9, 0x51ba43b7, 0x5368d4a5, 0x551184e7, 0x56b5e621, 0x58635fa9
