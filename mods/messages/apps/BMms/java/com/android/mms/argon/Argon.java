package com.android.mms.argon;

import android.util.Log;

import java.lang.reflect.Method;

/** Small shared helpers for Messages Argon code (system properties, logging). */
public final class Argon {
    public static final String TAG = "Argon";

    private Argon() {}

    /** android.os.SystemProperties.get (hidden API) via reflection; "" on failure. */
    public static String prop(String key) {
        try {
            Class<?> c = Class.forName("android.os.SystemProperties");
            Method m = c.getMethod("get", String.class, String.class);
            return (String) m.invoke(null, key, "");
        } catch (Throwable t) {
            return "";
        }
    }

    /**
     * Test network for MMS (development only): when the system property
     * {@code debug.argon.mms.testnet} is "1", MMS transactions skip bringing up the carrier MMS
     * APN and talk HTTP over the default route (adb reverse to a fake MMSC on the host).
     * {@code debug.argon.mms.mmsc} overrides the MMSC URL. Never set on a production phone.
     */
    public static boolean mmsTestNet() {
        return "1".equals(prop("debug.argon.mms.testnet"));
    }

    public static String mmsTestMmsc() {
        String s = prop("debug.argon.mms.mmsc");
        return s.isEmpty() ? null : s;
    }

    /**
     * Test network for RCS (development only): {@code debug.argon.rcs.testnet=1} makes the engine
     * consider the network available even with no Wi-Fi/data, because the mock RCS network is
     * reached through adb reverse on 127.0.0.1 (tools/rcs/device_test.sh).
     */
    public static boolean rcsTestNet() {
        return "1".equals(prop("debug.argon.rcs.testnet"));
    }

    public static void i(String msg) { Log.i(TAG, msg); }
    public static void w(String msg, Throwable t) { Log.w(TAG, msg, t); }
}
