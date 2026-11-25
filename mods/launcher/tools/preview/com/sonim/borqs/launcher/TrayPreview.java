package com.sonim.borqs.launcher;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.TextView;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * tools/preview.sh: renders the tray and its folders as PNGs on the phone, without installing
 * anything or touching its screen. Runs under app_process (as the shell user) with the BUILT
 * APK's dex on the classpath, so it's the shipped WaveLayout / WaveDefaults / WaveIcons /
 * DrawerAdapter code, inflating the stock launcher's own layouts and resources (same IDs: the
 * resources are untouched), with the phone's real launcher apps and the stock App_Tray rows.
 *
 * Not the same as the live tray: system apps show their plain icons (the launcher themes some),
 * and there's no selection highlight. One entry is drawn as "being moved" to show that card.
 *
 * args: <outdir> <App_Tray copy> <theme 0|1> [layout file]
 */
public final class TrayPreview {
    public static void main(String[] args) throws Exception {
        Looper.prepareMainLooper();
        Context sys = systemContext();
        String out = args[0];
        int theme = Integer.parseInt(args[2]);
        PackageManager pm = sys.getPackageManager();
        Context lc = sys.createPackageContext("com.sonim.borqs.launcher", Context.CONTEXT_IGNORE_SECURITY);
        ActivityInfo la = pm.getActivityInfo(
                new android.content.ComponentName("com.sonim.borqs.launcher", "com.sonim.borqs.launcher.LauncherActivity"), 0);
        lc.setTheme(la.getThemeResource());
        float d = lc.getResources().getDisplayMetrics().density;

        // The layout, exactly as WaveTray.layout() makes it when there's no saved file.
        WaveLayout layout;
        if (args.length > 3) {
            layout = WaveLayout.parse(new String(java.nio.file.Files.readAllBytes(new File(args[3]).toPath()), "UTF-8"));
        } else {
            layout = WaveLayout.withStock(WaveLayout.parse(WaveDefaults.LAYOUT), stockRows(args[1]));
        }

        // Installed launcher activities, as WaveTray.build() lists them.
        Map<String, ResolveInfo> byComp = new HashMap<>();
        List<WaveLayout.Installed> installed = new ArrayList<>();
        for (ResolveInfo ri : pm.queryIntentActivities(new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER), 0)) {
            String pkg = ri.activityInfo.packageName;
            if (pkg.equals("com.sonim.borqs.launcher") || pkg.equals("com.android.stk")) continue;
            String comp = pkg + "/" + ri.activityInfo.name;
            boolean system = (ri.activityInfo.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0;
            if (byComp.put(comp, ri) == null) installed.add(new WaveLayout.Installed(comp, system));
        }
        WaveLayout.Result r = WaveLayout.resolve(layout, installed, WaveDefaults.INBOX);

        // Folder needs an outer LauncherActivity only to exist: allocate one without running it.
        LauncherActivity l = (LauncherActivity) unsafeAllocate(LauncherActivity.class);
        ArrayList list = new ArrayList();
        StringBuilder text = new StringBuilder();
        for (WaveLayout.Node n : r.tree) {
            if (n.folder == null) {
                list.add(app(pm, byComp.get(n.component), n.component));
                text.append(label(byComp.get(n.component), pm)).append('\n');
                continue;
            }
            LauncherActivity.Folder f = l.new Folder();
            f.setName(n.folder);
            List<Drawable> icons = new ArrayList<>();
            text.append("[").append(n.folder).append("]\n");
            for (String c : n.apps) {
                LauncherActivity.Apps a = app(pm, byComp.get(c), c);
                f.setAppListInsideFolder(a);
                if (icons.size() < 4) icons.add(a.getIcon());
                text.append("    ").append(label(byComp.get(c), pm)).append("  (").append(c).append(")\n");
            }
            f.setIcon(WaveIcons.folder(lc.getResources(), n.folder, icons, theme));
            list.add(f);
        }
        text.append("missing: ").append(r.missing).append("\nhidden: ").append(r.hidden).append('\n');
        try (FileOutputStream o = new FileOutputStream(out + "/tray.txt")) {
            o.write(text.toString().getBytes("UTF-8"));
        }

        // The tray: GridView as in activity_launcher.xml (3 columns, applist_bg_folder).
        int bg = lc.getResources().getIdentifier("applist_bg_folder", "drawable", "com.sonim.borqs.launcher");
        int vs = lc.getResources().getIdentifier("gridlayout_vertical_spacing", "dimen", "com.sonim.borqs.launcher");
        GridView grid = new GridView(lc);
        grid.setNumColumns(3);
        grid.setBackgroundResource(bg);
        if (vs != 0) grid.setVerticalSpacing(lc.getResources().getDimensionPixelSize(vs));
        DrawerAdapter adapter = new DrawerAdapter(lc, list);
        grid.setAdapter(adapter);
        int rows = (list.size() + 2) / 3;
        int w = Math.round(240 * d);
        // Whole tray (scrolled view), and the first screen as the phone shows it (below the status bar).
        render(grid, w, Math.round(rows * 80 * d) + 20, out + "/tray_all.png");
        adapter.setMoving(list.get(1));
        render(grid, w, Math.round((320 - 24) * d), out + "/tray_moving.png");
        adapter.setMoving(null);

        // Each folder as FolderLaunchActivity shows it (folder_tray.xml in a dialog).
        int i = 0;
        for (Object o : list) {
            if (!(o instanceof LauncherActivity.Folder)) continue;
            LauncherActivity.Folder f = (LauncherActivity.Folder) o;
            View v = LayoutInflater.from(lc).inflate(WaveR.LAYOUT_FOLDER_TRAY, null);
            ((TextView) v.findViewById(WaveR.ID_FOLDER_TITLE)).setText(f.getName());
            ((GridView) v.findViewById(WaveR.ID_FOLDER_GRID)).setAdapter(new DrawerAdapter(lc, f.getAppListInsideFolder()));
            int h = lc.getResources().getDimensionPixelSize(lc.getResources().getIdentifier("folder_layout_height", "dimen", "com.sonim.borqs.launcher"));
            render(v, Math.round(200 * d), h, out + String.format("/folder_%02d_%s.png", i++, f.getName().replaceAll("\\W", "")));
        }
        System.out.println("rendered " + list.size() + " entries");
    }

