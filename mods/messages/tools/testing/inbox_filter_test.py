#!/usr/bin/env python3
"""Verify that the shipped inbox filter keeps the stock nonempty-thread semantics."""
import argparse
import re
import sqlite3
import statistics
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SMALI = ROOT / 'apps/BMms/apktool/smali/com/android/mms'
STOCK = ('_id IN (SELECT DISTINCT thread_id FROM sms WHERE thread_id NOT NULL '
         'UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL)')
FILTERS = re.findall(r'const-string/jumbo v1, "([^"\n]*EXISTS \(SELECT 1 FROM sms[^"\n]+)"',
                     (SMALI / 'ui/ConversationList.smali').read_text())
assert len(FILTERS) == 4
NEW, = [f for f in FILTERS if f.startswith('(EXISTS')]


def check(db, benchmark=False):
    for prefix in ('', 'notification=0 AND ', 'notification=1 AND ', 'read=0 AND '):
        query = 'SELECT _id,date FROM threads WHERE {}{} ORDER BY date DESC,_id ASC'
        a = query.format(prefix, STOCK)
        b = query.format(prefix, NEW)
        assert db.execute(a).fetchall() == db.execute(b).fetchall()
        plan = [row[3] for row in db.execute('EXPLAIN QUERY PLAN ' + b)]
        assert any('SEARCH' in line and 'threadIdDateIndex' in line for line in plan), plan
        if benchmark:
            results = []
            for sql in (a, b):
                runs = []
                for _ in range(5):
                    start = time.perf_counter()
                    for _ in range(40):
                        db.execute(sql).fetchall()
                    runs.append((time.perf_counter() - start) / 40)
                results.append(statistics.median(runs) * 1000)
            print(f'{prefix.removesuffix(" AND ") or "all"}: {results[0]:.3f} -> {results[1]:.3f} ms/query (host)')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--db', type=Path, help='read-only database snapshot')
    args = parser.parse_args()
    db = sqlite3.connect(':memory:')
    db.executescript('''
        CREATE TABLE threads(_id INTEGER PRIMARY KEY,date INTEGER,read INTEGER,notification INTEGER);
        CREATE TABLE sms(thread_id INTEGER,date INTEGER,type INTEGER);
        CREATE INDEX threadIdDateIndex ON sms(thread_id,date);
        CREATE TABLE pdu(thread_id INTEGER,date INTEGER,msg_box INTEGER);
        INSERT INTO threads VALUES (1,9,1,0),(2,9,0,1),(3,8,0,0),(4,7,0,1),(5,9,0,0);
        INSERT INTO sms VALUES (1,5,1),(1,8,2),(3,8,3),(NULL,6,1),(99,9,1);
        INSERT INTO pdu VALUES (2,9,1),(3,8,3),(NULL,2,1),(99,3,1),(4,7,1);
    ''')
    check(db)  # stock schema: no MMS thread index
    db.execute('CREATE INDEX argon_pdu_thread ON pdu(thread_id,date)')
    check(db)
    print('PASS: inbox, unread and notification counts match stock, including drafts and orphaned rows')
    if args.db:
        with sqlite3.connect(args.db.resolve().as_uri() + '?mode=ro', uri=True) as source:
            copy = sqlite3.connect(':memory:')
            source.backup(copy)
        print('SQLite', sqlite3.sqlite_version)
        check(copy, benchmark=True)
        copy.execute('DROP INDEX IF EXISTS argon_pdu_thread')
        print('Without the optional MMS index:')
        check(copy, benchmark=True)
