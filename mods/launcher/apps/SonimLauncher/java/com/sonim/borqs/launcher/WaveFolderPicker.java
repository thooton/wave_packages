package com.sonim.borqs.launcher;

import android.graphics.Outline;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import java.util.ArrayList;

/**
 * Move (into folder): dims the chosen tray app in place, floats a small (~55%) shadowed copy of
 * its icon at the top-right of the currently targeted folder, and jumps strictly between folders.
 * OK drops the app at the end of the folder; Back returns it to its slot unchanged.
 */
final class WaveFolderPicker {
    interface Done {
        void done(LauncherActivity.Folder droppedInto);
    }

    private static final float RIDER_SCALE = 0.55f;
    private static final long RIDER_MS = 300L;
    private static final long EXIT_MS = 220L;

    final LauncherActivity activity;
    private final GridView grid;
    private final ArrayList list;
    private final DrawerAdapter adapter;
    private final LauncherActivity.Apps app;
    private final Done done;
    private LauncherActivity.Folder target;
    private ViewGroup overlayRoot;
    private ImageView rider;
    private int riderSize;
    private int downKey = -1;
    private boolean finished;

    WaveFolderPicker(LauncherActivity activity, GridView grid, ArrayList list, DrawerAdapter adapter,
            LauncherActivity.Apps app, Done done) {
        this.activity = activity;
        this.grid = grid;
        this.list = list;
        this.adapter = adapter;
        this.app = app;
        this.done = done;

        int appIdx;
        boolean[] flags;
        synchronized (list) {
            appIdx = list.indexOf(app);
            flags = folderFlags(list);
        }
        int targetIdx = appIdx < 0 ? -1 : WaveNav.nearestFolder(flags, appIdx, columns());
        if (targetIdx < 0) {
            finished = true;
            done.done(null);
            return;
        }
        synchronized (list) {
            Object t = targetIdx < list.size() ? list.get(targetIdx) : null;
            if (!(t instanceof LauncherActivity.Folder)) {
                finished = true;
                done.done(null);
                return;
            }
            this.target = (LauncherActivity.Folder) t;
        }
        adapter.setPickerState(app, target);
        select(targetIdx);
        createRider(app);
        positionRiderAfterLayout(true);
    }

    boolean isActive() {
        return !finished;
    }

    boolean key(KeyEvent e) {
        if (finished) return false;
        boolean down = e.getAction() == KeyEvent.ACTION_DOWN;
        int code = e.getKeyCode();
        switch (code) {
            case KeyEvent.KEYCODE_DPAD_LEFT:
                if (down) step(WaveNav.DIR_LEFT);
                return true;
            case KeyEvent.KEYCODE_DPAD_RIGHT:
                if (down) step(WaveNav.DIR_RIGHT);
                return true;
            case KeyEvent.KEYCODE_DPAD_UP:
                if (down) step(WaveNav.DIR_UP);
                return true;
            case KeyEvent.KEYCODE_DPAD_DOWN:
                if (down) step(WaveNav.DIR_DOWN);
                return true;
            case KeyEvent.KEYCODE_DPAD_CENTER:
            case KeyEvent.KEYCODE_ENTER:
            case KeyEvent.KEYCODE_BACK:
                if (down) {
                    if (e.getRepeatCount() == 0) downKey = code;
                } else if (downKey == code) {
                    finish(code != KeyEvent.KEYCODE_BACK, true);
                }
                return true;
            case KeyEvent.KEYCODE_MENU:
                // Ignore Menu while picking a folder so a menu doesn't open over the rider.
                return true;
            default:
                return false;
        }
    }

    private void step(int dir) {
        int curIdx;
        boolean[] flags;
        synchronized (list) {
            curIdx = list.indexOf(target);
            flags = folderFlags(list);
        }
        if (curIdx < 0) {
            finish(false, false);
            return;
        }
        int nextIdx = WaveNav.nextFolder(flags, curIdx, dir, columns());
        if (nextIdx == curIdx) return;
        synchronized (list) {
            if (nextIdx < 0 || nextIdx >= list.size()) return;
            Object next = list.get(nextIdx);
            if (!(next instanceof LauncherActivity.Folder)) return;
            target = (LauncherActivity.Folder) next;
        }
        adapter.setPickerState(app, target);
        select(nextIdx);
        positionRiderAfterLayout(false);
    }

