#!/usr/bin/env python3
"""Generate module/xt9lib.patch: the speed patch for the phone's XT9 engine library.

usage: native/gen.py [--check] [<stock libjni_xt9input.so>]
  (default: mods/firmware/system/lib/libjni_xt9input.so, pulled from the phone)

Needs LLVM's clang and ld.lld (LLVM_BIN, or on PATH) and the stock library of firmware 11.20.00;
the patch it writes carries no stock code: only the new code, branches to it, and ELF header and
symbol fields. module/customize.sh applies it on the phone (tools/splice LibPatch), checking the
library before and after against the hashes in the patch. --check: fail if the committed patch
differs from what the sources make.

What it changes (every engine result stays bit-identical; see native/README.md):
  - The single-precision soft-float helpers (__aeabi_fadd ... __aeabi_f2iz) get VFP fast paths
    (native/cave.S), which hand anything but normal operands and results back to the untouched
    original routines. Their dynamic symbols point at the fast paths, so the PLT slots bind there.
    The code sits in the zero padding after the code segment, which is extended over it.
  - PLT stubs of the library's own functions become direct branches to the same targets (those
    slots can only bind to the library's own definitions, which come first in lookup order).
  - Call sites in SITES, each checked against the original bytes.
"""
import hashlib, os, re, shutil, struct, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
PATCH = os.path.join(ROOT, 'module', 'xt9lib.patch')
DEFAULT_LIB = os.path.join(ROOT, '..', 'firmware', 'system', 'lib', 'libjni_xt9input.so')
STOCK_SHA256 = 'b048504b41fb8e425eac586c0b4105321567c472a0c321d05cb0971c58090f95'
SOURCES = ['cave.S']

CAVE, CAVE_END = 0x167e64, 0x16818c    # zero padding between the code and data segments' file data
ORIG = {'fadd': 0x10ccf0, 'fmul': 0x10cf34, 'fdiv': 0x10d0cc, 'f2d': 0x10c5a0, 'd2f': 0x10cc44,
        'cfcmple': 0x10d2b0, 'fcmpeq': 0x10d2c4, 'fcmplt': 0x10d2d8, 'fcmple': 0x10d2ec,
        'fcmpge': 0x10d300, 'fcmpgt': 0x10d314}
# fast path -> (dynamic symbols to point at it, their stock value)
REDIRECT = {
    'fadd_fast': (['__aeabi_fadd', '__addsf3'], 0x10ccf0),
    'fsub_fast': (['__aeabi_fsub', '__subsf3'], 0x10ccec),
    'fmul_fast': (['__aeabi_fmul', '__mulsf3'], 0x10cf34),
    'fdiv_fast': (['__aeabi_fdiv', '__divsf3'], 0x10d0cc),
    'f2d_fast': (['__aeabi_f2d', '__extendsfdf2'], 0x10c5a0),
    'd2f_fast': (['__aeabi_d2f', '__truncdfsf2'], 0x10cc44),
    'cfcmple_fast': (['__aeabi_cfcmple', '__aeabi_cfcmpeq'], 0x10d2b0),
    'fcmpeq_fast': (['__aeabi_fcmpeq'], 0x10d2c4),
    'fcmplt_fast': (['__aeabi_fcmplt'], 0x10d2d8),
    'fcmple_fast': (['__aeabi_fcmple'], 0x10d2ec),
    'fcmpge_fast': (['__aeabi_fcmpge'], 0x10d300),
    'fcmpgt_fast': (['__aeabi_fcmpgt'], 0x10d314),
    'i2f_fast': (['__aeabi_i2f', '__floatsisf'], 0x10ce88),
    'ui2f_fast': (['__aeabi_ui2f', '__floatunsisf'], 0x10ce80),
    'f2iz_fast': (['__aeabi_f2iz', '__fixsfsi'], 0x10d328),
}
# (address, original bytes, new instructions: ARM words, or ('b'|'bl', target) with "@symbol" a
# symbol of the new code). Explained in native/README.md.
SITES = [
    # __ET9AWLdbGetCandidates: (float)pow(10.0, (double)(float)min(n, 15)), n unsigned -> table.
    (0x6f090, '50029f850100008a0c00a0e1', [0x83a0c00f, ('bl', '@pow10f_fast'), ('b', 0x6f0bc)]),
]


