package com.sonim.borqs.launcher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.view.Menu;
import android.view.SubMenu;
import android.widget.GridView;
import android.widget.Toast;
import java.util.ArrayList;

/** Short, screen-specific menus, built on open rather than cached against an old selection. */
final class WaveMenu {
    private WaveMenu() {
    }

    /** False leaves LauncherActivity's stock menu in charge when the stock tray is in use. */
    static boolean prepare(LauncherActivity l, Menu menu) {
        if (WaveTray.usesStockTray()) return false;
        if (!LauncherActivity.waveTrayVisible(l)) {
            action(menu, l.getText(WaveR.STRING_MENU_NOTIFICATIONS), l::startNotification);
            action(menu, l.getText(WaveR.STRING_MENU_SETTINGS),
                    () -> open(l, new Intent(Settings.ACTION_SETTINGS)));
            SubMenu customize = menu.addSubMenu("Customize home");
            action(customize, l.getText(WaveR.STRING_MENU_WALLPAPER), () -> LauncherActivity.waveWallpaper(l));
            action(customize, l.getText(WaveR.STRING_MENU_THEMES), l::startThemesActivity);
            action(customize, l.getText(WaveR.STRING_MENU_SHORTCUTS), l::startHomeShortcutsActivity);
            return true;
        }

        GridView grid = LauncherActivity.waveGrid(l);
        ArrayList list = LauncherActivity.waveList(l);
        if (!WaveTray.active() || grid == null || list == null) return false;
        action(menu, "Add apps", () -> WaveTray.chooseApp(l, l, null, null));
        Object target = selected(grid, list);
        if (target instanceof LauncherActivity.Apps) {
            editApp(menu, l, l, grid, list, LauncherActivity.waveAdapter(l), (LauncherActivity.Apps) target);
        } else if (target instanceof LauncherActivity.Folder) {
            LauncherActivity.Folder folder = (LauncherActivity.Folder) target;
            SubMenu edit = menu.addSubMenu("Edit folder");
            if (list.size() > 1) action(edit, "Move", () -> {
                if (list.contains(folder)) {
                    WaveTray.startMove(l, grid, list, LauncherActivity.waveAdapter(l), folder, l);
                }
            });
            action(edit, "Rename folder", () -> {
                if (list.contains(folder)) WaveTray.rename(l, folder);
            });
            action(edit, "Remove folder", () -> WaveTray.unfolder(l, folder));
        }
        action(menu, "Reset layout", () -> WaveTray.confirmReset(l));
        return true;
    }

    static boolean prepareFolder(Activity owner, Menu menu, GridView grid, ArrayList apps,
            DrawerAdapter adapter, String folder) {
        LauncherActivity l = WaveTray.launcher();
        Object target = selected(grid, apps);
        if (!WaveTray.active() || l == null) {
            if (!(target instanceof LauncherActivity.Apps)) return false;
            appInfo(menu, owner, (LauncherActivity.Apps) target);
            return true;
        }
        action(menu, "Add apps", () -> WaveTray.chooseApp(l, owner, folder, app -> {
            LauncherActivity.Folder f = WaveTray.findFolder(LauncherActivity.waveList(l), folder);
            if (f != null) grid.setSelection(f.getAppListInsideFolder().indexOf(app));
        }));
        if (target instanceof LauncherActivity.Apps) {
            editApp(menu, l, owner, grid, apps, adapter, (LauncherActivity.Apps) target);
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

    private static void editApp(Menu menu, LauncherActivity l, Activity owner, GridView grid,
            ArrayList list, DrawerAdapter adapter, LauncherActivity.Apps app) {
        SubMenu edit = menu.addSubMenu("Edit app");
        if (list.size() > 1) action(edit, "Move", () -> {
            if (WaveTray.contains(l, app)) WaveTray.startMove(l, grid, list, adapter, app, owner);
        });
        if (!WaveTray.pinned(app)) {
            action(edit, "Move to folder", () -> {
                if (WaveTray.contains(l, app)) WaveTray.chooseFolder(l, owner, app);
            });
            action(edit, "Hide", () -> {
                if (WaveTray.contains(l, app)) WaveTray.hide(l, app);
            });
        }
        appInfo(edit, owner, app);
    }

    private static void appInfo(Menu menu, Activity owner, LauncherActivity.Apps app) {
        action(menu, owner.getText(WaveR.STRING_MENU_APP_INFO),
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

    private static void action(Menu menu, CharSequence title, Runnable run) {
        menu.add(title).setOnMenuItemClickListener(item -> {
            run.run();
            return true;
        });
    }
}
