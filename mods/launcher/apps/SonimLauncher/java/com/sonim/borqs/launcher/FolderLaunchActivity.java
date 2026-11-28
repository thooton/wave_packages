package com.sonim.borqs.launcher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.widget.GridView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;

/**
 * Launcher Improved: replaces the stock folder screen (FolderLaunchActivity + its
 * FolderDrawerClickListener). Same dialog, grid and keys, with the shared WaveMenu. It follows
 * the folder by name, so a rebuild of the tray (an app installed or removed) or an edit keeps it
 * current, and it closes when the folder is gone or empty.
 */
public class FolderLaunchActivity extends Activity implements AppListChangeListener {
    private static final String TAG = "WaveFolder";

    private AccessArrayList mAccessArrayList;
    private ArrayList mApps;
    private DrawerAdapter mAdapter;
    private GridView mGrid;
    private TextView mTitle;
    private String mFolderName;

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        mAccessArrayList = (AccessArrayList) getApplicationContext();
        setContentView(WaveR.LAYOUT_FOLDER_TRAY);
        mGrid = (GridView) findViewById(WaveR.ID_FOLDER_GRID);
        mTitle = (TextView) findViewById(WaveR.ID_FOLDER_TITLE);
        mFolderName = getIntent().getStringExtra("folder");
        mApps = currentList();
        if (mApps == null || mApps.isEmpty()) {
            finish();
            return;
        }
        mTitle.setText(mFolderName);
        mAdapter = new DrawerAdapter(this, mApps);
        mGrid.setAdapter(mAdapter);
        mGrid.setOnItemClickListener((parent, view, i, id) -> launch(i));
        mAccessArrayList.registerForAppListChange(this);
    }

    /** The folder's apps now: found by name in the tray, else what the tray handed over. */
    private ArrayList currentList() {
        LauncherActivity l = WaveTray.launcher();
        if (WaveTray.active() && l != null) {
            LauncherActivity.Folder f = WaveTray.findFolder(LauncherActivity.waveList(l), mFolderName);
            return f == null ? null : f.getAppListInsideFolder();
        }
        return mAccessArrayList.getAppsInsideFolder();
    }

    private void onFolderRenamed(String newName) {
        mFolderName = newName;
        if (mTitle != null) mTitle.setText(newName);
    }

    @Override
    protected void onDestroy() {
        if (mAccessArrayList != null) mAccessArrayList.unregisterForAppListChange(this);
        super.onDestroy();
    }

    @Override
    protected void onPause() {
        super.onPause();
        WaveMover m = WaveTray.sMover;
        if (m != null && m.activity == this) m.finish(true);
    }

    @Override
    public void onListChanged() {
        ArrayList now = currentList();
        if (now == null || now.isEmpty()) {
            finish();
            return;
        }
        if (now != mApps) {
            mApps = now;
            mAdapter.setList(now);
        } else {
            mAdapter.notifyDataSetChanged();
        }
    }

    private void launch(int i) {
        if (i < 0 || i >= mApps.size()) return;
        LauncherActivity.Apps app = (LauncherActivity.Apps) mApps.get(i);
        if (Settings.Global.getInt(getContentResolver(), Settings.Global.AIRPLANE_MODE_ON, 0) == 1
                && "com.android.stk".equalsIgnoreCase(app.getPackageName())) {
            Toast.makeText(this, WaveR.STRING_NOT_FOUND_AIRPLANE, Toast.LENGTH_SHORT).show();
            return;
        }
        startActivitySafely(app.getIntent());
    }

    public void startActivitySafely(Intent intent) {
        if (intent == null) {
            Toast.makeText(this, WaveR.STRING_ACTIVITY_NOT_FOUND, Toast.LENGTH_SHORT).show();
            return;
        }
        try {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            startActivity(intent);
        } catch (ActivityNotFoundException | SecurityException e) {
            Toast.makeText(this, WaveR.STRING_ACTIVITY_NOT_FOUND, Toast.LENGTH_SHORT).show();
            Log.e(TAG, "can't start " + intent, e);
        }
    }

    // ---- menu ---------------------------------------------------------------------------------------

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.clear();
        return WaveMenu.prepareFolder(this, menu, mGrid, mApps, mAdapter, mFolderName, this::onFolderRenamed);
    }

    // ---- keys -----------------------------------------------------------------------------------------

    @Override
    public boolean dispatchKeyEvent(KeyEvent e) {
        WaveMover m = WaveTray.sMover;
        if (m != null && m.activity == this && m.key(e)) return true;
        return super.dispatchKeyEvent(e);
    }

    /** The stock folder's wrap-around d-pad (keys the grid itself doesn't use). */
    @Override
    public boolean onKeyDown(int code, KeyEvent e) {
        if (mGrid != null && mGrid.getSelectedView() != null && mAdapter != null) {
            int pos = mGrid.getSelectedItemPosition();
            int count = mAdapter.getCount();
            int cols = Math.max(1, mGrid.getNumColumns());
            switch (code) {
                case KeyEvent.KEYCODE_DPAD_UP: {
                    int full = (int) Math.ceil(count / (double) cols) * cols;
                    int to = pos - cols;
                    if (to < 0) {
                        to += full;
                        if (to >= count) to -= cols;
                    }
                    mGrid.setSelection(to);
                    break;
                }
                case KeyEvent.KEYCODE_DPAD_DOWN:
                    mGrid.setSelection(pos % cols);
                    break;
                case KeyEvent.KEYCODE_DPAD_LEFT:
                    mGrid.setSelection(pos > 0 ? pos - 1 : count - 1);
                    break;
                case KeyEvent.KEYCODE_DPAD_RIGHT:
                    mGrid.setSelection(pos < count - 1 ? pos + 1 : 0);
                    break;
                default:
                    break;
            }
        }
        return super.onKeyDown(code, e);
    }
}
