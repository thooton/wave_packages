package com.android.providers.telephony;

import java.util.ArrayList;
import java.util.List;

/** Rebuildable conversation read model; the stock tables are still authoritative. */
final class WaveConversationSchema {
    private WaveConversationSchema() {}

    static final int VERSION = 2;
    static final String TABLE = "wave_msg";
    static final String META = "wave_msg_version";
    static final String[] PROJECTION = ("transport_type,_id,thread_id,address,body,sub_id,date,date_sent,"
            + "read,type,status,locked,error_code,sub,sub_cs,date,date_sent,read,m_type,msg_box,"
            + "d_rpt,rr,err_type,locked,st,text_only,sub_id,recipient_ids").split(",");
    private static final String ROW_COLUMNS = String.join(",", PROJECTION) + ",wave_text,wave_from,wave_size";
    static final String KEY = "normalized_date,transport_type,_id";
    static final String ASC = " ORDER BY normalized_date,transport_type,_id";
    static final String DESC = " ORDER BY normalized_date DESC,transport_type DESC,_id DESC";
    static final String LT = " AND (" + KEY + ")<(?,?,?)";
    static final String GE = " AND (" + KEY + ")>=(?,?,?)";
    private static final String FROM = " FROM " + TABLE + " WHERE thread_id=?";
    static final String ROW_QUERY = "SELECT " + ROW_COLUMNS + FROM + ASC;
    static final String KEY_QUERY = "SELECT " + KEY + FROM;
    static final String FIND_KEY = KEY_QUERY + " AND transport_type=? AND _id=?";
    static final int FIRST_PAGE_SIZE = 20;
    // The row range and older flag come from the same SQLite snapshot. If the thread
    // has fewer than 20 messages, use a key below all real keys and read the whole range.
    static final String FIRST_PAGE_QUERY = "SELECT " + ROW_COLUMNS + ",normalized_date AS wave_date,"
            + "EXISTS(SELECT 1 FROM " + TABLE + " WHERE thread_id=?1 LIMIT 1 OFFSET "
            + FIRST_PAGE_SIZE + ") AS wave_older FROM " + TABLE + " WHERE thread_id=?1"
            + " AND (" + KEY + ")>=(SELECT coalesce(normalized_date,-9223372036854775808),"
            + "coalesce(transport_type,''),coalesce(_id,-9223372036854775808)"
            + " FROM (SELECT 1) LEFT JOIN (SELECT " + KEY + " FROM " + TABLE
            + " WHERE thread_id=?1" + DESC + " LIMIT 1 OFFSET " + (FIRST_PAGE_SIZE - 1)
            + ") ON 1)" + ASC;

    static String floorQuery(boolean before, int rows) {
        return KEY_QUERY + (before ? LT : "") + DESC + " LIMIT 1 OFFSET " + (rows - 1);
    }

    static String pageQuery(boolean hasFloor, boolean hasOlder) {
        return "SELECT " + ROW_COLUMNS + ",normalized_date AS wave_date,"
                + (hasOlder ? "1" : "0") + " AS wave_older" + FROM + (hasFloor ? GE : "") + ASC;
    }

    private static final String SMS = "wave_msg_sms_source";
    private static final String MMS = "wave_msg_mms_source";
    private static final String SMS_FIELDS = "_id,thread_id,address,body,sub_id,date,date_sent,read,type,status,locked,error_code";
    private static final String MMS_FIELDS = "p._id,p.thread_id,p.sub_id,p.date,p.date_sent,p.read,p.locked,"
            + "p.sub,p.sub_cs,p.m_type,p.msg_box,p.d_rpt,p.rr,p.st,p.text_only";
    private static final String MMS_TARGET = MMS_FIELDS.replace("p.", "") + ",err_type,wave_text,wave_from,wave_size";

