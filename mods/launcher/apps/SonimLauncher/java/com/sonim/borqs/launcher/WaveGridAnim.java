package com.sonim.borqs.launcher;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

/**
 * Lightweight FLIP and micro-animations for the tray and folder GridViews.
 * Never throws out to callers: any view-state surprise degrades to an instant update.
 */
final class WaveGridAnim {
    static final Interpolator EASE = new PathInterpolator(0.2f, 0.85f, 0.25f, 1f);
    static final long SLIDE_MS = 340L;
    static final long LIFT_MS = 220L;
    static final long BORN_MS = 240L;
    static final long GONE_MS = 240L;
    static final long BUMP_UP_MS = 150L;
    static final long BUMP_DOWN_MS = 230L;
    static final float CARRY_SCALE = 1.1f;

    private static final int MAX_ANIMATED_CELLS = 15;

    private WaveGridAnim() {
    }

    static final class Snapshot {
        final Map<Object, float[]> positions = new IdentityHashMap<>();
        final int firstVisible;
        final int childCount;

        Snapshot(int firstVisible, int childCount) {
            this.firstVisible = firstVisible;
            this.childCount = childCount;
        }
    }

    /** Captures each visible child's current visual top-left (including in-flight translation). */
    static Snapshot capture(GridView grid, ArrayList list) {
        if (grid == null || list == null) return null;
        try {
            int first = grid.getFirstVisiblePosition();
            int count = grid.getChildCount();
            if (count <= 0) return null;
            Snapshot snap = new Snapshot(first, count);
            synchronized (list) {
                for (int i = 0; i < count; i++) {
                    int pos = first + i;
                    if (pos < 0 || pos >= list.size()) continue;
                    View child = grid.getChildAt(i);
                    if (child == null) continue;
                    snap.positions.put(list.get(pos), new float[] {child.getX(), child.getY()});
                }
            }
            return snap;
        } catch (RuntimeException e) {
            Log.w(WaveTray.TAG, "anim capture failed", e);
            return null;
        }
    }