    /** Ends folder picking; drop=true puts app into target folder, animate=false cleans up immediately. */
    void finish(boolean drop, boolean animate) {
        if (finished) return;
        finished = true;
        if (WaveTray.sFolderPicker == this) WaveTray.sFolderPicker = null;

        LauncherActivity.Folder chosen = null;
        if (drop) {
            WaveGridAnim.Snapshot snap = animate ? WaveGridAnim.capture(grid, list) : null;
            boolean moved = false;
            synchronized (list) {
                int ai = list.indexOf(app);
                if (ai >= 0 && list.contains(target)) {
                    list.remove(ai);
                    target.setAppListInsideFolder(app);
                    moved = true;
                }
            }
            adapter.setPickerState(null, null);
            if (moved) {
                chosen = target;
                int fi;
                synchronized (list) {
                    fi = list.indexOf(target);
                }
                if (animate) animateRiderExitToFolder(target);
                else removeRiderNow();
                done.done(chosen);
                select(fi);
                if (animate) WaveGridAnim.play(grid, list, snap, null, target, null);
                return;
            }
        }

        adapter.setPickerState(null, null);
        int ai;
        synchronized (list) {
            ai = list.indexOf(app);
        }
        select(ai);
        if (animate) animateRiderExitToApp();
        else removeRiderNow();
        done.done(null);
    }

    private int columns() {
        int c = grid.getNumColumns();
        return c > 0 ? c : 3;
    }

    private static boolean[] folderFlags(ArrayList list) {
        boolean[] flags = new boolean[list.size()];
        for (int i = 0; i < list.size(); i++) {
            flags[i] = list.get(i) instanceof LauncherActivity.Folder;
        }
        return flags;
    }

    private void select(int i) {
        if (i < 0) return;
        grid.setSelection(i);
    }

