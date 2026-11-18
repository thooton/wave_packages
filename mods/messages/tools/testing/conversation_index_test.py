#!/usr/bin/env python3
"""Exercise the actual provider SQL and address matcher on the host (no phone needed)."""
import argparse
import sqlite3
import subprocess
import tempfile
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PROVIDER = ROOT / 'apps/TelephonyProvider/java/com/android/providers/telephony'
UI = ROOT / 'apps/BMms/java/com/android/mms/ui'
SIMPLE_SMIL = ('<smil><head><layout><root-layout/><region id="Text" top="0" left="0" '
               'height="100%" width="100%"/></layout></head><body><par dur="5000ms">'
               '<text src="text.000000.txt" region="Text" /></par></body></smil>')


def build_fixtures():
    with tempfile.TemporaryDirectory() as work:
        sql = Path(work) / 'DumpSchema.java'
        sql.write_text('''package com.android.providers.telephony;
public class DumpSchema {
    public static void main(String[] args) {
        System.out.println(ArgonConversationSchema.ROW_QUERY);
        System.out.println(ArgonConversationSchema.floorQuery(false, 20));
        System.out.println(ArgonConversationSchema.floorQuery(true, 32));
        System.out.println(ArgonConversationSchema.floorQuery(true, 10));
        System.out.println(ArgonConversationSchema.pageQuery(true, true));
        System.out.println(ArgonConversationSchema.pageQuery(false, false));
        System.out.println(ArgonConversationSchema.FIND_KEY);
        for (String stmt : ArgonConversationSchema.rebuild()) System.out.println(stmt);
    }
}
''')
        addr = Path(work) / 'CheckAddress.java'
        addr.write_text('''package com.android.mms.ui;
public class CheckAddress {
    private static void check(String text, String expected) {
        java.util.regex.Matcher match = ArgonStreetAddress.matches(text);
        String found = match.find() ? match.group() : null;
        if (!java.util.Objects.equals(found, expected)) throw new AssertionError(text + ": " + found);
    }
    public static void main(String[] args) {
        check("Meet me at 123 Main St.", "123 Main St.");
        check("7B Rue du Lac Avenue", "7B Rue du Lac Avenue");
        check("2 O’Connor Rd NE, Ottawa", "2 O’Connor Rd NE");
        check("https://example.org/123 Main Street", null);
        check("call 613-555-0123 or email user@example.org", null);
        check("do 5 more reps", null);
        check("4 Main\\nSt", null);
    }
}
''')
        subprocess.run(['javac', '-encoding', 'UTF-8', '-d', work, str(sql), str(addr),
                        str(PROVIDER / 'ArgonConversationSchema.java'), str(UI / 'ArgonStreetAddress.java')], check=True)
        subprocess.run(['java', '-cp', work, 'com.android.mms.ui.CheckAddress'], check=True)
        query, *sql = subprocess.check_output(
            ['java', '-cp', work, 'com.android.providers.telephony.DumpSchema'], text=True).splitlines()
        return query, sql[:6], sql[6:]


def install(db, schema):
    with db:
        db.execute('BEGIN')
        for stmt in schema:
            db.execute(stmt)


