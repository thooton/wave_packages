package com.android.mms.data;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.telephony.PhoneNumberUtils;
import com.android.mms.MmsApp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/** A process-local snapshot of the provider's phone lookup index (never includes photo bytes). */
public final class WavePhoneSnapshot {
    private static final Uri URI = Uri.parse("content://com.android.contacts/data?wave_phone_map=1");
    private static final String[] VERSION = {"wave_phone_map_v1"};
    private static final String[] COLUMNS = {"_id", "data1", "data3", "display_name", "contact_id",
            "contact_presence", "contact_status", "data4", "photo_id", "lookup", "send_to_voicemail"};
    private static final String TAG = "WavePhoneMap";
    private static final AtomicInteger generation = new AtomicInteger();
    private static volatile Snapshot snapshot;
    private static volatile int attempted = -1;

    private WavePhoneSnapshot() {}

    public static void invalidate() {
        generation.incrementAndGet();
    }

    /** Background startup prefetch so ContactsProvider I/O overlaps MmsApp and Activity setup. */
    public static void primeAsync(Context context) {
        if (attempted == generation.get()) return;
        final Context app = context.getApplicationContext();
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    prime(app);
                } catch (Throwable ignored) {}
            }
        }, "wave-phone-snap");
        t.setDaemon(true);
        t.setPriority(Thread.MAX_PRIORITY - 1);
        t.start();
    }

    /** Start-up reads one cursor before stock conversation resolution begins. */
    public static synchronized void prime(Context context) {
        int version = generation.get();
        if (attempted == version) return;
        attempted = version;
        long start = SystemClock.uptimeMillis();
        Map<String, List<Entry>> byMinMatch = new HashMap<>();
        int rows = 0;
        try (Cursor c = context.getContentResolver().query(URI, VERSION, null, null, null)) {
            if (c == null || !"normalized_number".equals(c.getColumnName(0))
                    || !"min_match".equals(c.getColumnName(1)) || c.getColumnCount() != COLUMNS.length + 2) return;
            for (int i = 0; i < COLUMNS.length; i++) {
                if (!COLUMNS[i].equals(c.getColumnName(i + 2))) return;
            }
            while (c.moveToNext()) {
                String key = c.getString(1);
                String number = c.getString(0);
                if (key == null || number == null) return;
                Object[] fields = {c.getLong(2), c.getString(3), c.getString(4), c.getString(5),
                        c.getLong(6), c.getInt(7), c.getString(8), c.getString(9), c.getLong(10),
                        c.getString(11), c.getInt(12)};
                List<Entry> bucket = byMinMatch.get(key);
                if (bucket == null) byMinMatch.put(key, bucket = new ArrayList<>(1));
                bucket.add(new Entry(number, fields));
                rows++;
            }
        } catch (SecurityException e) {
            // Permissions not granted yet; allow retry once granted.
            attempted = -1;
            return;
        } catch (RuntimeException e) {
            // A stock provider rejects our projection. Preserve the normal lookup path.
            if (Log.isLoggable(TAG, Log.DEBUG)) Log.d(TAG, "snapshot unavailable");
            return;
        }
        snapshot = new Snapshot(version, byMinMatch);
        if (Log.isLoggable(TAG, Log.DEBUG)) {
            Log.d(TAG, "snapshot rows=" + rows + " read_ms=" + (SystemClock.uptimeMillis() - start));
        }
    }

    /** Resolve phone-only display names without waiting for the stock metadata/photo worker. */
    public static String formatNames(ContactList contacts, String separator) {
        Snapshot current = snapshot;
        if (current == null || current.version != generation.get()) return contacts.formatNames(separator);
        StringBuilder result = new StringBuilder();
        boolean first = true;
        for (Contact contact : contacts) {
            if (!first) result.append(separator);
            first = false;
            String number = contact.getNumber();
            String name = null;
            if (number != null && number.length() != 0 && !contact.isMe()
                    && number.indexOf('@') < 0 && number.indexOf(':') < 0 && number.indexOf(';') < 0) {
                name = current.names.get(number);
                if (name == null) {
                    String normalized = PhoneNumberUtils.normalizeNumber(number);
                    String key = PhoneNumberUtils.toCallerIDMinMatch(normalized);
                    if (key != null && !key.isEmpty()) {
                        List<Entry> bucket = current.rows.get(key);
                        MmsApp app = MmsApp.getApplication();
                        String e164 = bucket == null || app == null ? null : PhoneNumberUtils.formatNumberToE164(
                                number, app.getCurrentCountryIso());
                        Entry hit = match(bucket, normalized, e164);
                        if (hit != COLLISION) {
                            name = hit == null ? number : (String) hit.fields[3];
                            if (name == null || name.isEmpty()) name = number;
                            // Bound memoization of unknown numbers, independent of address book size.
                            if (current.names.size() < 2048) current.names.putIfAbsent(number, name);
                        }
                    }
                }
            }
            result.append(name == null ? contact.getName() : name);
        }
        return result.toString();
    }

    private static final Entry COLLISION = new Entry(null, null);

    private static Entry match(List<Entry> bucket, String normalized, String e164) {
        Entry hit = null;
        if (bucket != null) {
            for (Entry entry : bucket) {
                if (!normalized.endsWith(entry.number) && !entry.number.equals(e164)) continue;
                if (hit != null && hit.id() != entry.id()) return COLLISION;
                hit = entry;
            }
        }
        return hit;
    }

    /** Null = defer to stock. Empty cursor = the indexed snapshot confirms no match. */
    public static Cursor lookup(Context context, String normalized, String minMatch, String e164) {
        int version = generation.get();
        Snapshot current = snapshot;
        if ((current == null || current.version != version) && attempted != version
                && Looper.myLooper() != Looper.getMainLooper()) {
            prime(context);
            current = snapshot;
        }
        if (current == null || current.version != generation.get()) return null;
        Entry hit = match(current.rows.get(minMatch), normalized, e164);
        if (hit == COLLISION) return null;
        MatrixCursor result = new MatrixCursor(COLUMNS, hit == null ? 0 : 1);
        if (hit != null) result.addRow(hit.fields);
        return result;
    }

    private static final class Entry {
        final String number;
        final Object[] fields;
        Entry(String number, Object[] fields) {
            this.number = number;
            this.fields = fields;
        }
        long id() { return (Long) fields[0]; }
    }

    private static final class Snapshot {
        final int version;
        final Map<String, List<Entry>> rows;
        final ConcurrentHashMap<String, String> names = new ConcurrentHashMap<>();
        Snapshot(int version, Map<String, List<Entry>> rows) {
            this.version = version;
            this.rows = rows;
        }
    }
}
