package com.sonim.borqs.launcher;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;

public final class TrayFileTest {
    public static void main(String[] args) throws Exception {
        Path dir = Files.createTempDirectory("wave-tray");
        // Simulate the historical path and verify rename, destination priority, and reset.
        Path old = dir.resolve("argon_tray.txt"), next = dir.resolve("wave_tray.txt");
        try {
            Files.write(old, new byte[]{1});
            File actual = TrayFile.open(dir.toFile(), next.getFileName().toString());
            if (!actual.toPath().equals(next) || Files.exists(old) || Files.readAllBytes(next)[0] != 1) {
                throw new AssertionError("tray migration failed");
            }
            Files.write(old, new byte[]{2});
            TrayFile.open(dir.toFile(), next.getFileName().toString());
            if (Files.readAllBytes(next)[0] != 1) throw new AssertionError("overwrote destination");
            TrayFile.reset(dir.toFile(), next.getFileName().toString());
            if (Files.exists(old) || Files.exists(next)) throw new AssertionError("reset left migrated state");
        } finally {
            Files.deleteIfExists(old);
            Files.deleteIfExists(next);
            Files.deleteIfExists(dir);
        }
    }
}
