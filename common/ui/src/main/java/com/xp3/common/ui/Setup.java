package com.xp3.common.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

import com.xp3.common.Config;
import com.xp3.common.Disk;
import com.xp3.common.Login;
import com.xp3.common.SetupSpec;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * Where an app's setup lives on the phone, and the way into its setup screen
 * ({@link SetupActivity}). See spec/setup-payload.md in thooton/wave.
 *
 * The setup is the imported payload, kept as it was imported in the app's
 * private files (`files/wave-setup.json`, owner-only): never on shared
 * storage, never in a log. The app's descriptor is `wave-setup.json` in its
 * assets.
 *
 * An app reads {@link #load} at launch. With nothing set up it calls
 * {@link #require}, which opens the setup screen in its place and comes back
 * to the app once a setup is imported. {@link #stamp} changes whenever the
 * setup does (imported again, signed out), so an app can notice in onResume
 * and start over with the new one, forgetting what it derived from the old.
 */
public final class Setup {

    private Setup() {}

    static final String FILE = "wave-setup.json";
    static final String ASSET = "wave-setup.json";

    private static SetupSpec spec;

    /** The app's descriptor, from its assets. */
    public static synchronized SetupSpec spec(Context context) {
        if (spec == null) {
            try (InputStream in = context.getAssets().open(ASSET)) {
                spec = SetupSpec.parse(read(in, 64 * 1024));
            } catch (IOException e) {
                throw new IllegalStateException("The app has no " + ASSET, e);
            }
        }
        return spec;
    }

    /** What the app was set up with, or null. */
    public static Config load(Context context) {
        String saved = Disk.read(file(context), Config.MAX_LENGTH * 2);
        if (saved == null) return null;
        try {
            return Config.parse(saved, spec(context));
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    public static boolean ready(Context context) {
        return load(context) != null;
    }

    /** Keeps `config` as the app's setup. */
    public static synchronized void save(Context context, Config config) throws IOException {
        Disk.write(file(context), config.toJson(), true);
        changed(context);
    }

    /** Forgets the setup ("Sign out"). */
    public static synchronized void forget(Context context) {
        File saved = file(context);
        if (saved.exists() && !saved.delete()) {
            try {
                Disk.write(saved, "", true);
            } catch (IOException ignored) {
                // Nothing more can be done; load() reads an empty file as none.
            }
        }
        changed(context);
    }

    /**
     * Adopts a login an older version of the app saved, once: only when
     * nothing is set up yet. Returns the setup now in force, or null.
     */
    public static Config migrate(Context context, Config legacy) {
        Config current = load(context);
        if (current != null || legacy == null) return current;
        try {
            save(context, legacy);
            return legacy;
        } catch (IOException e) {
            return legacy;
        }
    }

    /** As {@link #migrate}, for a saved command center login (prefs "login" in Places, Mail, ...). */
    public static Config migrateDelta(Context context, String loginJson) {
        if (load(context) != null) return load(context);
        Login login = Login.parse(loginJson);
        if (!login.ready() || !spec(context).deltaSupported) return null;
        return migrate(context, Config.delta(spec(context), login));
    }

    /**
     * Something that changes whenever the setup does; "" with none. Cheap
     * enough to compare in every onResume. The file's own size and time are
     * part of it, so a setup written by a process that died before it could
     * count the change still reads as changed.
     */
    public static String stamp(Context context) {
        File saved = file(context);
        if (!saved.isFile() || saved.length() == 0) return "";
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getLong("changes", 0)
            + ":" + saved.length() + ":" + saved.lastModified();
    }

    private static synchronized void changed(Context context) {
        android.content.SharedPreferences prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        prefs.edit().putLong("changes", prefs.getLong("changes", 0) + 1).commit();
    }

    private static final String PREFS = "wave_setup";

    /** The setup screen. */
    public static Intent intent(Context context) {
        return new Intent(context, SetupActivity.class);
    }

    /**
     * True when the app is set up. Otherwise opens the setup screen in the
     * activity's place, finishing it; the setup screen opens the app again
     * once something is imported.
     */
    public static boolean require(Activity activity) {
        if (ready(activity)) return true;
        Intent intent = intent(activity).putExtra(SetupActivity.EXTRA_THEN_LAUNCH, true);
        activity.startActivity(intent);
        activity.finish();
        return false;
    }

    static File file(Context context) {
        return new File(context.getFilesDir(), FILE);
    }

    static String read(InputStream in, int limit) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int n;
        while ((n = in.read(buffer)) > 0) {
            out.write(buffer, 0, n);
            if (out.size() > limit) throw new IOException("too big");
        }
        return new String(out.toByteArray(), StandardCharsets.UTF_8);
    }
}
