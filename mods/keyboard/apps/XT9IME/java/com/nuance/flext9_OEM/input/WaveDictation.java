package com.nuance.flext9_OEM.input;

import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Matrix;
import android.inputmethodservice.InputMethodService;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.InputType;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import java.lang.reflect.Method;

/**
 * Dictation with the `*` key, through the Dictation app's service (com.dictation.xp3).
 *
 * The enabled state is read from the app's provider on every onStartInput on a background
 * thread and cached for that editor. While it is off or unknown every key goes to the stock code
 * exactly as before.
 *
 * With dictation on, `*` in a plain text field (not a password, number, phone or date/time
 * field) starts listening: the stock word in progress is accepted first, the service is
 * bound (once, lazily) and sent TX_START with a callback binder for this session. The
 * service's text arrives on binder threads and is applied on the main thread: CB_ON_TEXT
 * commits its settled part and shows the rest as composing text, CB_ON_FINAL commits the
 * last part. `*` or OK again stops with commit and waits for CB_ON_FINAL; Back, any other
 * key, the end of the input and a hidden window stop at once and keep the text as shown (a
 * late final would land after whatever comes next, so it isn't waited for). Every key that
 * stops or starts dictation is consumed with its key up; any other key then goes on to the
 * stock code. While a session runs, the stock code doesn't see selection updates and the
 * look-ahead (WaveSpec) is off; afterwards the composing text is finished and the text field
 * copy (WaveConnection) starts afresh.
 *
 * The caret position (CursorAnchorInfo, requested on start) goes to the service in screen
 * coordinates for its caret overlay.
 */
public final class WaveDictation {
    private static final String TAG = WaveSpec.TAG;

    // The Dictation app's contract (com.dictation.xp3.DictationContract), copied.
    static final String PACKAGE = "com.dictation.xp3";
    static final String ACTION_DICTATION_SERVICE = "com.dictation.xp3.ACTION_DICTATION_SERVICE";
    static final String SERVICE_DESCRIPTOR = "com.dictation.xp3.IDictationService";
    static final String CALLBACK_DESCRIPTOR = "com.dictation.xp3.IDictationCallback";
    static final String PROVIDER_AUTHORITY = "com.dictation.xp3.state";
    static final String PROVIDER_METHOD_IS_ENABLED = "isEnabled";
    static final String EXTRA_ENABLED = "enabled";
    static final int TX_START = IBinder.FIRST_CALL_TRANSACTION;           // (IBinder callback, String tier) -> int
    static final int TX_STOP = IBinder.FIRST_CALL_TRANSACTION + 1;        // (int commit)
    static final int TX_UPDATE_CURSOR = IBinder.FIRST_CALL_TRANSACTION + 2; // (int visible, float x, float top, float bottom)
    static final int TX_PRELOAD = IBinder.FIRST_CALL_TRANSACTION + 4;     // ()
    static final int CB_ON_STATE = IBinder.FIRST_CALL_TRANSACTION;        // (int state, String message)
    static final int CB_ON_TEXT = IBinder.FIRST_CALL_TRANSACTION + 1;     // (String commitDelta, String tentative)
    static final int CB_ON_FINAL = IBinder.FIRST_CALL_TRANSACTION + 2;    // (String commitDelta)
    static final int CB_ON_AUTO_STOP = IBinder.FIRST_CALL_TRANSACTION + 3; // (int reason)
    static final int STATE_IDLE = 0, STATE_ERROR = -1;

    private static final int IDLE = 0, LISTENING = 1, FINALIZING = 2;
    private static final String PLACEHOLDER = "\u200B";
    private static final long CONNECT_TIMEOUT_MS = 1500;
    /** How long a stop with commit waits for the service's final text. */
    private static final long FINAL_TIMEOUT_MS = 5000;

    private static Handler sMain, sWork;
    private static InputMethodService sIme;
    /** The provider's last answer (main thread). */
    private static boolean sEnabled;
    private static int sCheckGen;
    private static Binding sBinding;
    private static IBinder sService;
    private static boolean sPreloaded;

    // Session state (main thread).
    private static Session sSession;
    private static int sState = IDLE;
    /** Keys whose down was consumed here: their repeats and key up are consumed too. */
    private static final boolean[] sEat = new boolean[512];

    private WaveDictation() { }

    private static void init(Object ime) {
        if (ime instanceof InputMethodService) sIme = (InputMethodService) ime;
        if (sMain == null) {
            sMain = new Handler(Looper.getMainLooper());
            HandlerThread t = new HandlerThread("WaveDictation");
            t.start();
            sWork = new Handler(t.getLooper());
        }
    }

