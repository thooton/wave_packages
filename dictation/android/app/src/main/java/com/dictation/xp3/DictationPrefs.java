package com.dictation.xp3;

import android.content.Context;
import android.content.SharedPreferences;

/** Persistent user preferences for the Dictation app. */
public final class DictationPrefs {

    private static final String PREFS = "dictation";
    private static final String KEY_ENABLED = "enabled";
    private static final String KEY_TIER = "tier";
    private static final String KEY_THREADS = "threads";
    private static final String KEY_DECODE_NICE = "decode_nice";

    public static final String DEFAULT_TIER = "stream_c16r4";
    public static final int DEFAULT_THREADS = 4;
    /**
     * THREAD_PRIORITY_AUDIO for the decode pool while a session runs. Measured on the XP3800
     * (matched 4T live, clips 06/03/01): live RTF 1.13/1.23/1.23 -> 0.87/0.87/0.85, end-to-final
     * 3.1 s -> 1.6 s, Messages UI frames no worse. 0 turns it off.
     */
    public static final int DEFAULT_DECODE_NICE = DecodeScheduling.MOST_URGENT;

    private DictationPrefs() {}

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static boolean isEnabled(Context context) {
        return prefs(context).getBoolean(KEY_ENABLED, false);
    }

    public static void setEnabled(Context context, boolean enabled) {
        prefs(context).edit().putBoolean(KEY_ENABLED, enabled).apply();
    }

    public static String getTier(Context context) {
        String tier = prefs(context).getString(KEY_TIER, DEFAULT_TIER);
        return (tier == null || tier.length() == 0) ? DEFAULT_TIER : tier;
    }

    public static void setTier(Context context, String tier) {
        prefs(context).edit().putString(KEY_TIER, tier == null ? "" : tier).apply();
    }

    public static int getThreads(Context context) {
        int n = prefs(context).getInt(KEY_THREADS, DEFAULT_THREADS);
        return n < 1 ? DEFAULT_THREADS : Math.min(n, 4);
    }

    public static void setThreads(Context context, int threads) {
        prefs(context).edit().putInt(KEY_THREADS, Math.max(1, Math.min(threads, 4))).apply();
    }

    /**
     * Decode-thread nice for one session, clamped to [-16, 0]. Defaults to
     * {@link #DEFAULT_DECODE_NICE}; a stored 0 leaves scheduling untouched.
     */
    public static int getDecodeNice(Context context) {
        return DecodeScheduling.clamp(prefs(context).getInt(KEY_DECODE_NICE, DEFAULT_DECODE_NICE));
    }
}
