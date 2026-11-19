package android.content;
import java.util.*;
/** Like Android's: edits apply atomically on commit; reads see the last commit. */
public class SharedPreferences {
    final Map<String, Object> map = new HashMap<>();
    public synchronized Map<String, ?> getAll() { return new HashMap<>(map); }
    public synchronized String getString(String k, String d) { Object v = map.get(k); return v == null ? d : (String) v; }
    public synchronized long getLong(String k, long d) { Object v = map.get(k); return v == null ? d : (Long) v; }
    public synchronized boolean contains(String k) { return map.containsKey(k); }
    public Editor edit() { return new Editor(); }
    public class Editor {
        boolean clear; final Map<String, Object> puts = new LinkedHashMap<>();
        public Editor clear() { clear = true; return this; }
        public Editor putString(String k, String v) { puts.put(k, v); return this; }
        public Editor putLong(String k, long v) { puts.put(k, v); return this; }
        public boolean commit() { synchronized (SharedPreferences.this) { if (clear) map.clear(); map.putAll(puts); } return true; }
    }
}