    // ================================================================ hooks

    /** IME.onStartInput, before the stock body: stop any session, refresh the enabled state. */
    public static void startInput(Object ime, EditorInfo info, boolean restarting) {
        try {
            init(ime);
            if (sState != IDLE) detach(true);
            sEnabled = false;
            final int gen = ++sCheckGen;
            final Context ctx = sIme;
            if (ctx == null) return;
            sWork.post(new Runnable() {
                @Override public void run() {
                    final boolean on = queryEnabled(ctx);
                    sMain.post(new Runnable() {
                        @Override public void run() {
                            if (gen != sCheckGen) return;
                            sEnabled = on;
                            if (on) bind();
                            else if (sState == IDLE) unbind();
                        }
                    });
                }
            });
        } catch (Throwable t) {
            Log.e(TAG, "dictation startInput", t);
        }
    }

    /** IME.onKeyDown, before everything else: true consumes the key. */
    public static boolean keyDown(Object ime, int keyCode, KeyEvent event) {
        if (keyCode >= 0 && keyCode < sEat.length && sEat[keyCode]) {
            if (event != null && event.getRepeatCount() > 0) return true;
            sEat[keyCode] = false;
        }
        if (sState == IDLE && !(sEnabled && keyCode == KeyEvent.KEYCODE_STAR)) return false;
        try {
            init(ime);
            if (sState == FINALIZING) {
                // The user went on before the final text came: keep the text as shown.
                end();
            }
            if (sState == LISTENING) {
                if (keyCode == KeyEvent.KEYCODE_STAR || keyCode == KeyEvent.KEYCODE_DPAD_CENTER
                        || keyCode == KeyEvent.KEYCODE_ENTER || keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER) {
                    finish();
                    eat(keyCode);
                    return true;
                }
                if (keyCode == KeyEvent.KEYCODE_BACK) {
                    detach(false);
                    eat(keyCode);
                    return true;
                }
                detach(true);
                return false;
            }
            if (keyCode == KeyEvent.KEYCODE_STAR && sEnabled && event != null && event.getRepeatCount() == 0
                    && plainTextField() && start()) {
                eat(keyCode);
                return true;
            }
        } catch (Throwable t) {
            Log.e(TAG, "dictation key", t);
        }
        return false;
    }

    /** IME.onKeyUp, before everything else: true consumes the key. */
    public static boolean keyUp(Object ime, int keyCode, KeyEvent event) {
        if (keyCode >= 0 && keyCode < sEat.length && sEat[keyCode]) {
            sEat[keyCode] = false;
            return true;
        }
        return false;
    }

    /** IME.onUpdateSelection: while dictating the stock code (and the look-ahead) sit it out. */
    public static boolean active() {
        return sState != IDLE;
    }

    /** IME.onFinishInput, before the stock body. */
    public static void finishInput(Object ime) {
        lifecycleStop(ime);
    }

    /** IME.onFinishInputView, before the stock body. */
    public static void finishInputView(Object ime, boolean finishingInput) {
        lifecycleStop(ime);
    }

    /** IME.onWindowHidden, before the stock body. */
    public static void windowHidden(Object ime) {
        lifecycleStop(ime);
    }

    private static void lifecycleStop(Object ime) {
        if (sState == IDLE) return;
        try {
            init(ime);
            detach(true);
        } catch (Throwable t) {
            Log.e(TAG, "dictation stop", t);
        }
    }

    /** IME.onUpdateCursorAnchorInfo (added): the caret, in screen coordinates, to the service. */
    public static void cursorAnchor(Object ime, CursorAnchorInfo info) {
        if (sState != LISTENING || info == null) return;
        float x = info.getInsertionMarkerHorizontal();
        float top = info.getInsertionMarkerTop();
        float bottom = info.getInsertionMarkerBottom();
        boolean visible = !Float.isNaN(x) && !Float.isNaN(top) && !Float.isNaN(bottom)
                && (info.getInsertionMarkerFlags() & CursorAnchorInfo.FLAG_HAS_VISIBLE_REGION) != 0;
        if (!visible) {
            sendCursor(false, 0, 0, 0);
            return;
        }
        float[] p = {x, top, x, bottom};
        Matrix m = info.getMatrix();
        if (m != null) m.mapPoints(p);
        sendCursor(true, p[0], p[1], p[3]);
    }

    // ================================================================ session

    private static void eat(int keyCode) {
        if (keyCode >= 0 && keyCode < sEat.length) sEat[keyCode] = true;
    }

