#!/usr/bin/env python3
"""Minimal ART method-trace (.trace, v3, dual clock) reader: inclusive wall time per method for
calls made under a given method name substring (or, with --children, the direct children of it in
call order, >= 1 ms, with their start time in ms from the trace start).
Usage: trace_top.py file.trace [root-substring] [n] [--children] [--thread=name-substring]
(--thread=main: the UI thread only)"""
import struct, sys, collections

data = open(sys.argv[1], 'rb').read()
args = [a for a in sys.argv[2:] if not a.startswith('--')]
root = args[0] if len(args) > 0 else None
topn = int(args[1]) if len(args) > 1 else 40
tsel = next((a.split('=', 1)[1] for a in sys.argv if a.startswith('--thread=')), None)
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
streaming = (ver & 0xF0) == 0xF0   # `am profile start --streaming`: methods/threads defined inline
ver &= 0x0F
recsize = struct.unpack_from('<H', data, i + 16)[0] if ver >= 3 else (14 if clock == 'dual' else 10)
p = i + off
def tid_ok(tid):
    if tsel is None: return True
    v = threads.get(tid, '')
    return v == 'main' if tsel == 'main' else tsel in v
stacks = collections.defaultdict(list)   # tid -> [(mid, t_enter)]
incl = collections.Counter(); calls = collections.Counter()
children = '--children' in sys.argv  # only direct children of root, in call order
order = []
tfirst = None
while p + recsize <= len(data):
    if ver >= 3: tid = struct.unpack_from('<H', data, p)[0]; q = p + 2
    else: tid = data[p]; q = p + 1
    if streaming and tid == 0:
        op = data[q]
        if op == 1:    # new method: u2 len, "0xid\tclass\tname\tsig\tfile"
            n = struct.unpack_from('<H', data, q + 1)[0]
            f = data[q + 3:q + 3 + n].decode('utf-8', 'replace').rstrip('\n').split('\t')
            methods[int(f[0], 16)] = f[1].split('.')[-1] + '.' + f[2] if len(f) > 2 else f[0]
            p = q + 3 + n; continue
        if op == 2:    # new thread: u2 tid, u2 len, name
            t2, n = struct.unpack_from('<HH', data, q + 1)
            threads[t2] = data[q + 5:q + 5 + n].decode('utf-8', 'replace')
            p = q + 5 + n; continue
        break          # 3 = summary: end of the event stream
    mv = struct.unpack_from('<I', data, q)[0]; q += 4
    if clock == 'dual': t = struct.unpack_from('<I', data, q + 4)[0]
    else: t = struct.unpack_from('<I', data, q)[0]
    p += recsize
    if tfirst is None: tfirst = t
    if not tid_ok(tid): continue
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
            print(f'{(t0 - tfirst)/1000:8.0f}  {us/1000:9.1f} ms  {methods.get(m, hex(m))[:150]}')
    sys.exit(0)
for m, us in incl.most_common(topn):
    print(f'{us/1000:9.1f} ms {calls[m]:6d}x  {methods.get(m, hex(m))[:150]}')
