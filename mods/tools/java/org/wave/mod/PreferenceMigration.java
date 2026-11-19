package org.wave.mod;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.Map;
import java.util.Set;

/** First use only: don't replace existing destination preferences or lose the source on I/O error. */
public final class PreferenceMigration {
    private PreferenceMigration() {}

    @SuppressWarnings("unchecked")
    public static synchronized SharedPreferences open(Context context, String name, String oldName) {
        SharedPreferences current = context.getSharedPreferences(name, Context.MODE_PRIVATE);
        File file = new File(context.getDataDir(), "shared_prefs/" + name + ".xml");
        if (file.exists() || !current.getAll().isEmpty()) return current;
        SharedPreferences old = context.getSharedPreferences(oldName, Context.MODE_PRIVATE);
        Map<String, ?> values = old.getAll();
        if (values.isEmpty()) return current;
        SharedPreferences.Editor editor = current.edit();
        for (Map.Entry<String, ?> entry : values.entrySet()) {
            String k = entry.getKey(); Object v = entry.getValue();
            if (v instanceof String) editor.putString(k, (String) v);
            else if (v instanceof Boolean) editor.putBoolean(k, (Boolean) v);
            else if (v instanceof Integer) editor.putInt(k, (Integer) v);
            else if (v instanceof Long) editor.putLong(k, (Long) v);
            else if (v instanceof Float) editor.putFloat(k, (Float) v);
            else if (v instanceof Set) editor.putStringSet(k, (Set<String>) v);
        }
        // Leave a rollback copy; once the new file exists this is never copied again.
        return editor.commit() ? current : old;
    }
}