    // Fast-path single-text-part plain-text MMS: either no SMIL (e.g. text-only group iMessages,
    // 1 part total) or a single-slide SMIL referencing that text part with no media elements
    // (covers stock, carrier UUID-named text_<uuid>.txt, and indented network SMIL templates).
    private static final String TEXT_ID = "CASE WHEN p.text_only=1 AND p.m_type IN (128,132)"
            + " AND coalesce(p.d_rpt,0)<>128 AND coalesce(p.rr,0)<>128"
            + " AND (SELECT count(*) FROM part WHERE mid=p._id) IN (1,2)"
            + " THEN (SELECT t._id FROM part t"
            + " WHERE t.mid=p._id AND t.ct='text/plain' AND t._data IS NULL AND t.text IS NOT NULL"
            + " AND length(CAST(t.text AS BLOB))<=16384"
            + " AND (t.chset=106 OR (t.chset=3 AND length(CAST(t.text AS BLOB))=length(t.text)))"
            + " AND ((SELECT count(*) FROM part WHERE mid=p._id)=1"
            + " OR EXISTS (SELECT 1 FROM part s WHERE s.mid=t.mid AND s.ct='application/smil'"
            + " AND t.cl IS NOT NULL AND s.text IS NOT NULL"
            + " AND instr(s.text, '<text src=\"' || t.cl || '\"')>0"
            + " AND instr(lower(s.text), '<par')>0"
            + " AND instr(substr(lower(s.text), instr(lower(s.text), '<par')+4), '<par')=0"
            + " AND instr(lower(s.text), '<img')=0 AND instr(lower(s.text), '<video')=0"
            + " AND instr(lower(s.text), '<audio')=0 AND instr(lower(s.text), '<ref')=0))) END";

    static List<String> rebuild() {
        List<String> sql = new ArrayList<>();
        for (String source : new String[]{"sms", "pdu", "part", "addr", "pending_msgs"}) {
            for (String op : new String[]{"insert", "update", "delete"}) {
                sql.add("DROP TRIGGER IF EXISTS " + triggerName(source, op));
            }
        }
        sql.add("DROP VIEW IF EXISTS " + SMS);
        sql.add("DROP VIEW IF EXISTS " + MMS);
        sql.add("DROP TABLE IF EXISTS " + TABLE);
        sql.add("DROP TABLE IF EXISTS " + META);
        sql.add("CREATE INDEX IF NOT EXISTS wave_pdu_thread ON pdu(thread_id,date)");
        sql.add("CREATE INDEX IF NOT EXISTS wave_addr_msg ON addr(msg_id,type)");
        sql.add("CREATE INDEX IF NOT EXISTS wave_pending_msg ON pending_msgs(msg_id)");
        sql.add("CREATE TABLE " + TABLE + "(transport_type TEXT NOT NULL,_id INTEGER NOT NULL,"
                + "thread_id INTEGER NOT NULL,normalized_date INTEGER NOT NULL,"
                + "date INTEGER,date_sent INTEGER,sub_id INTEGER,read INTEGER,locked INTEGER,"
                + "address TEXT,body TEXT,type INTEGER,status INTEGER,error_code INTEGER,"
                + "sub TEXT,sub_cs INTEGER,m_type INTEGER,msg_box INTEGER,d_rpt INTEGER,rr INTEGER,"
                + "err_type INTEGER,st INTEGER,text_only INTEGER,recipient_ids TEXT,"
                + "wave_text TEXT,wave_from TEXT,wave_size INTEGER,"
                + "PRIMARY KEY(thread_id,normalized_date,transport_type,_id)) WITHOUT ROWID");
        sql.add("CREATE UNIQUE INDEX wave_msg_identity ON " + TABLE + "(transport_type,_id)");
        sql.add("CREATE VIEW " + SMS + " AS SELECT 'sms' AS transport_type,coalesce(date,0) AS normalized_date,"
                + SMS_FIELDS + " FROM sms WHERE thread_id IS NOT NULL AND type<>3");
        sql.add("CREATE VIEW " + MMS + " AS SELECT 'mms' AS transport_type,coalesce(p.date,0)*1000 AS normalized_date,"
                + MMS_FIELDS + ", (SELECT err_type FROM pending_msgs WHERE msg_id=p._id ORDER BY _id LIMIT 1) AS err_type,"
                + "t.text AS wave_text, (SELECT CASE WHEN charset IN (3,106) THEN address END FROM addr"
                + " WHERE msg_id=p._id AND type=137 ORDER BY _id DESC LIMIT 1) AS wave_from,"
                + "length(CAST(t.text AS BLOB)) AS wave_size FROM pdu p LEFT JOIN part t ON t._id=" + TEXT_ID
                + " WHERE p.thread_id IS NOT NULL AND p.msg_box<>3 AND p.m_type IN (128,130,132)");
        sql.add(copy(SMS, SMS_FIELDS, null));
        sql.add(copy(MMS, MMS_TARGET, null));
        addTriggers(sql, "sms", SMS, SMS_FIELDS, "sms", "_id", true);
        addTriggers(sql, "pdu", MMS, MMS_TARGET, "mms", "_id", true);
        addTriggers(sql, "part", MMS, MMS_TARGET, "mms", "mid", false);
        addTriggers(sql, "addr", MMS, MMS_TARGET, "mms", "msg_id", false);
        addTriggers(sql, "pending_msgs", MMS, MMS_TARGET, "mms", "msg_id", false);
        sql.add("CREATE TABLE " + META + "(version INTEGER NOT NULL)");
        sql.add("INSERT INTO " + META + " VALUES (" + VERSION + ")");
        return sql;
    }

