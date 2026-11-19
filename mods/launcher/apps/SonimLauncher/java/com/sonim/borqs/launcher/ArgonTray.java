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
import android.view.Menu;
import android.view.MenuItem;
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
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Launcher Argon: the apps tray, arranged by the user. Replaces the stock tray's list building
 * (LauncherActivity.setAppsAndFolderList and the package receiver) and adds the Menu-key
 * actions that used to live in the separate Launcher app (com.custom.appdrawer): move an app or
 * folder, put apps in folders, rename and remove folders, hide apps, reset.
 *
 * The arrangement is files/argon_tray.txt in the launcher's data (format: ArgonLayout). Until the
 * user changes something it is ArgonDefaults with Sonim's own tray at the end.
 *
 * Threads: rebuild() runs where the stock method ran (the launcher's ParseThread, or the UI
 * thread); package changes rebuild on a worker and swap the result in on the UI thread; every
 * edit happens on the UI thread.
 */
final class ArgonTray {
    static final String TAG = "ArgonTray";
    private static final String FILE = "argon_tray.txt";
    private static final String SELF = "com.sonim.borqs.launcher";
    private static final String STK = "com.android.stk";   // the stock code adds it to Tools itself

    static final int MENU_MOVE = 101;
    static final int MENU_TO_FOLDER = 102;
    static final int MENU_HIDE = 103;
    static final int MENU_RENAME = 104;
    static final int MENU_UNFOLDER = 105;
    static final int MENU_HIDDEN = 106;
    static final int MENU_RESET = 107;

    /** The move in progress, if any (one at a time, in the tray or a folder). */
    static ArgonMover sMover;

    private static ArgonLayout sLayout;          // what was loaded or last saved
    private static Map<String, List<String>> sMissing = new LinkedHashMap<>();
    private static int sGeneration;              // bumped by every edit; stale rebuilds retry
    private static boolean sPendingRebuild;      // a package changed during a move
    private static boolean sFallback;            // our build failed: the stock tray is running
    private static WeakReference<LauncherActivity> sLauncher = new WeakReference<>(null);
    private static LauncherActivity.AppsAndFolder sMenuTarget;
    private static final Map<String, Object[]> sCache = new HashMap<>();   // component -> {icon, label}
    private static final ExecutorService sWorker = Executors.newSingleThreadExecutor();

    private ArgonTray() {
    }

    // ---- building -------------------------------------------------------------------------------

    /** Replaces LauncherActivity.setAppsAndFolderList(). */
    static void rebuild(LauncherActivity l) {
        sLauncher = new WeakReference<>(l);
        try {
            ArrayList built = build(l, layout(l));
            ArrayList list = LauncherActivity.argonList(l);
            synchronized (list) {
                list.clear();
                list.addAll(built);
                afterSwap(l);
            }
            sFallback = false;
        } catch (RuntimeException e) {
            // Never leave the phone without its apps: fall back to Sonim's own tray.
            Log.e(TAG, "building the tray failed, using the stock tray", e);
            sFallback = true;
            closeStockCursor(l);                  // the caller's; the stock builder opens its own
            LauncherActivity.argonStockTray(l);   // (and closes it and the database, as stock)
            return;
        } finally {
            closeStockCursor(l);
        }
    }

    private static void closeStockCursor(LauncherActivity l) {
        try {
            Cursor c = LauncherActivity.argonCursor(l);
            if (c != null) c.close();
            DatabaseHelper db = LauncherActivity.argonDb(l);
            if (db != null) db.close();
        } catch (RuntimeException e) {
            Log.w(TAG, "closing the stock cursor", e);
        }
    }

