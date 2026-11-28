package com.sonim.borqs.launcher;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputType;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.sonim.borqs.launcher.helper.DatabaseHelper;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.nio.charset.StandardCharsets;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;

/**
 * Launcher Improved: the apps tray, arranged by the user. Replaces the stock tray's list building
 * (LauncherActivity.setAppsAndFolderList and the package receiver) and handles tray edits from
 * WaveMenu.
 *
 * The arrangement is files/wave_tray.txt in the launcher's data (format: WaveLayout). Until the
 * user changes something it is WaveDefaults with Sonim's own tray at the end.
 *
 * Threads: rebuild() runs where the stock method ran (the launcher's ParseThread, or the UI
 * thread); package changes rebuild on a worker and swap the result in on the UI thread; every
 * edit happens on the UI thread.
 */
final class WaveTray {
    static final String TAG = "WaveTray";
    private static final String FILE = "wave_tray.txt";
    private static final String SELF = "com.sonim.borqs.launcher";
    private static final String STK = "com.android.stk";   // the stock code adds it to Tools itself

    /** The move in progress, if any (one at a time, in the tray or a folder). */
    static WaveMover sMover;
    /** The Move (into folder) session in progress, if any. */
    static WaveFolderPicker sFolderPicker;

    private static WaveLayout sLayout;          // what was loaded or last saved
    private static Map<String, List<String>> sMissing = new LinkedHashMap<>();
    private static int sGeneration;              // bumped by every edit; stale rebuilds retry
    private static boolean sPendingRebuild;      // a package changed during a move
    private static boolean sFallback;            // our build failed: the stock tray is running
    private static WeakReference<LauncherActivity> sLauncher = new WeakReference<>(null);
    private static final Map<String, Object[]> sCache = new HashMap<>();   // component -> {icon, label}
    private static final ExecutorService sWorker = Executors.newSingleThreadExecutor();

    private WaveTray() {
    }

    /** The stock PTT-disabled shuffle must not change the arranged tray. */
    static boolean usesStockTray() {
        return sFallback;
    }

    // ---- building -------------------------------------------------------------------------------

    /** Replaces LauncherActivity.setAppsAndFolderList(). */
    static void rebuild(LauncherActivity l) {
        sLauncher = new WeakReference<>(l);
        try {
            Built built = build(l, layout(l));
            ArrayList list = LauncherActivity.waveList(l);
            synchronized (list) {
                list.clear();
                list.addAll(built.entries);
                sMissing = built.missing;
                afterSwap(l);
            }
            sFallback = false;
        } catch (RuntimeException e) {
            // Never leave the phone without its apps: fall back to Sonim's own tray.
            Log.e(TAG, "building the tray failed, using the stock tray", e);
            sFallback = true;
            closeStockCursor(l);                  // the caller's; the stock builder opens its own
            LauncherActivity.waveStockTray(l);   // (and closes it and the database, as stock)
            return;
        } finally {
            closeStockCursor(l);
        }
    }

    private static void closeStockCursor(LauncherActivity l) {
        try {
            Cursor c = LauncherActivity.waveCursor(l);
            if (c != null) c.close();
            DatabaseHelper db = LauncherActivity.waveDb(l);
            if (db != null) db.close();
        } catch (RuntimeException e) {
            Log.w(TAG, "closing the stock cursor", e);
        }
    }

    private static synchronized WaveLayout layout(Context ctx) {
        if (sLayout != null) return sLayout;
        File f = TrayFile.open(ctx.getFilesDir(), FILE);
        if (f.isFile()) {
            try {
                sLayout = WaveLayout.parse(read(f));
                return sLayout;
            } catch (IOException | IllegalArgumentException e) {
                Log.e(TAG, "unreadable " + f + ", using the defaults (kept as " + FILE + ".bad)", e);
                f.renameTo(new File(ctx.getFilesDir(), FILE + ".bad"));
            }
        }
        sLayout = WaveLayout.withStock(WaveLayout.parse(WaveDefaults.LAYOUT), stockRows(ctx));
        return sLayout;
    }

    /** Sonim's tray, as the stock launcher put it in its App_Tray database: (folder, component). */
    private static List<String[]> stockRows(Context ctx) {
        List<String[]> rows = new ArrayList<>();
        DatabaseHelper db = new DatabaseHelper(ctx);
        Cursor c = null;
        try {
            c = db.getAppAndFolderCursor();
            if (c != null) {
                int folder = c.getColumnIndex("folder"), pkg = c.getColumnIndex("pkgname");
                while (c.moveToNext()) rows.add(new String[] {c.getString(folder), c.getString(pkg)});
            }
        } catch (RuntimeException e) {
            Log.e(TAG, "reading App_Tray", e);
        } finally {
            if (c != null) c.close();
            db.close();
        }
        return rows;
    }

