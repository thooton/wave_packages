package com.sonim.borqs.launcher;

import android.app.Activity;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.GridView;
import com.sonim.borqs.launcher.helper.DatabaseHelper;
import java.util.ArrayList;

/** Compile-only: what WaveTray uses of the stock LauncherActivity (wave* = smali bridges). */
public class LauncherActivity extends Activity {
    Handler mHandler;

    static class AppsAndFolder {
        public void setIcon(Drawable d) { }
        public void setName(String s) { }
        public Drawable getIcon() { return null; }
        public String getName() { return null; }
    }

    static class Apps extends AppsAndFolder {
        public String getPackageAndClassName() { return null; }
        public void setPackageAndClassName(String s) { }
        public String getPackageName() { return null; }
        public void setPackageName(String s) { }
        public void setIntent(android.content.Intent i) { }
        public android.content.Intent getIntent() { return null; }
    }

    class Folder extends AppsAndFolder {
        Folder() { }
        public void setAppListInsideFolder(Apps a) { }
        public ArrayList getAppListInsideFolder() { return null; }
    }

    public Drawable getPkgIconForTheme(String s) { return null; }
    public String setFolderName(String s) { return null; }
    public synchronized void setSTKApp() { }
    void autoStartAppIfNeeded(String s) { }

    static ArrayList waveList(LauncherActivity l) { return null; }
    static GridView waveGrid(LauncherActivity l) { return null; }
    static DrawerAdapter waveAdapter(LauncherActivity l) { return null; }
    static SharedPreferences wavePrefs(LauncherActivity l) { return null; }
    static Cursor waveCursor(LauncherActivity l) { return null; }
    static DatabaseHelper waveDb(LauncherActivity l) { return null; }
    static Object waveLock() { return null; }
    static boolean waveTrayVisible(LauncherActivity l) { return false; }
    static Drawable waveStockFolderIcon(LauncherActivity l, String name) { return null; }
    static void waveCheckNavKey(LauncherActivity l, String pkg) { }
    static void waveUpdateNavKey(LauncherActivity l, String pkg) { }
    static void waveStockTray(LauncherActivity l) { }
}
