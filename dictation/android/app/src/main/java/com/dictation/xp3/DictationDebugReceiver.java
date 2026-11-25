package com.dictation.xp3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * Explicit debug-only receiver (OFF by default, gated by {@code android.permission.DUMP} so only
 * {@code adb shell} / root can invoke it) to arm or run a 16 kHz mono WAV file through
 * {@link DictationService}'s real-time pipeline for automated testing.
 */
public final class DictationDebugReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !DictationContract.ACTION_DEBUG_WAV.equals(intent.getAction())) {
            return;
        }
        Intent svc = new Intent(context, DictationService.class);
        svc.setAction(DictationContract.ACTION_DEBUG_WAV);
        svc.putExtra(DictationContract.EXTRA_WAV_PATH,
            intent.getStringExtra(DictationContract.EXTRA_WAV_PATH));
        svc.putExtra(DictationContract.EXTRA_REALTIME,
            intent.getBooleanExtra(DictationContract.EXTRA_REALTIME, true));
        svc.putExtra(DictationContract.EXTRA_RUN_NOW,
            intent.getBooleanExtra(DictationContract.EXTRA_RUN_NOW, false));
        svc.putExtra(DictationContract.EXTRA_TIER,
            intent.getStringExtra(DictationContract.EXTRA_TIER));
        if (intent.hasExtra(DictationContract.EXTRA_THREADS)) {
            svc.putExtra(DictationContract.EXTRA_THREADS,
                intent.getIntExtra(DictationContract.EXTRA_THREADS, DictationPrefs.DEFAULT_THREADS));
        }
        try {
            context.startService(svc);
        } catch (IllegalStateException e) {
            // API 26+ refuses background service starts; whitelist first:
            // adb shell cmd deviceidle tempwhitelist com.dictation.xp3
            android.util.Log.e("DictationBench", "Background start refused; run "
                + "'cmd deviceidle tempwhitelist com.dictation.xp3' first", e);
        }
    }
}