    /**
     * Schedules a one-shot OnPreDrawListener to slide moved cells from their captured slots,
     * scale in a newly added cell, bump a folder that received a drop, or animate a put-down.
     */
    static void play(final GridView grid, final ArrayList list, final Snapshot snap,
            final Object bornItem, final Object bumpItem, final Object settleItem) {
        if (grid == null || list == null) return;
        if (snap == null && bornItem == null && bumpItem == null && settleItem == null) return;
        try {
            final ViewTreeObserver vto = grid.getViewTreeObserver();
            if (vto == null || !vto.isAlive()) return;
            vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
                @Override
                public boolean onPreDraw() {
                    ViewTreeObserver cur = grid.getViewTreeObserver();
                    if (cur != null && cur.isAlive()) cur.removeOnPreDrawListener(this);
                    try {
                        runPreDraw(grid, list, snap, bornItem, bumpItem, settleItem);
                    } catch (RuntimeException e) {
                        Log.w(WaveTray.TAG, "anim predraw failed", e);
                    }
                    return true;
                }
            });
        } catch (RuntimeException e) {
            Log.w(WaveTray.TAG, "anim schedule failed", e);
        }
    }

    private static void runPreDraw(GridView grid, ArrayList list, Snapshot snap,
            Object bornItem, Object bumpItem, Object settleItem) {
        int first = grid.getFirstVisiblePosition();
        int count = grid.getChildCount();
        if (count <= 0) return;

        boolean allowSlides = snap != null
                && Math.abs(first - snap.firstVisible) <= Math.max(count, snap.childCount);
        List<View> slideViews = new ArrayList<>();
        List<float[]> slideDeltas = new ArrayList<>();

        synchronized (list) {
            for (int i = 0; i < count; i++) {
                int pos = first + i;
                if (pos < 0 || pos >= list.size()) continue;
                Object item = list.get(pos);
                View child = grid.getChildAt(i);
                if (child == null) continue;

                if (allowSlides) {
                    float[] old = snap.positions.get(item);
                    if (old != null) {
                        float dx = old[0] - child.getLeft();
                        float dy = old[1] - child.getTop();
                        if (Math.abs(dx) > 0.5f || Math.abs(dy) > 0.5f) {
                            slideViews.add(child);
                            slideDeltas.add(new float[] {dx, dy});
                        }
                    }
                }

                if (item == bornItem) {
                    child.setScaleX(0.35f);
                    child.setScaleY(0.35f);
                    child.setAlpha(0f);
                    child.animate()
                            .scaleX(1f)
                            .scaleY(1f)
                            .alpha(1f)
                            .setDuration(BORN_MS)
                            .setInterpolator(EASE)
                            .start();
                } else if (item == bumpItem) {
                    child.setScaleX(1f);
                    child.setScaleY(1f);
                    child.animate()
                            .scaleX(1.14f)
                            .scaleY(1.14f)
                            .setDuration(BUMP_UP_MS)
                            .setInterpolator(EASE)
                            .withEndAction(() -> child.animate()
                                    .scaleX(1f)
                                    .scaleY(1f)
                                    .setDuration(BUMP_DOWN_MS)
                                    .setInterpolator(EASE)
                                    .start())
                            .start();
                } else if (item == settleItem) {
                    child.setScaleX(CARRY_SCALE);
                    child.setScaleY(CARRY_SCALE);
                    child.animate()
                            .scaleX(1f)
                            .scaleY(1f)
                            .setDuration(LIFT_MS)
                            .setInterpolator(EASE)
                            .start();
                }
            }
        }

        if (slideViews.size() <= MAX_ANIMATED_CELLS) {
            for (int i = 0; i < slideViews.size(); i++) {
                View v = slideViews.get(i);
                float[] d = slideDeltas.get(i);
                v.setTranslationX(d[0]);
                v.setTranslationY(d[1]);
                v.animate()
                        .translationX(0f)
                        .translationY(0f)
                        .setDuration(SLIDE_MS)
                        .setInterpolator(EASE)
                        .start();
            }
        }
    }

    /** Animates a cell lifting up slightly when Move starts. */
    static void lift(final GridView grid, final ArrayList list, final Object item) {
        if (grid == null || list == null || item == null) return;
        try {
            final ViewTreeObserver vto = grid.getViewTreeObserver();
            if (vto == null || !vto.isAlive()) return;
            vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
                @Override
                public boolean onPreDraw() {
                    ViewTreeObserver cur = grid.getViewTreeObserver();
                    if (cur != null && cur.isAlive()) cur.removeOnPreDrawListener(this);
                    try {
                        View child = childFor(grid, list, item);
                        if (child != null) {
                            child.setScaleX(1f);
                            child.setScaleY(1f);
                            child.animate()
                                    .scaleX(CARRY_SCALE)
                                    .scaleY(CARRY_SCALE)
                                    .setDuration(LIFT_MS)
                                    .setInterpolator(EASE)
                                    .start();
                        }
                    } catch (RuntimeException e) {
                        Log.w(WaveTray.TAG, "anim lift failed", e);
                    }
                    return true;
                }
            });
        } catch (RuntimeException e) {
            Log.w(WaveTray.TAG, "anim lift schedule failed", e);
        }
    }

    /** Draws a temporary shrinking ghost of a cell that is about to be removed from the grid. */
    static void shrinkOut(Activity activity, GridView grid, ArrayList list, Object item) {
        if (activity == null || grid == null || list == null || item == null) return;
        try {
            View child = childFor(grid, list, item);
            if (child == null || child.getWidth() <= 0 || child.getHeight() <= 0) return;
            View root = activity.findViewById(android.R.id.content);
            if (!(root instanceof ViewGroup)) return;
            final ViewGroup content = (ViewGroup) root;

            int[] childLoc = new int[2];
            int[] contentLoc = new int[2];
            child.getLocationInWindow(childLoc);
            content.getLocationInWindow(contentLoc);

            Bitmap bmp = Bitmap.createBitmap(child.getWidth(), child.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bmp);
            child.draw(canvas);

            final ImageView ghost = new ImageView(activity);
            ghost.setImageBitmap(bmp);
            ghost.setClickable(false);
            ghost.setFocusable(false);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(child.getWidth(), child.getHeight());
            ghost.setTranslationX(childLoc[0] - contentLoc[0]);
            ghost.setTranslationY(childLoc[1] - contentLoc[1]);
            content.addView(ghost, lp);
            ghost.animate()
                    .scaleX(0.3f)
                    .scaleY(0.3f)
                    .alpha(0f)
                    .setDuration(GONE_MS)
                    .setInterpolator(EASE)
                    .withEndAction(() -> {
                        content.removeView(ghost);
                        bmp.recycle();
                    })
                    .start();
        } catch (RuntimeException e) {
            Log.w(WaveTray.TAG, "anim shrinkOut failed", e);
        }
    }

    static View childFor(GridView grid, ArrayList list, Object item) {
        if (grid == null || list == null || item == null) return null;
        int pos;
        synchronized (list) {
            pos = list.indexOf(item);
        }
        if (pos < 0) return null;
        int first = grid.getFirstVisiblePosition();
        int idx = pos - first;
        if (idx < 0 || idx >= grid.getChildCount()) return null;
        return grid.getChildAt(idx);
    }
}
