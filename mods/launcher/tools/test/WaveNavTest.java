package com.sonim.borqs.launcher;

import java.util.Arrays;
import java.util.Collections;

/** Host tests for WaveNav (folder picker navigation and delete-folder messages). */
public final class WaveNavTest {
    private static int failures, checks;

    private static void eq(Object got, Object want, String what) {
        checks++;
        if (!String.valueOf(got).equals(String.valueOf(want))) {
            failures++;
            System.out.println("FAIL: " + what + "\n   got:  " + got + "\n   want: " + want);
        }
    }

    public static void main(String[] args) {
        // Tray like the mockup: 3 apps (0..2), then 8 folders (3..10) in a 3-column grid:
        // row 0: [app 0, app 1, app 2]
        // row 1: [F3,    F4,    F5]
        // row 2: [F6,    F7,    F8]
        // row 3: [F9,    F10]
        boolean[] tray = {
            false, false, false,
            true,  true,  true,
            true,  true,  true,
            true,  true
        };
        eq(WaveNav.nearestFolder(tray, 0, 3), 3, "nearest folder for col 0 app");
        eq(WaveNav.nearestFolder(tray, 1, 3), 4, "nearest folder for col 1 app");
        eq(WaveNav.nearestFolder(tray, 2, 3), 5, "nearest folder for col 2 app");
        eq(WaveNav.nearestFolder(new boolean[] {false, false}, 0, 3), -1, "no folders");

        // Tie breaking: folder after app beats folder before app at equal distance.
        boolean[] tie = {true, false, true};
        eq(WaveNav.nearestFolder(tie, 1, 3), 2, "tie prefers folder after app");

        // Demo path from mockup/index.html ("Move (into folder)"):
        // app at 1 -> start at 4 (Reading) -> Right -> 5 (Talk) -> Right -> 6 (Planner) -> Down -> 9 (Files) -> Left -> 8 (Travel).
        int cur = WaveNav.nearestFolder(tray, 1, 3);
        eq(cur, 4, "demo start");
        cur = WaveNav.nextFolder(tray, cur, WaveNav.DIR_RIGHT, 3);
        eq(cur, 5, "demo right 1");
        cur = WaveNav.nextFolder(tray, cur, WaveNav.DIR_RIGHT, 3);
        eq(cur, 6, "demo right 2");
        cur = WaveNav.nextFolder(tray, cur, WaveNav.DIR_DOWN, 3);
        eq(cur, 9, "demo down");
        cur = WaveNav.nextFolder(tray, cur, WaveNav.DIR_LEFT, 3);
        eq(cur, 8, "demo left");

        // Sparse folders: Up/Down skips rows without folders and picks nearest column.
        // row 0: [app 0, F1,    app 2]
        // row 1: [app 3, app 4, app 5]
        // row 2: [F6,    app 7, F8]
        boolean[] sparse = {
            false, true,  false,
            false, false, false,
            true,  false, true
        };
        eq(WaveNav.nextFolder(sparse, 1, WaveNav.DIR_DOWN, 3), 6, "down skips empty row, leftmost tie-break");
        eq(WaveNav.nextFolder(sparse, 8, WaveNav.DIR_UP, 3), 1, "up skips empty row");
        eq(WaveNav.nextFolder(sparse, 1, WaveNav.DIR_LEFT, 3), 1, "left stops at first folder");
        eq(WaveNav.nextFolder(sparse, 8, WaveNav.DIR_RIGHT, 3), 8, "right stops at last folder");
        eq(WaveNav.nextFolder(sparse, 6, WaveNav.DIR_DOWN, 3), 6, "down stops on bottom folder row");
        eq(WaveNav.nextFolder(sparse, 1, WaveNav.DIR_UP, 3), 1, "up stops on top folder row");

        // Delete folder confirmation grammar.
        eq(WaveNav.deleteFolderMessage(Collections.emptyList()),
                "This folder will be removed.", "delete 0");
        eq(WaveNav.deleteFolderMessage(Arrays.asList("Weather")),
                "Weather is removed with it.", "delete 1");
        eq(WaveNav.deleteFolderMessage(Arrays.asList("Weather", "Places")),
                "Weather and Places are removed with it.", "delete 2");
        eq(WaveNav.deleteFolderMessage(Arrays.asList("Weather", "Places", "Charge")),
                "Weather, Places and Charge are removed with it.", "delete 3");
        eq(WaveNav.deleteFolderMessage(Arrays.asList("A", "B", "C", "D")),
                "A, B, C and D are removed with it.", "delete 4");
        eq(WaveNav.deleteFolderMessage(Arrays.asList("A", "B", "C", "D", "E")),
                "5 apps are removed with it.", "delete 5");

        System.out.println(failures == 0 ? "WaveNavTest: all " + checks + " checks passed"
                : "WaveNavTest: " + failures + " of " + checks + " checks FAILED");
        System.exit(failures == 0 ? 0 : 1);
    }
}
