package com.android.providers.telephony;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.Telephony;
import android.util.Log;

import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;

/** Opt-in, fixed-projection query. Stock clients and restricted callers keep the stock path. */
public final class WaveConversationQuery {
    private WaveConversationQuery() {}

    private static final WeakHashMap<SQLiteDatabase, Boolean> READY = new WeakHashMap<>();

    public static Cursor maybeQuery(MmsSmsProvider provider, Uri uri, String[] projection,
                                    String selection, String[] args, String order, boolean restricted) {
        if (restricted || selection != null || args != null || order != null
                || !"mms-sms".equals(uri.getAuthority())
                || !"1".equals(uri.getQueryParameter("wave_index"))
                || !Arrays.equals(projection, WaveConversationSchema.PROJECTION)) return null;
        List<String> path = uri.getPathSegments();
        if (path.size() != 2 || !"conversations".equals(path.get(0))) return null;
        long thread;
        try {
            thread = Long.parseLong(path.get(1));
        } catch (NumberFormatException e) {
            return null;
        }
        if (thread <= 0) return null;
        Cursor c = null;
        try {
            // Only install after SQLiteOpenHelper and the stock autoincrement migrations have run.
            SQLiteDatabase db = provider.ti_getOpenHelper().getWritableDatabase();
            ensure(db);
            String id = Long.toString(thread);
            c = "1".equals(uri.getQueryParameter("wave_page"))
                    ? page(db, id, uri)
                    : db.rawQuery(WaveConversationSchema.ROW_QUERY, new String[]{id});
            c.getCount(); // Fill the first window here so SQL failures still fall back to stock.
            c.setNotificationUri(provider.getContext().getContentResolver(), Telephony.MmsSms.CONTENT_URI);
            return c;
        } catch (SQLiteException e) {
            if (c != null) c.close();
            Log.w("MmsSmsProvider", "Conversation index unavailable, using stock query", e);
            return null;
        }
    }

    private static final int PREPEND = 32;
    private static final int SEARCH_CONTEXT = 10;

    private static final class Key implements Comparable<Key> {
        final long date, id;
        final String kind;

        Key(long date, String kind, long id) {
            this.date = date;
            this.kind = kind;
            this.id = id;
        }

        @Override public int compareTo(Key k) {
            int cmp = Long.compare(date, k.date);
            if (cmp == 0) cmp = kind.compareTo(k.kind);
            return cmp == 0 ? Long.compare(id, k.id) : cmp;
        }

        String[] args(String thread) {
            return new String[]{thread, Long.toString(date), kind, Long.toString(id)};
        }
    }

    private static Key key(Cursor c) {
        return new Key(c.getLong(0), c.getString(1), c.getLong(2));
    }

    /** Seek into the clustered table; even older requests skip only one page, not the history. */
    private static Key floor(SQLiteDatabase db, String thread, Key before, int rows) {
        String sql = WaveConversationSchema.floorQuery(before != null, rows);
        try (Cursor c = db.rawQuery(sql, before == null ? new String[]{thread} : before.args(thread))) {
            return c.moveToFirst() ? key(c) : null;
        }
    }

    private static Key search(SQLiteDatabase db, String thread, String id) {
        Key best = null;
        for (String kind : new String[]{"mms", "sms"}) {
            try (Cursor c = db.rawQuery(WaveConversationSchema.FIND_KEY, new String[]{thread, kind, id})) {
                if (c.moveToFirst()) {
                    Key match = key(c);
                    if (best == null || match.compareTo(best) < 0) best = match;
                }
            }
        }
        return best;
    }

    private static Key parseFloor(Uri uri) {
        String kind = uri.getQueryParameter("wave_kind");
        if (!"sms".equals(kind) && !"mms".equals(kind)) return null;
        try {
            return new Key(Long.parseLong(uri.getQueryParameter("wave_date")), kind,
                    Long.parseLong(uri.getQueryParameter("wave_id")));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static Cursor page(SQLiteDatabase db, String thread, Uri uri) {
        Key start = null;
        if (!"1".equals(uri.getQueryParameter("wave_full"))) {
            String selected = uri.getQueryParameter("wave_select");
            Key old = parseFloor(uri);
            if (selected == null && old == null) {
                return db.rawQuery(WaveConversationSchema.FIRST_PAGE_QUERY, new String[]{thread});
            }
            Key newest = floor(db, thread, null, WaveConversationSchema.FIRST_PAGE_SIZE);
            start = newest;
            if (selected != null) {
                Key at = search(db, thread, selected);
                if (at != null) {
                    Key context = floor(db, thread, at, SEARCH_CONTEXT);
                    start = context == null || newest == null ? null :
                            (context.compareTo(newest) < 0 ? context : newest);
                }
            } else if (old != null && newest != null) {
                Key lower = "1".equals(uri.getQueryParameter("wave_prepend"))
                        ? floor(db, thread, old, PREPEND) : old;
                start = lower == null ? null : (lower.compareTo(newest) < 0 ? lower : newest);
            }
        }
        boolean older = start != null && floor(db, thread, start, 1) != null;
        return db.rawQuery(WaveConversationSchema.pageQuery(start != null, older),
                start == null ? new String[]{thread} : start.args(thread));
    }

    private static synchronized void ensure(SQLiteDatabase db) {
        if (READY.containsKey(db)) return;
        if (!installed(db)) {
            db.beginTransaction();
            try {
                // Remove the predecessor's derived index, never the underlying message tables.
                for (String sql : WaveConversationSchema.removeLegacyIndex()) db.execSQL(sql);
                for (String sql : WaveConversationSchema.rebuild()) db.execSQL(sql);
                db.setTransactionSuccessful();
            } finally {
                db.endTransaction();
            }
        }
        try {
            db.execSQL("CREATE INDEX IF NOT EXISTS wave_threads_notif_date ON threads(notification,date DESC)");
        } catch (SQLiteException ignored) {
            // Minimal test schemas omit threads; real mmssms.db gets the inbox sort/filter index.
        }
        try {
            db.execSQL("PRAGMA temp_store = MEMORY");
            db.execSQL("PRAGMA cache_size = -4096");
        } catch (SQLiteException ignored) {
            // Best-effort tuning; ignore on restricted or read-only DB handles.
        }
        READY.put(db, true);
    }

    private static boolean installed(SQLiteDatabase db) {
        try (Cursor c = db.rawQuery("SELECT version FROM " + WaveConversationSchema.META, null)) {
            if (!c.moveToFirst() || c.getInt(0) != WaveConversationSchema.VERSION) return false;
        } catch (SQLiteException e) {
            return false;
        }
        String[] tables = {"sms", "pdu", "part", "addr", "pending_msgs"};
        try (Cursor c = db.rawQuery("SELECT type,name,tbl_name FROM sqlite_master"
                + " WHERE name GLOB 'wave_msg*'", null)) {
            int triggers = 0;
            boolean table = false;
            while (c.moveToNext()) {
                String type = c.getString(0), name = c.getString(1), owner = c.getString(2);
                if ("table".equals(type) && WaveConversationSchema.TABLE.equals(name)) table = true;
                if (!"trigger".equals(type)) continue;
                for (String source : tables) {
                    if (!source.equals(owner)) continue;
                    for (String op : new String[]{"insert", "update", "delete"}) {
                        if (name.equals(WaveConversationSchema.triggerName(source, op))) triggers++;
                    }
                }
            }
            return table && triggers == 3 * tables.length;
        }
    }
}
