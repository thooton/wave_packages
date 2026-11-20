package com.sonim.borqs.launcher;

import android.os.Trace;
import android.view.View;
import android.view.ViewTreeObserver;

/** Skip the stock Quick Settings receiver setup and service queries until the page is shown. */
final class WaveQuickSettings implements ViewTreeObserver.OnPreDrawListener {
    private final QuickSettingFragment fragment;
    private final View page;
    private final ViewTreeObserver observer;
    private boolean listening;
    private boolean started;

    WaveQuickSettings(QuickSettingFragment fragment) {
        this.fragment = fragment;
        page = fragment.getView();
        // At onResume the PreferenceFragment already has its view. Keep stock behavior if not.
        if (page == null) {
            observer = null;
            start();
        } else {
            observer = page.getViewTreeObserver();
            listening = true;
            observer.addOnPreDrawListener(this);
        }
    }

    @Override
    public boolean onPreDraw() {
        // FragmentPagerAdapter keeps adjacent pages resumed. Its hint tracks the selected page,
        // whereas isShown() also checks whether the launcher has hidden the pager behind the tray.
        if (listening && fragment.getUserVisibleHint() && page.getWindowVisibility() == View.VISIBLE
                && page.isShown()) {
            removeListener();
            start();
        }
        return true;
    }

    private void start() {
        Trace.beginSection("WaveQuickSettings.activate");
        try {
            fragment.waveStartSettings();
            started = true;
        } finally {
            Trace.endSection();
        }
    }

    /** Cancel a pending start. If already started, let the fragment run its stock teardown. */
    boolean stop() {
        removeListener();
        return started;
    }

    private void removeListener() {
        if (!listening) return;
        listening = false;
        // Before attach, View uses a floating observer that is merged into the window's observer.
        ViewTreeObserver active = observer.isAlive() ? observer : page.getViewTreeObserver();
        active.removeOnPreDrawListener(this);
    }
}
