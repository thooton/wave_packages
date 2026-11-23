package com.android.mms.wave;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.text.TextUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/**
 * FEAT(imessage): what the phone knows about iMessages beyond mmssms.db.
 *
 * <ul>
 *   <li>{@code msgs}: Apple message id to the stored SMS/MMS row, with the text and conversation,
 *       so edits, unsends, tapbacks and replies can find their message and the user can react.</li>
 *   <li>{@code reactions}: current tapbacks, one per person per message, as on iPhones.</li>
 *   <li>{@code media}: MMS part to the server's attachment id, for saving the full-size file.</li>
 * </ul>
 */
public final class WaveIMessageDb extends SQLiteOpenHelper {
    private static final String NAME = "wave_imessage.db";
    private static final int VERSION = 1;
    /** Messages and reactions older than this are forgotten (the server drops media after 30 days). */
    private static final long KEEP_MS = 180L * 24L * 3600L * 1000L;

    /** Sender value for the user's own tapbacks. */
    public static final String ME = "me";

    private static WaveIMessageDb sInstance;

    public static synchronized WaveIMessageDb get(Context c) {
        if (sInstance == null) sInstance = new WaveIMessageDb(c.getApplicationContext());
        return sInstance;
    }

    private WaveIMessageDb(Context c) {
        super(c, NAME, null, VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE msgs (apple_id TEXT PRIMARY KEY COLLATE NOCASE, uri TEXT NOT NULL,"
                + " text TEXT, sender TEXT, targets TEXT, guid TEXT, ts INTEGER NOT NULL)");
        db.execSQL("CREATE INDEX msgs_uri ON msgs(uri)");
        db.execSQL("CREATE TABLE reactions (target TEXT NOT NULL COLLATE NOCASE, sender TEXT NOT NULL COLLATE NOCASE,"
                + " kind INTEGER NOT NULL, emoji TEXT, ts INTEGER NOT NULL, PRIMARY KEY (target, sender))");
        db.execSQL("CREATE TABLE media (part_uri TEXT PRIMARY KEY, msg_uri TEXT NOT NULL, media_id TEXT NOT NULL,"
                + " name TEXT, ts INTEGER NOT NULL)");
        db.execSQL("CREATE INDEX media_msg ON media(msg_uri)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
    }

    /** A message the phone stored or sent. */
    public static final class Msg {
        public final String appleId;
        public final Uri uri;
        public final String text;
        public final String sender;
        /** Other participants (normalized iMessage targets), for replying with a tapback. */
        public final List<String> targets;
        public final String guid;

        Msg(String appleId, Uri uri, String text, String sender, List<String> targets, String guid) {
            this.appleId = appleId;
            this.uri = uri;
            this.text = text;
            this.sender = sender;
            this.targets = targets;
            this.guid = guid;
        }
    }

    public static final class Reaction {
        public final String sender;
        public final int kind;
        public final String emoji;

        Reaction(String sender, int kind, String emoji) {
            this.sender = sender;
            this.kind = kind;
            this.emoji = emoji;
        }

        public boolean isMine() {
            return ME.equals(sender);
        }
    }

    public void recordMessage(String appleId, Uri uri, String text, String sender, List<String> targets, String guid) {
        if (TextUtils.isEmpty(appleId) || uri == null) return;
        ContentValues v = new ContentValues(7);
        v.put("apple_id", appleId);
        v.put("uri", key(uri));
        v.put("text", text);
        v.put("sender", sender);
        v.put("targets", targets == null ? "" : TextUtils.join("\n", targets));
        v.put("guid", guid);
        v.put("ts", System.currentTimeMillis());
        getWritableDatabase().insertWithOnConflict("msgs", null, v, SQLiteDatabase.CONFLICT_REPLACE);
    }

    public void updateText(String appleId, String text) {
        ContentValues v = new ContentValues(1);
        v.put("text", text);
        getWritableDatabase().update("msgs", v, "apple_id=?", new String[]{appleId});
    }

    public Msg byAppleId(String appleId) {
        if (TextUtils.isEmpty(appleId)) return null;
        return one("apple_id=?", appleId);
    }

    public Msg byUri(Uri uri) {
        if (uri == null) return null;
        return one("uri=?", key(uri));
    }

    private Msg one(String where, String arg) {
        Cursor c = getReadableDatabase().query("msgs",
                new String[]{"apple_id", "uri", "text", "sender", "targets", "guid"}, where, new String[]{arg},
                null, null, "ts DESC", "1");
        try {
            if (!c.moveToFirst()) return null;
            String t = c.getString(4);
            List<String> targets = TextUtils.isEmpty(t)
                    ? Collections.<String>emptyList() : new ArrayList<String>(Arrays.asList(t.split("\n")));
            return new Msg(c.getString(0), Uri.parse(c.getString(1)), c.getString(2), c.getString(3), targets,
                    c.getString(5));
        } finally {
            c.close();
        }
    }

    /** Applies a tapback. Returns true if anything changed. */
    public boolean setReaction(String target, String sender, int kind, String emoji, boolean enable) {
        SQLiteDatabase db = getWritableDatabase();
        if (!enable) {
            return db.delete("reactions", "target=? AND sender=? AND kind=?",
                    new String[]{target, sender, String.valueOf(kind)}) > 0;
        }
        ContentValues v = new ContentValues(5);
        v.put("target", target);
        v.put("sender", sender);
        v.put("kind", kind);
        v.put("emoji", emoji);
        v.put("ts", System.currentTimeMillis());
        return db.insertWithOnConflict("reactions", null, v, SQLiteDatabase.CONFLICT_REPLACE) >= 0;
    }

    public void clearReactions(String target) {
        getWritableDatabase().delete("reactions", "target=?", new String[]{target});
    }

    /** Tapbacks on a message, oldest first. */
    public List<Reaction> reactions(String target) {
        List<Reaction> out = new ArrayList<Reaction>();
        if (TextUtils.isEmpty(target)) return out;
        Cursor c = getReadableDatabase().query("reactions", new String[]{"sender", "kind", "emoji"},
                "target=?", new String[]{target}, null, null, "ts ASC");
        try {
            while (c.moveToNext()) out.add(new Reaction(c.getString(0), c.getInt(1), c.getString(2)));
        } finally {
            c.close();
        }
        return out;
    }

    /** Tapbacks on the message stored at {@code uri} (empty if it isn't an iMessage). */
    public List<Reaction> reactionsForUri(Uri uri) {
        if (uri == null) return Collections.emptyList();
        Cursor c = getReadableDatabase().rawQuery(
                "SELECT r.sender, r.kind, r.emoji FROM reactions r JOIN msgs m ON r.target = m.apple_id"
                        + " WHERE m.uri = ? ORDER BY r.ts ASC", new String[]{key(uri)});
        List<Reaction> out = new ArrayList<Reaction>();
        try {
            while (c.moveToNext()) out.add(new Reaction(c.getString(0), c.getInt(1), c.getString(2)));
        } finally {
            c.close();
        }
        return out;
    }

    public void recordMedia(Uri partUri, Uri msgUri, String mediaId, String name) {
        ContentValues v = new ContentValues(5);
        v.put("part_uri", partUri.toString());
        v.put("msg_uri", key(msgUri));
        v.put("media_id", mediaId);
        v.put("name", name);
        v.put("ts", System.currentTimeMillis());
        getWritableDatabase().insertWithOnConflict("media", null, v, SQLiteDatabase.CONFLICT_REPLACE);
    }

    /** {mediaId, name} of an MMS part that came over iMessage, or null. */
    public String[] mediaForPart(Uri partUri) {
        if (partUri == null) return null;
        Cursor c = getReadableDatabase().query("media", new String[]{"media_id", "name"}, "part_uri=?",
                new String[]{partUri.toString()}, null, null, null);
        try {
            return c.moveToFirst() ? new String[]{c.getString(0), c.getString(1)} : null;
        } finally {
            c.close();
        }
    }

    public boolean hasMedia(Uri msgUri) {
        if (msgUri == null) return false;
        Cursor c = getReadableDatabase().query("media", new String[]{"media_id"}, "msg_uri=?",
                new String[]{key(msgUri)}, null, null, null, "1");
        try {
            return c.moveToFirst();
        } finally {
            c.close();
        }
    }

    /** Drops rows for messages older than KEEP_MS. */
    public void prune() {
        String cutoff = String.valueOf(System.currentTimeMillis() - KEEP_MS);
        SQLiteDatabase db = getWritableDatabase();
        db.delete("reactions", "target IN (SELECT apple_id FROM msgs WHERE ts < ?)", new String[]{cutoff});
        db.delete("msgs", "ts < ?", new String[]{cutoff});
        db.delete("media", "ts < ?", new String[]{cutoff});
    }

    /**
     * The canonical form of a message row's uri, "content://sms/12" or "content://mms/34", whatever
     * box path it was written with (content://sms/inbox/12, content://mms/sent/34, ...).
     */
    public static String key(Uri uri) {
        String auth = uri.getAuthority();
        String last = uri.getLastPathSegment();
        if (auth == null || last == null) return uri.toString();
        return "content://" + auth + "/" + last;
    }

    public static String lower(String s) {
        return s == null ? "" : s.toLowerCase(Locale.ROOT);
    }
}
