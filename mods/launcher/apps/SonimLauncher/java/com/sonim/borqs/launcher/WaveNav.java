package com.sonim.borqs.launcher;

import java.util.ArrayList;
import java.util.List;

/**
 * Pure-Java navigation and copy helpers for the redesigned tray (host-tested by tools/test.sh).
 */
final class WaveNav {
    static final int DIR_LEFT = 0;
    static final int DIR_RIGHT = 1;
    static final int DIR_UP = 2;
    static final int DIR_DOWN = 3;

    private WaveNav() {
    }

    /** Nearest folder to appIndex in a grid of cols columns, breaking ties after appIndex first. */
    static int nearestFolder(boolean[] isFolder, int appIndex, int cols) {
        if (isFolder == null || isFolder.length == 0 || cols <= 0) return -1;
        int ar = appIndex / cols;
        int ac = appIndex % cols;
        int best = -1;
        double bestDist = Double.MAX_VALUE;
        for (int i = 0; i < isFolder.length; i++) {
            if (!isFolder[i]) continue;
            int r = i / cols;
            int c = i % cols;
            double d = (r - ar) * (r - ar) * 1.2 + (c - ac) * (c - ac) + (i < appIndex ? 0.01 : 0.0);
            if (d < bestDist) {
                bestDist = d;
                best = i;
            }
        }
        return best;
    }

    /**
     * Moves between folders only:
     * - Left/Right: previous/next folder in tray order.
     * - Up/Down: nearest folder by column in the nearest row above/below that has a folder.
     */
    static int nextFolder(boolean[] isFolder, int current, int dir, int cols) {
        if (isFolder == null || current < 0 || current >= isFolder.length || cols <= 0) return current;
        List<Integer> folders = new ArrayList<>();
        for (int i = 0; i < isFolder.length; i++) {
            if (isFolder[i]) folders.add(i);
        }
        int pos = folders.indexOf(current);
        if (pos < 0) return current;
        if (dir == DIR_LEFT) {
            return pos > 0 ? folders.get(pos - 1) : current;
        }
        if (dir == DIR_RIGHT) {
            return pos < folders.size() - 1 ? folders.get(pos + 1) : current;
        }
        if (dir == DIR_UP || dir == DIR_DOWN) {
            int r = current / cols;
            int c = current % cols;
            int targetRow = -1;
            for (int idx : folders) {
                int row = idx / cols;
                if (dir == DIR_UP) {
                    if (row < r && (targetRow < 0 || row > targetRow)) targetRow = row;
                } else {
                    if (row > r && (targetRow < 0 || row < targetRow)) targetRow = row;
                }
            }
            if (targetRow < 0) return current;
            int best = current;
            int bestColDist = Integer.MAX_VALUE;
            for (int idx : folders) {
                if (idx / cols != targetRow) continue;
                int dist = Math.abs((idx % cols) - c);
                if (dist < bestColDist) {
                    bestColDist = dist;
                    best = idx;
                }
            }
            return best;
        }
        return current;
    }

    /** Confirmation message for deleting a folder and hiding all of its apps. */
    static String deleteFolderMessage(List<String> appNames) {
        int n = appNames == null ? 0 : appNames.size();
        if (n == 0) return "This folder will be removed.";
        if (n == 1) return appNames.get(0) + " is removed with it.";
        if (n == 2) return appNames.get(0) + " and " + appNames.get(1) + " are removed with it.";
        if (n <= 4) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < n - 1; i++) {
                if (i > 0) sb.append(", ");
                sb.append(appNames.get(i));
            }
            sb.append(" and ").append(appNames.get(n - 1)).append(" are removed with it.");
            return sb.toString();
        }
        return n + " apps are removed with it.";
    }
}