def tool(name):
    for d in [os.environ.get('LLVM_BIN', ''), 'C:/Program Files/LLVM/bin', '/usr/lib/llvm-18/bin', '']:
        for n in (name + '.exe', name):
            p = os.path.join(d, n) if d else shutil.which(n)
            if p and os.path.isfile(p):
                return p
    sys.exit('%s not found (set LLVM_BIN)' % name)


class Elf:
    """The little of ELF32 little-endian this needs."""
    def __init__(self, b):
        self.b = b
        assert b[:4] == b'\x7fELF' and b[4] == 1 and b[5] == 1
        (self.phoff, self.shoff, _, _, self.phentsize, self.phnum, self.shentsize, self.shnum,
         shstrndx) = struct.unpack_from('<IIIHHHHHH', b, 28)
        self.sh = [struct.unpack_from('<10I', b, self.shoff + i * self.shentsize) for i in range(self.shnum)]
        strtab = self.sh[shstrndx]
        self.names = [self.cstr(strtab[4] + s[0]) for s in self.sh]

    def cstr(self, off):
        return self.b[off:self.b.index(b'\0', off)].decode()

    def section(self, name):
        s = self.sh[self.names.index(name)]
        return {'type': s[1], 'addr': s[3], 'offset': s[4], 'size': s[5], 'link': s[6], 'entsize': s[9]}

    def has(self, name):
        return name in self.names

    def symbols(self, name):
        s = self.section(name)
        strs = self.sh[s['link']][4]
        out = []
        for i in range(s['size'] // 16):
            off = s['offset'] + 16 * i
            st_name, value, size, info, _, shndx = struct.unpack_from('<IIIBBH', self.b, off)
            out.append((self.cstr(strs + st_name), value, info & 15, shndx, off))
        return out

    def phdrs(self):
        return [(self.phoff + i * self.phentsize, struct.unpack_from('<8I', self.b, self.phoff + i * self.phentsize))
                for i in range(self.phnum)]


def build():
    with tempfile.TemporaryDirectory() as d:
        objs = []
        for i, src in enumerate(SOURCES):
            o = os.path.join(d, '%d.o' % i)
            subprocess.check_call([tool('clang'), '--target=armv7a-none-eabi', '-mfloat-abi=softfp', '-mfpu=vfpv4',
                                   '-c', os.path.join(HERE, src), '-o', o])
            objs.append(o)
        ld = os.path.join(d, 'l.ld')
        with open(ld, 'w') as f:
            f.write(''.join('orig_%s = 0x%x;\n' % kv for kv in ORIG.items()))
            f.write('SECTIONS {\n  . = 0x%x; .cave : { *(.cave) }\n'
                    '  /DISCARD/ : { *(.ARM.exidx*) *(.ARM.attributes) *(.comment) }\n}\n' % CAVE)
        e = os.path.join(d, 'x.elf')
        subprocess.check_call([tool('ld.lld'), '-static', '-e', '0', '-T', ld] + objs + ['-o', e])
        x = Elf(open(e, 'rb').read())
    for n in x.names:
        if n and n not in ('.cave', '.symtab', '.strtab', '.shstrtab'):
            assert x.section(n)['size'] == 0 or x.section(n)['type'] in (0,), 'unexpected section ' + n
    c = x.section('.cave')
    assert c['addr'] == CAVE
    syms = {n: v for n, v, t, sh, _ in x.symbols('.symtab') if n and t in (0, 2) and not n.startswith('$')}
    return x.b[c['offset']:c['offset'] + c['size']], syms


def branch(kind, at, target):
    assert not target & 3
    return ((0xeb if kind == 'bl' else 0xea) << 24) | (((target - (at + 8)) >> 2) & 0xffffff)


def plt_direct(e, put):
    """The library's own (ARM) functions' PLT stubs -> b <the slot's value>."""
    dyn = e.symbols('.dynsym')
    rel = e.section('.rel.plt')
    slot = {}
    for i in range(rel['size'] // 8):
        off, info = struct.unpack_from('<II', e.b, rel['offset'] + 8 * i)
        assert info & 0xff == 22  # R_ARM_JUMP_SLOT
        slot[off] = dyn[info >> 8]
    plt = e.section('.plt')
    rot = lambda w: ((w & 0xff) >> (2 * ((w >> 8) & 15)) | (w & 0xff) << (32 - 2 * ((w >> 8) & 15))) & 0xffffffff
    n = 0
    for at in range(plt['addr'] + 20, plt['addr'] + plt['size'], 12):    # 20: PLT header
        a, b, c = struct.unpack_from('<3I', e.b, at)
        assert a & 0xfffff000 == 0xe28fc000 and b & 0xfffff000 == 0xe28cc000 and c & 0xfffff000 == 0xe5bcf000, hex(at)
        name, value, typ, shndx, _ = slot[(at + 8 + rot(a) + rot(b) + (c & 0xfff)) & 0xffffffff]
        if shndx == 0 or not value or value & 1:
            continue
        put(at, struct.pack('<I', branch('b', at, value)))
        n += 1
    return n


def generate(lib):
    data = bytearray(open(lib, 'rb').read())
    if hashlib.sha256(data).hexdigest() != STOCK_SHA256:
        sys.exit('%s is not the engine library of firmware 11.20.00' % lib)
    stock = bytes(data)
    code, syms = build()
    assert len(code) <= CAVE_END - CAVE, 'cave.S: %d bytes, room for %d' % (len(code), CAVE_END - CAVE)
    changes = []
    def put(at, new):
        changes.append((at, bytes(new)))
        data[at:at + len(new)] = new
    assert not any(data[CAVE:CAVE + len(code)])
    put(CAVE, code)
    e = Elf(stock)
    for off, (typ, offset, vaddr, paddr, filesz, memsz, flags, align) in e.phdrs():
        if typ == 1 and flags == 5:    # the code segment: over the cave
            assert offset == 0 and vaddr == 0 and filesz == memsz == CAVE
            put(off + 16, struct.pack('<II', CAVE + len(code), CAVE + len(code)))
    by_name = {s[0]: s for s in e.symbols('.dynsym')}
    for fast, (names, value) in REDIRECT.items():
        for n in names:
            _, v, typ, _, off = by_name[n]
            assert v == value and typ == 2, n
            put(off + 4, struct.pack('<I', syms[fast]))
    nplt = plt_direct(Elf(bytes(data)), put)     # the symbol values as redirected
    for at, orig, ins in SITES:
        new = b''
        for k, w in enumerate(ins):
            if isinstance(w, tuple):
                t = syms[w[1][1:]] if isinstance(w[1], str) else w[1]
                w = branch(w[0], at + 4 * k, t)
            new += struct.pack('<I', w)
        assert stock[at:at + len(new)].hex() == orig[:2 * len(new)], 'site %x: not the stock bytes' % at
        put(at, new)
    out = bytes(data)
    lines = ['# Keyboard Improved: speed patch of /system/lib/libjni_xt9input.so (firmware 11.20.00).',
             '# Generated by native/gen.py from native/*.S; do not edit. Format: "in|out <sha256> <size>",',
             '# then "at <hex offset> <hex bytes>" to write over the input.',
             'in %s %d' % (STOCK_SHA256, len(stock)),
             'out %s %d' % (hashlib.sha256(out).hexdigest(), len(out))]
    for at, b in changes:
        for k in range(0, len(b), 64):
            lines.append('at %x %s' % (at + k, b[k:k + 64].hex()))
    print('%d bytes of new code, %d PLT stubs direct, %d call sites; output sha256 %s'
          % (len(code), nplt, len(SITES), hashlib.sha256(out).hexdigest()), file=sys.stderr)
    return '\n'.join(lines) + '\n', out


def main():
    args = [a for a in sys.argv[1:] if a != '--check']
    text, out = generate(args[0] if args else DEFAULT_LIB)
    if '--check' in sys.argv:
        if open(PATCH).read() != text:
            sys.exit('module/xt9lib.patch is not what native/gen.py makes: rerun it and commit the result')
        print('xt9lib.patch: up to date')
    else:
        with open(PATCH, 'w', newline='\n') as f:
            f.write(text)
        print('wrote %s' % PATCH)


main()
