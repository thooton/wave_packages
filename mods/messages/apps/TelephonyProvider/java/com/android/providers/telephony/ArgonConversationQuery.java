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
public final class ArgonConversationQuery {
    private ArgonConversationQuery() {}

    private static final WeakHashMap<SQLiteDatabase, Boolean> READY = new WeakHashMap<>();

    public static Cursor maybeQuery(MmsSmsProvider provider, Uri uri, String[] projection,
                                    String selection, String[] args, String order, boolean restricted) {
        if (restricted || selection != null || args != null || order != null
                || !"mms-sms".equals(uri.getAuthority())
                || !"1".equals(uri.getQueryParameter("argon_index"))
                || !Arrays.equals(projection, ArgonConversationSchema.PROJECTION)) return null;
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
            c = db.rawQuery(ArgonConversationSchema.ROW_QUERY, new String[]{Long.toString(thread)});
            c.getCount(); // Fill the first window here so SQL failures still fall back to stock.
            c.setNotificationUri(provider.getContext().getContentResolver(), Telephony.MmsSms.CONTENT_URI);
            return c;
        } catch (SQLiteException e) {
            if (c != null) c.close();
            Log.w("MmsSmsProvider", "Conversation index unavailable, using stock query", e);
            return null;
        }
    }

    private static synchronized void ensure(SQLiteDatabase db) {
        if (READY.containsKey(db)) return;
        if (!installed(db)) {
            db.beginTransaction();
            try {
                for (String sql : ArgonConversationSchema.rebuild()) db.execSQL(sql);
                db.setTransactionSuccessful();
            } finally {
                db.endTransaction();
            }
        }
        READY.put(db, true);
    }

    private static boolean installed(SQLiteDatabase db) {
        try (Cursor c = db.rawQuery("SELECT version FROM " + ArgonConversationSchema.META, null)) {
            if (!c.moveToFirst() || c.getInt(0) != ArgonConversationSchema.VERSION) return false;
        } catch (SQLiteException e) {
            return false;
        }
        String[] tables = {"sms", "pdu", "part", "addr", "pending_msgs"};
        try (Cursor c = db.rawQuery("SELECT type,name,tbl_name FROM sqlite_master"
                + " WHERE name GLOB 'argon_msg*'", null)) {
            int triggers = 0;
            boolean table = false;
            while (c.moveToNext()) {
                String type = c.getString(0), name = c.getString(1), owner = c.getString(2);
                if ("table".equals(type) && ArgonConversationSchema.TABLE.equals(name)) table = true;
                if (!"trigger".equals(type)) continue;
                for (String source : tables) {
                    if (!source.equals(owner)) continue;
                    for (String op : new String[]{"insert", "update", "delete"}) {
                        if (name.equals(ArgonConversationSchema.triggerName(source, op))) triggers++;
                    }
                }
            }
            return table && triggers == 3 * tables.length;
        }
    }
}
