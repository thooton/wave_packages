#!/usr/bin/env python3
"""Run the real canonical-recipient cache helper with a fake provider on the host."""
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[2]
PKG = 'com/android/mms/data/'
MOCKS = {
    'android/content/Context.java': '''package android.content;
        public abstract class Context { public abstract ContentResolver getContentResolver(); }''',
    'android/content/ContentResolver.java': '''package android.content;
        public abstract class ContentResolver {
            public abstract android.database.Cursor query(android.net.Uri u, String[] p, String s, String[] a, String o);
        }''',
    'android/net/Uri.java': '''package android.net;
        public class Uri { public static Uri parse(String u) { return new Uri(); } }''',
    'android/database/Cursor.java': '''package android.database;
        public interface Cursor extends AutoCloseable {
            boolean moveToNext(); long getLong(int i); String getString(int i); void close();
        }''',
    'android/database/sqlite/SQLiteException.java': '''package android.database.sqlite;
        public class SQLiteException extends RuntimeException {}''',
    'android/text/TextUtils.java': '''package android.text;
        public class TextUtils { public static boolean isEmpty(CharSequence s) { return s == null || s.length() == 0; } }''',
    'android/util/Log.java': '''package android.util;
        public class Log { public static int w(String t,String s,Throwable e) { return 0; } }''',
    PKG + 'CheckRecipientCache.java': '''package com.android.mms.data;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import java.util.*;

public class CheckRecipientCache extends ContentResolver {
    final Object lock = new Object();
    final Map<Long,String> cache = new HashMap<>(), store = new HashMap<>();
    final Context context = new Context() {
        @Override public ContentResolver getContentResolver() { return CheckRecipientCache.this; }
    };
    int queries, maxBind;
    boolean race;

    @Override public Cursor query(Uri u, String[] p, String s, String[] a, String o) {
        assert !Thread.holdsLock(lock) : "query took the cache lock";
        queries++;
        if (a != null) maxBind = Math.max(maxBind, a.length);
        List<Long> keys = new ArrayList<>();
        if (a == null) keys.addAll(store.keySet());
        else for (String arg : a) if (store.containsKey(Long.valueOf(arg))) keys.add(Long.valueOf(arg));
        return new Cursor() {
            int i = -1;
            @Override public boolean moveToNext() {
                assert !Thread.holdsLock(lock) : "cursor IPC under lock";
                if (race && i == -1) { synchronized (lock) { cache.put(1L, "newer"); } }
                return ++i < keys.size();
            }
            @Override public long getLong(int c) { return keys.get(i); }
            @Override public String getString(int c) { return store.get(keys.get(i)); }
            @Override public void close() {}
        };
    }

    List<RecipientIdCache.Entry> get(String ids) {
        return ArgonRecipientCache.getAddresses(context, lock, cache, ids);
    }

    void test() {
        store.put(1L, "one"); store.put(2L, "two");
        List<RecipientIdCache.Entry> first = get("2 bad 1 2");
        assert queries == 1 && maxBind == 2 && first.size() == 3;
        assert first.get(0).id == 2 && first.get(1).id == 1 && first.get(2).id == 2;
        assert "one".equals(get("1").get(0).number) && queries == 1;
        assert get("3").isEmpty() && queries == 2;
        store.put(3L, "restored");
        assert "restored".equals(get("3").get(0).number) && queries == 3;
        race = true;
        ArgonRecipientCache.warm(context, lock, cache);
        assert "newer".equals(get("1").get(0).number) && queries == 4;
        race = false;
        StringBuilder group = new StringBuilder();
        for (long id = 10; id < 1011; id++) { store.put(id, "member"); group.append(id).append(' '); }
        assert get(group.toString()).size() == 1001 && queries == 7 && maxBind == 500;
    }

    public static void main(String[] args) { new CheckRecipientCache().test(); }
}''',
}

with tempfile.TemporaryDirectory() as temp:
    root = Path(temp)
    for name, content in MOCKS.items():
        file = root / name
        file.parent.mkdir(parents=True, exist_ok=True)
        file.write_text(content)
    subprocess.run(['javac', '-d', temp, *map(str, root.rglob('*.java')),
                   str(ROOT / 'apps/BMms/java' / PKG / 'ArgonRecipientCache.java'),
                   str(ROOT / 'apps/BMms/stubs' / PKG / 'RecipientIdCache.java')], check=True)
    subprocess.run(['java', '-ea', '-cp', temp, 'com.android.mms.data.CheckRecipientCache'], check=True)
print('PASS: recipient order, bounded indexed misses, no I/O under cache lock, concurrent updates')
