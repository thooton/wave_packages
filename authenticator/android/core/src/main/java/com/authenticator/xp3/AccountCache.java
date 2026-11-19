package com.authenticator.xp3;

import com.xp3.common.Disk;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * The last list a command center sent (`accounts.json`), kept so codes show
 * at once and offline, with the address of the command center it came from
 * beside it (`accounts.server`).
 *
 * It holds every account's secret, so it lives only as long as that command
 * center is the setup: read with another one, or with none (signed out, or
 * on this phone only), it is deleted rather than shown. A list kept by a
 * version from before the address was written down is taken as the current
 * command center's, which is the only one such a version knew.
 */
public final class AccountCache {

    static final String LIST = "accounts.json";
    static final String SERVER = "accounts.server";

    private static final Object LOCK = new Object();

    private final File list;
    private final File server;

    public AccountCache(File directory) {
        list = new File(directory, LIST);
        server = new File(directory, SERVER);
    }

    /** The kept list if it is `center`'s, else nothing (and it is deleted). Null `center`: no command center. */
    public List<Account> read(String center) {
        synchronized (LOCK) {
            if (!belongsTo(center)) {
                forget();
                return new ArrayList<>();
            }
            String json = Disk.read(list, 4 << 20);
            if (json == null) return new ArrayList<>();
            try {
                return Vault.read(json);
            } catch (RuntimeException e) {
                return new ArrayList<>();
            }
        }
    }

    /** Keeps `accounts` as `center`'s list; with no command center, keeps nothing. */
    public void write(String center, List<Account> accounts) throws IOException {
        synchronized (LOCK) {
            if (center == null) {
                forget();
                return;
            }
            // The address goes last: a write cut short leaves a list nobody's.
            server.delete();
            Disk.write(list, Vault.write(accounts), true);
            Disk.write(server, center, true);
        }
    }

    public void forget() {
        synchronized (LOCK) {
            list.delete();
            server.delete();
        }
    }

    private boolean belongsTo(String center) {
        if (center == null) return false;
        String kept = Disk.read(server, 4096);
        return kept == null || kept.trim().equals(center);
    }
}
