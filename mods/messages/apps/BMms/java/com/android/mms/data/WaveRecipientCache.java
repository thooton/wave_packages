package com.android.mms.data;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

import java.util.ArrayList;
import java.util.Collections;
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
        if (ids == null || ids.isEmpty()) return Collections.emptyList();

        // PERF: 1:1 fast path (~90% of conversations) — single integer ID with no whitespace.
        // Avoids StringTokenizer, ArrayList, LinkedHashSet, and double lock acquisition on cache hits.
        if (ids.indexOf(' ') < 0 && ids.indexOf('\t') < 0 && ids.indexOf('\n') < 0) {
            try {
                long singleId = Long.parseLong(ids);
                Long key = Long.valueOf(singleId);
                String hit;
                synchronized (lock) {
                    hit = cache.get(key);
                }
                if (hit != null) {
                    if (hit.isEmpty()) return Collections.emptyList();
                    List<RecipientIdCache.Entry> one = new ArrayList<>(1);
                    one.add(new RecipientIdCache.Entry(singleId, hit));
                    return one;
                }
            } catch (NumberFormatException ignored) {
                // Fall through to full tokenizer path.
            }
        }

        List<Long> order = new ArrayList<>(4);
        StringTokenizer tokens = new StringTokenizer(ids);
        while (tokens.hasMoreTokens()) {
            try {
                order.add(Long.parseLong(tokens.nextToken()));
            } catch (NumberFormatException ignored) {
                // A broken recipient list must not stop the other recipients being resolved.
            }
        }
        int n = order.size();
        if (n == 0) return Collections.emptyList();

        List<RecipientIdCache.Entry> result = new ArrayList<>(n);
        LinkedHashSet<Long> missing = null;
        synchronized (lock) {
            for (int i = 0; i < n; i++) {
                Long id = order.get(i);
                String number = cache.get(id);
                if (number == null) {
                    if (missing == null) missing = new LinkedHashSet<>();
                    missing.add(id);
                } else if (missing == null && !number.isEmpty()) {
                    result.add(new RecipientIdCache.Entry(id, number));
                }
            }
        }
        if (missing == null) return result;

        result.clear();
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
        synchronized (lock) {
            for (int i = 0; i < n; i++) {
                Long id = order.get(i);
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