def check_updates(query, schema):
    db = sqlite3.connect(':memory:')
    db.executescript('''
        CREATE TABLE sms(_id INTEGER PRIMARY KEY,thread_id,address,body,sub_id,date,date_sent,read,
                         type,status,locked,error_code,seen);
        CREATE TABLE pdu(_id INTEGER PRIMARY KEY,thread_id,sub_id,date,date_sent,read,locked,sub,
                         sub_cs,m_type,msg_box,d_rpt,rr,st,text_only,seen);
        CREATE TABLE part(_id INTEGER PRIMARY KEY,mid,ct,text,chset,cl,_data);
        CREATE INDEX index_part ON part(mid);
        CREATE TABLE addr(_id INTEGER PRIMARY KEY,msg_id,type,charset,address);
        CREATE TABLE pending_msgs(_id INTEGER PRIMARY KEY,msg_id,err_type);
        CREATE TRIGGER addr_cleanup AFTER DELETE ON pdu BEGIN DELETE FROM addr WHERE msg_id=OLD._id; END;
        CREATE TRIGGER part_cleanup AFTER DELETE ON pdu BEGIN DELETE FROM part WHERE mid=OLD._id; END;
        INSERT INTO sms(_id,thread_id,date,body,type) VALUES(1,9,1900,'SMS',1),(2,9,2500,'draft',3);
        INSERT INTO pdu(_id,thread_id,date,m_type,msg_box,text_only) VALUES(1,9,2,132,1,1);
        INSERT INTO addr VALUES(1,1,137,106,'+15550001');
        INSERT INTO part VALUES(1,1,'text/plain','MMS 🌱',106,'text.000000.txt',NULL);
    ''')
    db.execute("INSERT INTO part VALUES(2,1,'application/smil',?,106,NULL,NULL)", (SIMPLE_SMIL,))
    db.commit()
    install(db, schema)

    def rows(thread=9):
        return db.execute(query, (thread,)).fetchall()

    def mms(thread=9):
        return next(r for r in rows(thread) if r[0] == 'mms')

    assert [r[:3] for r in rows()] == [('sms', 1, 9), ('mms', 1, 9)]
    assert mms()[28:] == ('MMS 🌱', '+15550001', 8)
    assert rows()[0][4] == 'SMS'
    db.execute("UPDATE sms SET body='changed',read=1,locked=1 WHERE _id=1")
    assert [rows()[0][i] for i in (4, 8, 11, 17, 23)] == ['changed', 1, 1, 1, 1]
    db.execute("UPDATE sms SET type=2 WHERE _id=2")
    assert len(rows()) == 3
    db.execute("UPDATE sms SET _id=3 WHERE _id=2")
    assert rows()[-1][1] == 3
    db.execute("DELETE FROM sms WHERE _id=3")
    db.execute("UPDATE sms SET thread_id=10,date=3000 WHERE _id=1")
    assert len(rows()) == len(rows(10)) == 1
    db.execute("UPDATE pdu SET msg_box=3 WHERE _id=1")
    assert not rows()
    db.execute("UPDATE pdu SET msg_box=1,read=1 WHERE _id=1")
    assert mms()[8] == 1
    db.execute("INSERT INTO addr VALUES(2,1,151,106,'recipient')")
    assert mms()[29] == '+15550001'
    db.execute("UPDATE addr SET type=151 WHERE _id=1")
    assert mms()[29] is None
    db.execute("UPDATE addr SET type=137,address='+15550002' WHERE _id=1")
    assert mms()[29] == '+15550002'
    db.execute("INSERT INTO pending_msgs VALUES(1,1,10)")
    assert mms()[22] == 10
    db.execute("UPDATE pending_msgs SET err_type=11 WHERE _id=1")
    assert mms()[22] == 11
    db.execute("DELETE FROM pending_msgs")
    assert mms()[22] is None
    db.execute("INSERT INTO part VALUES(3,1,'image/jpeg',NULL,NULL,NULL,'/test.jpg')")
    assert mms()[28] is None  # An attachment must still use the full PDU.
    db.execute("DELETE FROM part WHERE _id=3")
    assert mms()[28] == 'MMS 🌱'
    db.execute("UPDATE part SET text='<smil/>' WHERE _id=2")
    assert mms()[28] is None
    db.execute("UPDATE part SET text=? WHERE _id=2", (SIMPLE_SMIL,))
    assert mms()[28] == 'MMS 🌱'
    db.execute("INSERT INTO pdu(_id,thread_id,date,m_type,msg_box,text_only) VALUES(2,10,3,130,1,1)")
    assert mms(10)[18] == 130 and mms(10)[28] is None
    db.execute("UPDATE pdu SET m_type=132 WHERE _id=2")
    db.execute("UPDATE part SET mid=2 WHERE mid=1")
    db.execute("UPDATE addr SET msg_id=2 WHERE _id=1")
    assert mms()[28] is None and mms()[29] is None
    assert mms(10)[28:30] == ('MMS 🌱', '+15550002')
    db.commit()
    db.execute('BEGIN')
    db.execute("UPDATE part SET text='discard' WHERE _id=1")
    db.rollback()
    assert mms(10)[28] == 'MMS 🌱'
    db.execute("UPDATE pdu SET rr=128 WHERE _id=2")
    assert mms(10)[28] is None  # Receipt handling stays stock.
    db.execute("DELETE FROM pdu WHERE _id=2")
    assert not any(r[0] == 'mms' for r in rows(10))
    db.commit()
    expected = rows(), rows(10)
    install(db, schema)
    assert (rows(), rows(10)) == expected
    assert db.execute('PRAGMA integrity_check').fetchone() == ('ok',)
    plan = str(db.execute('EXPLAIN QUERY PLAN ' + query, (9,)).fetchall())
    assert 'PRIMARY KEY' in plan and 'TEMP B-TREE' not in plan, plan
    print('PASS: address matching; backfill/rebuild, mixed order, edits, moves, deletes, drafts, '
          'pending errors, Unicode, media/SMIL/receipt fallback, rollback and clustered query')


