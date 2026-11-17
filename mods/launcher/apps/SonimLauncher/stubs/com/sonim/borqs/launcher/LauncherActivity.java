package com.sonim.borqs.launcher;

import android.app.Activity;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.GridView;
import com.sonim.borqs.launcher.helper.DatabaseHelper;
import java.util.ArrayList;

/** Compile-only: what ArgonTray uses of the stock LauncherActivity (argon* = smali bridges). */
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

    static ArrayList argonList(LauncherActivity l) { return null; }
    static GridView argonGrid(LauncherActivity l) { return null; }
    static DrawerAdapter argonAdapter(LauncherActivity l) { return null; }
    static SharedPreferences argonPrefs(LauncherActivity l) { return null; }
    static Cursor argonCursor(LauncherActivity l) { return null; }
    static DatabaseHelper argonDb(LauncherActivity l) { return null; }
    static Object argonLock() { return null; }
    static boolean argonTrayVisible(LauncherActivity l) { return false; }
    static Drawable argonStockFolderIcon(LauncherActivity l, String name) { return null; }
    static void argonCheckNavKey(LauncherActivity l, String pkg) { }
    static void argonUpdateNavKey(LauncherActivity l, String pkg) { }
    static void argonStockTray(LauncherActivity l) { }
}