    /** A plain text field: never password, number, phone or date/time fields. */
    private static boolean plainTextField() {
        if (sIme == null) return false;
        EditorInfo ei = sIme.getCurrentInputEditorInfo();
        if (ei == null) return false;
        int t = ei.inputType;
        if ((t & InputType.TYPE_MASK_CLASS) != InputType.TYPE_CLASS_TEXT) return false;
        int v = t & InputType.TYPE_MASK_VARIATION;
        return v != InputType.TYPE_TEXT_VARIATION_PASSWORD && v != InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
                && v != InputType.TYPE_TEXT_VARIATION_WEB_PASSWORD;
    }

    private static Method mGetCurrentInputView, mFlush;

    /** Accept the stock word in progress, as a cursor move would (InputView.flushCurrentActiveWord). */
    private static void flushStockWord() {
        try {
            if (mGetCurrentInputView == null) mGetCurrentInputView = WaveSpec.method(sIme.getClass(), "getCurrentInputView");
            Object view = mGetCurrentInputView.invoke(sIme);
            if (view == null) return;
            if (mFlush == null) mFlush = WaveSpec.method(view.getClass(), "flushCurrentActiveWord");
            mFlush.invoke(view);
        } catch (Throwable t) {
            Log.e(TAG, "dictation flush", t);
            InputConnection ic = sIme.getCurrentInputConnection();
            if (ic != null) ic.finishComposingText();
        }
    }

    private static boolean start() {
        InputConnection ic = sIme.getCurrentInputConnection();
        if (ic == null) return false;
        if (sService == null) bind();
        if (sBinding == null) return false;
        flushStockWord();
        Session s = new Session(ic);
        try {
            CharSequence before = ic.getTextBeforeCursor(1, 0);
            s.needsSpace = before != null && before.length() > 0
                    && !isWhitespace(before.charAt(before.length() - 1));
        } catch (RuntimeException e) {
            Log.w(TAG, "dictation text before cursor", e);
        }
        sSession = s;
        sState = LISTENING;
        WaveSpec.dictating(true);
        try {
            s.setComposing(PLACEHOLDER);
        } catch (RuntimeException e) {
            Log.w(TAG, "dictation placeholder", e);
        }
        try {
            ic.requestCursorUpdates(InputConnection.CURSOR_UPDATE_IMMEDIATE | InputConnection.CURSOR_UPDATE_MONITOR);
        } catch (Throwable t) {
            Log.w(TAG, "dictation cursor updates", t);
        }
        if (sService != null) {
            sendStart(s);
        } else {
            sMain.postDelayed(new Runnable() {
                @Override public void run() {
                    if (s == sSession && sService == null) lost();
                }
            }, CONNECT_TIMEOUT_MS);
        }
        return true;
    }

    /** `*` or OK: stop with commit; the final text comes with CB_ON_FINAL. */
    private static void finish() {
        final Session s = sSession;
        if (!s.started) {
            end();
            return;
        }
        sState = FINALIZING;
        stopCursor(s.connection);
        sendStop(true);
        sMain.postDelayed(new Runnable() {
            @Override public void run() {
                if (s == sSession && sState == FINALIZING) end();
            }
        }, FINAL_TIMEOUT_MS);
    }

    /** Commit the displayed text before immediately handing control back to the editor. */
    private static void detach(boolean commit) {
        if (sState == LISTENING && sSession.started) sendStop(commit);
        end();
    }

    private static void stopCursor(InputConnection ic) {
        if (ic != null) {
            try {
                ic.requestCursorUpdates(0);
            } catch (Throwable ignored) { }
        }
        sendCursor(false, 0, 0, 0);
    }

    /** The session is over: the text stays as it is, the stock code takes over again. */
    private static void end() {
        Session s = sSession;
        if (s == null) return;
        int was = sState;
        sSession = null;
        sState = IDLE;
        try {
            if (PLACEHOLDER.equals(s.composing)) s.connection.commitText("", 1);
            else s.connection.finishComposingText();
        } catch (RuntimeException e) {
            Log.w(TAG, "dictation finish composing", e);
        }
        if (was == LISTENING) stopCursor(s.connection);
        WaveConnection.reset();
        WaveSpec.dictating(false);
        final Object ime = sIme;
        sMain.post(new Runnable() {
            @Override public void run() {
                WaveSpec.schedule(ime);
            }
        });
    }

    private static boolean hasText(String text) {
        return text != null && !text.isEmpty();
    }

    private static boolean isWhitespace(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }

