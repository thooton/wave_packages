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
    /**
     * 2: msgs.flags, msgs.reply_to (what the UI needs to render edits, unsends, notices, replies)
     * and the edits table (every earlier version of an edited message).
     * 3: partial covering index for special rows (flags/reply_to) and ts indexes for pruning.
     */
    private static final int VERSION = 3;

    /** {@link Info#flags}: the message was edited at least once. */
    public static final int FLAG_EDITED = 1;
    /** The message was unsent (its stored body is the unsent notice). */
    public static final int FLAG_UNSENT = 2;
    /** A group rename / member / photo notice, not a message anyone wrote. */
    public static final int FLAG_NOTICE = 4;
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
        setWriteAheadLoggingEnabled(true);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE msgs (apple_id TEXT PRIMARY KEY COLLATE NOCASE, uri TEXT NOT NULL,"
                + " text TEXT, sender TEXT, targets TEXT, guid TEXT, ts INTEGER NOT NULL,"
                + " flags INTEGER NOT NULL DEFAULT 0, reply_to TEXT, edited_at INTEGER)");
        db.execSQL("CREATE INDEX msgs_uri ON msgs(uri)");
        db.execSQL("CREATE TABLE reactions (target TEXT NOT NULL COLLATE NOCASE, sender TEXT NOT NULL COLLATE NOCASE,"
                + " kind INTEGER NOT NULL, emoji TEXT, ts INTEGER NOT NULL, PRIMARY KEY (target, sender))");
        db.execSQL("CREATE TABLE media (part_uri TEXT PRIMARY KEY, msg_uri TEXT NOT NULL, media_id TEXT NOT NULL,"
                + " name TEXT, ts INTEGER NOT NULL)");
        db.execSQL("CREATE INDEX media_msg ON media(msg_uri)");
        createEdits(db);
        createPerfIndexes(db);
    }

    private static void createEdits(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE edits (apple_id TEXT NOT NULL COLLATE NOCASE, text TEXT, ts INTEGER NOT NULL)");
        db.execSQL("CREATE INDEX edits_msg ON edits(apple_id)");
    }

    private static void createPerfIndexes(SQLiteDatabase db) {
        db.execSQL("CREATE INDEX IF NOT EXISTS msgs_special ON msgs(uri) WHERE flags != 0 OR reply_to IS NOT NULL");
        db.execSQL("CREATE INDEX IF NOT EXISTS msgs_ts ON msgs(ts)");
        db.execSQL("CREATE INDEX IF NOT EXISTS media_ts ON media(ts)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion < 2) {
            db.execSQL("ALTER TABLE msgs ADD COLUMN flags INTEGER NOT NULL DEFAULT 0");
            db.execSQL("ALTER TABLE msgs ADD COLUMN reply_to TEXT");
            db.execSQL("ALTER TABLE msgs ADD COLUMN edited_at INTEGER");
            createEdits(db);
        }
        if (oldVersion < 3) {
            createPerfIndexes(db);
        }
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
        String k = key(uri);
        ContentValues v = new ContentValues(7);
        v.put("apple_id", appleId);
        v.put("uri", k);
        v.put("text", text);
        v.put("sender", sender);
        v.put("targets", targets == null ? "" : TextUtils.join("\n", targets));
        v.put("guid", guid);
        v.put("ts", System.currentTimeMillis());
        getWritableDatabase().insertWithOnConflict("msgs", null, v, SQLiteDatabase.CONFLICT_REPLACE);
        // Plain messages have flags=0 and reply_to=NULL; don't wipe infoKeys on every send/receive.
        java.util.Set<String> keys = infoKeys;
        if (keys != null && keys.contains(k)) {
            infoCache.remove(k);
        }
    }

    public void updateText(String appleId, String text) {
        ContentValues v = new ContentValues(1);
        v.put("text", text);
        getWritableDatabase().update("msgs", v, "apple_id=?", new String[]{appleId});
        infoCache.clear();
    }

    /**
     * Edit: keeps the current text as a version in the edit history (stamped with when it was
     * written: the message's time for the original), then sets the new text and FLAG_EDITED.
     */
    public void markEdited(String appleId, String text, long editedAtMs) {
        SQLiteDatabase db = getWritableDatabase();
        String rowUri = null;
        db.beginTransaction();
        try {
            Cursor c = db.query("msgs", new String[]{"text", "ts", "edited_at", "uri"}, "apple_id=?",
                    new String[]{appleId}, null, null, null, "1");
            try {
                if (!c.moveToFirst()) return;
                rowUri = c.getString(3);
                // The version being replaced was written at its own edit, or with the message.
                ContentValues v = new ContentValues(3);
                v.put("apple_id", appleId);
                v.put("text", c.getString(0));
                v.put("ts", c.isNull(2) ? c.getLong(1) : c.getLong(2));
                db.insert("edits", null, v);
            } finally {
                c.close();
            }
            db.execSQL("UPDATE msgs SET text = ?, edited_at = ?, flags = flags | " + FLAG_EDITED
                    + " WHERE apple_id = ?", new Object[]{text, editedAtMs, appleId});
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
            if (rowUri != null) {
                markInfoDirty(rowUri);
            } else {
                invalidateInfo();
            }
        }
    }

    /** One version of an edited message. */
    public static final class Version {
        public final String text;
        /** When this version was written (ms since the epoch; the message's time for the original). */
        public final long ts;

        Version(String text, long ts) {
            this.text = text == null ? "" : text;
            this.ts = ts;
        }
    }

    /**
     * Every version of the message, oldest (the original) first, the current text last. Empty for
     * a message that was never edited.
     */
    public List<Version> editHistory(String appleId) {
        List<Version> out = new ArrayList<Version>();
        if (TextUtils.isEmpty(appleId)) return out;
        SQLiteDatabase db = getReadableDatabase();
        Cursor c = db.query("edits", new String[]{"text", "ts"}, "apple_id=?", new String[]{appleId},
                null, null, "rowid ASC");
        try {
            while (c.moveToNext()) out.add(new Version(c.getString(0), c.getLong(1)));
        } finally {
            c.close();
        }
        if (out.isEmpty()) return out;
        Cursor m = db.query("msgs", new String[]{"text", "edited_at"}, "apple_id=?", new String[]{appleId},
                null, null, null, "1");
        try {
            if (m.moveToFirst()) {
                out.add(new Version(m.getString(0), m.isNull(1) ? out.get(out.size() - 1).ts : m.getLong(1)));
            }
        } finally {
            m.close();
        }
        return out;
    }

    /** When {@code appleId} was stored or sent (ms since the epoch), or 0 if unknown. */
    public long timeOf(String appleId) {
        if (TextUtils.isEmpty(appleId)) return 0L;
        Cursor c = getReadableDatabase().query("msgs", new String[]{"ts"}, "apple_id=?", new String[]{appleId},
                null, null, null, "1");
        try {
            return c.moveToFirst() ? c.getLong(0) : 0L;
        } finally {
            c.close();
        }
    }

    /** Edit history of the message stored at {@code uri} (see {@link #editHistory}). */
    public List<Version> editHistoryForUri(Uri uri) {
        Msg m = byUri(uri);
        return m == null ? new ArrayList<Version>() : editHistory(m.appleId);
    }

    /** Unsend: FLAG_UNSENT; the text, media and tapbacks stay (shown with an "Unsent" note). */
    public void markUnsent(String appleId) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("UPDATE msgs SET flags = flags | " + FLAG_UNSENT + " WHERE apple_id = ?",
                new Object[]{appleId});
        markInfoDirtyByAppleId(db, appleId);
    }

    /** Records a stored group notice (FLAG_NOTICE), so the UI can show it as a system line. */
    public void recordNotice(String id, Uri uri, String text) {
        if (TextUtils.isEmpty(id) || uri == null) return;
        String k = key(uri);
        ContentValues v = new ContentValues(5);
        v.put("apple_id", id);
        v.put("uri", k);
        v.put("text", text);
        v.put("ts", System.currentTimeMillis());
        v.put("flags", FLAG_NOTICE);
        getWritableDatabase().insertWithOnConflict("msgs", null, v, SQLiteDatabase.CONFLICT_REPLACE);
        markInfoDirty(k);
    }

    public void setReplyTo(String appleId, String replyTo) {
        if (TextUtils.isEmpty(replyTo)) return;
        SQLiteDatabase db = getWritableDatabase();
        ContentValues v = new ContentValues(1);
        v.put("reply_to", replyTo);
        db.update("msgs", v, "apple_id=?", new String[]{appleId});
        markInfoDirtyByAppleId(db, appleId);
    }

    // -----------------------------------------------------------------------------------------
    // What the conversation view needs to draw an iMessage row (see Info)

    /** How to draw an iMessage row: {@link #infoForUri}. */
    public static final class Info {
        /** FLAG_EDITED / FLAG_UNSENT / FLAG_NOTICE. */
        public final int flags;
        /** The text alone: no reply quote line, no " (edited)" (empty when unsent). */
        public final String text;
        /** Apple id of the message this one replies to, or null. */
        public final String replyTo;
        /** Text of that message (what the stored quote line shows), or null if unknown. */
        public final String quote;

        Info(int flags, String text, String replyTo, String quote) {
            this.flags = flags;
            this.text = text == null ? "" : text;
            this.replyTo = replyTo;
            this.quote = quote;
        }

        public boolean edited() {
            return (flags & FLAG_EDITED) != 0;
        }

        public boolean unsent() {
            return (flags & FLAG_UNSENT) != 0;
        }

        public boolean notice() {
            return (flags & FLAG_NOTICE) != 0;
        }
    }

    /** Keys of rows with flags or a reply; null until first needed. Most rows have neither. */
    private volatile java.util.Set<String> infoKeys;
    private final java.util.Map<String, Info> infoCache = java.util.Collections.synchronizedMap(
            new java.util.LinkedHashMap<String, Info>(64, 0.75f, true) {
                @Override
                protected boolean removeEldestEntry(java.util.Map.Entry<String, Info> e) {
                    return size() > 300;
                }
            });

    private void invalidateInfo() {
        infoKeys = null;
        infoCache.clear();
    }

    private void markInfoDirty(String uriKey) {
        if (uriKey == null) {
            invalidateInfo();
            return;
        }
        java.util.Set<String> keys = infoKeys;
        if (keys != null) keys.add(uriKey);
        infoCache.remove(uriKey);
    }

    private void markInfoDirtyByAppleId(SQLiteDatabase db, String appleId) {
        if (infoKeys == null) {
            infoCache.clear();
            return;
        }
        Cursor c = db.query("msgs", new String[]{"uri"}, "apple_id=?", new String[]{appleId}, null, null, null, "1");
        try {
            if (c.moveToFirst()) {
                markInfoDirty(c.getString(0));
            }
        } finally {
            c.close();
        }
    }

    /** Pre-loads {@link #infoKeys} off the UI thread so the first chat open does not hit SQLite. */
    public java.util.Set<String> ensureInfoKeys() {
        java.util.Set<String> keys = infoKeys;
        if (keys != null) return keys;
        keys = java.util.Collections.newSetFromMap(new java.util.concurrent.ConcurrentHashMap<String, Boolean>());
        Cursor c = getReadableDatabase().rawQuery(
                "SELECT uri FROM msgs WHERE flags != 0 OR reply_to IS NOT NULL", null);
        try {
            while (c.moveToNext()) keys.add(c.getString(0));
        } finally {
            c.close();
        }
        infoKeys = keys;
        return keys;
    }

    /**
     * How to draw the row stored at {@code uri}, or null when there's nothing special about it
     * (not an iMessage, or a plain one). Cheap enough for every bind: rows without flags or a
     * reply cost a set lookup.
     */
    public Info infoForUri(Uri uri) {
        if (uri == null) return null;
        String k = key(uri);
        java.util.Set<String> keys = ensureInfoKeys();
        if (!keys.contains(k)) return null;
        Info info = infoCache.get(k);
        if (info != null) return info;
        Cursor c = getReadableDatabase().rawQuery(
                "SELECT m.flags, m.text, m.reply_to, o.text FROM msgs m"
                        + " LEFT JOIN msgs o ON o.apple_id = m.reply_to"
                        + " WHERE m.uri = ? ORDER BY m.ts DESC LIMIT 1", new String[]{k});
        try {
            if (!c.moveToFirst()) return null;
            String quote = c.isNull(3) || TextUtils.isEmpty(c.getString(3)) ? null : c.getString(3);
            info = new Info(c.getInt(0), c.getString(1), c.getString(2), quote);
        } finally {
            c.close();
        }
        infoCache.put(k, info);
        return info;
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

    /** Keys (see {@link #key}) of every message that currently has a tapback. */
    public java.util.Set<String> reactedKeys() {
        java.util.Set<String> out = new java.util.HashSet<String>();
        Cursor c = getReadableDatabase().rawQuery(
                "SELECT DISTINCT m.uri FROM reactions r JOIN msgs m ON r.target = m.apple_id", null);
        try {
            while (c.moveToNext()) out.add(c.getString(0));
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
        db.delete("edits", "apple_id IN (SELECT apple_id FROM msgs WHERE ts < ?)", new String[]{cutoff});
        db.delete("msgs", "ts < ?", new String[]{cutoff});
        invalidateInfo();
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
