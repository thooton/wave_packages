package com.sonim.borqs.launcher;

import java.io.File;

final class TrayFile {
    // Filename from the previous module; only used to migrate an existing arrangement.
    private static final String LEGACY = "argon_tray.txt";

    static File open(File dir, String name) {
        File next = new File(dir, name), old = new File(dir, LEGACY);
        if (!next.exists() && old.isFile() && !old.renameTo(next)) return old;
        return next;
    }

    static void reset(File dir, String name) {
        new File(dir, LEGACY).delete();
        new File(dir, name).delete();
    }
}
