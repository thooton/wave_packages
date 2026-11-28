package com.sonim.borqs.launcher;

import android.app.Activity;
import android.view.KeyEvent;
import android.widget.GridView;
import java.util.ArrayList;

/**
 * Launcher Improved: an entry being moved within its current screen (the tray or a folder).
 * The d-pad carries it one slot at a time while other entries slide out of its way (FLIP
 * animation via WaveGridAnim). Center, Enter or Menu puts it down (on release, so the press that
 * chose Move doesn't drop it immediately); Back restores everything as it was.
 */
final class WaveMover {
    interface Done {
        void done(boolean kept);
    }

    final Activity activity;
    private final GridView grid;
    private final ArrayList list;
    private final DrawerAdapter adapter;
    private final Object item;
    private final ArrayList original;
    private final Done done;
    private int downKey = -1;

    WaveMover(Activity activity, GridView grid, ArrayList list, DrawerAdapter adapter, Object item, Done done) {
        this.activity = activity;
        this.grid = grid;
        this.list = list;
        this.adapter = adapter;
        this.item = item;
        this.original = new ArrayList(list);
        this.done = done;
        grid.setClipChildren(false);
        adapter.setMoving(item);
        select(list.indexOf(item));
        WaveGridAnim.lift(grid, list, item);
    }

    /** Every key while moving; true when it was ours. */
    boolean key(KeyEvent e) {
        boolean down = e.getAction() == KeyEvent.ACTION_DOWN;
        int code = e.getKeyCode();
        switch (code) {
            case KeyEvent.KEYCODE_DPAD_LEFT:
                if (down) step(-1);
                return true;
            case KeyEvent.KEYCODE_DPAD_RIGHT:
                if (down) step(1);
                return true;
            case KeyEvent.KEYCODE_DPAD_UP:
                if (down) step(-columns());
                return true;
            case KeyEvent.KEYCODE_DPAD_DOWN:
                if (down) step(columns());
                return true;
            case KeyEvent.KEYCODE_DPAD_CENTER:
            case KeyEvent.KEYCODE_ENTER:
            case KeyEvent.KEYCODE_MENU:
            case KeyEvent.KEYCODE_BACK:
                // Only a press that started while moving counts: the release of the key that
                // chose Move in the menu must not drop it straight away.
                if (down) {
                    if (e.getRepeatCount() == 0) downKey = code;
                } else if (downKey == code) {
                    finish(code != KeyEvent.KEYCODE_BACK);
                }
                return true;
            default:
                return false;
        }
    }

    private int columns() {
        int c = grid.getNumColumns();
        return c > 0 ? c : 1;
    }

    private void step(int delta) {
        int i;
        synchronized (list) {
            i = list.indexOf(item);
        }
        if (i < 0) {
            finish(true);
            return;
        }
        int j = Math.max(0, Math.min(list.size() - 1, i + delta));
        if (j != i) {
            WaveGridAnim.Snapshot snap = WaveGridAnim.capture(grid, list);
            synchronized (list) {
                list.remove(i);
                list.add(j, item);
            }
            adapter.notifyDataSetChanged();
            select(j);
            WaveGridAnim.play(grid, list, snap, null, null, null);
        } else {
            select(j);
        }
    }

    private void select(int i) {
        if (i < 0) return;
        grid.setSelection(i);
    }

    /** Ends the move: kept (put down where it is) or not (everything back as it was). */
    void finish(boolean keep) {
        if (WaveTray.sMover != this) return;
        WaveTray.sMover = null;
        boolean changed = !original.equals(list);
        WaveGridAnim.Snapshot snap = (!keep && changed) ? WaveGridAnim.capture(grid, list) : null;
        if (!keep && changed) {
            synchronized (list) {
                list.clear();
                list.addAll(original);
            }
        }
        grid.setClipChildren(true);
        adapter.setMoving(null);
        select(list.indexOf(item));
        WaveGridAnim.play(grid, list, snap, null, null, item);
        done.done(keep && changed);
    }
}