    // Deprecated read-model objects. Delete only these exact names within the rebuild transaction.
    static List<String> removeLegacyIndex() {
        List<String> sql = new ArrayList<>();
        for (String table : new String[]{"sms", "pdu", "part", "addr", "pending_msgs"}) {
            for (String op : new String[]{"insert", "update", "delete"}) {
                sql.add("DROP TRIGGER IF EXISTS argon_msg_" + table + "_" + op);
            }
        }
        sql.add("DROP VIEW IF EXISTS argon_msg_sms_source");
        sql.add("DROP VIEW IF EXISTS argon_msg_mms_source");
        sql.add("DROP TABLE IF EXISTS argon_msg");
        sql.add("DROP TABLE IF EXISTS argon_msg_version");
        sql.add("DROP INDEX IF EXISTS argon_pdu_thread");
        sql.add("DROP INDEX IF EXISTS argon_addr_msg");
        sql.add("DROP INDEX IF EXISTS argon_pending_msg");
        return sql;
    }

    static String triggerName(String table, String op) {
        return "wave_msg_" + table + "_" + op;
    }

    private static String copy(String view, String fields, String id) {
        String columns = "transport_type,normalized_date," + fields;
        return "INSERT INTO " + TABLE + "(" + columns + ") SELECT " + columns + " FROM " + view
                + (id == null ? "" : " WHERE _id=" + id);
    }

    private static String remove(String kind, String id) {
        return "DELETE FROM " + TABLE + " WHERE transport_type='" + kind + "' AND _id=" + id + ";";
    }

    private static void addTriggers(List<String> sql, String table, String view, String fields,
                                    String kind, String key, boolean parent) {
        String opColumns;
        switch (table) {
            case "sms": opColumns = SMS_FIELDS; break;
            case "pdu": opColumns = MMS_FIELDS.replace("p.", ""); break;
            case "part": opColumns = "_id,mid,ct,text,chset,cl,_data"; break;
            case "addr": opColumns = "_id,msg_id,type,charset,address"; break;
            default: opColumns = "_id,msg_id,err_type"; break;
        }
        String on = " ON " + table;
        boolean address = "addr".equals(table);
        String oldId = "OLD." + key, newId = "NEW." + key;
        String changedId = "CASE WHEN " + oldId + " IS NOT " + newId + " THEN " + oldId + " END";
        String refreshNew = remove(kind, newId) + copy(view, fields, newId) + ";";
        String refreshOld = remove(kind, oldId) + (parent ? "" : copy(view, fields, oldId) + ";");
        String refreshChanged = remove(kind, changedId) + (parent ? "" : copy(view, fields, changedId) + ";");
        String oldFrom = "OLD.type=137", newFrom = "NEW.type=137";
        sql.add("CREATE TRIGGER " + triggerName(table, "insert") + " AFTER INSERT" + on
                + (address ? " WHEN " + newFrom : "") + " BEGIN " + refreshNew + " END");
        sql.add("CREATE TRIGGER " + triggerName(table, "update") + " AFTER UPDATE OF " + opColumns + on
                + (address ? " WHEN " + oldFrom + " OR " + newFrom : "")
                + " BEGIN " + refreshChanged + refreshNew + " END");
        sql.add("CREATE TRIGGER " + triggerName(table, "delete") + " AFTER DELETE" + on
                + (address ? " WHEN " + oldFrom : "") + " BEGIN " + refreshOld + " END");
    }
}
