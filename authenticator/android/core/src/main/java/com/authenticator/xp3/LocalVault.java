package com.authenticator.xp3;

import com.xp3.common.Disk;

import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

/**
 * The accounts on the phone alone (the direct backend: set up "On this phone
 * only"), in one private file in the command center's JSON. It behaves as
 * the command center does: ids it makes up, new accounts at the end, one
 * whose secret is already there left as it was. Nothing leaves the phone.
 */
public final class LocalVault implements Store {

    private static final SecureRandom RANDOM = new SecureRandom();
    private static final Object LOCK = new Object();

    private final File file;

    public LocalVault(File file) {
        this.file = file;
    }

    @Override
    public List<Account> list() throws IOException {
        synchronized (LOCK) {
            return read();
        }
    }

    @Override
    public List<Account> add(List<Account> accounts) throws IOException {
        synchronized (LOCK) {
            List<Account> all = read();
            for (Account account : accounts) {
                if (find(all, null, account.secret) >= 0) continue;
                all.add(new Account(id(), account.issuer, account.account, account.secret, account.algorithm,
                    account.digits, account.period));
            }
            return save(all);
        }
    }

    @Override
    public List<Account> update(Account changed) throws IOException {
        synchronized (LOCK) {
            List<Account> all = read();
            int at = find(all, changed.id, null);
            if (changed.id == null || at < 0) throw new IOException("That account isn't here any more");
            all.set(at, changed);
            return save(all);
        }
    }

    @Override
    public List<Account> remove(String id) throws IOException {
        synchronized (LOCK) {
            List<Account> all = read();
            int at = find(all, id, null);
            if (at < 0) return all;
            all.remove(at);
            return save(all);
        }
    }

    private List<Account> read() throws IOException {
        String json = Disk.read(file, 4 << 20);
        if (json == null && file.exists() && file.length() > 0) {
            // There but unreadable (or impossibly large): never taken as empty,
            // or the next change would save over every account in it.
            throw new IOException("The accounts on this phone can't be read");
        }
        if (json == null || json.trim().length() == 0) return new ArrayList<>();
        try {
            return Vault.read(json);
        } catch (RuntimeException e) {
            throw new IOException("The accounts on this phone can't be read");
        }
    }

    private List<Account> save(List<Account> all) throws IOException {
        Disk.write(file, Vault.write(all), true);
        return all;
    }

    private static int find(List<Account> all, String id, String secret) {
        for (int i = 0; i < all.size(); i++) {
            Account one = all.get(i);
            if (id != null && id.equals(one.id)) return i;
            if (secret != null && secret.equals(one.secret)) return i;
        }
        return -1;
    }

    private static String id() {
        byte[] bytes = new byte[8];
        RANDOM.nextBytes(bytes);
        StringBuilder out = new StringBuilder();
        for (byte b : bytes) out.append(String.format("%02x", b & 0xff));
        return out.toString();
    }
}