    /** Shared with the picker so safe mode, the launcher itself and STK are handled the same way. */
    private static Map<String, ResolveInfo> launchable(PackageManager pm) {
        boolean safe = pm.isSafeMode();
        Intent main = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
        Map<String, ResolveInfo> activities = new LinkedHashMap<>();
        for (ResolveInfo ri : pm.queryIntentActivities(main, 0)) {
            String pkg = ri.activityInfo.packageName;
            if (SELF.equals(pkg) || STK.equals(pkg) || (safe && !system(ri))) continue;
            activities.putIfAbsent(pkg + "/" + ri.activityInfo.name, ri);
        }
        return activities;
    }

    private static boolean system(ResolveInfo ri) {
        return (ri.activityInfo.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0;
    }

    private static final class Built {
        final ArrayList entries;
        final Map<String, List<String>> missing;

        Built(ArrayList entries, Map<String, List<String>> missing) {
            this.entries = entries;
            this.missing = missing;
        }
    }

    private static Built build(LauncherActivity l, WaveLayout layout) {
        PackageManager pm = l.getPackageManager();
        Map<String, ResolveInfo> byComp = launchable(pm);
        List<WaveLayout.Installed> installed = new ArrayList<>();
        for (Map.Entry<String, ResolveInfo> e : byComp.entrySet()) {
            installed.add(new WaveLayout.Installed(e.getKey(), system(e.getValue())));
        }
        WaveLayout.Result r = WaveLayout.resolve(layout, installed, WaveDefaults.INBOX);
        int theme = LauncherActivity.wavePrefs(l).getInt("current_theme", 0);

        ArrayList out = new ArrayList();
        for (WaveLayout.Node n : r.tree) {
            if (n.folder == null) {
                out.add(makeApp(l, pm, byComp.get(n.component), n.component));
                continue;
            }
            LauncherActivity.Folder f = l.new Folder();
            f.setName(l.setFolderName(n.folder));
            for (String c : n.apps) f.setAppListInsideFolder(makeApp(l, pm, byComp.get(c), c));
            f.setIcon(folderIcon(l, f, theme));
            out.add(f);
        }
        Log.i(TAG, "tray: " + out.size() + " entries, " + r.hidden.size() + " hidden, "
                + r.missing.size() + " places with uninstalled apps");
        return new Built(out, r.missing);
    }

    private static Object[] cachedMeta(PackageManager pm, ResolveInfo ri, String comp) {
        Object[] cached;
        synchronized (sCache) {
            cached = sCache.get(comp);
        }
        if (cached == null) {
            cached = new Object[] {ri.loadIcon(pm), String.valueOf(ri.loadLabel(pm))};
            synchronized (sCache) {
                sCache.put(comp, cached);
            }
        }
        return cached;
    }

    private static LauncherActivity.Apps makeApp(LauncherActivity l, PackageManager pm, ResolveInfo ri, String comp) {
        LauncherActivity.Apps a = new LauncherActivity.Apps();
        ComponentName cn = ComponentName.unflattenFromString(comp);
        a.setPackageAndClassName(comp);
        a.setPackageName(cn.getPackageName());
        Object[] cached = cachedMeta(pm, ri, comp);
        Drawable themed = l.getPkgIconForTheme(comp);
        a.setIcon(themed != null ? themed : (Drawable) cached[0]);
        a.setName((String) cached[1]);
        a.setIntent(new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER).setComponent(cn));
        return a;
    }

    private static void forget(String pkg) {
        synchronized (sCache) {
            sCache.keySet().removeIf(k -> k.startsWith(pkg + "/"));
        }
    }

    private static List<Drawable> folderPreviewIcons(LauncherActivity.Folder f) {
        List<Drawable> icons = new ArrayList<>();
        ArrayList apps = f.getAppListInsideFolder();
        if (apps != null) {
            for (Object o : apps) {
                icons.add(((LauncherActivity.AppsAndFolder) o).getIcon());
                if (icons.size() == 4) break;
            }
        }
        return icons;
    }

    /** Every folder, Sonim's Tools and Applications included, gets a drawn icon previewing its apps. */
    private static Drawable folderIcon(LauncherActivity l, LauncherActivity.Folder f, int theme) {
        return WaveIcons.folder(l.getResources(), f.getName(), folderPreviewIcons(f), theme);
    }

    /** Hook at the start of LauncherActivity.getFolderIcon(name): null means "stock icon". */
    static Drawable folderIconHook(LauncherActivity l, String name) {
        if (sFallback || name == null) return null;
        int theme = LauncherActivity.wavePrefs(l).getInt("current_theme", 0);
        LauncherActivity.Folder f = findFolder(LauncherActivity.waveList(l), name);
        if (f != null) return folderIcon(l, f, theme);
        return WaveIcons.folder(l.getResources(), name, new ArrayList<Drawable>(), theme);
    }

