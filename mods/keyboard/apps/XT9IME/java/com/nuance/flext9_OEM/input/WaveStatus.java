package com.nuance.flext9_OEM.input;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.util.Log;
import java.lang.reflect.Method;

/**
 * IME.showStatusIcon is a synchronous call into system_server that the stock IME makes
 * one to three times per key press, on the key handling path. The calls are made here,
 * in the same order and with the same arguments, on a background thread.
 */
public final class WaveStatus {
    private static final String TAG = "WaveKeyboard";
    private static Handler sHandler;
    private static Method sShow;

    private WaveStatus() { }

    /** IME.showStatusIcon(int). */
    public static void show(final Object ime, final int iconId) {
        try {
            if (sHandler == null) {
                sShow = ime.getClass().getMethod("wave$showStatusIcon", int.class);
                HandlerThread t = new HandlerThread("WaveStatus", Process.THREAD_PRIORITY_DEFAULT);
                t.start();
                sHandler = new Handler(t.getLooper());
            }
            sHandler.post(new Runnable() {
                @Override public void run() {
                    try {
                        sShow.invoke(ime, iconId);
                    } catch (Throwable t) {
                        Log.w(TAG, "showStatusIcon", t);
                    }
                }
            });
        } catch (Throwable t) {
            Log.e(TAG, "status hook", t);
            try {
                sShow.invoke(ime, iconId);
            } catch (Throwable ignored) { }
        }
    }
}