    private static void onText(Session s, String commit, String tentative) {
        if (s != sSession || sState == IDLE) return;
        InputConnection ic = s.connection;
        ic.beginBatchEdit();
        try {
            if (hasText(commit)) s.commit(commit);
            if (hasText(tentative)) s.setComposing(s.withPrefix(tentative));
            else if (!PLACEHOLDER.equals(s.composing)) s.setComposing(PLACEHOLDER);
        } finally {
            ic.endBatchEdit();
        }
    }

    private static void onFinal(Session s, String commit) {
        if (s != sSession || sState == IDLE) return;
        try {
            if (hasText(commit) || !s.composing.isEmpty()) s.commit(commit != null ? commit : "");
        } catch (RuntimeException e) {
            Log.w(TAG, "dictation final text", e);
        } finally {
            end();
        }
    }

    private static void onState(Session s, int state, String message) {
        if (s != sSession || sState == IDLE) return;
        if (state == STATE_ERROR) Log.w(TAG, "dictation: " + message);
        if (state == STATE_ERROR || state == STATE_IDLE) end();
    }

    private static void onAutoStop(Session s, int reason) {
        if (s != sSession || sState == IDLE) return;
        end();
    }

    /** One dictation session: the callback binder the service sends its text to. */
    private static final class Session extends Binder {
        final InputConnection connection;
        boolean started;
        boolean needsSpace;
        String composing = "";

        Session(InputConnection connection) {
            this.connection = connection;
        }

        // Until the first commit, the prefix belongs to each replacement of the tentative text.
        String withPrefix(String text) {
            if (!needsSpace || text.isEmpty()) return text;
            char first = text.charAt(0);
            if (isWhitespace(first) || ",.?!:;…".indexOf(first) >= 0) return text;
            return " " + text;
        }

        void setComposing(String text) {
            if (connection.setComposingText(text, 1)) composing = text;
        }

        void commit(String text) {
            if (connection.commitText(withPrefix(text), 1)) {
                composing = "";
                if (!text.isEmpty()) needsSpace = false;
            }
        }

