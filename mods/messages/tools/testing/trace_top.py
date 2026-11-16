#!/usr/bin/env python3
"""Minimal ART method-trace (.trace, v3, dual clock) reader: inclusive wall time per method for
calls made under a given method name substring (or, with --children, the direct children of it in
call order, >= 1 ms). Usage: trace_top.py file.trace [root-substring] [n] [--children]"""
import struct, sys, collections

data = open(sys.argv[1], 'rb').read()
root = sys.argv[2] if len(sys.argv) > 2 else None
topn = int(sys.argv[3]) if len(sys.argv) > 3 else 40
i = data.index(b'SLOW')
text = data[:i].decode('utf-8', 'replace')
methods, threads = {}, {}
sec = None
clock = 'dual'
for line in text.split('\n'):
    if line.startswith('*'):
        sec = line[1:].strip(); continue
    if sec == 'version' and line.startswith('clock='): clock = line[6:]
    if sec == 'methods' and line:
        f = line.split('\t')
        methods[int(f[0], 16)] = f[1].split('.')[-1] + '.' + f[2] if len(f) > 2 else line
    if sec == 'threads' and line:
        f = line.split('\t', 1)
        threads[int(f[0])] = f[1] if len(f) > 1 else ''
magic, ver, off, start = struct.unpack_from('<IHHQ', data, i)
recsize = struct.unpack_from('<H', data, i + 16)[0] if ver >= 3 else (14 if clock == 'dual' else 10)
p = i + off
stacks = collections.defaultdict(list)   # tid -> [(mid, t_enter)]
incl = collections.Counter(); calls = collections.Counter()
children = '--children' in sys.argv  # only direct children of root, in call order
order = []
while p + recsize <= len(data):
    if ver >= 3: tid = struct.unpack_from('<H', data, p)[0]; q = p + 2
    else: tid = data[p]; q = p + 1
    mv = struct.unpack_from('<I', data, q)[0]; q += 4
    if clock == 'dual': t = struct.unpack_from('<I', data, q + 4)[0]
    else: t = struct.unpack_from('<I', data, q)[0]
    p += recsize
    mid, act = mv & ~3, mv & 3
    st = stacks[tid]
    if act == 0:
        st.append((mid, t))
    else:
        while st:
            m, t0 = st.pop()
            if m == mid:
                if children:
                    if st and root in methods.get(st[-1][0], ''):
                        order.append((t0, t - t0, m))
                    break
                inside = root is None or any(root in methods.get(x, '') for x, _ in st) or root in methods.get(m, '')
                if inside:
                    # count only outermost occurrence of recursive methods
                    if not any(x == m for x, _ in st):
                        incl[m] += t - t0; calls[m] += 1
                break
if children:
    order.sort()
    for t0, us, m in order:
        if us >= 1000:
            print(f'{us/1000:9.1f} ms  {methods.get(m, hex(m))[:150]}')
    sys.exit(0)
for m, us in incl.most_common(topn):
    print(f'{us/1000:9.1f} ms {calls[m]:6d}x  {methods.get(m, hex(m))[:150]}')
