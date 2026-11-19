package com.sonim.borqs.launcher;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/** Host tests for WaveLayout (plain Java). Run: tools/test.sh */
public final class LayoutTest {
    private static int failures, checks;

    private static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            failures++;
            System.out.println("FAIL: " + what);
        }
    }

    private static void eq(Object got, Object want, String what) {
        check(String.valueOf(got).equals(String.valueOf(want)), what + "\n   got:  " + got + "\n   want: " + want);
    }

    static List<WaveLayout.Installed> installed(String... comps) {
        List<WaveLayout.Installed> l = new ArrayList<>();
        for (String c : comps) {
            boolean sys = c.startsWith("!");
            l.add(new WaveLayout.Installed(sys ? c.substring(1) : c, sys));
        }
        return l;
    }

    static String show(List<WaveLayout.Node> tree) {
        StringBuilder sb = new StringBuilder();
        for (WaveLayout.Node n : tree) {
            if (sb.length() > 0) sb.append(" | ");
            if (n.folder == null) sb.append(n.component);
            else sb.append(n.folder).append(n.apps);
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        // Parse / serialize round trip.
        String text = "# c\napp a/A\nfolder My Stuff\n    b\n\tc/C\nhide d/D\nstock\n";
        WaveLayout l = WaveLayout.parse(text);
        eq(l.top.size(), 3, "parse: top size");
        eq(l.top.get(1).folder, "My Stuff", "parse: folder name with space");
        eq(l.top.get(1).apps, "[b, c/C]", "parse: folder apps (spaces and tab)");
        check(l.top.get(2).isStock(), "parse: stock");
        eq(l.hidden, "[d/D]", "parse: hidden");
        eq(WaveLayout.parse(l.serialize()).serialize(), l.serialize(), "serialize round trip");
        for (String bad : new String[] {"    a/A\n", "bogus x\n", "folder\n", "app a b\n", "app /x\n"}) {
            try {
                WaveLayout.parse(bad);
                check(false, "parse should reject: " + bad.trim());
            } catch (IllegalArgumentException e) {
                check(true, "");
            }
        }

        // Defaults parse, and "stock" expands to the DB rows with consecutive folders grouped.
        WaveLayout d = WaveLayout.parse(WaveDefaults.LAYOUT);
        List<String[]> rows = Arrays.asList(
                new String[] {"", "s/Browser"}, new String[] {"Applications", "s/Music"},
                new String[] {"Applications", "s/FM"}, new String[] {"", "s/Settings"},
                new String[] {"Tools", "s/Clock"}, new String[] {"", "s/Gallery"});
        WaveLayout ws = WaveLayout.withStock(WaveLayout.parse("app x\nstock\nfolder Z\n    z\n"), rows);
        eq(WaveLayout.parse(ws.serialize()).serialize(),
                "# Launcher Improved: the apps tray (see WaveLayout.java for the format)\n"
                        + "app x\napp s/Browser\nfolder Applications\n    s/Music\n    s/FM\napp s/Settings\n"
                        + "folder Tools\n    s/Clock\napp s/Gallery\nfolder Z\n    z\n",
                "withStock");
        eq(d.top.size(), 12, "defaults: one 4x3 screen");

        // Resolve: exact, package expansion, renamed activity, missing, new installs, system apps.
        WaveLayout lay = WaveLayout.parse(""
                + "app com.todo/com.todo.MainActivity\n"   // renamed: now com.canvas.MainActivity
                + "app gone/gone.A\n"
                + "folder Files\n    fx\n    gone2\n"
                + "folder Applications\n    s/Music\n"
                + "folder Empty\n    nothere/X\n"
                + "app s/Music\n"                         // duplicate: drops
                + "hide junk\n");
        List<WaveLayout.Installed> inst = installed(
                "com.todo/com.canvas.MainActivity", "fx/Explorer", "fx/TextEdit", "!s/Music",
                "newapp/Main", "!s/Hidden", "junk/J", "fx/Explorer");
        WaveLayout.Result r = WaveLayout.resolve(lay, inst, "Applications");
        eq(show(r.tree), "com.todo/com.canvas.MainActivity | Files[fx/Explorer, fx/TextEdit] | "
                + "Applications[s/Music, newapp/Main]", "resolve tree");
        eq(r.missing, "{=[gone/gone.A], Files=[gone2], Empty=[nothere/X]}", "resolve missing");
        eq(r.hidden, "[junk/J]", "resolve hidden");

        // No inbox folder: new installs go to the end of the main screen.
        r = WaveLayout.resolve(WaveLayout.parse("app a/A\n"), installed("a/A", "b/B", "!c/C"), "Applications");
        eq(show(r.tree), "a/A | b/B", "resolve without inbox");

        // Inbox matched case-insensitively; two folders of one name merge.
        r = WaveLayout.resolve(WaveLayout.parse("folder X\n    a\nfolder x\n    b\nfolder applications\n    c\n"),
                installed("a/A", "b/B", "c/C", "d/D"), "Applications");
        eq(show(r.tree), "X[a/A, b/B] | applications[c/C, d/D]", "merge same-name folders, inbox case");

        // Snapshot keeps uninstalled apps in their folder / main screen, and all-missing folders.
        List<WaveLayout.Node> shown = new ArrayList<>();
        shown.add(new WaveLayout.Node("a/A"));
        shown.add(new WaveLayout.Node("Files", new ArrayList<>(Arrays.asList("fx/Explorer"))));
        java.util.Map<String, List<String>> missing = new java.util.LinkedHashMap<>();
        missing.put("", new ArrayList<>(Arrays.asList("gone/G")));
        missing.put("files", new ArrayList<>(Arrays.asList("gone2")));
        missing.put("Empty", new ArrayList<>(Arrays.asList("nothere/X")));
        WaveLayout snap = WaveLayout.snapshot(shown, missing, Arrays.asList("junk"));
        eq(snap.serialize().replaceFirst("^#.*\n", ""),
                "app a/A\nfolder Files\n    fx/Explorer\n    gone2\napp gone/G\nfolder Empty\n    nothere/X\nhide junk\n",
                "snapshot");

        // The real defaults against the phone's apps (as of this writing).
        List<String[]> stock = Arrays.asList(
                new String[] {"", "com.android.browser/com.android.browser.BrowserActivity"},
                new String[] {"Applications", "com.android.music/com.android.music.MusicBrowserActivity"},
                new String[] {"Tools", "com.android.deskclock/com.android.deskclock.DeskClock"});
        WaveLayout full = WaveLayout.withStock(d, stock);
        r = WaveLayout.resolve(full, installed(
                "com.todo.xp3/com.canvas.xp3.MainActivity", "com.list.xp3/com.list.xp3.MainActivity",
                "nextapp.fx/nextapp.fx.ui.ExplorerActivity", "nextapp.fx/nextapp.fx.ui.textedit.TextEditorActivity",
                "!com.android.browser/com.android.browser.BrowserActivity",
                "!com.android.music/com.android.music.MusicBrowserActivity",
                "!com.android.deskclock/com.android.deskclock.DeskClock",
                "com.other.app/com.other.app.Main"), WaveDefaults.INBOX);
        eq(show(r.tree), "com.todo.xp3/com.canvas.xp3.MainActivity | com.list.xp3/com.list.xp3.MainActivity | "
                + "Media[com.android.music/com.android.music.MusicBrowserActivity] | "
                + "Tools[com.android.deskclock/com.android.deskclock.DeskClock] | "
                + "Files[nextapp.fx/nextapp.fx.ui.ExplorerActivity, nextapp.fx/nextapp.fx.ui.textedit.TextEditorActivity] | "
                + "Applications[com.android.browser/com.android.browser.BrowserActivity, com.other.app/com.other.app.Main]",
                "defaults on the phone");

        System.out.println(failures == 0 ? "LayoutTest: all " + checks + " checks passed"
                : "LayoutTest: " + failures + " of " + checks + " checks FAILED");
        System.exit(failures == 0 ? 0 : 1);
    }
}
