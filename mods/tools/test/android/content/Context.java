package android.content;

import java.io.File;

/** Minimal host interface; never compiled into production dex. */
public abstract class Context {
    public static final int MODE_PRIVATE = 0;
    public abstract File getDataDir();
    public abstract SharedPreferences getSharedPreferences(String name, int mode);
}