    /** What the stock code expects after the list is built: positions, STK, shortcut list. */
    private static void afterSwap(LauncherActivity l) {
        ArrayList list = LauncherActivity.waveList(l);
        String tools = l.getString(WaveR.STRING_FOLDER_TOOLS), apps = l.getString(WaveR.STRING_FOLDER_APPS);
        int toolsAt = -1, appsAt = -1;
        for (int i = 0; i < list.size(); i++) {
            Object o = list.get(i);
            if (!(o instanceof LauncherActivity.Folder)) continue;
            String name = ((LauncherActivity.Folder) o).getName();
            if (toolsAt < 0 && tools.equalsIgnoreCase(name)) toolsAt = i;
            if (appsAt < 0 && apps.equalsIgnoreCase(name)) appsAt = i;
        }
        LauncherActivity.wavePrefs(l).edit().putInt("stk_postion", toolsAt).putInt("sonim_postion", appsAt).apply();
        l.setSTKApp();
        ((AccessArrayList) l.getApplication()).setAppsAndFolderListForShorcut(list);
    }

    // ---- package changes ------------------------------------------------------------------------

    /** Hook at the start of the launcher's package receiver; true = handled (skip the stock code). */
    static boolean onPackageEvent(LauncherActivity l, Intent intent) {
        if (sFallback || intent == null || intent.getData() == null || intent.getAction() == null) return false;
        String action = intent.getAction();
        String pkg = intent.getData().getSchemeSpecificPart();
        boolean replacing = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false);
        ArrayList list = LauncherActivity.waveList(l);
        if (pkg == null || list == null || list.isEmpty()) return true;   // not built yet: ParseThread will
        Log.i(TAG, action + " " + pkg + (replacing ? " (replacing)" : ""));
        forget(pkg);
        if (Intent.ACTION_PACKAGE_REMOVED.equals(action)) {
            if (replacing) return true;                                    // PACKAGE_ADDED follows
            LauncherActivity.waveCheckNavKey(l, pkg);
        } else if (Intent.ACTION_PACKAGE_ADDED.equals(action) && !replacing && !l.getPackageManager().isSafeMode()) {
            l.autoStartAppIfNeeded(pkg);
        }
        scheduleRebuild(l, pkg);
        return true;
    }

    private static boolean busy() {
        return sMover != null || sFolderPicker != null;
    }

    private static void flushPendingRebuild(LauncherActivity l) {
        if (sPendingRebuild && !busy()) {
            sPendingRebuild = false;
            scheduleRebuild(l, null);
        }
    }

    private static void scheduleRebuild(final LauncherActivity l, final String changedPkg) {
        if (busy()) {
            sPendingRebuild = true;
            return;
        }
        final int gen = sGeneration;
        sWorker.execute(() -> {
            final Built built;
            try {
                synchronized (LauncherActivity.waveLock()) {
                    built = build(l, layout(l));
                }
            } catch (RuntimeException e) {
                Log.e(TAG, "rebuild after a package change failed", e);
                return;
            }
            l.runOnUiThread(() -> {
                if (l.isDestroyed()) return;
                if (busy()) {
                    sPendingRebuild = true;
                } else if (gen != sGeneration) {
                    scheduleRebuild(l, changedPkg);   // the user changed something meanwhile
                } else {
                    swapIn(l, built);
                    if (changedPkg != null) LauncherActivity.waveUpdateNavKey(l, changedPkg);
                }
            });
        });
    }

    private static void swapIn(LauncherActivity l, Built built) {
        ArrayList list = LauncherActivity.waveList(l);
        synchronized (list) {
            list.clear();
            list.addAll(built.entries);
            sMissing = built.missing;
            afterSwap(l);
        }
        DrawerAdapter a = LauncherActivity.waveAdapter(l);
        if (a != null) a.notifyDataSetChanged();
        else l.mHandler.sendEmptyMessage(1);
        ((AccessArrayList) l.getApplication()).notifyAppListChanged();
    }

    // ---- saving ---------------------------------------------------------------------------------

    /** After any edit: refresh icons and everyone showing the tray, then save the arrangement. */
    static void changed(LauncherActivity l) {
        ArrayList list = LauncherActivity.waveList(l);
        int theme = LauncherActivity.wavePrefs(l).getInt("current_theme", 0);
        synchronized (list) {
            for (Object o : list) {
                if (o instanceof LauncherActivity.Folder) {
                    LauncherActivity.Folder f = (LauncherActivity.Folder) o;
                    f.setIcon(folderIcon(l, f, theme));
                }
            }
            afterSwap(l);
        }
        DrawerAdapter a = LauncherActivity.waveAdapter(l);
        if (a != null) a.notifyDataSetChanged();
        ((AccessArrayList) l.getApplication()).notifyAppListChanged();
        save(l);
    }

    private static void save(LauncherActivity l) {
        List<WaveLayout.Node> shown = new ArrayList<>();
        ArrayList list = LauncherActivity.waveList(l);
        synchronized (list) {
            for (Object o : list) {
                if (o instanceof LauncherActivity.Folder) {
                    LauncherActivity.Folder f = (LauncherActivity.Folder) o;
                    List<String> apps = new ArrayList<>();
                    ArrayList in = f.getAppListInsideFolder();
                    if (in != null) {
                        for (Object a : in) {
                            String c = ((LauncherActivity.Apps) a).getPackageAndClassName();
                            if (!STK.equals(WaveLayout.pkgOf(c))) apps.add(c);
                        }
                    }
                    shown.add(new WaveLayout.Node(f.getName(), apps));
                } else if (o instanceof LauncherActivity.Apps) {
                    String c = ((LauncherActivity.Apps) o).getPackageAndClassName();
                    if (!STK.equals(WaveLayout.pkgOf(c))) shown.add(new WaveLayout.Node(c));
                }
            }
        }
        String text;
        synchronized (WaveTray.class) {
            WaveLayout cur = layout(l);
            sLayout = WaveLayout.snapshot(shown, sMissing, cur.hidden);
            sGeneration++;
            text = sLayout.serialize();
        }
        File dir = l.getFilesDir();
        File tmp = new File(dir, FILE + ".tmp");
        try (FileOutputStream out = new FileOutputStream(tmp)) {
            out.write(text.getBytes(StandardCharsets.UTF_8));
            out.getFD().sync();
        } catch (IOException e) {
            Log.e(TAG, "saving the tray", e);
            return;
        }
        if (!tmp.renameTo(new File(dir, FILE))) Log.e(TAG, "saving the tray: rename failed");
    }

    private static String read(File f) throws IOException {
        try (InputStream in = new FileInputStream(f)) {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            for (int n; (n = in.read(buf)) > 0; ) out.write(buf, 0, n);
            return new String(out.toByteArray(), StandardCharsets.UTF_8);
        }
    }

    // ---- lookups --------------------------------------------------------------------------------

    static LauncherActivity.Folder findFolder(ArrayList list, String name) {
        if (list == null || name == null) return null;
        synchronized (list) {
            for (Object o : list) {
                if (o instanceof LauncherActivity.Folder && name.equalsIgnoreCase(((LauncherActivity.Folder) o).getName())) {
                    return (LauncherActivity.Folder) o;
                }
            }
        }
        return null;
    }

    static boolean hasFolders(ArrayList list) {
        if (list == null) return false;
        synchronized (list) {
            for (Object o : list) {
                if (o instanceof LauncherActivity.Folder) return true;
            }
        }
        return false;
    }

    /** The launcher showing the tray now (for the folder screen). */
    static LauncherActivity launcher() {
        return sLauncher.get();
    }

    /** STK lives in Tools (the stock setSTKApp() puts it back there): it can only be moved within. */
    static boolean pinned(LauncherActivity.Apps app) {
        String c = app.getPackageAndClassName();
        return c != null && STK.equals(WaveLayout.pkgOf(c));
    }

    static boolean active() {
        return !sFallback && sLauncher.get() != null;
    }

    private static List<LauncherActivity.Folder> folders(ArrayList list) {
        List<LauncherActivity.Folder> out = new ArrayList<>();
        for (Object o : list) if (o instanceof LauncherActivity.Folder) out.add((LauncherActivity.Folder) o);
        return out;
    }

    // ---- keys and modes in the tray -------------------------------------------------------------

    /** Hook at the start of LauncherActivity.dispatchKeyEvent; true = consumed. */
    static boolean dispatchKey(LauncherActivity l, android.view.KeyEvent e) {
        WaveFolderPicker fp = sFolderPicker;
        if (fp != null && fp.activity == l) {
            if (!LauncherActivity.waveTrayVisible(l)) {
                fp.finish(false, false);
                return false;
            }
            return fp.key(e);
        }
        WaveMover m = sMover;
        if (m == null || m.activity != l) return false;
        if (!LauncherActivity.waveTrayVisible(l)) {
            m.finish(true);
            return false;
        }
        return m.key(e);
    }

    /** Hook in LauncherActivity.onPause: leaving mid-move puts down a move and cancels folder pick. */
    static void onPause(LauncherActivity l) {
        WaveFolderPicker fp = sFolderPicker;
        if (fp != null && fp.activity == l) fp.finish(false, false);
        WaveMover m = sMover;
        if (m != null && m.activity == l) m.finish(true);
    }

    static void startMove(final LauncherActivity l, GridView grid, ArrayList list, DrawerAdapter adapter,
            Object target, Activity owner) {
        if (adapter == null || busy()) return;
        sMover = new WaveMover(owner, grid, list, adapter, target, kept -> {
            if (kept) changed(l);
            flushPendingRebuild(l);
        });
    }

    static void startMoveInto(final LauncherActivity l, GridView grid, ArrayList list, DrawerAdapter adapter,
            LauncherActivity.Apps app) {
        if (adapter == null || busy()) return;
        WaveFolderPicker picker = new WaveFolderPicker(l, grid, list, adapter, app, droppedInto -> {
            if (droppedInto != null) changed(l);
            flushPendingRebuild(l);
        });
        if (picker.isActive()) sFolderPicker = picker;
    }

    // ---- edits (UI thread) ----------------------------------------------------------------------

    static boolean contains(LauncherActivity l, LauncherActivity.Apps app) {
        ArrayList list = LauncherActivity.waveList(l);
        return list.contains(app) || folderHolding(list, app) != null;
    }

    private static LauncherActivity.Folder folderHolding(ArrayList list, Object app) {
        for (LauncherActivity.Folder f : folders(list)) {
            ArrayList in = f.getAppListInsideFolder();
            if (in != null && in.contains(app)) return f;
        }
        return null;
    }

    /** Takes app out of where it is; a folder left empty goes away. Returns its old main-screen slot. */
    private static int takeOut(ArrayList list, Object app) {
        synchronized (list) {
            int at = list.indexOf(app);
            if (at >= 0) {
                list.remove(at);
                return at;
            }
            LauncherActivity.Folder f = folderHolding(list, app);
            if (f == null) return list.size();
            f.getAppListInsideFolder().remove(app);
            at = list.indexOf(f);
            if (f.getAppListInsideFolder().isEmpty()) {
                list.remove(at);
                return at;
            }
            return at + 1;
        }
    }

    /** Moves an app out of its folder onto the tray right after the folder (or in its place if last). */
    static void moveOutside(LauncherActivity l, Activity owner, LauncherActivity.Apps app) {
        if (pinned(app)) return;
        ArrayList list = LauncherActivity.waveList(l);
        GridView trayGrid = LauncherActivity.waveGrid(l);
        WaveGridAnim.Snapshot snap = WaveGridAnim.capture(trayGrid, list);
        synchronized (list) {
            if (folderHolding(list, app) == null) return;
            int at = takeOut(list, app);
            list.add(Math.min(at, list.size()), app);
        }
        changed(l);
        select(l, app);
        WaveGridAnim.play(trayGrid, list, snap, app, null, null);
        if (owner != null && owner != l) owner.finish();
    }

    /** Removes an app from the tray or folder and hides it (restorable via Add new app). */
    static void remove(LauncherActivity l, Activity owner, GridView grid, ArrayList containerList,
            LauncherActivity.Apps app) {
        if (pinned(app)) return;
        ArrayList trayList = LauncherActivity.waveList(l);
        boolean inTray = containerList == trayList;
        int oldPos;
        synchronized (containerList) {
            oldPos = containerList.indexOf(app);
        }
        WaveGridAnim.Snapshot snap = WaveGridAnim.capture(grid, containerList);
        WaveGridAnim.shrinkOut(owner, grid, containerList, app);
        boolean emptiedFolder = false;
        synchronized (trayList) {
            int before = trayList.size();
            takeOut(trayList, app);
            emptiedFolder = !inTray && trayList.size() < before;
        }
        String comp = app.getPackageAndClassName();
        synchronized (WaveTray.class) {
            List<String> hidden = layout(l).hidden;
            if (comp != null && !hidden.contains(comp)) hidden.add(comp);
        }
        changed(l);
        if (inTray) {
            clampSelection(grid, trayList, oldPos);
            WaveGridAnim.play(grid, trayList, snap, null, null, null);
        } else if (!emptiedFolder) {
            clampSelection(grid, containerList, oldPos);
            WaveGridAnim.play(grid, containerList, snap, null, null, null);
        } else {
            GridView trayGrid = LauncherActivity.waveGrid(l);
            if (trayGrid != null) clampSelection(trayGrid, trayList, trayGrid.getSelectedItemPosition());
        }
        Toast.makeText(l, app.getName() + " removed", Toast.LENGTH_SHORT).show();
    }

    private static void clampSelection(GridView grid, ArrayList list, int pos) {
        if (grid == null || list == null) return;
        int size;
        synchronized (list) {
            size = list.size();
        }
        if (size <= 0) return;
        int target = Math.max(0, Math.min(pos, size - 1));
        grid.setSelection(target);
    }

    /** Opens the New folder sheet for a tray app; creating replaces the app with a 1-app folder. */
    static void newFolder(final LauncherActivity l, final LauncherActivity.Apps app) {
        if (pinned(app)) return;
        List<Drawable> preview = Collections.singletonList(app.getIcon());
        openFolderSheet(l, l, "New folder", "", "Create", preview, name -> {
            ArrayList list = LauncherActivity.waveList(l);
            if (!list.contains(app)) return true;
            LauncherActivity.Folder existing = findFolder(list, name);
            if (existing != null) {
                Toast.makeText(l, "There is already a folder called " + existing.getName(), Toast.LENGTH_SHORT).show();
                return false;
            }
            GridView trayGrid = LauncherActivity.waveGrid(l);
            WaveGridAnim.Snapshot snap = WaveGridAnim.capture(trayGrid, list);
            LauncherActivity.Folder f = l.new Folder();
            f.setName(name);
            f.setAppListInsideFolder(app);
            synchronized (list) {
                int at = list.indexOf(app);
                if (at < 0) return true;
                list.set(at, f);
            }
            changed(l);
            select(l, f);
            WaveGridAnim.play(trayGrid, list, snap, f, null, null);
            return true;
        });
    }

    /** Opens the Edit folder sheet for an existing folder (from the tray or from inside the folder). */
    static void editFolder(final LauncherActivity l, final Activity owner, final LauncherActivity.Folder f,
            final Consumer<String> onRenamed) {
        final String old = f.getName();
        openFolderSheet(l, owner, "Edit folder", old, owner.getString(android.R.string.ok),
                folderPreviewIcons(f), name -> {
                    ArrayList list = LauncherActivity.waveList(l);
                    if (!list.contains(f)) return true;
                    LauncherActivity.Folder other = findFolder(list, name);
                    if (other != null && other != f) {
                        Toast.makeText(owner, "There is already a folder called " + other.getName(),
                                Toast.LENGTH_SHORT).show();
                        return false;
                    }
                    f.setName(name);
                    synchronized (WaveTray.class) {
                        moveMissingKey(old, name);
                    }
                    if (onRenamed != null) onRenamed.accept(name);
                    changed(l);
                    return true;
                });
    }

    private static void moveMissingKey(String oldName, String newName) {
        if (WaveLayout.sameName(oldName, newName)) return;
        List<String> moved = null;
        for (Iterator<Map.Entry<String, List<String>>> it = sMissing.entrySet().iterator(); it.hasNext(); ) {
            Map.Entry<String, List<String>> e = it.next();
            if (!e.getKey().isEmpty() && WaveLayout.sameName(e.getKey(), oldName)) {
                moved = e.getValue();
                it.remove();
                break;
            }
        }
        if (moved != null) sMissing.put(newName, moved);
    }

    private static void dropMissingKey(String folderName) {
        for (Iterator<Map.Entry<String, List<String>>> it = sMissing.entrySet().iterator(); it.hasNext(); ) {
            Map.Entry<String, List<String>> e = it.next();
            if (!e.getKey().isEmpty() && WaveLayout.sameName(e.getKey(), folderName)) {
                it.remove();
            }
        }
    }

    /** Confirms deletion of a folder; removes the folder and hides all of its apps. */
    static void confirmDeleteFolder(final LauncherActivity l, final LauncherActivity.Folder f) {
        List<String> appNames = new ArrayList<>();
        ArrayList in = f.getAppListInsideFolder();
        if (in != null) {
            for (Object o : in) {
                if (o instanceof LauncherActivity.Apps) {
                    appNames.add(((LauncherActivity.Apps) o).getName());
                }
            }
        }
        final String folderName = f.getName();
        AlertDialog dialog = new AlertDialog.Builder(l, android.R.style.Theme_Material_Light_Dialog_Alert)
                .setTitle("Delete " + folderName + "?")
                .setMessage(WaveNav.deleteFolderMessage(appNames))
                .setPositiveButton("Delete", (d, w) -> deleteFolder(l, f))
                .setNegativeButton(android.R.string.cancel, null)
                .create();
        dialog.show();
        Button cancel = dialog.getButton(AlertDialog.BUTTON_NEGATIVE);
        if (cancel != null) cancel.requestFocus();
    }

    private static void deleteFolder(LauncherActivity l, LauncherActivity.Folder f) {
        ArrayList list = LauncherActivity.waveList(l);
        GridView grid = LauncherActivity.waveGrid(l);
        int oldPos;
        synchronized (list) {
            oldPos = list.indexOf(f);
        }
        if (oldPos < 0) return;
        WaveGridAnim.Snapshot snap = WaveGridAnim.capture(grid, list);
        WaveGridAnim.shrinkOut(l, grid, list, f);
        List<String> toHide = new ArrayList<>();
        synchronized (list) {
            int at = list.indexOf(f);
            if (at < 0) return;
            list.remove(at);
            ArrayList in = f.getAppListInsideFolder();
            if (in != null) {
                for (Object o : in) {
                    if (o instanceof LauncherActivity.Apps) {
                        LauncherActivity.Apps app = (LauncherActivity.Apps) o;
                        if (!pinned(app) && app.getPackageAndClassName() != null) {
                            toHide.add(app.getPackageAndClassName());
                        }
                    }
                }
            }
        }
        synchronized (WaveTray.class) {
            List<String> hidden = layout(l).hidden;
            for (String comp : toHide) {
                if (!hidden.contains(comp)) hidden.add(comp);
            }
            dropMissingKey(f.getName());
        }
        changed(l);
        clampSelection(grid, list, oldPos);
        WaveGridAnim.play(grid, list, snap, null, null, null);
        Toast.makeText(l, f.getName() + " deleted", Toast.LENGTH_SHORT).show();
    }

    /**
     * "Add new app": lists only launchable, exported apps not currently in the tray or any folder,
     * with icon and name rows in alphabetical order. Adds one app at the end and closes.
     */
    static void chooseApp(final LauncherActivity l, final Activity owner, final String folder,
            final GridView grid, final ArrayList containerList, final Consumer<LauncherActivity.Apps> added) {
        ArrayList list = LauncherActivity.waveList(l);
        Set<String> placed = new HashSet<>();
        synchronized (list) {
            for (Object o : list) {
                if (o instanceof LauncherActivity.Folder) {
                    LauncherActivity.Folder f = (LauncherActivity.Folder) o;
                    ArrayList apps = f.getAppListInsideFolder();
                    if (apps == null) continue;
                    for (Object app : apps) {
                        placed.add(((LauncherActivity.Apps) app).getPackageAndClassName());
                    }
                } else if (o instanceof LauncherActivity.Apps) {
                    placed.add(((LauncherActivity.Apps) o).getPackageAndClassName());
                }
            }
        }
        PackageManager pm = l.getPackageManager();
        final Map<String, String> labels = new HashMap<>();
        final Map<String, Drawable> icons = new HashMap<>();
        for (Map.Entry<String, ResolveInfo> e : launchable(pm).entrySet()) {
            String comp = e.getKey();
            ResolveInfo ri = e.getValue();
            if (ri.activityInfo.exported && !placed.contains(comp)) {
                Object[] meta = cachedMeta(pm, ri, comp);
                labels.put(comp, (String) meta[1]);
                Drawable themed = l.getPkgIconForTheme(comp);
                icons.put(comp, themed != null ? themed : (Drawable) meta[0]);
            }
        }
        final List<String> choices = new ArrayList<>(labels.keySet());
        Collator collator = Collator.getInstance();
        collator.setStrength(Collator.PRIMARY);
        choices.sort((a, b) -> {
            int order = collator.compare(labels.get(a), labels.get(b));
            return order != 0 ? order : a.compareTo(b);
        });

        AlertDialog.Builder dialog = new AlertDialog.Builder(owner, android.R.style.Theme_Material_Light_Dialog_Alert)
                .setTitle("Add new app");
        if (choices.isEmpty()) {
            dialog.setMessage("Every app is already in the tray.")
                    .setPositiveButton(android.R.string.ok, null)
                    .show();
            return;
        }
        final Context dlgCtx = dialog.getContext();
        final float d = dlgCtx.getResources().getDisplayMetrics().density;
        BaseAdapter rowAdapter = new BaseAdapter() {
            @Override
            public int getCount() {
                return choices.size();
            }

            @Override
            public Object getItem(int position) {
                return choices.get(position);
            }

            @Override
            public long getItemId(int position) {
                return position;
            }

            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                LinearLayout row;
                ImageView icon;
                TextView text;
                if (convertView instanceof LinearLayout) {
                    row = (LinearLayout) convertView;
                    icon = (ImageView) row.getChildAt(0);
                    text = (TextView) row.getChildAt(1);
                } else {
                    row = new LinearLayout(dlgCtx);
                    row.setOrientation(LinearLayout.HORIZONTAL);
                    row.setGravity(Gravity.CENTER_VERTICAL);
                    int padH = Math.round(16 * d);
                    int padV = Math.round(6 * d);
                    row.setPadding(padH, padV, padH, padV);
                    row.setMinimumHeight(Math.round(42 * d));

                    icon = new ImageView(dlgCtx);
                    int iconPx = Math.round(28 * d);
                    LinearLayout.LayoutParams iconLp = new LinearLayout.LayoutParams(iconPx, iconPx);
                    iconLp.rightMargin = Math.round(12 * d);
                    icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    row.addView(icon, iconLp);

                    text = new TextView(dlgCtx);
                    text.setTextColor(0xFF212121);
                    text.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                    text.setSingleLine(true);
                    text.setEllipsize(TextUtils.TruncateAt.END);
                    row.addView(text, new LinearLayout.LayoutParams(
                            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
                }
                String comp = choices.get(position);
                icon.setImageDrawable(icons.get(comp));
                text.setText(labels.get(comp));
                return row;
            }
        };
        dialog.setAdapter(rowAdapter, (dlg, which) -> {
            WaveGridAnim.Snapshot snap = WaveGridAnim.capture(grid, containerList);
            LauncherActivity.Apps app = addApp(l, folder, choices.get(which));
            if (app == null) {
                Toast.makeText(owner, "App no longer available to add", Toast.LENGTH_SHORT).show();
            } else {
                if (added != null) added.accept(app);
                WaveGridAnim.play(grid, containerList, snap, app, null, null);
            }
        }).show();
    }

    /** Adds an unplaced app at the end of the tray or folder, never making a second copy. */
    private static LauncherActivity.Apps addApp(LauncherActivity l, String folder, String comp) {
        if (!active() || l.isDestroyed()) return null;
        PackageManager pm = l.getPackageManager();
        ResolveInfo ri = launchable(pm).get(comp);
        if (ri == null || !ri.activityInfo.exported) return null;

        ArrayList list = LauncherActivity.waveList(l);
        LauncherActivity.Apps app;
        synchronized (list) {
            LauncherActivity.Folder dest = findFolder(list, folder);
            if (folder != null && dest == null) return null;
            ArrayList target = dest == null ? list : dest.getAppListInsideFolder();
            app = findApp(target, comp);
            if (app != null) return app; // an update put it there while the picker was open
            app = findApp(list, comp);
            if (app == null) {
                for (LauncherActivity.Folder f : folders(list)) {
                    if ((app = findApp(f.getAppListInsideFolder(), comp)) != null) break;
                }
            }
            if (app == null) app = makeApp(l, pm, ri, comp);
            else takeOut(list, app);
            if (dest == null) list.add(app);
            else dest.setAppListInsideFolder(app);
        }
        synchronized (WaveTray.class) {
            layout(l).reveal(comp);
            // An install can reach the picker before the tray rebuild for it has landed.
            for (List<String> keys : sMissing.values()) keys.removeIf(comp::equals);
        }
        changed(l);
        if (folder == null) select(l, app);
        return app;
    }

    private static LauncherActivity.Apps findApp(ArrayList list, String comp) {
        if (list == null) return null;
        for (Object o : list) {
            if (o instanceof LauncherActivity.Apps) {
                LauncherActivity.Apps app = (LauncherActivity.Apps) o;
                if (comp.equals(app.getPackageAndClassName())) return app;
            }
        }
        return null;
    }

    private static void select(LauncherActivity l, Object item) {
        ArrayList list = LauncherActivity.waveList(l);
        int i = list.indexOf(item);
        if (i < 0) {
            LauncherActivity.Folder f = folderHolding(list, item);
            i = f == null ? -1 : list.indexOf(f);
        }
        if (i < 0 || !LauncherActivity.waveTrayVisible(l)) return;
        GridView grid = LauncherActivity.waveGrid(l);
        grid.setSelection(i);
    }

    // ---- folder sheet dialog --------------------------------------------------------------------

    private interface FolderSubmit {
        /** Returns true to dismiss the dialog, false to keep it open (e.g., duplicate name). */
        boolean submit(String name);
    }

    private static void openFolderSheet(final LauncherActivity l, Activity owner, String title,
            String initialName, String positiveLabel, final List<Drawable> previewIcons,
            final FolderSubmit onSubmit) {
        AlertDialog.Builder builder = new AlertDialog.Builder(
                owner, android.R.style.Theme_Material_Light_Dialog_Alert);
        Context dlgCtx = builder.getContext();
        final float d = dlgCtx.getResources().getDisplayMetrics().density;
        final int theme = LauncherActivity.wavePrefs(l).getInt("current_theme", 0);

        LinearLayout box = new LinearLayout(dlgCtx);
        box.setOrientation(LinearLayout.VERTICAL);
        int pad = Math.round(16 * d);
        box.setPadding(pad, Math.round(8 * d), pad, 0);

        final ImageView preview = new ImageView(dlgCtx);
        int iconSize = Math.round(48 * d);
        LinearLayout.LayoutParams pvLp = new LinearLayout.LayoutParams(iconSize, iconSize);
        pvLp.gravity = Gravity.CENTER_HORIZONTAL;
        pvLp.bottomMargin = Math.round(8 * d);
        preview.setScaleType(ImageView.ScaleType.FIT_CENTER);
        preview.setImageDrawable(WaveIcons.folder(l.getResources(), initialName, previewIcons, theme));
        box.addView(preview, pvLp);

        final EditText edit = new EditText(dlgCtx);
        edit.setSingleLine(true);
        edit.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_WORDS);
        edit.setHint("Folder name");
        edit.setFilters(new InputFilter[] {new InputFilter.LengthFilter(24)});
        edit.setText(initialName);
        edit.setSelection(edit.getText().length());
        box.addView(edit, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        final AlertDialog dialog = builder
                .setTitle(title)
                .setView(box)
                .setPositiveButton(positiveLabel, null)
                .setNegativeButton(android.R.string.cancel, null)
                .create();
        dialog.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);
        dialog.show();

        final Button okBtn = dialog.getButton(AlertDialog.BUTTON_POSITIVE);
        Runnable sync = () -> {
            String raw = edit.getText().toString().replace('\n', ' ').trim();
            if (okBtn != null) okBtn.setEnabled(!raw.isEmpty());
            preview.setImageDrawable(WaveIcons.folder(l.getResources(), raw, previewIcons, theme));
        };
        sync.run();
        edit.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                sync.run();
            }
        });
        if (okBtn != null) {
            okBtn.setOnClickListener(v -> {
                String name = edit.getText().toString().replace('\n', ' ').trim();
                if (name.isEmpty()) return;
                if (onSubmit.submit(name)) dialog.dismiss();
            });
        }
    }
}
