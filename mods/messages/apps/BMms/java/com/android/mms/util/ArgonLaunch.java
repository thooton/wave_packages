package com.android.mms.util;

import android.util.Log;
import android.view.ViewTreeObserver;
import android.widget.ListView;

/** Opt-in cold-launch markers. Never log message contents, addresses or IDs. */
public final class ArgonLaunch {
    private static final String TAG = "ArgonLaunch";
    public static final boolean ENABLED = Log.isLoggable(TAG, Log.DEBUG);

    private ArgonLaunch() {}

    public static void mark(String stage) {
        if (ENABLED) Log.d(TAG, stage);
    }

    /** Layout is ready to draw, not necessarily presented on screen yet. */
    public static void awaitRows(ListView list) {
        ViewTreeObserver observer = list.getViewTreeObserver();
        observer.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override public boolean onPreDraw() {
                if (!list.isShown() || list.getChildCount() == 0) return true;
                list.getViewTreeObserver().removeOnPreDrawListener(this);
                mark("rows_ready");
                return true;
            }
        });
    }
}