def check_paging(queries, schema):
    newest_sql, prepend_sql, context_sql, page_sql, full_sql, find_sql = queries
    db = sqlite3.connect(':memory:')
    db.executescript("""
        CREATE TABLE sms(_id INTEGER PRIMARY KEY,thread_id,address,body,sub_id,date,date_sent,read,
                         type,status,locked,error_code);
        CREATE TABLE pdu(_id INTEGER PRIMARY KEY,thread_id,sub_id,date,date_sent,read,locked,sub,
                         sub_cs,m_type,msg_box,d_rpt,rr,st,text_only);
        CREATE TABLE part(_id INTEGER PRIMARY KEY,mid,ct,text,chset,cl,_data);
        CREATE TABLE addr(_id INTEGER PRIMARY KEY,msg_id,type,charset,address);
        CREATE TABLE pending_msgs(_id INTEGER PRIMARY KEY,msg_id,err_type);
    """)
    db.executemany("INSERT INTO sms(_id,thread_id,date,type) VALUES (?,9,?,1)",
                   ((i, (i // 3) * 1000) for i in range(1, 101)))
    db.executemany("INSERT INTO pdu(_id,thread_id,date,m_type,msg_box) VALUES (?,9,?,132,1)",
                   ((i, i // 3) for i in range(1, 101)))
    db.execute("INSERT INTO sms(_id,thread_id,date,type) VALUES (101,10,999999,1)")
    db.commit()
    install(db, schema)

    complete = db.execute(full_sql, (9,)).fetchall()
    assert len(complete) == 200 and len(set((row[0], row[1]) for row in complete)) == 200
    assert not any(row[-1] for row in complete)
    newest = db.execute(newest_sql, ('9',)).fetchone()
    pages = db.execute(page_sql, ('9', *map(str, newest))).fetchall()
    assert tuple(pages[0][i] for i in (-2, 0, 1)) == newest
    assert len(pages) == 20 and all(row[-1] for row in pages)
    assert [row[:-1] for row in pages] == [row[:-1] for row in complete[-20:]]
    older = db.execute(prepend_sql, ('9', *map(str, newest))).fetchone()
    expanded = db.execute(page_sql, ('9', *map(str, older))).fetchall()
    assert len(expanded) == 52 and expanded[-20:] == pages
    assert db.execute(newest_sql, ('10',)).fetchone() is None
    # A live insert or deletion doesn't turn a historical boundary into an offset.
    db.execute("INSERT INTO sms(_id,thread_id,date,type) VALUES (102,9,999999,1)")
    db.execute("DELETE FROM argon_msg WHERE thread_id=9 AND (normalized_date,transport_type,_id)=(?,?,?)", older)
    changed = db.execute(page_sql, ('9', *map(str, older))).fetchall()
    assert changed[:-1] == expanded[1:] and changed[-1][1] == 102
    for kind in ('mms', 'sms'):
        target = db.execute(find_sql, ('9', kind, '30')).fetchone()
        floor = db.execute(context_sql, ('9', *map(str, target))).fetchone()
        result = db.execute(page_sql, ('9', *map(str, floor))).fetchall()
        assert result[10][:2] == (kind, 30)
    for sql, params in [(newest_sql, ('9',)), (page_sql, ('9', *map(str, older))),
                        (prepend_sql, ('9', *map(str, newest)))]:
        plan = str(db.execute('EXPLAIN QUERY PLAN ' + sql, params).fetchall())
        assert 'PRIMARY KEY' in plan and 'TEMP B-TREE' not in plan, plan
    print('PASS: bounded 20-row launch, 32-row prepend, stable ties and boundaries, indexed search jump')


def check_copy(path, query, schema):
    db = sqlite3.connect(':memory:')
    with sqlite3.connect(path.resolve().as_uri() + '?mode=ro', uri=True) as src:
        src.backup(db)
    start = time.perf_counter()
    install(db, schema)
    print(f'Copy backfill: {(time.perf_counter()-start)*1000:.1f} ms on host')
    assert db.execute('PRAGMA integrity_check').fetchone() == ('ok',)
    for table, kind, clause in [('sms', 'sms', 'type<>3'),
                                ('pdu', 'mms', 'msg_box<>3 AND m_type IN (128,130,132)')]:
        expected = db.execute(f'SELECT _id,thread_id FROM {table} WHERE thread_id IS NOT NULL AND {clause} ORDER BY _id').fetchall()
        actual = db.execute('SELECT _id,thread_id FROM argon_msg WHERE transport_type=? ORDER BY _id', (kind,)).fetchall()
        assert expected == actual
    eligible, total = db.execute("SELECT sum(argon_text IS NOT NULL AND (m_type=128 OR length(argon_from)>0)),count(*)"
                                 " FROM argon_msg WHERE transport_type='mms'").fetchone()
    print(f'Copy: all source message IDs match, {eligible or 0}/{total} MMS eligible for inline display')
    thread = db.execute('SELECT thread_id FROM argon_msg GROUP BY thread_id ORDER BY count(*) DESC LIMIT 1').fetchone()
    if thread:
        start = time.perf_counter()
        for _ in range(40):
            rows = db.execute(query, thread).fetchall()
        print(f'Copy: {len(rows)} rows read in {(time.perf_counter()-start)*25:.2f} ms average on host')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--db', type=Path, help='also test against an in-memory copy of a read-only snapshot')
    args = parser.parse_args()
    query, pages, schema = build_fixtures()
    check_updates(query, schema)
    check_paging(pages, schema)
    if args.db:
        check_copy(args.db, query, schema)
