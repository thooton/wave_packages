package com.sonim.borqs.launcher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.GridView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;

/**
 * Launcher Argon: replaces the stock folder screen (FolderLaunchActivity + its
 * FolderDrawerClickListener). Same dialog, grid and keys; the Menu key adds Move, Move to folder
 * and Hide for the selected app, before the stock App info. It follows the folder by name, so a
 * rebuild of the tray (an app installed or removed) or an edit keeps it current, and it closes
 * when the folder is gone or empty.
 */
public class FolderLaunchActivity extends Activity implements AppListChangeListener {
    private static final String TAG = "ArgonFolder";
    private static final int MENU_APP_INFO = 2;

    private AccessArrayList mAccessArrayList;
    private ArrayList mApps;
    private DrawerAdapter mAdapter;
    private GridView mGrid;
    private String mFolderName;
    private LauncherActivity.Apps mMenuTarget;

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        mAccessArrayList = (AccessArrayList) getApplicationContext();
        setContentView(ArgonR.LAYOUT_FOLDER_TRAY);
        mGrid = (GridView) findViewById(ArgonR.ID_FOLDER_GRID);
        TextView title = (TextView) findViewById(ArgonR.ID_FOLDER_TITLE);
        mFolderName = getIntent().getStringExtra("folder");
        mApps = currentList();
        if (mApps == null || mApps.isEmpty()) {
            finish();
            return;
        }
        title.setText(mFolderName);
        mAdapter = new DrawerAdapter(this, mApps);
        mGrid.setAdapter(mAdapter);
        mGrid.setOnItemClickListener((parent, view, i, id) -> launch(i));
        mAccessArrayList.registerForAppListChange(this);
    }

    /** The folder's apps now: found by name in the tray, else what the tray handed over. */
    private ArrayList currentList() {
        LauncherActivity l = ArgonTray.launcher();
        if (ArgonTray.active() && l != null) {
            LauncherActivity.Folder f = ArgonTray.findFolder(LauncherActivity.argonList(l), mFolderName);
            return f == null ? null : f.getAppListInsideFolder();
        }
        return mAccessArrayList.getAppsInsideFolder();
    }

    @Override
    protected void onDestroy() {
        if (mAccessArrayList != null) mAccessArrayList.unregisterForAppListChange(this);
        super.onDestroy();
    }

    @Override
    protected void onPause() {
        super.onPause();
        ArgonMover m = ArgonTray.sMover;
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
            Toast.makeText(this, ArgonR.STRING_NOT_FOUND_AIRPLANE, Toast.LENGTH_SHORT).show();
            return;
        }
        startActivitySafely(app.getIntent());
    }

    public void startActivitySafely(Intent intent) {
        if (intent == null) {
            Toast.makeText(this, ArgonR.STRING_ACTIVITY_NOT_FOUND, Toast.LENGTH_SHORT).show();
            return;
        }
        try {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            startActivity(intent);
        } catch (ActivityNotFoundException | SecurityException e) {
            Toast.makeText(this, ArgonR.STRING_ACTIVITY_NOT_FOUND, Toast.LENGTH_SHORT).show();
            Log.e(TAG, "can't start " + intent, e);
        }
    }

    // ---- menu ---------------------------------------------------------------------------------------

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        mMenuTarget = null;
        int pos = mGrid.getSelectedItemPosition();
        if (pos >= 0 && pos < mApps.size()) mMenuTarget = (LauncherActivity.Apps) mApps.get(pos);
        if (mMenuTarget != null) {
            if (ArgonTray.active()) {
                if (mApps.size() > 1) menu.add(0, ArgonTray.MENU_MOVE, 0, "Move");
                if (!ArgonTray.pinned(mMenuTarget)) {
                    menu.add(0, ArgonTray.MENU_TO_FOLDER, 0, "Move to folder");
                    menu.add(0, ArgonTray.MENU_HIDE, 0, "Hide");
                }
            }
            menu.add(0, MENU_APP_INFO, 0, ArgonR.STRING_MENU_APP_INFO);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onPrepareOptionsMenu(Menu menu) {
        // As the stock screen: rebuild the menu for whatever is selected now.
        invalidateOptionsMenu();
        return super.onPrepareOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        final LauncherActivity.Apps app = mMenuTarget;
        LauncherActivity l = ArgonTray.launcher();
        if (app == null) return super.onOptionsItemSelected(item);
        switch (item.getItemId()) {
            case MENU_APP_INFO:
                startActivity(new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
                        .setData(Uri.parse("package:" + app.getPackageName())));
                return true;
            case ArgonTray.MENU_MOVE:
                if (l != null && mApps.contains(app)) ArgonTray.startMove(l, mGrid, mApps, mAdapter, app, this);
                return true;
            case ArgonTray.MENU_TO_FOLDER:
                if (l != null) ArgonTray.chooseFolder(l, this, app, null);
                return true;
            case ArgonTray.MENU_HIDE:
                if (l != null) ArgonTray.hide(l, app, null);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    // ---- keys -----------------------------------------------------------------------------------------

    @Override
    public boolean dispatchKeyEvent(KeyEvent e) {
        ArgonMover m = ArgonTray.sMover;
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
