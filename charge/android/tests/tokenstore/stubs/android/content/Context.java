package android.content;
public class Context {
    public static final int MODE_PRIVATE = 0;
    static final java.util.Map<String, SharedPreferences> FILES = new java.util.HashMap<>();
    public SharedPreferences getSharedPreferences(String name, int mode) {
        synchronized (FILES) { return FILES.computeIfAbsent(name, n -> new SharedPreferences()); }
    }
}
