package com.android.mms.ui;

import android.content.Context;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.LruCache;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/**
 * Fast, allocation-free drop-in replacement for stock MessageUtils.formatTimeStampString().
 * Eliminates 2x deprecated android.text.format.Time allocations + JNI timezone queries +
 * ICU DateUtils formatting on every inbox and conversation row bind.
 */
public final class WaveTimeFormat {
    private static final long MINUTE_MS = 60_000L;
    private static final long HOUR_MS = 3_600_000L;
    private static final long WEEK_MS = 604_800_000L;

    // Exact stock MessageUtils.formatTimeStampString flags:
    private static final int FLAGS_TODAY = 0x80b01;
    private static final int FLAGS_WEEK = 0x80b03;
    private static final int FLAGS_THIS_YEAR = 0x80b11;
    private static final int FLAGS_OTHER_YEAR = 0x80b14;

    // Stock string / plural resource IDs in BMms resources.arsc:
    private static final int STR_JUST_NOW = 0x7f070365;
    private static final int PLURAL_MINS_AGO = 0x7f0d0005;

    private static final Object LOCK = new Object();
    private static long sDayStartMs;
    private static long sDayEndMs;
    private static long sYearStartMs;
    private static long sYearEndMs;
    private static String sTzId;
    private static Locale sLocale;
    private static boolean sIs24Hour;
    private static long sEnvCheckedAtMs;
    private static String sJustNow;
    private static final LruCache<Long, String> CACHE = new LruCache<>(512);

    private WaveTimeFormat() {}

    public static String format(Context ctx, long when, boolean fullFormat) {
        long now = System.currentTimeMillis();
        ensureBoundaries(ctx, now);

        int flags;
        int bucket;
        if (fullFormat) {
            flags = FLAGS_THIS_YEAR;
            bucket = 4;
        } else {
            long age = now - when;
            if (age < MINUTE_MS) {
                String s = sJustNow;
                if (s == null) {
                    s = ctx.getResources().getString(STR_JUST_NOW);
                    sJustNow = s;
                }
                return s;
            }
            if (age < HOUR_MS) {
                int mins = (int) (age / MINUTE_MS);
                String fmt = ctx.getResources().getQuantityString(PLURAL_MINS_AGO, mins);
                return String.format(fmt, (long) mins);
            }
            if (when >= sDayStartMs && when < sDayEndMs) {
                flags = FLAGS_TODAY;
                bucket = 0;
            } else if (age < WEEK_MS) {
                flags = FLAGS_WEEK;
                bucket = 1;
            } else if (when >= sYearStartMs && when < sYearEndMs) {
                flags = FLAGS_THIS_YEAR;
                bucket = 2;
            } else {
                flags = FLAGS_OTHER_YEAR;
                bucket = 3;
            }
        }

        // Minute granularity covers all formatted outputs (hours:mins / day / date).
        long key = ((when / MINUTE_MS) << 3) | bucket;
        synchronized (LOCK) {
            String cached = CACHE.get(key);
            if (cached != null) return cached;
        }
        String formatted = DateUtils.formatDateTime(ctx, when, flags);
        synchronized (LOCK) {
            CACHE.put(key, formatted);
        }
        return formatted;
    }

    private static void ensureBoundaries(Context ctx, long now) {
        // Fast path: same day and checked environment within last 5 seconds.
        if (now >= sDayStartMs && now < sDayEndMs && (now - sEnvCheckedAtMs) < 5_000L) {
            return;
        }
        synchronized (LOCK) {
            TimeZone tz = TimeZone.getDefault();
            String tzId = tz.getID();
            Locale locale = Locale.getDefault();
            boolean is24 = DateFormat.is24HourFormat(ctx);
            boolean envChanged = !tzId.equals(sTzId) || !locale.equals(sLocale) || is24 != sIs24Hour;
            boolean dayChanged = now < sDayStartMs || now >= sDayEndMs;
            sEnvCheckedAtMs = now;
            if (!envChanged && !dayChanged) return;

            if (envChanged) {
                sTzId = tzId;
                sLocale = locale;
                sIs24Hour = is24;
                sJustNow = null;
            }
            CACHE.evictAll();

            Calendar cal = Calendar.getInstance(tz, locale);
            cal.setTimeInMillis(now);
            cal.set(Calendar.HOUR_OF_DAY, 0);
            cal.set(Calendar.MINUTE, 0);
            cal.set(Calendar.SECOND, 0);
            cal.set(Calendar.MILLISECOND, 0);
            sDayStartMs = cal.getTimeInMillis();
            cal.add(Calendar.DAY_OF_YEAR, 1);
            sDayEndMs = cal.getTimeInMillis();

            cal.setTimeInMillis(now);
            cal.set(Calendar.MONTH, Calendar.JANUARY);
            cal.set(Calendar.DAY_OF_MONTH, 1);
            cal.set(Calendar.HOUR_OF_DAY, 0);
            cal.set(Calendar.MINUTE, 0);
            cal.set(Calendar.SECOND, 0);
            cal.set(Calendar.MILLISECOND, 0);
            sYearStartMs = cal.getTimeInMillis();
            cal.add(Calendar.YEAR, 1);
            sYearEndMs = cal.getTimeInMillis();
        }
    }
}
