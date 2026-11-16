#!/usr/bin/env python3
"""usage: tools/testing/dumpdb.sh | tools/testing/orphans.py   -> SMS rows whose thread has no thread row."""
import re, sys
sec=None; threads={}; sms=[]; canon={}
for line in (open(sys.argv[1]) if len(sys.argv) > 1 else sys.stdin):
    if line.startswith("=="): sec=line.split()[1]; continue
    m=dict(re.findall(r"(\w+)=([^,]*)(?:,|$)", line.strip().split(" ",2)[-1])) if line.startswith("Row") else None
    if not m: continue
    if sec=="threads": threads[m["_id"]]=m
    elif sec=="sms": sms.append(m)
    elif sec=="canonical_addresses": canon[m["_id"]]=m["address"]
orph=[s for s in sms if s["thread_id"] not in threads]
print(f"sms={len(sms)} threads={len(threads)} orphans={len(orph)}")
for s in orph: print("  ORPHAN sms _id=%s thread_id=%s address=%s read=%s seen=%s"%(s["_id"],s["thread_id"],s["address"],s["read"],s["seen"]))