        @Override
        protected boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == INTERFACE_TRANSACTION) {
                if (reply != null) reply.writeString(CALLBACK_DESCRIPTOR);
                return true;
            }
            if (code < CB_ON_STATE || code > CB_ON_AUTO_STOP) return super.onTransact(code, data, reply, flags);
            data.enforceInterface(CALLBACK_DESCRIPTOR);
            final Session s = this;
            switch (code) {
                case CB_ON_STATE: {
                    final int state = data.readInt();
                    final String message = data.readString();
                    sMain.post(new Runnable() {
                        @Override public void run() { onState(s, state, message); }
                    });
                    break;
                }
                case CB_ON_TEXT: {
                    final String commit = data.readString();
                    final String tentative = data.readString();
                    sMain.post(new Runnable() {
                        @Override public void run() { onText(s, commit, tentative); }
                    });
                    break;
                }
                case CB_ON_FINAL: {
                    final String commit = data.readString();
                    sMain.post(new Runnable() {
                        @Override public void run() { onFinal(s, commit); }
                    });
                    break;
                }
                default: {
                    final int reason = data.readInt();
                    sMain.post(new Runnable() {
                        @Override public void run() { onAutoStop(s, reason); }
                    });
                    break;
                }
            }
            return true;
        }
    }

    // ================================================================ the service

    /** Is the Dictation app installed with its switch on? (worker thread) */
    private static boolean queryEnabled(Context ctx) {
        ContentProviderClient c = null;
        try {
            // Unstable: the keyboard must not die with the app's process.
            c = ctx.getContentResolver().acquireUnstableContentProviderClient(PROVIDER_AUTHORITY);
            if (c == null) return false;
            Bundle b = c.call(PROVIDER_METHOD_IS_ENABLED, null, null);
            return b != null && b.getBoolean(EXTRA_ENABLED, false);
        } catch (Throwable t) {
            return false;
        } finally {
            if (c != null) c.close();
        }
    }

    private static void lost() {
        unbind();
        if (sState != IDLE) end();
    }

    /** Each bind has its own callbacks so a late notification can't tear down a newer bind. */
    private static final class Binding implements ServiceConnection, IBinder.DeathRecipient {
        final Context context;

        Binding(Context context) {
            this.context = context;
        }

        @Override public void binderDied() {
            sMain.post(new Runnable() {
                @Override public void run() {
                    if (sBinding == Binding.this) lost();
                }
            });
        }

        @Override public void onServiceConnected(ComponentName name, IBinder binder) {
            if (sBinding != this) return;
            sService = binder;
            try {
                binder.linkToDeath(this, 0);
            } catch (RemoteException e) {
                lost();
                return;
            }
            if (!sPreloaded) {
                sPreloaded = true;
                transactOneway(TX_PRELOAD, null);
            }
            Session s = sSession;
            if (s != null && sState == LISTENING && !s.started) sendStart(s);
        }

        @Override public void onServiceDisconnected(ComponentName name) {
            if (sBinding == this) lost();
        }

        @Override public void onBindingDied(ComponentName name) {
            if (sBinding == this) lost();
        }

        void unbind() {
            try {
                context.unbindService(this);
            } catch (Throwable ignored) { }
        }
    }

    private static void bind() {
        if (sBinding != null || sIme == null) return;
        Binding binding = new Binding(sIme);
        try {
            Intent i = new Intent(ACTION_DICTATION_SERVICE).setPackage(PACKAGE);
            if (binding.context.bindService(i, binding, Context.BIND_AUTO_CREATE)) {
                sBinding = binding;
                return;
            }
        } catch (Throwable t) {
            Log.w(TAG, "dictation bind", t);
        }
        binding.unbind();
    }

    private static void unbind() {
        Binding binding = sBinding;
        if (binding == null) return;
        sBinding = null;
        IBinder b = sService;
        sService = null;
        sPreloaded = false;
        if (b != null) {
            try {
                b.unlinkToDeath(binding, 0);
            } catch (Throwable ignored) { }
        }
        binding.unbind();
    }

    private static void sendStart(final Session s) {
        final IBinder b = sService;
        if (b == null) return;
        s.started = true;
        sWork.post(new Runnable() {
            @Override public void run() {
                boolean ok = false;
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(SERVICE_DESCRIPTOR);
                    data.writeStrongBinder(s);
                    data.writeString(null);
                    b.transact(TX_START, data, reply, 0);
                    reply.readException();
                    ok = reply.readInt() != 0;
                } catch (DeadObjectException e) {
                    sMain.post(new Runnable() {
                        @Override public void run() {
                            if (sService == b) lost();
                        }
                    });
                    return;
                } catch (Throwable t) {
                    Log.w(TAG, "dictation start", t);
                } finally {
                    data.recycle();
                    reply.recycle();
                }
                final boolean started = ok;
                sMain.post(new Runnable() {
                    @Override public void run() {
                        if (s != sSession) return;
                        if (!started) {
                            end();
                            return;
                        }
                        // The caret again, now that the service has a session to show it for.
                        InputConnection ic = sState == LISTENING ? s.connection : null;
                        if (ic != null) {
                            try {
                                ic.requestCursorUpdates(InputConnection.CURSOR_UPDATE_IMMEDIATE
                                        | InputConnection.CURSOR_UPDATE_MONITOR);
                            } catch (RuntimeException e) {
                                Log.w(TAG, "dictation cursor updates", e);
                            }
                        }
                    }
                });
            }
        });
    }

    private static void sendStop(final boolean commit) {
        final IBinder b = sService;
        if (b == null) return;
        // A synchronous call on the worker preserves ordering against a subsequent TX_START.
        sWork.post(new Runnable() {
            @Override public void run() {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(SERVICE_DESCRIPTOR);
                    data.writeInt(commit ? 1 : 0);
                    if (b.transact(TX_STOP, data, reply, 0)) reply.readException();
                } catch (RemoteException | RuntimeException e) {
                    Log.w(TAG, "dictation stop", e);
                } finally {
                    data.recycle();
                    reply.recycle();
                }
            }
        });
    }

    private static void sendCursor(boolean visible, float x, float top, float bottom) {
        Parcel p = Parcel.obtain();
        p.writeInt(visible ? 1 : 0);
        p.writeFloat(x);
        p.writeFloat(top);
        p.writeFloat(bottom);
        transactOneway(TX_UPDATE_CURSOR, p);
    }

    /** A call to the service, in order on the worker thread; args (may be null) is recycled. */
    private static void transactOneway(final int code, final Parcel args) {
        final IBinder b = sService;
        if (b == null || sWork == null) {
            if (args != null) args.recycle();
            return;
        }
        sWork.post(new Runnable() {
            @Override public void run() {
                Parcel data = Parcel.obtain();
                try {
                    data.writeInterfaceToken(SERVICE_DESCRIPTOR);
                    if (args != null) data.appendFrom(args, 0, args.dataSize());
                    b.transact(code, data, null, IBinder.FLAG_ONEWAY);
                } catch (Throwable t) {
                    Log.w(TAG, "dictation call " + code, t);
                } finally {
                    data.recycle();
                    if (args != null) args.recycle();
                }
            }
        });
    }
}
