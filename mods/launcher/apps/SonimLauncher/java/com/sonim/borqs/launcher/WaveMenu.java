package com.sonim.borqs.launcher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.GridView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.function.Consumer;

/**
 * Flat, one-level options menus for the apps tray and folders.
 * Home returns false so the stock LauncherActivity builds its own Home menu.
 */
final class WaveMenu {
    private WaveMenu() {
    }

    /** False leaves LauncherActivity's stock menu in charge (on Home, or in stock tray fallback). */
    static boolean prepare(LauncherActivity l, Menu menu) {
        if (WaveTray.usesStockTray() || !LauncherActivity.waveTrayVisible(l)) return false;

        GridView grid = LauncherActivity.waveGrid(l);
        ArrayList list = LauncherActivity.waveList(l);
        DrawerAdapter adapter = LauncherActivity.waveAdapter(l);
        if (!WaveTray.active() || grid == null || list == null) return false;

        Object target = selected(grid, list);
        if (target instanceof LauncherActivity.Apps) {
            LauncherActivity.Apps app = (LauncherActivity.Apps) target;
            boolean pinned = WaveTray.pinned(app);
            boolean hasFolders = WaveTray.hasFolders(list);

            action(menu, "Move (top level)", list.size() >= 2, () -> {
                if (WaveTray.contains(l, app)) WaveTray.startMove(l, grid, list, adapter, app, l);
            });
            action(menu, "Move (into folder)", hasFolders && !pinned, () -> {
                if (list.contains(app)) WaveTray.startMoveInto(l, grid, list, adapter, app);
            });
            if (!pinned) {
                action(menu, "New folder", true, () -> {
                    if (list.contains(app)) WaveTray.newFolder(l, app);
                });
            }
            action(menu, "Add new app", true, () -> WaveTray.chooseApp(l, l, null, grid, list, null));
            if (!pinned) {
                action(menu, "Remove", true, () -> {
                    if (WaveTray.contains(l, app)) WaveTray.remove(l, l, grid, list, app);
                });
            }
            appInfo(menu, l, app);
        } else if (target instanceof LauncherActivity.Folder) {
            LauncherActivity.Folder folder = (LauncherActivity.Folder) target;
            action(menu, "Move (top level)", list.size() >= 2, () -> {
                if (list.contains(folder)) WaveTray.startMove(l, grid, list, adapter, folder, l);
            });
            action(menu, "Edit folder", true, () -> {
                if (list.contains(folder)) WaveTray.editFolder(l, l, folder, null);
            });
            action(menu, "Add new app", true, () -> WaveTray.chooseApp(l, l, null, grid, list, null));
            action(menu, "Delete folder", true, () -> {
                if (list.contains(folder)) WaveTray.confirmDeleteFolder(l, folder);
            });
        } else {
            action(menu, "Add new app", true, () -> WaveTray.chooseApp(l, l, null, grid, list, null));
        }
        return true;
    }

    static boolean prepareFolder(Activity owner, Menu menu, GridView grid, ArrayList apps,
            DrawerAdapter adapter, String folderName, Consumer<String> onRenamed) {
        LauncherActivity l = WaveTray.launcher();
        Object target = selected(grid, apps);
        if (!WaveTray.active() || l == null) {
            if (!(target instanceof LauncherActivity.Apps)) return false;
            appInfo(menu, owner, (LauncherActivity.Apps) target);
            return true;
        }
        LauncherActivity.Folder currentFolder = WaveTray.findFolder(LauncherActivity.waveList(l), folderName);
        if (target instanceof LauncherActivity.Apps) {
            LauncherActivity.Apps app = (LauncherActivity.Apps) target;
            boolean pinned = WaveTray.pinned(app);
            action(menu, "Move (within level)", apps.size() >= 2, () -> {
                if (WaveTray.contains(l, app)) WaveTray.startMove(l, grid, apps, adapter, app, owner);
            });
            if (!pinned) {
                action(menu, "Move outside", true, () -> {
                    if (WaveTray.contains(l, app)) WaveTray.moveOutside(l, owner, app);
                });
            }
            action(menu, "Add new app", true, () -> WaveTray.chooseApp(l, owner, folderName, grid, apps, added -> {
                LauncherActivity.Folder f = WaveTray.findFolder(LauncherActivity.waveList(l), folderName);
                if (f != null) {
                    int idx = f.getAppListInsideFolder().indexOf(added);
                    if (idx >= 0) grid.setSelection(idx);
                }
            }));
            if (!pinned) {
                action(menu, "Remove", true, () -> {
                    if (WaveTray.contains(l, app)) WaveTray.remove(l, owner, grid, apps, app);
                });
            }
            appInfo(menu, owner, app);
            if (currentFolder != null) {
                action(menu, "Edit folder", true, () -> {
                    if (LauncherActivity.waveList(l).contains(currentFolder)) {
                        WaveTray.editFolder(l, owner, currentFolder, onRenamed);
                    }
                });
            }
        } else {
            action(menu, "Add new app", true, () -> WaveTray.chooseApp(l, owner, folderName, grid, apps, added -> {
                LauncherActivity.Folder f = WaveTray.findFolder(LauncherActivity.waveList(l), folderName);
                if (f != null) {
                    int idx = f.getAppListInsideFolder().indexOf(added);
                    if (idx >= 0) grid.setSelection(idx);
                }
            }));
            if (currentFolder != null) {
                action(menu, "Edit folder", true, () -> {
                    if (LauncherActivity.waveList(l).contains(currentFolder)) {
                        WaveTray.editFolder(l, owner, currentFolder, onRenamed);
                    }
                });
            }
        }
        return true;
    }

    private static Object selected(GridView grid, ArrayList list) {
        if (grid == null || list == null) return null;
        synchronized (list) {
            int pos = grid.getSelectedItemPosition();
            return pos >= 0 && pos < list.size() ? list.get(pos) : null;
        }
    }

    private static void appInfo(Menu menu, Activity owner, LauncherActivity.Apps app) {
        action(menu, owner.getText(WaveR.STRING_MENU_APP_INFO), true,
                () -> open(owner, new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
                        .setData(Uri.fromParts("package", app.getPackageName(), null))));
    }

    private static void open(Activity owner, Intent intent) {
        try {
            owner.startActivity(intent);
        } catch (ActivityNotFoundException | SecurityException e) {
            Toast.makeText(owner, WaveR.STRING_ACTIVITY_NOT_FOUND, Toast.LENGTH_SHORT).show();
        }
    }

    private static void action(Menu menu, CharSequence title, boolean enabled, Runnable run) {
        MenuItem item = menu.add(title);
        item.setEnabled(enabled);
        if (enabled) {
            item.setOnMenuItemClickListener(mi -> {
                run.run();
                return true;
            });
        }
    }
}
