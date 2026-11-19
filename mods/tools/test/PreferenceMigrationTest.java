import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.wave.mod.PreferenceMigration;

public class PreferenceMigrationTest {
    private static class Prefs implements SharedPreferences {
        final Map<String, Object> values = new HashMap<>();
        boolean writable = true;
        public Map<String, ?> getAll() { return new HashMap<>(values); }
        public Editor edit() {
            return new Editor() {
                private final Map<String, Object> pending = new HashMap<>();
                private Editor put(String k, Object v) { pending.put(k, v); return this; }
                public Editor putString(String k, String v) { return put(k, v); }
                public Editor putBoolean(String k, boolean v) { return put(k, v); }
                public Editor putInt(String k, int v) { return put(k, v); }
                public Editor putLong(String k, long v) { return put(k, v); }
                public Editor putFloat(String k, float v) { return put(k, v); }
                public Editor putStringSet(String k, Set<String> v) { return put(k, new HashSet<>(v)); }
                public boolean commit() {
                    if (!writable) return false;
                    values.putAll(pending);
                    return true;
                }
            };
        }
    }

    private static class FakeContext extends Context {
        final Prefs old = new Prefs(), current = new Prefs();
        public File getDataDir() { return new File("."); }
        public SharedPreferences getSharedPreferences(String name, int mode) {
            return "old".equals(name) ? old : current;
        }
    }

    public static void main(String[] ignored) {
        FakeContext c = new FakeContext();
        Set<String> folders = new HashSet<>(); folders.add("Music/live");
        c.old.edit().putStringSet("folders", folders).putBoolean("enabled", true)
            .putLong("expires", 17L).putString("provisioning", "test state").putInt("count", 3)
            .putFloat("example", 2.5f).commit();
        c.current.writable = false;
        if (PreferenceMigration.open(c, "new", "old") != c.old) throw new AssertionError("I/O fallback");
        c.current.writable = true;
        if (PreferenceMigration.open(c, "new", "old") != c.current || !c.old.getAll().equals(c.current.getAll())) {
            throw new AssertionError("migration lost state");
        }
        c.current.edit().putBoolean("enabled", false).commit();
        if (!Boolean.FALSE.equals(PreferenceMigration.open(c, "new", "old").getAll().get("enabled"))) {
            throw new AssertionError("overwrote destination");
        }
        System.out.println("PreferenceMigrationTest passed");
    }
}
