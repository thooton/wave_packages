package com.android.mms.data;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

/** Canonical recipient IDs are indexed. Resolve missing IDs together, without holding the cache lock over IPC. */
public final class WaveRecipientCache {
    private static final Uri CANONICAL = Uri.parse("content://mms-sms/canonical-addresses");
    private static final int BATCH = 500; // Below the target SQLite bind limit.

    private WaveRecipientCache() {}

    public static List<RecipientIdCache.Entry> getAddresses(Context context, Object lock,
                                                            Map<Long, String> cache, String ids) {
        List<Long> order = new ArrayList<>();
        if (ids != null) {
            StringTokenizer tokens = new StringTokenizer(ids);
            while (tokens.hasMoreTokens()) {
                try {
                    order.add(Long.parseLong(tokens.nextToken()));
                } catch (NumberFormatException ignored) {
                    // A broken recipient list must not stop the other recipients being resolved.
                }
            }
        }
        List<RecipientIdCache.Entry> result = new ArrayList<>(order.size());
        if (order.isEmpty()) return result;

        LinkedHashSet<Long> missing = new LinkedHashSet<>();
        synchronized (lock) {
            for (Long id : order) if (cache.get(id) == null) missing.add(id);
        }
        if (!missing.isEmpty()) {
            List<Long> keys = new ArrayList<>(missing);
            for (int i = 0; i < keys.size(); i += BATCH) {
                int end = Math.min(i + BATCH, keys.size());
                StringBuilder filter = new StringBuilder("_id IN (");
                String[] args = new String[end - i];
                for (int j = 0; j < args.length; j++) {
                    if (j > 0) filter.append(',');
                    filter.append('?');
                    args[j] = keys.get(i + j).toString();
                }
                filter.append(')');
                read(context, lock, cache, filter.toString(), args);
            }
        }
        synchronized (lock) {
            for (Long id : order) {
                String number = cache.get(id);
                if (!TextUtils.isEmpty(number)) result.add(new RecipientIdCache.Entry(id, number));
            }
        }
        return result;
    }

    public static void warm(Context context, Object lock, Map<Long, String> cache) {
        read(context, lock, cache, null, null);
    }

    private static void read(Context context, Object lock, Map<Long, String> cache,
                             String selection, String[] args) {
        // Copy the provider result outside the monitor. A bulk warmup must never lock the UI out.
        List<RecipientIdCache.Entry> loaded = new ArrayList<>();
        try (Cursor c = context.getContentResolver().query(CANONICAL, null, selection, args, null)) {
            if (c != null) {
                while (c.moveToNext()) loaded.add(new RecipientIdCache.Entry(c.getLong(0), c.getString(1)));
            }
        } catch (SQLiteException e) {
            Log.w("Mms", "Canonical address lookup failed", e);
            return;
        }
        synchronized (lock) {
            for (RecipientIdCache.Entry e : loaded) {
                // A concurrent match or stock updateNumbers() may have already supplied a newer value.
                if (!TextUtils.isEmpty(e.number)) cache.putIfAbsent(e.id, e.number);
            }
        }
    }
}
