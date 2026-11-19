#!/usr/bin/env python3
"""Check the shipped phone-map SQL against the stock per-number lookup."""
import argparse
import json
import re
import sqlite3
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / 'apps/ContactsProvider/java/com/android/providers/contacts/WavePhoneMap.java'
SQL = ''.join(json.loads(s) for s in re.findall(r'"[^"\n]*"',
    SOURCE.read_text().split('static final String SQL = ', 1)[1].split(';', 1)[0]))
COLUMNS = ('normalized_number', 'min_match', '_id', 'data1', 'data3', 'display_name',
           'contact_id', 'contact_presence', 'contact_status', 'data4', 'photo_id',
           'lookup', 'send_to_voicemail')
STOCK = '''SELECT DISTINCT d._id,d.data1,d.data3,d.display_name,d.contact_id,
 a.mode,s.status,d.data4,d.photo_id,d.lookup,d.send_to_voicemail
 FROM view_data d LEFT JOIN agg_presence a ON a.presence_contact_id=d.contact_id
 LEFT JOIN status_updates s ON s.status_update_data_id=d.status_update_id
 WHERE d._id IN (SELECT data_id FROM phone_lookup WHERE min_match=?1
 AND (normalized_number=?2 OR (length(normalized_number)<=length(?3)
 AND substr(?3,length(?3)-length(normalized_number)+1)=normalized_number)))'''


def check(db, cases):
    c = db.execute(SQL)
    assert tuple(col[0] for col in c.description) == COLUMNS
    rows = c.fetchall()
    buckets = {}
    for number, key, *fields in rows:
        buckets.setdefault(key, []).append((number, tuple(fields)))
    for key, international, number in cases:
        fast = {fields for indexed, fields in buckets.get(key, ())
                if number.endswith(indexed) or indexed == international}
        assert fast == set(db.execute(STOCK, (key, international, number))), 'Lookup results differ'
    assert not any('TEMP B-TREE' in row[3] for row in db.execute('EXPLAIN QUERY PLAN ' + SQL))
    return len(rows)


def synthetic():
    db = sqlite3.connect(':memory:')
    db.executescript('''
    CREATE TABLE phone_lookup(normalized_number TEXT,min_match TEXT,data_id INTEGER);
    CREATE TABLE view_data(_id INTEGER PRIMARY KEY,data1 TEXT,data3 TEXT,display_name TEXT,
        contact_id INTEGER,data4 TEXT,photo_id INTEGER,lookup TEXT,send_to_voicemail INTEGER,
        status_update_id INTEGER);
    CREATE TABLE agg_presence(presence_contact_id INTEGER PRIMARY KEY,mode INTEGER);
    CREATE TABLE status_updates(status_update_data_id INTEGER PRIMARY KEY,status TEXT);
    INSERT INTO view_data VALUES
        (1,'2025550100','home','Émilie',7,'+12025550100',NULL,'one',0,10),
        (2,'2025550100',NULL,'Front desk',8,NULL,21,'two',1,NULL),
        (3,'3035550100',NULL,'Third',9,NULL,NULL,'three',0,NULL);
    INSERT INTO agg_presence VALUES(7,1);
    INSERT INTO status_updates VALUES(10,'Available');
    INSERT INTO phone_lookup VALUES
        ('2025550100','0010555',1),('+12025550100','0010555',1),
        ('2025550100','0010555',2),('3035550100','0010555',3),('00123','32100',99);
    ''')
    assert check(db, [('0010555', None, '2025550100'), ('0010555', None, '3035550100'),
                      ('0010555', '+12025550100', '005550100'), ('miss', None, '123'),
                      ('32100', None, '00123')]) == 4


def snapshot(path):
    with sqlite3.connect(path.resolve().as_uri() + '?mode=ro', uri=True) as db:
        # These Android-only collations aren't used by this query.
        for name in ('PHONEBOOK', 'LOCALIZED', 'UNICODE'):
            db.create_collation(name, lambda a, b: (a > b) - (a < b))
        cases = [(k, None, n) for n, k in db.execute('SELECT normalized_number,min_match FROM phone_lookup')]
        count = check(db, cases)
        runs = 100
        start = time.perf_counter()
        for _ in range(runs):
            db.execute(SQL).fetchall()
        elapsed = 1000 * (time.perf_counter() - start) / runs
        print(f'Copy: {count} map rows; all {len(cases)} indexed lookups matched; {elapsed:.2f} ms per snapshot on host')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--db', type=Path)
    args = parser.parse_args()
    synthetic()
    print('PASS: phone-map projection, unique/local/international matching, collisions and misses')
    if args.db:
        snapshot(args.db)
