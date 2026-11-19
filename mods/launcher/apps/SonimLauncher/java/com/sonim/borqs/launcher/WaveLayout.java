package com.sonim.borqs.launcher;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * Launcher Improved: the apps tray's arrangement, as saved in files/wave_tray.txt. Plain Java (no
 * Android) so tools/test can run it on the host.
 *
 * Text format, one entry per line ('#' starts a comment line):
 *   app <key>          an app on the tray's main screen
 *   folder <name>      a folder on the main screen; the indented lines below it are its apps
 *       <key>
 *   hide <key>         an app that is never shown
 *   stock              (defaults only) Sonim's own tray, from the launcher's App_Tray database
 * A key is "package/class" (one launcher activity) or "package" (every launcher activity of the
 * package that isn't placed anywhere else).
 */
final class WaveLayout {

    /** One entry of the main screen: an app (folder == null) or a folder. */
    static final class Item {
        final String app;
        final String folder;
        final List<String> apps;

        private Item(String app, String folder, List<String> apps) {
            this.app = app;
            this.folder = folder;
            this.apps = apps;
        }

        static Item app(String key) {
            return new Item(key, null, null);
        }

        static Item folder(String name, List<String> apps) {
            return new Item(null, name, new ArrayList<>(apps));
        }

        static Item stock() {
            return new Item(null, null, null);
        }

        boolean isFolder() {
            return folder != null;
        }

        boolean isStock() {
            return app == null && folder == null;
        }
    }

    /** A launchable activity on the phone. */
    static final class Installed {
        final String component;
        final String pkg;
        final boolean system;

        Installed(String component, boolean system) {
            this.component = component;
            this.pkg = pkgOf(component);
            this.system = system;
        }
    }

    /** What to show: the main screen, each entry an app (component) or a folder of components. */
    static final class Node {
        final String component;
        final String folder;
        final List<String> apps;

        Node(String component) {
            this.component = component;
            this.folder = null;
            this.apps = null;
        }

        Node(String folder, List<String> apps) {
            this.component = null;
            this.folder = folder;
            this.apps = apps;
        }
    }

    /** resolve()'s answer: what to show, and what of the layout isn't installed now. */
    static final class Result {
        final List<Node> tree = new ArrayList<>();
        /** Layout keys that aren't installed, by container ("" = main screen, else folder name). */
        final Map<String, List<String>> missing = new LinkedHashMap<>();
        /** Components the layout hides that are installed. */
        final List<String> hidden = new ArrayList<>();
    }

    final List<Item> top = new ArrayList<>();
    final List<String> hidden = new ArrayList<>();

    static String pkgOf(String key) {
        int slash = key.indexOf('/');
        return slash < 0 ? key : key.substring(0, slash);
    }

    static boolean sameName(String a, String b) {
        return a != null && b != null && a.trim().equalsIgnoreCase(b.trim());
    }

    // ---- text ---------------------------------------------------------------------------------

    static WaveLayout parse(String text) {
        WaveLayout layout = new WaveLayout();
        List<String> folder = null;
        int n = 0;
        for (String raw : text.split("\r?\n", -1)) {
            n++;
            if (raw.trim().isEmpty() || raw.trim().startsWith("#")) continue;
            boolean indented = Character.isWhitespace(raw.charAt(0));
            String line = raw.trim();
            if (indented) {
                if (folder == null) throw new IllegalArgumentException("line " + n + ": app outside a folder");
                folder.add(key(line, n));
                continue;
            }
            folder = null;
            int sp = line.indexOf(' ');
            String word = sp < 0 ? line : line.substring(0, sp);
            String rest = sp < 0 ? "" : line.substring(sp + 1).trim();
            switch (word) {
                case "app":
                    layout.top.add(Item.app(key(rest, n)));
                    break;
                case "hide":
                    layout.hidden.add(key(rest, n));
                    break;
                case "folder":
                    if (rest.isEmpty()) throw new IllegalArgumentException("line " + n + ": folder without a name");
                    Item f = Item.folder(rest, new ArrayList<String>());
                    layout.top.add(f);
                    folder = f.apps;
                    break;
                case "stock":
                    layout.top.add(Item.stock());
                    break;
                default:
                    throw new IllegalArgumentException("line " + n + ": unknown entry '" + word + "'");
            }
        }
        return layout;
    }

    private static String key(String s, int n) {
        if (s.isEmpty() || s.indexOf(' ') >= 0 || s.startsWith("/") || s.endsWith("/")) {
            throw new IllegalArgumentException("line " + n + ": bad app '" + s + "'");
        }
        return s;
    }

    String serialize() {
        StringBuilder sb = new StringBuilder();
        sb.append("# Launcher Improved: the apps tray (see WaveLayout.java for the format)\n");
        for (Item it : top) {
            if (it.isStock()) {
                sb.append("stock\n");
            } else if (it.isFolder()) {
                sb.append("folder ").append(it.folder.replace('\n', ' ').trim()).append('\n');
                for (String k : it.apps) sb.append("    ").append(k).append('\n');
            } else {
                sb.append("app ").append(it.app).append('\n');
            }
        }
        for (String k : hidden) sb.append("hide ").append(k).append('\n');
        return sb.toString();
    }

    // ---- defaults -------------------------------------------------------------------------------

    /**
     * The defaults with "stock" replaced by Sonim's tray: rows of (folder, component) in the
     * App_Tray database's order; consecutive rows of one folder make one folder, as in the stock
     * launcher. Folder names already used by the defaults merge into the default folder.
     */
    static WaveLayout withStock(WaveLayout defaults, List<String[]> stockRows) {
        WaveLayout out = new WaveLayout();
        out.hidden.addAll(defaults.hidden);
        for (Item it : defaults.top) {
            if (!it.isStock()) {
                out.top.add(it.isFolder() ? Item.folder(it.folder, it.apps) : it);
                continue;
            }
            Item open = null;
            for (String[] row : stockRows) {
                String folder = row[0] == null ? "" : row[0].trim();
                String comp = row[1] == null ? "" : row[1].trim();
                if (comp.isEmpty()) continue;
                if (folder.isEmpty()) {
                    out.top.add(Item.app(comp));
                    open = null;
                } else {
                    if (open == null || !sameName(open.folder, folder)) {
                        open = Item.folder(folder, new ArrayList<String>());
                        out.top.add(open);
                    }
                    open.apps.add(comp);
                }
            }
        }
        return out;
    }

    // ---- resolving against what's installed -----------------------------------------------------

    /**
     * Matches the layout against the installed launcher activities.
     * - "package/class" shows that activity. If it's gone but its package has a launcher activity
     *   nobody else claims (an app renamed its main activity), that one takes its place.
     * - "package" shows every unclaimed launcher activity of the package.
     * - Installed non-system apps the layout doesn't mention (new installs) go at the end of the
     *   folder named inbox, or at the end of the main screen when there's no such folder; system
     *   apps the layout doesn't mention stay out, as in the stock launcher.
     * - Folders show only when at least one of their apps is installed.
     */
    static Result resolve(WaveLayout layout, List<Installed> installed, String inbox) {
        Map<String, Installed> byComp = new HashMap<>();
        Map<String, List<Installed>> byPkg = new HashMap<>();
        for (Installed in : installed) {
            if (byComp.containsKey(in.component)) continue;
            byComp.put(in.component, in);
            List<Installed> l = byPkg.get(in.pkg);
            if (l == null) byPkg.put(in.pkg, l = new ArrayList<>());
            l.add(in);
        }

        // Slots in layout order: main-screen apps and folder apps, then hidden ones.
        List<Slot> slots = new ArrayList<>();
        List<List<Slot>> folderSlots = new ArrayList<>();
        for (Item it : layout.top) {
            if (it.isStock()) {
                folderSlots.add(null);
            } else if (it.isFolder()) {
                List<Slot> fs = new ArrayList<>();
                for (String k : it.apps) fs.add(new Slot(k));
                slots.addAll(fs);
                folderSlots.add(fs);
            } else {
                Slot s = new Slot(it.app);
                slots.add(s);
                List<Slot> one = new ArrayList<>();
                one.add(s);
                folderSlots.add(one);
            }
        }
        List<Slot> hiddenSlots = new ArrayList<>();
        for (String k : layout.hidden) hiddenSlots.add(new Slot(k));
        List<Slot> all = new ArrayList<>(slots);
        all.addAll(hiddenSlots);

        Set<String> claimed = new HashSet<>();
        // Pass 1: exact components.
        for (Slot s : all) {
            if (s.key.indexOf('/') >= 0 && byComp.containsKey(s.key) && claimed.add(s.key)) {
                s.got.add(s.key);
                s.done = true;
            }
        }
        // Pass 2: packages, renamed activities, duplicates.
        for (Slot s : all) {
            if (s.done) continue;
            s.done = true;
            boolean isPkg = s.key.indexOf('/') < 0;
            List<Installed> cands = byPkg.get(pkgOf(s.key));
            // An installed component here is a duplicate of one placed elsewhere: it just drops.
            if (cands != null && (isPkg || !byComp.containsKey(s.key))) {
                for (Installed in : cands) {
                    if (claimed.contains(in.component)) continue;
                    claimed.add(in.component);
                    s.got.add(in.component);
                    if (!isPkg) break;
                }
            }
            // Missing only if nothing of it is installed (a duplicate of a placed app just drops).
            s.missing = s.got.isEmpty() && (isPkg ? cands == null : !byComp.containsKey(s.key));
        }

        Result r = new Result();
        for (Slot s : hiddenSlots) r.hidden.addAll(s.got);
        for (int i = 0; i < layout.top.size(); i++) {
            Item it = layout.top.get(i);
            if (it.isStock()) continue;
            List<Slot> fs = folderSlots.get(i);
            if (it.isFolder()) {
                List<String> apps = new ArrayList<>();
                for (Slot s : fs) {
                    apps.addAll(s.got);
                    if (s.missing) addMissing(r, it.folder, s.key);
                }
                // Two folders of one name show as one.
                Node existing = findFolder(r.tree, it.folder);
                if (existing != null) {
                    existing.apps.addAll(apps);
                } else if (!apps.isEmpty()) {
                    r.tree.add(new Node(it.folder, apps));
                } else if (!r.missing.containsKey(it.folder)) {
                    r.missing.put(it.folder, new ArrayList<String>());
                }
            } else {
                Slot s = fs.get(0);
                for (String c : s.got) r.tree.add(new Node(c));
                if (s.missing) addMissing(r, "", s.key);
            }
        }

        // New installs.
        Node box = findFolder(r.tree, inbox);
        for (Installed in : installed) {
            if (in.system || claimed.contains(in.component)) continue;
            claimed.add(in.component);
            if (box != null) box.apps.add(in.component);
            else r.tree.add(new Node(in.component));
        }
        return r;
    }

    private static void addMissing(Result r, String container, String key) {
        List<String> l = r.missing.get(container);
        if (l == null) r.missing.put(container, l = new ArrayList<>());
        l.add(key);
    }

    static Node findFolder(List<Node> tree, String name) {
        for (Node n : tree) if (n.folder != null && sameName(n.folder, name)) return n;
        return null;
    }

    private static final class Slot {
        final String key;
        final List<String> got = new ArrayList<>();
        boolean done;
        boolean missing;

        Slot(String key) {
            this.key = key;
        }
    }

    // ---- saving what's shown ---------------------------------------------------------------------

    /**
     * The layout to save for what's on screen now. Apps that aren't installed keep their place
     * in the file (at the end of the folder or main screen they were in), so reinstalling one
     * puts it back where it was; a folder whose apps are all uninstalled is kept the same way.
     */
    static WaveLayout snapshot(List<Node> shown, Map<String, List<String>> missing, List<String> hidden) {
        WaveLayout out = new WaveLayout();
        Set<String> done = new HashSet<>();
        for (Node n : shown) {
            if (n.folder == null) {
                out.top.add(Item.app(n.component));
                continue;
            }
            List<String> apps = new ArrayList<>(n.apps);
            for (Map.Entry<String, List<String>> e : missing.entrySet()) {
                if (!e.getKey().isEmpty() && sameName(e.getKey(), n.folder)) {
                    apps.addAll(e.getValue());
                    done.add(e.getKey().toLowerCase(Locale.ROOT));
                }
            }
            out.top.add(Item.folder(n.folder, apps));
        }
        for (Map.Entry<String, List<String>> e : missing.entrySet()) {
            if (e.getKey().isEmpty()) {
                for (String k : e.getValue()) out.top.add(Item.app(k));
            } else if (!done.contains(e.getKey().toLowerCase(Locale.ROOT)) && !e.getValue().isEmpty()) {
                out.top.add(Item.folder(e.getKey(), e.getValue()));
            }
        }
        out.hidden.addAll(hidden);
        return out;
    }
}
