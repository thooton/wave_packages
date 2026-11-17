package com.installer.xp3;

import android.app.admin.DeviceAdminReceiver;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/**
 * The device-admin component this app is registered under. It holds no
 * policies; it exists because an app must have a DeviceAdminReceiver before it
 * can be made the device owner, and being the device owner is what lets
 * {@link InstallActivity} install without the system installer's
 * confirmation screen.
 */
public final class Admin extends DeviceAdminReceiver {

    @Override
    public void onEnabled(Context context, Intent intent) {
        allowBackup(context);
    }

    /**
     * Android 8 switches the whole backup service off while a device owner
     * exists, which stops adb backup and adb restore from even asking. Only
     * the owner can switch it back on, so do that whenever it is the owner.
     */
    static void allowBackup(Context context) {
        DevicePolicyManager dpm = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);
        if (dpm == null || !dpm.isDeviceOwnerApp(context.getPackageName())) return;
        ComponentName admin = new ComponentName(context, Admin.class);
        try {
            if (!dpm.isBackupServiceEnabled(admin)) dpm.setBackupServiceEnabled(admin, true);
        } catch (SecurityException e) {
            // Not the owner after all; nothing to switch on.
        }
    }
}
