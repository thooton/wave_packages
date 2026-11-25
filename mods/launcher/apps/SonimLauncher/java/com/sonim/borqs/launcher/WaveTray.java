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
import android.text.InputFilter;
import android.text.InputType;
import android.util.Log;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
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
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
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

    private static LauncherActivity.Apps makeApp(LauncherActivity l, PackageManager pm, ResolveInfo ri, String comp) {
        LauncherActivity.Apps a = new LauncherActivity.Apps();
        ComponentName cn = ComponentName.unflattenFromString(comp);
        a.setPackageAndClassName(comp);
        a.setPackageName(cn.getPackageName());
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

    /** Every folder, Sonim's Tools and Applications included, gets a drawn icon previewing its apps. */
    private static Drawable folderIcon(LauncherActivity l, LauncherActivity.Folder f, int theme) {
        List<Drawable> icons = new ArrayList<>();
        ArrayList apps = f.getAppListInsideFolder();
        if (apps != null) {
            for (Object o : apps) {
                icons.add(((LauncherActivity.AppsAndFolder) o).getIcon());
                if (icons.size() == 4) break;
            }
        }
        return WaveIcons.folder(l.getResources(), f.getName(), icons, theme);
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

    private static void scheduleRebuild(final LauncherActivity l, final String changedPkg) {
        if (sMover != null) {
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
                if (sMover != null) {
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

    // ---- keys and menu in the tray ----------------------------------------------------------------

    /** Hook at the start of LauncherActivity.dispatchKeyEvent; true = consumed. */
    static boolean dispatchKey(LauncherActivity l, android.view.KeyEvent e) {
        WaveMover m = sMover;
        if (m == null || m.activity != l) return false;
        if (!LauncherActivity.waveTrayVisible(l)) {
            m.finish(true);
            return false;
        }
        return m.key(e);
    }

    /** Hook in LauncherActivity.onPause: leaving mid-move keeps the entry where it was carried. */
    static void onPause(LauncherActivity l) {
        WaveMover m = sMover;
        if (m != null && m.activity == l) m.finish(true);
    }

    static void startMove(final LauncherActivity l, GridView grid, ArrayList list, DrawerAdapter adapter,
            Object target, Activity owner) {
        if (adapter == null || sMover != null) return;
        sMover = new WaveMover(owner, grid, list, adapter, target, kept -> {
            if (kept) changed(l);
            if (sPendingRebuild) {
                sPendingRebuild = false;
                scheduleRebuild(l, null);
            }
        });
    }

    // ---- edits (UI thread) ------------------------------------------------------------------------

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

    /**
     * "Move to folder": the other folders, "Main screen" when it's in a folder, and "New folder".
     */
    static void chooseFolder(final LauncherActivity l, final Activity owner, final LauncherActivity.Apps app) {
        final ArrayList list = LauncherActivity.waveList(l);
        final LauncherActivity.Folder current = folderHolding(list, app);
        final List<LauncherActivity.Folder> targets = new ArrayList<>();
        final List<String> labels = new ArrayList<>();
        for (LauncherActivity.Folder f : folders(list)) {
            if (f == current) continue;
            targets.add(f);
            labels.add(f.getName());
        }
        final boolean offerMain = current != null;
        if (offerMain) labels.add("Main screen");
        labels.add("New folder");
        new AlertDialog.Builder(owner)
                .setTitle("Move to folder")
                .setItems(labels.toArray(new String[0]), (d, which) -> {
                    if (!contains(l, app)) return;
                    if (which < targets.size()) {
                        LauncherActivity.Folder target = targets.get(which);
                        if (list.contains(target)) moveInto(l, app, target);
                    } else if (offerMain && which == targets.size()) {
                        synchronized (list) {
                            int at = takeOut(list, app);
                            list.add(Math.min(at, list.size()), app);
                        }
                        changed(l);
                        select(l, app);
                    } else {
                        askName(owner, "New folder", "", "Create", name -> {
                            if (!contains(l, app)) return;
                            LauncherActivity.Folder existing = findFolder(list, name);
                            if (existing != null) {
                                moveInto(l, app, existing);
                            } else {
                                LauncherActivity.Folder f = l.new Folder();
                                f.setName(name);
                                synchronized (list) {
                                    int at = takeOut(list, app);
                                    f.setAppListInsideFolder(app);
                                    list.add(Math.min(at, list.size()), f);
                                }
                                changed(l);
                                select(l, f);
                            }
                        });
                    }
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private static void moveInto(LauncherActivity l, LauncherActivity.Apps app, LauncherActivity.Folder f) {
        ArrayList list = LauncherActivity.waveList(l);
        synchronized (list) {
            takeOut(list, app);
            f.setAppListInsideFolder(app);
        }
        changed(l);
        select(l, f);
    }

    static void hide(LauncherActivity l, LauncherActivity.Apps app) {
        ArrayList list = LauncherActivity.waveList(l);
        synchronized (list) {
            takeOut(list, app);
        }
        synchronized (WaveTray.class) {
            layout(l).hidden.add(app.getPackageAndClassName());
        }
        changed(l);
        Toast.makeText(l, app.getName() + " hidden", Toast.LENGTH_SHORT).show();
    }

    static void rename(final LauncherActivity l, final LauncherActivity.Folder f) {
        final String old = f.getName();
        askName(l, "Rename folder", old, android.R.string.ok, name -> {
            ArrayList list = LauncherActivity.waveList(l);
            if (!list.contains(f)) return;
            LauncherActivity.Folder other = findFolder(list, name);
            if (other != null && other != f) {
                Toast.makeText(l, "There is already a folder called " + other.getName(), Toast.LENGTH_SHORT).show();
                return;
            }
            f.setName(name);
            synchronized (WaveTray.class) {
                List<String> m = sMissing.remove(old);
                if (m != null) sMissing.put(name, m);
            }
            changed(l);
        });
    }

    static void unfolder(LauncherActivity l, LauncherActivity.Folder f) {
        ArrayList list = LauncherActivity.waveList(l);
        synchronized (list) {
            int at = list.indexOf(f);
            if (at < 0) return;
            list.remove(at);
            ArrayList in = f.getAppListInsideFolder();
            if (in != null) list.addAll(at, in);
        }
        changed(l);
    }

    /** Installed activities not already in the destination; current locations disambiguate the list. */
    static void chooseApp(LauncherActivity l, Activity owner, String folder, Consumer<LauncherActivity.Apps> added) {
        ArrayList list = LauncherActivity.waveList(l);
        Map<String, String> placed = new HashMap<>();
        synchronized (list) {
            for (Object o : list) {
                if (o instanceof LauncherActivity.Folder) {
                    LauncherActivity.Folder f = (LauncherActivity.Folder) o;
                    ArrayList apps = f.getAppListInsideFolder();
                    if (apps == null) continue;
                    for (Object app : apps) {
                        placed.put(((LauncherActivity.Apps) app).getPackageAndClassName(), f.getName());
                    }
                } else if (o instanceof LauncherActivity.Apps) {
                    placed.put(((LauncherActivity.Apps) o).getPackageAndClassName(), "");
                }
            }
        }
        PackageManager pm = l.getPackageManager();
        Map<String, String> labels = new HashMap<>();
        String destination = folder == null ? "" : folder;
        for (Map.Entry<String, ResolveInfo> e : launchable(pm).entrySet()) {
            if (e.getValue().activityInfo.exported && !WaveLayout.sameName(placed.get(e.getKey()), destination)) {
                labels.put(e.getKey(), String.valueOf(e.getValue().loadLabel(pm)));
            }
        }
        List<String> choices = new ArrayList<>(labels.keySet());
        Collator collator = Collator.getInstance();
        collator.setStrength(Collator.PRIMARY);
        choices.sort((a, b) -> {
            int order = collator.compare(labels.get(a), labels.get(b));
            return order != 0 ? order : a.compareTo(b);
        });
        String[] rows = new String[choices.size()];
        for (int i = 0; i < rows.length; i++) {
            String comp = choices.get(i), where = placed.get(comp);
            rows[i] = labels.get(comp);
            if (where != null) rows[i] += " (" + (where.isEmpty() ? "Main tray" : where) + ")";
        }
        AlertDialog.Builder dialog = new AlertDialog.Builder(owner)
                .setTitle(folder == null ? "Add apps" : "Add to " + folder);
        if (rows.length == 0) {
            dialog.setMessage("No other apps to add").setPositiveButton(android.R.string.ok, null);
        } else {
            dialog.setItems(rows, (d, which) -> {
                LauncherActivity.Apps app = addApp(l, folder, choices.get(which));
                if (app == null) Toast.makeText(owner, "App no longer available to add", Toast.LENGTH_SHORT).show();
                else if (added != null) added.accept(app);
            }).setNegativeButton(android.R.string.cancel, null);
        }
        dialog.show();
    }

    /** Add an unlisted app or move the existing entry, never make a second copy. */
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

    static void confirmReset(final LauncherActivity l) {
        new AlertDialog.Builder(l)
                .setTitle("Reset layout")
                .setMessage("Put every app back where it was at first? Your folders and order are lost.")
                .setPositiveButton("Reset", (d, w) -> {
                    synchronized (WaveTray.class) {
                        TrayFile.reset(l.getFilesDir(), FILE);
                        sLayout = null;
                        sGeneration++;
                    }
                    scheduleRebuild(l, null);
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
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
        grid.smoothScrollToPosition(i);
    }

    // ---- small dialogs ------------------------------------------------------------------------------

    interface NameCallback {
        void named(String name);
    }

    private static void askName(Activity a, String title, String initial, int okRes, NameCallback cb) {
        askName(a, title, initial, a.getString(okRes), cb);
    }

    private static void askName(Activity a, String title, String initial, String ok, final NameCallback cb) {
        final EditText edit = new EditText(a);
        edit.setSingleLine(true);
        edit.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_WORDS);
        edit.setFilters(new InputFilter[] {new InputFilter.LengthFilter(24)});
        edit.setText(initial);
        edit.setSelection(edit.getText().length());
        FrameLayout box = new FrameLayout(a);
        int pad = Math.round(16 * a.getResources().getDisplayMetrics().density);
        box.setPadding(pad, pad / 2, pad, 0);
        box.addView(edit);
        AlertDialog dialog = new AlertDialog.Builder(a)
                .setTitle(title)
                .setView(box)
                .setPositiveButton(ok, (d, w) -> {
                    String name = edit.getText().toString().replace('\n', ' ').trim();
                    if (!name.isEmpty()) cb.named(name);
                })
                .setNegativeButton(android.R.string.cancel, null)
                .create();
        dialog.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);
        dialog.show();
    }
}
