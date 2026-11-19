package com.android.mms.ui;

import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;

/** Remove legacy automatic-retention controls without changing the stock resources. */
public final class WaveRetentionSettings {
    private WaveRetentionSettings() {}

    public static void hide(PreferenceActivity activity) {
        PreferenceGroup root = activity.getPreferenceScreen();
        if (root == null) return;
        remove(root, "pref_key_sms_delete_limit");
        remove(root, "pref_key_mms_delete_limit");
        remove(root, "pref_key_auto_delete");
        remove(root, "pref_key_messages_expiry_days");
        remove(root, "pref_key_auto_delete_by_days");
        remove(root, "pref_key_storage_delete_by_days");
    }

    // Custom preferences nest the storage category inside a separate screen.
    private static boolean remove(PreferenceGroup group, String key) {
        for (int i = 0; i < group.getPreferenceCount(); i++) {
            Preference p = group.getPreference(i);
            if (key.equals(p.getKey())) return group.removePreference(p);
            if (p instanceof PreferenceGroup && remove((PreferenceGroup) p, key)) return true;
        }
        return false;
    }
}