    private static synchronized ArgonLayout layout(Context ctx) {
        if (sLayout != null) return sLayout;
        File f = new File(ctx.getFilesDir(), FILE);
        if (f.isFile()) {
            try {
                sLayout = ArgonLayout.parse(read(f));
                return sLayout;
            } catch (IOException | IllegalArgumentException e) {
                Log.e(TAG, "unreadable " + f + ", using the defaults (kept as " + FILE + ".bad)", e);
                f.renameTo(new File(ctx.getFilesDir(), FILE + ".bad"));
            }
        }
        sLayout = ArgonLayout.withStock(ArgonLayout.parse(ArgonDefaults.LAYOUT), stockRows(ctx));
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

    private static ArrayList build(LauncherActivity l, ArgonLayout layout) {
        PackageManager pm = l.getPackageManager();
        boolean safe = pm.isSafeMode();
        Intent main = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> ris = pm.queryIntentActivities(main, 0);
        Map<String, ResolveInfo> byComp = new HashMap<>();
        List<ArgonLayout.Installed> installed = new ArrayList<>();
        for (ResolveInfo ri : ris) {
            String pkg = ri.activityInfo.packageName;
            if (SELF.equals(pkg) || STK.equals(pkg)) continue;
            boolean system = (ri.activityInfo.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0;
            if (safe && !system) continue;
            String comp = pkg + "/" + ri.activityInfo.name;
            if (byComp.put(comp, ri) == null) installed.add(new ArgonLayout.Installed(comp, system));
        }
        ArgonLayout.Result r = ArgonLayout.resolve(layout, installed, ArgonDefaults.INBOX);
        int theme = LauncherActivity.argonPrefs(l).getInt("current_theme", 0);

        ArrayList out = new ArrayList();
        for (ArgonLayout.Node n : r.tree) {
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
        synchronized (ArgonTray.class) {
            sMissing = r.missing;
        }
        Log.i(TAG, "tray: " + out.size() + " entries, " + r.hidden.size() + " hidden, "
                + r.missing.size() + " places with uninstalled apps");
        return out;
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

    /** Stock folders keep their stock icons; the user's get a drawn one with a preview. */
    private static boolean isStockFolder(Context ctx, String name) {
        for (String s : new String[] {"Applications", "Aplicaciones", "Tools", "Outils", "Music", "Música",
                "Verizon", ctx.getString(ArgonR.STRING_FOLDER_APPS), ctx.getString(ArgonR.STRING_FOLDER_TOOLS)}) {
            if (s.equalsIgnoreCase(name)) return true;
        }
        return false;
    }

    private static Drawable folderIcon(LauncherActivity l, LauncherActivity.Folder f, int theme) {
        if (isStockFolder(l, f.getName())) return LauncherActivity.argonStockFolderIcon(l, f.getName());
        List<Drawable> icons = new ArrayList<>();
        ArrayList apps = f.getAppListInsideFolder();
        if (apps != null) {
            for (Object o : apps) {
                icons.add(((LauncherActivity.AppsAndFolder) o).getIcon());
                if (icons.size() == 4) break;
            }
        }
        return ArgonIcons.folder(l.getResources(), f.getName(), icons, theme);
    }

    /** Hook at the start of LauncherActivity.getFolderIcon(name): null means "stock icon". */
    static Drawable folderIconHook(LauncherActivity l, String name) {
        if (sFallback || name == null || isStockFolder(l, name)) return null;
        int theme = LauncherActivity.argonPrefs(l).getInt("current_theme", 0);
        LauncherActivity.Folder f = findFolder(LauncherActivity.argonList(l), name);
        if (f != null) return folderIcon(l, f, theme);
        return ArgonIcons.folder(l.getResources(), name, new ArrayList<Drawable>(), theme);
    }

    /** What the stock code expects after the list is built: positions, STK, shortcut list. */
    private static void afterSwap(LauncherActivity l) {
        ArrayList list = LauncherActivity.argonList(l);
        String tools = l.getString(ArgonR.STRING_FOLDER_TOOLS), apps = l.getString(ArgonR.STRING_FOLDER_APPS);
        int toolsAt = -1, appsAt = -1;
        for (int i = 0; i < list.size(); i++) {
            Object o = list.get(i);
            if (!(o instanceof LauncherActivity.Folder)) continue;
            String name = ((LauncherActivity.Folder) o).getName();
            if (toolsAt < 0 && tools.equalsIgnoreCase(name)) toolsAt = i;
            if (appsAt < 0 && apps.equalsIgnoreCase(name)) appsAt = i;
        }
        LauncherActivity.argonPrefs(l).edit().putInt("stk_postion", toolsAt).putInt("sonim_postion", appsAt).apply();
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
        ArrayList list = LauncherActivity.argonList(l);
        if (pkg == null || list == null || list.isEmpty()) return true;   // not built yet: ParseThread will
        Log.i(TAG, action + " " + pkg + (replacing ? " (replacing)" : ""));
        forget(pkg);
        if (Intent.ACTION_PACKAGE_REMOVED.equals(action)) {
            if (replacing) return true;                                    // PACKAGE_ADDED follows
            LauncherActivity.argonCheckNavKey(l, pkg);
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
            final ArrayList built;
            try {
                synchronized (LauncherActivity.argonLock()) {
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
                    if (changedPkg != null) LauncherActivity.argonUpdateNavKey(l, changedPkg);
                }
            });
        });
    }

    private static void swapIn(LauncherActivity l, ArrayList built) {
        ArrayList list = LauncherActivity.argonList(l);
        synchronized (list) {
            list.clear();
            list.addAll(built);
            afterSwap(l);
        }
        DrawerAdapter a = LauncherActivity.argonAdapter(l);
        if (a != null) a.notifyDataSetChanged();
        else l.mHandler.sendEmptyMessage(1);
        ((AccessArrayList) l.getApplication()).notifyAppListChanged();
    }

    // ---- saving ---------------------------------------------------------------------------------

    /** After any edit: refresh icons and everyone showing the tray, then save the arrangement. */
    static void changed(LauncherActivity l) {
        ArrayList list = LauncherActivity.argonList(l);
        int theme = LauncherActivity.argonPrefs(l).getInt("current_theme", 0);
        synchronized (list) {
            for (Object o : list) {
                if (o instanceof LauncherActivity.Folder) {
                    LauncherActivity.Folder f = (LauncherActivity.Folder) o;
                    f.setIcon(folderIcon(l, f, theme));
                }
            }
            afterSwap(l);
        }
        DrawerAdapter a = LauncherActivity.argonAdapter(l);
        if (a != null) a.notifyDataSetChanged();
        ((AccessArrayList) l.getApplication()).notifyAppListChanged();
        save(l);
    }

    private static void save(LauncherActivity l) {
        List<ArgonLayout.Node> shown = new ArrayList<>();
        ArrayList list = LauncherActivity.argonList(l);
        synchronized (list) {
            for (Object o : list) {
                if (o instanceof LauncherActivity.Folder) {
                    LauncherActivity.Folder f = (LauncherActivity.Folder) o;
                    List<String> apps = new ArrayList<>();
                    ArrayList in = f.getAppListInsideFolder();
                    if (in != null) {
                        for (Object a : in) {
                            String c = ((LauncherActivity.Apps) a).getPackageAndClassName();
                            if (!STK.equals(ArgonLayout.pkgOf(c))) apps.add(c);
                        }
                    }
                    shown.add(new ArgonLayout.Node(f.getName(), apps));
                } else if (o instanceof LauncherActivity.Apps) {
                    String c = ((LauncherActivity.Apps) o).getPackageAndClassName();
                    if (!STK.equals(ArgonLayout.pkgOf(c))) shown.add(new ArgonLayout.Node(c));
                }
            }
        }
        String text;
        synchronized (ArgonTray.class) {
            ArgonLayout cur = layout(l);
            sLayout = ArgonLayout.snapshot(shown, sMissing, cur.hidden);
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
        return c != null && STK.equals(ArgonLayout.pkgOf(c));
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
        ArgonMover m = sMover;
        if (m == null || m.activity != l) return false;
        if (!LauncherActivity.argonTrayVisible(l)) {
            m.finish(true);
            return false;
        }
        return m.key(e);
    }

    /** Hook in LauncherActivity.onPause: leaving mid-move keeps the entry where it was carried. */
    static void onPause(LauncherActivity l) {
        ArgonMover m = sMover;
        if (m != null && m.activity == l) m.finish(true);
    }

    /** Hook in LauncherActivity.onCreateOptionsMenu, before the stock items (so ours come first). */
    static void onCreateMenu(LauncherActivity l, Menu menu) {
        sMenuTarget = null;
        if (sFallback || !LauncherActivity.argonTrayVisible(l)) return;
        GridView grid = LauncherActivity.argonGrid(l);
        ArrayList list = LauncherActivity.argonList(l);
        int pos = grid.getSelectedItemPosition();
        if (pos >= 0 && pos < list.size()) sMenuTarget = (LauncherActivity.AppsAndFolder) list.get(pos);
        if (sMenuTarget instanceof LauncherActivity.Apps) {
            if (list.size() > 1) menu.add(0, MENU_MOVE, 0, "Move");
            if (!pinned((LauncherActivity.Apps) sMenuTarget)) {
                menu.add(0, MENU_TO_FOLDER, 0, "Move to folder");
                menu.add(0, MENU_HIDE, 0, "Hide");
            }
        } else if (sMenuTarget instanceof LauncherActivity.Folder) {
            if (list.size() > 1) menu.add(0, MENU_MOVE, 0, "Move");
            menu.add(0, MENU_RENAME, 0, "Rename folder");
            menu.add(0, MENU_UNFOLDER, 0, "Remove folder");
        }
        if (!hiddenApps(l).isEmpty()) menu.add(0, MENU_HIDDEN, 0, "Hidden apps");
        menu.add(0, MENU_RESET, 6, "Reset layout");
    }

    /** Hook at the start of LauncherActivity.onOptionsItemSelected; true = handled. */
    static boolean onMenuItem(final LauncherActivity l, MenuItem item) {
        final LauncherActivity.AppsAndFolder target = sMenuTarget;
        final ArrayList list = LauncherActivity.argonList(l);
        final GridView grid = LauncherActivity.argonGrid(l);
        switch (item.getItemId()) {
            case MENU_MOVE:
                if (target == null || !list.contains(target)) return true;
                startMove(l, grid, list, LauncherActivity.argonAdapter(l), target, l);
                return true;
            case MENU_TO_FOLDER:
                if (target instanceof LauncherActivity.Apps) chooseFolder(l, l, (LauncherActivity.Apps) target, null);
                return true;
            case MENU_HIDE:
                if (target instanceof LauncherActivity.Apps) hide(l, (LauncherActivity.Apps) target, null);
                return true;
            case MENU_RENAME:
                if (target instanceof LauncherActivity.Folder) rename(l, (LauncherActivity.Folder) target);
                return true;
            case MENU_UNFOLDER:
                if (target instanceof LauncherActivity.Folder) unfolder(l, (LauncherActivity.Folder) target);
                return true;
            case MENU_HIDDEN:
                showHidden(l);
                return true;
            case MENU_RESET:
                confirmReset(l);
                return true;
            default:
                return false;
        }
    }

    static void startMove(final LauncherActivity l, GridView grid, ArrayList list, DrawerAdapter adapter,
            Object target, Activity owner) {
        if (adapter == null || sMover != null) return;
        sMover = new ArgonMover(owner, grid, list, adapter, target, kept -> {
            if (kept) changed(l);
            if (sPendingRebuild) {
                sPendingRebuild = false;
                scheduleRebuild(l, null);
            }
        });
    }

    // ---- edits (UI thread) ------------------------------------------------------------------------

    /** The container (the tray's list or a folder's) holding app, or null. */
    private static ArrayList containerOf(ArrayList list, Object app) {
        if (list.contains(app)) return list;
        for (LauncherActivity.Folder f : folders(list)) {
            ArrayList in = f.getAppListInsideFolder();
            if (in != null && in.contains(app)) return in;
        }
        return null;
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
     * from: the folder screen asking (it closes itself when emptied), or null for the tray.
     */
    static void chooseFolder(final LauncherActivity l, final Activity owner, final LauncherActivity.Apps app,
            final Runnable after) {
        final ArrayList list = LauncherActivity.argonList(l);
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
                    if (which < targets.size()) {
                        moveInto(l, app, targets.get(which));
                    } else if (offerMain && which == targets.size()) {
                        synchronized (list) {
                            int at = takeOut(list, app);
                            list.add(Math.min(at, list.size()), app);
                        }
                        changed(l);
                        select(l, app);
                    } else {
                        askName(owner, "New folder", "", "Create", name -> {
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
                            if (after != null) after.run();
                        });
                        return;
                    }
                    if (after != null) after.run();
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private static void moveInto(LauncherActivity l, LauncherActivity.Apps app, LauncherActivity.Folder f) {
        ArrayList list = LauncherActivity.argonList(l);
        synchronized (list) {
            takeOut(list, app);
            f.setAppListInsideFolder(app);
        }
        changed(l);
        select(l, f);
    }

    static void hide(LauncherActivity l, LauncherActivity.Apps app, Runnable after) {
        ArrayList list = LauncherActivity.argonList(l);
        synchronized (list) {
            takeOut(list, app);
        }
        synchronized (ArgonTray.class) {
            layout(l).hidden.add(app.getPackageAndClassName());
        }
        changed(l);
        Toast.makeText(l, app.getName() + " hidden", Toast.LENGTH_SHORT).show();
        if (after != null) after.run();
    }

    private static void rename(final LauncherActivity l, final LauncherActivity.Folder f) {
        final String old = f.getName();
        askName(l, "Rename folder", old, android.R.string.ok, name -> {
            ArrayList list = LauncherActivity.argonList(l);
            LauncherActivity.Folder other = findFolder(list, name);
            if (other != null && other != f) {
                Toast.makeText(l, "There is already a folder called " + other.getName(), Toast.LENGTH_SHORT).show();
                return;
            }
            f.setName(name);
            synchronized (ArgonTray.class) {
                List<String> m = sMissing.remove(old);
                if (m != null) sMissing.put(name, m);
            }
            changed(l);
        });
    }

    private static void unfolder(LauncherActivity l, LauncherActivity.Folder f) {
        ArrayList list = LauncherActivity.argonList(l);
        synchronized (list) {
            int at = list.indexOf(f);
            if (at < 0) return;
            list.remove(at);
            ArrayList in = f.getAppListInsideFolder();
            if (in != null) list.addAll(at, in);
        }
        changed(l);
    }

    /** Hidden apps that are installed: component -> label, sorted by label. */
    private static LinkedHashMap<String, String> hiddenApps(Context ctx) {
        List<String> keys;
        synchronized (ArgonTray.class) {
            keys = new ArrayList<>(layout(ctx).hidden);
        }
        PackageManager pm = ctx.getPackageManager();
        Intent main = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
        final Map<String, String> found = new HashMap<>();
        for (String k : keys) {
            Intent i = new Intent(main);
            if (k.indexOf('/') >= 0) i.setComponent(ComponentName.unflattenFromString(k));
            else i.setPackage(k);
            for (ResolveInfo ri : pm.queryIntentActivities(i, 0)) {
                found.put(ri.activityInfo.packageName + "/" + ri.activityInfo.name, String.valueOf(ri.loadLabel(pm)));
            }
        }
        List<String> comps = new ArrayList<>(found.keySet());
        final Collator coll = Collator.getInstance();
        coll.setStrength(Collator.PRIMARY);
        Collections.sort(comps, (a, b) -> coll.compare(found.get(a), found.get(b)));
        LinkedHashMap<String, String> out = new LinkedHashMap<>();
        for (String c : comps) out.put(c, found.get(c));
        return out;
    }

    private static void showHidden(final LauncherActivity l) {
        final LinkedHashMap<String, String> hidden = hiddenApps(l);
        if (hidden.isEmpty()) return;
        final List<String> comps = new ArrayList<>(hidden.keySet());
        new AlertDialog.Builder(l)
                .setTitle("Hidden apps")
                .setItems(hidden.values().toArray(new String[0]), (d, which) -> unhide(l, comps.get(which)))
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    /** Shows a hidden app again, at the end of the main screen. */
    private static void unhide(LauncherActivity l, String comp) {
        PackageManager pm = l.getPackageManager();
        ComponentName cn = ComponentName.unflattenFromString(comp);
        ResolveInfo ri = pm.resolveActivity(new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER)
                .setComponent(cn), 0);
        if (ri == null) return;
        synchronized (ArgonTray.class) {
            List<String> h = layout(l).hidden;
            h.remove(comp);
            h.remove(cn.getPackageName());
        }
        LauncherActivity.Apps app = makeApp(l, pm, ri, comp);
        ArrayList list = LauncherActivity.argonList(l);
        synchronized (list) {
            list.add(app);
        }
        changed(l);
        select(l, app);
    }

    private static void confirmReset(final LauncherActivity l) {
        new AlertDialog.Builder(l)
                .setTitle("Reset layout")
                .setMessage("Put every app back where it was at first? Your folders and order are lost.")
                .setPositiveButton("Reset", (d, w) -> {
                    synchronized (ArgonTray.class) {
                        new File(l.getFilesDir(), FILE).delete();
                        sLayout = null;
                        sGeneration++;
                    }
                    scheduleRebuild(l, null);
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private static void select(LauncherActivity l, Object item) {
        ArrayList list = LauncherActivity.argonList(l);
        int i = list.indexOf(item);
        if (i < 0) {
            LauncherActivity.Folder f = folderHolding(list, item);
            i = f == null ? -1 : list.indexOf(f);
        }
        if (i < 0 || !LauncherActivity.argonTrayVisible(l)) return;
        GridView grid = LauncherActivity.argonGrid(l);
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
