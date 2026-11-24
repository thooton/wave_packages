package com.dictation.xp3;

import android.Manifest;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/**
 * Bound dictation service communicating with the XT9IME keyboard mod over raw Binder transactions.
 *
 * Privacy and resource guarantees:
 * - Verifies caller UID matches XT9IME (or own UID) on every Binder transaction.
 * - Opens {@link android.media.AudioRecord} strictly while dictation is active and releases it
 *   immediately on stop, screen off, audio focus loss, or client death.
 * - Starts recording into the ring buffer immediately on {@code TX_START} before model warm-up.
 * - Releases loaded ExecuTorch methods after 45 seconds idle to stay well below the RAM budget.
 */
public final class DictationService extends Service {

    private static final String TAG = "DictationService";
    private static final String BENCH_TAG = "DictationBench";
    private static final long IDLE_UNLOAD_DELAY_MS = 45000L;
    private static final int STREAM_READ_CHUNK = 3200; // 200 ms

    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final PerfLock perfLock = new PerfLock();
    private final AudioCapture capture = new AudioCapture();
    private final Object sessionLock = new Object();

    private CaretOverlay caretOverlay;
    private AudioManager audioManager;
    private AudioFocusRequest focusRequest;
    private boolean hasAudioFocus;
    private boolean screenReceiverRegistered;

    private ExecutorService decodeExecutor;
    private AsrMetadata metadata;
    private NativeModel nativeModel;
    private AsrEngine engine;
    private int loadedThreads = -1;

    private volatile int keyboardUid = -1;

    // Active session state guarded by sessionLock.
    private int sessionGen;
    private boolean sessionActive;
    private boolean commitOnStop;
    private int autoStopReason;
    private IBinder activeCallback;
    private IBinder.DeathRecipient activeDeathRecipient;

    // Explicit debug-only WAV path (OFF by default).
    private volatile String debugWavPath;
    private volatile boolean debugWavRealtime = true;

    private final Runnable idleUnloadTask = new Runnable() {
        @Override
        public void run() {
            final int genSnapshot;
            synchronized (sessionLock) {
                if (sessionActive) return;
                genSnapshot = sessionGen;
            }
            decodeExecutor.execute(new Runnable() {
                @Override
                public void run() {
                    synchronized (sessionLock) {
                        if (sessionActive || sessionGen != genSnapshot) return;
                    }
                    unloadModelOnWorker();
                }
            });
        }
    };

    private final AudioManager.OnAudioFocusChangeListener focusListener =
        new AudioManager.OnAudioFocusChangeListener() {
            @Override
            public void onAudioFocusChange(int focusChange) {
                if (focusChange == AudioManager.AUDIOFOCUS_LOSS
                        || focusChange == AudioManager.AUDIOFOCUS_LOSS_TRANSIENT) {
                    stopSession(true, DictationContract.STOP_AUDIO_FOCUS);
                }
            }
        };

