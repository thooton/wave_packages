package com.dictation.xp3;

import android.os.IBinder;

/**
 * Shared IPC contract between {@link DictationService} and the XT9IME keyboard mod.
 *
 * Uses raw {@link android.os.Binder#transact} codes so the keyboard side needs no AIDL
 * code generation or third-party dependencies.
 */
public final class DictationContract {

    public static final String ACTION_DICTATION_SERVICE = "com.dictation.xp3.ACTION_DICTATION_SERVICE";
    public static final String SERVICE_DESCRIPTOR = "com.dictation.xp3.IDictationService";
    public static final String CALLBACK_DESCRIPTOR = "com.dictation.xp3.IDictationCallback";

    public static final String PROVIDER_AUTHORITY = "com.dictation.xp3.state";
    public static final String PROVIDER_METHOD_IS_ENABLED = "isEnabled";
    public static final String EXTRA_ENABLED = "enabled";
    public static final String EXTRA_TIER = "tier";

    public static final String KEYBOARD_PACKAGE = "com.nuance.flext9_OEM.input";

    // Service transaction codes (IBinder.FIRST_CALL_TRANSACTION == 1).
    public static final int TX_START = IBinder.FIRST_CALL_TRANSACTION;         // 1: (IBinder callback, String tierOrNull)
    public static final int TX_STOP = IBinder.FIRST_CALL_TRANSACTION + 1;      // 2: (int commitBool)
    public static final int TX_UPDATE_CURSOR = IBinder.FIRST_CALL_TRANSACTION + 2; // 3: (int visible, float x, float top, float bottom)
    public static final int TX_IS_ENABLED = IBinder.FIRST_CALL_TRANSACTION + 3; // 4: () -> int (1/0)
    public static final int TX_PRELOAD = IBinder.FIRST_CALL_TRANSACTION + 4;   // 5: ()

    // Callback transaction codes (invoked on client IBinder).
    public static final int CB_ON_STATE = IBinder.FIRST_CALL_TRANSACTION;      // 1: (int state, String messageOrNull)
    public static final int CB_ON_TEXT = IBinder.FIRST_CALL_TRANSACTION + 1;   // 2: (String commitDelta, String tentativeText)
    public static final int CB_ON_FINAL = IBinder.FIRST_CALL_TRANSACTION + 2;  // 3: (String finalCommitDelta)
    public static final int CB_ON_AUTO_STOP = IBinder.FIRST_CALL_TRANSACTION + 3; // 4: (int reason)

    // Session state values passed to CB_ON_STATE.
    public static final int STATE_IDLE = 0;
    public static final int STATE_LISTENING = 1;
    public static final int STATE_FINALIZING = 2;
    public static final int STATE_ERROR = -1;

    // Auto-stop reason codes passed to CB_ON_AUTO_STOP.
    public static final int STOP_SILENCE = 1;
    public static final int STOP_AUDIO_FOCUS = 2;
    public static final int STOP_SCREEN_OFF = 3;
    public static final int STOP_ERROR = 4;

    // Explicit debug-only WAV input path (OFF by default, gated by android.permission.DUMP).
    public static final String ACTION_DEBUG_WAV = "com.dictation.xp3.DEBUG_WAV";
    public static final String EXTRA_WAV_PATH = "wav_path";
    public static final String EXTRA_REALTIME = "realtime";
    public static final String EXTRA_RUN_NOW = "run_now";
    public static final String EXTRA_THREADS = "threads";

    private DictationContract() {}
}