    private void createRider(LauncherActivity.Apps app) {
        try {
            View root = activity.findViewById(android.R.id.content);
            if (!(root instanceof ViewGroup)) return;
            overlayRoot = (ViewGroup) root;
            float d = activity.getResources().getDisplayMetrics().density;
            riderSize = Math.round(42 * d);

            ImageView iv = new ImageView(activity);
            iv.setImageDrawable(app.getIcon());
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            iv.setClickable(false);
            iv.setFocusable(false);
            iv.setElevation(5 * d);
            final float radius = 8 * d;
            iv.setOutlineProvider(new ViewOutlineProvider() {
                @Override
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), radius);
                }
            });
            iv.setAlpha(0f);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(riderSize, riderSize);
            overlayRoot.addView(iv, lp);
            rider = iv;
        } catch (RuntimeException e) {
            Log.w(WaveTray.TAG, "creating folder picker rider failed", e);
            rider = null;
        }
    }

    private void positionRiderAfterLayout(final boolean entering) {
        if (rider == null || overlayRoot == null) return;
        try {
            final ViewTreeObserver vto = grid.getViewTreeObserver();
            if (vto == null || !vto.isAlive()) return;
            vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
                @Override
                public boolean onPreDraw() {
                    ViewTreeObserver cur = grid.getViewTreeObserver();
                    if (cur != null && cur.isAlive()) cur.removeOnPreDrawListener(this);
                    if (!finished) moveRiderToTarget(entering);
                    return true;
                }
            });
        } catch (RuntimeException e) {
            Log.w(WaveTray.TAG, "scheduling rider layout failed", e);
        }
    }

    private void moveRiderToTarget(boolean entering) {
        if (rider == null || overlayRoot == null) return;
        try {
            float[] dst = targetCoords(target);
            if (dst == null) return;
            if (entering) {
                float[] src = iconCoords(app);
                if (src != null) {
                    rider.setTranslationX(src[0]);
                    rider.setTranslationY(src[1]);
                    rider.setScaleX(1f);
                    rider.setScaleY(1f);
                    rider.setAlpha(1f);
                } else {
                    rider.setTranslationX(dst[0]);
                    rider.setTranslationY(dst[1]);
                    rider.setScaleX(RIDER_SCALE);
                    rider.setScaleY(RIDER_SCALE);
                    rider.setAlpha(1f);
                    return;
                }
            }
            rider.animate().cancel();
            rider.animate()
                    .translationX(dst[0])
                    .translationY(dst[1])
                    .scaleX(RIDER_SCALE)
                    .scaleY(RIDER_SCALE)
                    .alpha(1f)
                    .setDuration(RIDER_MS)
                    .setInterpolator(WaveGridAnim.EASE)
                    .start();
        } catch (RuntimeException e) {
            Log.w(WaveTray.TAG, "moving rider failed", e);
        }
    }

    private void animateRiderExitToFolder(LauncherActivity.Folder f) {
        final ImageView iv = rider;
        final ViewGroup root = overlayRoot;
        rider = null;
        if (iv == null || root == null) return;
        try {
            float[] dst = iconCoords(f);
            iv.animate().cancel();
            if (dst != null) {
                iv.animate()
                        .translationX(dst[0])
                        .translationY(dst[1])
                        .scaleX(0.15f)
                        .scaleY(0.15f)
                        .alpha(0f)
                        .setDuration(EXIT_MS)
                        .setInterpolator(WaveGridAnim.EASE)
                        .withEndAction(() -> root.removeView(iv))
                        .start();
            } else {
                iv.animate()
                        .scaleX(0.15f)
                        .scaleY(0.15f)
                        .alpha(0f)
                        .setDuration(EXIT_MS)
                        .withEndAction(() -> root.removeView(iv))
                        .start();
            }
        } catch (RuntimeException e) {
            root.removeView(iv);
        }
    }

    private void animateRiderExitToApp() {
        final ImageView iv = rider;
        final ViewGroup root = overlayRoot;
        rider = null;
        if (iv == null || root == null) return;
        try {
            float[] dst = iconCoords(app);
            iv.animate().cancel();
            if (dst != null) {
                iv.animate()
                        .translationX(dst[0])
                        .translationY(dst[1])
                        .scaleX(1f)
                        .scaleY(1f)
                        .alpha(0f)
                        .setDuration(EXIT_MS)
                        .setInterpolator(WaveGridAnim.EASE)
                        .withEndAction(() -> root.removeView(iv))
                        .start();
            } else {
                root.removeView(iv);
            }
        } catch (RuntimeException e) {
            root.removeView(iv);
        }
    }

    private void removeRiderNow() {
        ImageView iv = rider;
        ViewGroup root = overlayRoot;
        rider = null;
        if (iv != null && root != null) {
            iv.animate().cancel();
            root.removeView(iv);
        }
    }

    /** Top-left in overlayRoot coords for the icon view inside item's cell. */
    private float[] iconCoords(Object item) {
        View cell = WaveGridAnim.childFor(grid, list, item);
        if (cell == null || overlayRoot == null) return null;
        View icon = cell.findViewById(WaveR.ID_ICON_IMAGE);
        View ref = icon != null ? icon : cell;
        int[] loc = new int[2];
        int[] rootLoc = new int[2];
        ref.getLocationInWindow(loc);
        overlayRoot.getLocationInWindow(rootLoc);
        float x = (loc[0] - rootLoc[0]) + (ref.getWidth() - riderSize) / 2f;
        float y = (loc[1] - rootLoc[1]) + (ref.getHeight() - riderSize) / 2f;
        return new float[] {x, y};
    }

    /** Top-right badge position on the target folder cell (for a riderSize view scaled to 0.55x). */
    private float[] targetCoords(LauncherActivity.Folder f) {
        View cell = WaveGridAnim.childFor(grid, list, f);
        if (cell == null || overlayRoot == null) return null;
        int[] cellLoc = new int[2];
        int[] rootLoc = new int[2];
        cell.getLocationInWindow(cellLoc);
        overlayRoot.getLocationInWindow(rootLoc);
        float d = activity.getResources().getDisplayMetrics().density;
        float scaled = riderSize * RIDER_SCALE;
        float cx = (cellLoc[0] - rootLoc[0]) + cell.getWidth() - scaled / 2f - 2 * d;
        float cy = (cellLoc[1] - rootLoc[1]) + scaled / 2f + 2 * d;
        return new float[] {cx - riderSize / 2f, cy - riderSize / 2f};
    }
}
