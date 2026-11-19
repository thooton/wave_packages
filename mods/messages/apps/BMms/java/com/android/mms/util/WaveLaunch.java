package com.android.mms.util;

import android.util.Log;
import android.view.ViewTreeObserver;
import android.widget.ListView;

/** Opt-in cold-launch markers. Never log message contents, addresses or IDs. */
public final class WaveLaunch {
    private static final String TAG = "WaveLaunch";
    public static final boolean ENABLED = Log.isLoggable(TAG, Log.DEBUG);

    private WaveLaunch() {}

    public static void mark(String stage) {
        if (ENABLED) Log.d(TAG, stage);
    }

    /** Layout is ready to draw, not necessarily presented on screen yet. */
    public static void awaitRows(ListView list) {
        awaitRows(list, "rows_ready");
    }

    public static void awaitRows(ListView list, String stage) {
        ViewTreeObserver observer = list.getViewTreeObserver();
        observer.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override public boolean onPreDraw() {
                if (!list.isShown() || list.getChildCount() == 0) return true;
                list.getViewTreeObserver().removeOnPreDrawListener(this);
                mark(stage);
                return true;
            }
        });
    }
}