    private final BroadcastReceiver screenOffReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (Intent.ACTION_SCREEN_OFF.equals(intent.getAction())) {
                stopSession(true, DictationContract.STOP_SCREEN_OFF);
            }
        }
    };

    private final Binder binder = new Binder() {
        @Override
        protected boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == INTERFACE_TRANSACTION) {
                if (reply != null) reply.writeString(DictationContract.SERVICE_DESCRIPTOR);
                return true;
            }
            enforceCallerUid();
            switch (code) {
                case DictationContract.TX_START: {
                    data.enforceInterface(DictationContract.SERVICE_DESCRIPTOR);
                    IBinder cb = data.readStrongBinder();
                    String tier = data.readString();
                    boolean ok = startSession(cb, tier, null, false, -1);
                    if (reply != null) {
                        reply.writeNoException();
                        reply.writeInt(ok ? 1 : 0);
                    }
                    return true;
                }
                case DictationContract.TX_STOP: {
                    data.enforceInterface(DictationContract.SERVICE_DESCRIPTOR);
                    boolean commit = data.readInt() != 0;
                    stopSession(commit, 0);
                    if (reply != null) reply.writeNoException();
                    return true;
                }
                case DictationContract.TX_UPDATE_CURSOR: {
                    data.enforceInterface(DictationContract.SERVICE_DESCRIPTOR);
                    boolean visible = data.readInt() != 0;
                    float x = data.readFloat();
                    float top = data.readFloat();
                    float bottom = data.readFloat();
                    updateCursor(visible, x, top, bottom);
                    if (reply != null) reply.writeNoException();
                    return true;
                }
                case DictationContract.TX_IS_ENABLED: {
                    data.enforceInterface(DictationContract.SERVICE_DESCRIPTOR);
                    if (reply != null) {
                        reply.writeNoException();
                        reply.writeInt(DictationPrefs.isEnabled(DictationService.this) ? 1 : 0);
                    }
                    return true;
                }
                case DictationContract.TX_PRELOAD: {
                    data.enforceInterface(DictationContract.SERVICE_DESCRIPTOR);
                    preloadAsync();
                    if (reply != null) reply.writeNoException();
                    return true;
                }
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    };

    @Override
    public void onCreate() {
        super.onCreate();
        caretOverlay = new CaretOverlay(this);
        audioManager = (AudioManager) getSystemService(AUDIO_SERVICE);
        decodeExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() {
            @Override
            public Thread newThread(Runnable r) {
                Thread t = new Thread(r, "dictation-decode");
                t.setDaemon(true);
                return t;
            }
        });
    }

    @Override
    public IBinder onBind(Intent intent) {
        return binder;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null && DictationContract.ACTION_DEBUG_WAV.equals(intent.getAction())) {
            String path = intent.getStringExtra(DictationContract.EXTRA_WAV_PATH);
            boolean realtime = intent.getBooleanExtra(DictationContract.EXTRA_REALTIME, true);
            boolean runNow = intent.getBooleanExtra(DictationContract.EXTRA_RUN_NOW, false);
            String tier = intent.getStringExtra(DictationContract.EXTRA_TIER);
            int threads = intent.getIntExtra(DictationContract.EXTRA_THREADS, -1);

            if (path == null || path.length() == 0) {
                debugWavPath = null;
                debugWavRealtime = true;
                Log.i(BENCH_TAG, "Debug WAV source cleared (microphone restored)");
            } else if (runNow) {
                Log.i(BENCH_TAG, "Starting debug WAV benchmark: " + path + " realtime=" + realtime);
                startSession(null, tier, path, realtime, threads);
            } else {
                debugWavPath = path;
                debugWavRealtime = realtime;
                Log.i(BENCH_TAG, "Armed debug WAV source: " + path + " realtime=" + realtime);
            }
        }
        return START_NOT_STICKY;
    }

    @Override
    public void onDestroy() {
        mainHandler.removeCallbacks(idleUnloadTask);
        stopSession(false, 0);
        if (caretOverlay != null) {
            caretOverlay.hide();
        }
        perfLock.shutdown();
        if (decodeExecutor != null) {
            decodeExecutor.execute(new Runnable() {
                @Override
                public void run() {
                    closeModelOnWorker();
                }
            });
            decodeExecutor.shutdown();
        }
        super.onDestroy();
    }

    private void enforceCallerUid() {
        int uid = Binder.getCallingUid();
        if (uid == Process.myUid()) return;
        int kbUid = keyboardUid;
        if (kbUid < 0) {
            try {
                kbUid = getPackageManager().getPackageUid(DictationContract.KEYBOARD_PACKAGE, 0);
                keyboardUid = kbUid;
            } catch (PackageManager.NameNotFoundException e) {
                kbUid = -1;
            }
        }
        if (kbUid >= 0 && uid == kbUid) return;
        throw new SecurityException("Unauthorized caller UID: " + uid);
    }

    private void updateCursor(boolean visible, float x, float top, float bottom) {
        if (caretOverlay == null) return;
        boolean active;
        synchronized (sessionLock) {
            active = sessionActive;
        }
        if (!active || !visible) {
            caretOverlay.hide();
        } else {
            caretOverlay.update(true, x, top, bottom);
        }
    }

    private void preloadAsync() {
        mainHandler.removeCallbacks(idleUnloadTask);
        final String tier = DictationPrefs.getTier(this);
        final int threads = DictationPrefs.getThreads(this);
        decodeExecutor.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    AsrEngine eng = ensureEngineOnWorker(tier, threads);
                    eng.preloadActiveMethods();
                    scheduleIdleUnload();
                } catch (Throwable t) {
                    Log.w(TAG, "Preload failed", t);
                }
            }
        });
    }

    private boolean startSession(
        final IBinder callback,
        final String tierOrNull,
        final String explicitWavPath,
        final boolean explicitRealtime,
        final int explicitThreads
    ) {
        mainHandler.removeCallbacks(idleUnloadTask);

        final String wavPath = explicitWavPath != null ? explicitWavPath : debugWavPath;
        final boolean realtime = explicitWavPath != null ? explicitRealtime : debugWavRealtime;
        final boolean benchMode = wavPath != null && wavPath.length() > 0;
        final String tier = (tierOrNull != null && tierOrNull.length() > 0)
            ? tierOrNull
            : DictationPrefs.getTier(this);
        final int threads = explicitThreads > 0 ? explicitThreads : DictationPrefs.getThreads(this);

        if (!benchMode) {
            if (!DictationPrefs.isEnabled(this)) {
                notifyState(callback, DictationContract.STATE_ERROR, "Dictation is off");
                return false;
            }
            if (checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
                notifyState(callback, DictationContract.STATE_ERROR, "Microphone permission denied");
                return false;
            }
        }

        // Cancel any previous session cleanly before starting a new one.
        stopSession(false, 0);

        final int gen;
        synchronized (sessionLock) {
            gen = ++sessionGen;
            sessionActive = true;
            commitOnStop = true;
            autoStopReason = 0;
            activeCallback = callback;
            if (callback != null) {
                final int deathGen = gen;
                activeDeathRecipient = new IBinder.DeathRecipient() {
                    @Override
                    public void binderDied() {
                        synchronized (sessionLock) {
                            if (sessionGen != deathGen) return;
                        }
                        stopSession(false, 0);
                    }
                };
                try {
                    callback.linkToDeath(activeDeathRecipient, 0);
                } catch (RemoteException e) {
                    sessionActive = false;
                    activeCallback = null;
                    activeDeathRecipient = null;
                    return false;
                }
            }
        }

        // Start audio capture IMMEDIATELY before model load/warm-up so no opening words are lost.
        try {
            if (benchMode) {
                capture.startDebugWav(new File(wavPath), realtime);
            } else {
                capture.startMic();
            }
        } catch (IOException e) {
            Log.e(TAG, "Failed to start audio capture", e);
            cleanupSessionResources(gen);
            notifyState(callback, DictationContract.STATE_ERROR, e.getMessage());
            notifyAutoStop(callback, DictationContract.STOP_ERROR);
            return false;
        }

        if (!benchMode) {
            acquireAudioFocus();
            registerScreenOff();
        }
        perfLock.start();
        notifyState(callback, DictationContract.STATE_LISTENING, null);

        decodeExecutor.execute(new Runnable() {
            @Override
            public void run() {
                runDecodeLoop(gen, callback, tier, threads, benchMode, wavPath, realtime);
            }
        });
        return true;
    }

    private void stopSession(boolean commit, int reason) {
        synchronized (sessionLock) {
            if (!sessionActive) return;
            commitOnStop = commit;
            if (reason != 0 && autoStopReason == 0) {
                autoStopReason = reason;
            }
        }
        // Release microphone and hide caret overlay IMMEDIATELY.
        capture.stop(!commit);
        if (caretOverlay != null) {
            caretOverlay.hide();
        }
        perfLock.stop();
        releaseAudioFocus();
        unregisterScreenOff();
    }

    private void runDecodeLoop(
        int gen,
        IBinder callback,
        String tier,
        int threads,
        boolean benchMode,
        String wavPath,
        boolean realtime
    ) {
        long tLoadStart = SystemClock.elapsedRealtime();
        AsrEngine eng;
        try {
            eng = ensureEngineOnWorker(tier, threads);
            eng.preloadActiveMethods();
            eng.reset();
        } catch (Throwable t) {
            Log.e(TAG, "Model load failed", t);
            capture.stop(true);
            cleanupSessionResources(gen);
            notifyState(callback, DictationContract.STATE_ERROR, t.getMessage());
            notifyAutoStop(callback, DictationContract.STOP_ERROR);
            return;
        }
        long loadMs = SystemClock.elapsedRealtime() - tLoadStart;

        StreamDisplay display = new StreamDisplay();
        SilenceTracker silence = new SilenceTracker();
        String lastTentative = "";

        AsrEngine.VadInfo vadInfo = eng.vadInfo();
        float[] vadBuf = vadInfo != null ? new float[vadInfo.samples] : null;
        int vadFill = 0;

        float[] readBuf = new float[STREAM_READ_CHUNK];
        long totalSamples = 0;
        long decodeAccumMs = 0;

        try {
            while (true) {
                int n = capture.read(readBuf, readBuf.length, 100L);
                if (n < 0) {
                    break;
                }
                if (n == 0) {
                    continue;
                }
                totalSamples += n;

                long stepStart = SystemClock.elapsedRealtime();
                eng.decodeStream(readBuf, 0, n);
                StreamDisplay.Update u = display.update(eng);
                decodeAccumMs += (SystemClock.elapsedRealtime() - stepStart);

                if (u.commitDelta.length() > 0 || !u.tentative.equals(lastTentative)) {
                    lastTentative = u.tentative;
                    notifyText(callback, u.commitDelta, u.tentative);
                }

                // Track continuous silence for ~8 s auto-stop (skip in non-realtime offline WAV bench).
                if (!benchMode || realtime) {
                    boolean timedOut = false;
                    if (vadBuf != null) {
                        int off = 0;
                        while (off < n) {
                            int copy = Math.min(vadBuf.length - vadFill, n - off);
                            System.arraycopy(readBuf, off, vadBuf, vadFill, copy);
                            vadFill += copy;
                            off += copy;
                            if (vadFill == vadBuf.length) {
                                long vStart = SystemClock.elapsedRealtime();
                                float[] scores = eng.detectSpeech(vadBuf);
                                decodeAccumMs += (SystemClock.elapsedRealtime() - vStart);
                                vadFill = 0;
                                if (scores != null && scores.length > 0) {
                                    double windowMs = (vadBuf.length * 1000.0) / AudioCapture.SAMPLE_RATE;
                                    if (silence.feedVadScores(scores, windowMs / scores.length)) {
                                        timedOut = true;
                                    }
                                }
                            }
                        }
                    } else {
                        timedOut = silence.feedPcmFallback(readBuf, 0, n, AudioCapture.SAMPLE_RATE);
                    }
                    if (timedOut) {
                        stopSession(true, DictationContract.STOP_SILENCE);
                        break;
                    }
                }
            }

            boolean shouldCommit;
            int reason;
            synchronized (sessionLock) {
                shouldCommit = (sessionGen == gen) ? commitOnStop : false;
                reason = (sessionGen == gen) ? autoStopReason : 0;
            }

            String finalText = "";
            if (shouldCommit) {
                notifyState(callback, DictationContract.STATE_FINALIZING, null);
                long finStart = SystemClock.elapsedRealtime();
                eng.finish();
                StreamDisplay.Update end = display.finish(eng);
                decodeAccumMs += (SystemClock.elapsedRealtime() - finStart);
                finalText = end.settled;
                notifyFinal(callback, end.commitDelta);
            }

            if (benchMode) {
                double audioS = totalSamples / (double) AudioCapture.SAMPLE_RATE;
                double rtf = audioS > 0 ? (decodeAccumMs / 1000.0) / audioS : 0.0;
                Log.i(BENCH_TAG, String.format(
                    Locale.US,
                    "wav=%s tier=%s threads=%d load_ms=%d audio_s=%.2f decode_ms=%d rtf=%.3f dropped=%d text=%s",
                    wavPath, eng.currentTier().name, threads, loadMs, audioS, decodeAccumMs,
                    rtf, capture.droppedSamples(), finalText
                ));
            }

            cleanupSessionResources(gen);
            if (reason != 0) {
                notifyAutoStop(callback, reason);
            }
            notifyState(callback, DictationContract.STATE_IDLE, null);
            scheduleIdleUnload();
        } catch (Throwable t) {
            Log.e(TAG, "Decode loop failed", t);
            capture.stop(true);
            cleanupSessionResources(gen);
            notifyState(callback, DictationContract.STATE_ERROR, t.getMessage());
            notifyAutoStop(callback, DictationContract.STOP_ERROR);
        }
    }

    private void cleanupSessionResources(int gen) {
        capture.stop(false);
        if (caretOverlay != null) {
            caretOverlay.hide();
        }
        perfLock.stop();
        releaseAudioFocus();
        unregisterScreenOff();
        synchronized (sessionLock) {
            if (sessionGen == gen) {
                if (activeCallback != null && activeDeathRecipient != null) {
                    try {
                        activeCallback.unlinkToDeath(activeDeathRecipient, 0);
                    } catch (RuntimeException ignored) {
                    }
                }
                activeCallback = null;
                activeDeathRecipient = null;
                sessionActive = false;
            }
        }
    }

    private void scheduleIdleUnload() {
        mainHandler.removeCallbacks(idleUnloadTask);
        mainHandler.postDelayed(idleUnloadTask, IDLE_UNLOAD_DELAY_MS);
    }

    private AsrEngine ensureEngineOnWorker(String tier, int threads) throws IOException {
        if (metadata == null) {
            metadata = AsrMetadata.parse(readAssetUtf8("metadata.json"));
        }
        if (nativeModel == null || loadedThreads != threads) {
            closeModelOnWorker();
            nativeModel = NativeModel.openFromAsset(this, metadata.encoderFile, threads);
            loadedThreads = threads;
            engine = new AsrEngine(metadata, nativeModel, "vad_dft");
        }
        if (tier != null && tier.length() > 0 && !tier.equals(engine.currentTier().name)) {
            engine.setTier(tier);
        }
        return engine;
    }

    private void unloadModelOnWorker() {
        if (engine != null) {
            engine.unloadAll();
        }
    }

    private void closeModelOnWorker() {
        if (engine != null) {
            engine.unloadAll();
            engine = null;
        }
        if (nativeModel != null) {
            nativeModel.close();
            nativeModel = null;
        }
        loadedThreads = -1;
    }

    private String readAssetUtf8(String name) throws IOException {
        try (InputStream in = getAssets().open(name)) {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) >= 0) out.write(buf, 0, n);
            return new String(out.toByteArray(), StandardCharsets.UTF_8);
        }
    }

    private void acquireAudioFocus() {
        if (audioManager == null || hasAudioFocus) return;
        AudioAttributes attrs = new AudioAttributes.Builder()
            .setUsage(AudioAttributes.USAGE_ASSISTANCE_ACCESSIBILITY)
            .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
            .build();
        focusRequest = new AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE)
            .setAudioAttributes(attrs)
            .setOnAudioFocusChangeListener(focusListener)
            .build();
        int res = audioManager.requestAudioFocus(focusRequest);
        hasAudioFocus = (res == AudioManager.AUDIOFOCUS_REQUEST_GRANTED);
    }

    private void releaseAudioFocus() {
        if (audioManager != null && focusRequest != null && hasAudioFocus) {
            audioManager.abandonAudioFocusRequest(focusRequest);
            hasAudioFocus = false;
        }
    }

    private void registerScreenOff() {
        if (screenReceiverRegistered) return;
        registerReceiver(screenOffReceiver, new IntentFilter(Intent.ACTION_SCREEN_OFF));
        screenReceiverRegistered = true;
    }

    private void unregisterScreenOff() {
        if (!screenReceiverRegistered) return;
        try {
            unregisterReceiver(screenOffReceiver);
        } catch (IllegalArgumentException ignored) {
        }
        screenReceiverRegistered = false;
    }

    private void notifyState(IBinder cb, int state, String message) {
        if (cb == null) return;
        Parcel data = Parcel.obtain();
        try {
            data.writeInterfaceToken(DictationContract.CALLBACK_DESCRIPTOR);
            data.writeInt(state);
            data.writeString(message);
            cb.transact(DictationContract.CB_ON_STATE, data, null, IBinder.FLAG_ONEWAY);
        } catch (RemoteException ignored) {
        } finally {
            data.recycle();
        }
    }

    private void notifyText(IBinder cb, String commitDelta, String tentativeText) {
        if (cb == null) return;
        Parcel data = Parcel.obtain();
        try {
            data.writeInterfaceToken(DictationContract.CALLBACK_DESCRIPTOR);
            data.writeString(commitDelta);
            data.writeString(tentativeText);
            cb.transact(DictationContract.CB_ON_TEXT, data, null, IBinder.FLAG_ONEWAY);
        } catch (RemoteException ignored) {
        } finally {
            data.recycle();
        }
    }

    private void notifyFinal(IBinder cb, String finalCommitDelta) {
        if (cb == null) return;
        Parcel data = Parcel.obtain();
        try {
            data.writeInterfaceToken(DictationContract.CALLBACK_DESCRIPTOR);
            data.writeString(finalCommitDelta);
            cb.transact(DictationContract.CB_ON_FINAL, data, null, IBinder.FLAG_ONEWAY);
        } catch (RemoteException ignored) {
        } finally {
            data.recycle();
        }
    }

    private void notifyAutoStop(IBinder cb, int reason) {
        if (cb == null) return;
        Parcel data = Parcel.obtain();
        try {
            data.writeInterfaceToken(DictationContract.CALLBACK_DESCRIPTOR);
            data.writeInt(reason);
            cb.transact(DictationContract.CB_ON_AUTO_STOP, data, null, IBinder.FLAG_ONEWAY);
        } catch (RemoteException ignored) {
        } finally {
            data.recycle();
        }
    }
}