    private static String label(ResolveInfo ri, PackageManager pm) {
        return ri == null ? "?" : String.valueOf(ri.loadLabel(pm));
    }

    private static LauncherActivity.Apps app(PackageManager pm, ResolveInfo ri, String comp) {
        LauncherActivity.Apps a = new LauncherActivity.Apps();
        a.setPackageAndClassName(comp);
        a.setIcon(ri.loadIcon(pm));
        a.setName(String.valueOf(ri.loadLabel(pm)));
        return a;
    }

    private static List<String[]> stockRows(String db) {
        List<String[]> rows = new ArrayList<>();
        SQLiteDatabase sq = SQLiteDatabase.openDatabase(db, null, SQLiteDatabase.OPEN_READONLY);
        try (Cursor c = sq.rawQuery("SELECT * FROM appinfo", null)) {
            while (c.moveToNext()) rows.add(new String[] {c.getString(c.getColumnIndex("folder")), c.getString(c.getColumnIndex("pkgname"))});
        }
        sq.close();
        return rows;
    }

    private static void render(View v, int w, int h, String path) throws Exception {
        v.measure(View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(h, View.MeasureSpec.EXACTLY));
        v.layout(0, 0, w, h);
        // A detached AbsListView only fills its children on layout; do it twice for settled sizes.
        v.measure(View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(h, View.MeasureSpec.EXACTLY));
        v.layout(0, 0, w, h);
        Bitmap b = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        c.drawColor(Color.WHITE);
        v.draw(c);
        try (FileOutputStream o = new FileOutputStream(path)) {
            b.compress(Bitmap.CompressFormat.PNG, 100, o);
        }
    }

    private static Context systemContext() throws Exception {
        Class<?> at = Class.forName("android.app.ActivityThread");
        Constructor<?> ctor = at.getDeclaredConstructor();
        ctor.setAccessible(true);
        Object thread = ctor.newInstance();
        Field cur = at.getDeclaredField("sCurrentActivityThread");
        cur.setAccessible(true);
        cur.set(null, thread);
        java.lang.reflect.Method m = at.getDeclaredMethod("getSystemContext");
        m.setAccessible(true);
        return (Context) m.invoke(thread);
    }

    private static Object unsafeAllocate(Class<?> c) throws Exception {
        Class<?> u = Class.forName("sun.misc.Unsafe");
        Field f = u.getDeclaredField("THE_ONE");
        f.setAccessible(true);
        return u.getMethod("allocateInstance", Class.class).invoke(f.get(null), c);
    }
}
