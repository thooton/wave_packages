package com.nuance.flext9_OEM.input;

import android.os.Looper;
import android.os.Trace;
import android.util.Log;
import android.view.KeyEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Types a letter key when it goes down instead of when it comes up.
 *
 * The stock hard keyboard map (res/xml-notouch/hardkeyboard_*.xml) gives keys 2..9 only a
 * Release event, because holding the key opens a popup of alternate characters instead.
 * So the letter (and its suggestions) can only appear after the key is released, ~80..150 ms
 * after it was pressed. Here the key's Release events are dispatched to the input view as
 * soon as the key goes down, exactly as the stock HardKeyboard.onKeyUp would dispatch them;
 * when the stock code dispatches those same events later (on release, or when another key
 * is pressed while this one is held), that dispatch is dropped. If the key is held long
 * enough for the stock popup, the letter is taken back first with the stock Backspace event,
 * so the popup works as before.
 *
 * The space (key 0) gets the same treatment, which matters more: its Release event commits
 * the word and is dispatched on key up, so every space would otherwise wait for the key to
 * come up (~80 ms, as long as the key is held) before the next word's predictions appear.
 * Its Release event is a Virtual one, and unlike a letter the key also has a Hold event
 * (the key's popup: the digit 0). A space is typed early only after it has been down for a
 * moment and wasn't held, and if the Hold does arrive later the space is taken back and the
 * Hold is dispatched as stock would have, so holding 0 still types the digit once.
 *
 * Only plain cases are handled early: predictive (ambig) page, a single key down, a key whose
 * Release events are all Character events, or the space. Everything else is left to stock.
 */
public final class WaveEarly {
    private static final String TAG = WaveSpec.TAG;

    /** A key whose Release events were already dispatched. */
    private static final class Early {
        int keyCode;
        List<?> events;
        Object hk, listener, page;
    }

    private static final ArrayList<Early> sEarly = new ArrayList<>();
    private static boolean sInit, sDisabled;
    /** The space's Virtual Release and Hold events, and its key, while it may be typed early. */
    private static Object sSpaceRelease, sSpaceHold, sSpaceKey;
    /** The space key down and typing it early hasn't happened yet. */
    private static boolean sSpaceDown;
    /**
     * How long the space must be down before it is typed early (ms). The stock code opens the
     * key's popup on a press repeat (the first arrives ~50 ms in), and flags the key as held
     * before that; this stays under that so the popup decision is still made by stock.
     */
    private static final long SPACE_DELAY = 16;
    private static Field fCurrentPage, fListener, fMode, fPressedKeys, fKeys, fKeyCode, fMapEvents, fIsHold, fIsCombo,
            fEventClass, fStringData;
    private static Method mHandleEvent, mGetIc;
    private static Object tRelease, tPress, tHold, cCharacter, cVirtual;
    private static Class<?> cAlphaInputView;
    /** Runs the space's early typing just after the key goes down (on the main thread). */
    private static final android.os.Handler sHandler = new android.os.Handler(Looper.getMainLooper());

    private WaveEarly() { }

    private static void init() throws Exception {
        String p = "com.nuance.flext9_OEM.input.";
        Class<?> cHk = Class.forName(p + "HardKeyboard");
        Class<?> cPage = Class.forName(p + "HardKeyboardPage");
        Class<?> cKey = Class.forName(p + "HardKeyboardKey");
        Class<?> cEvent = Class.forName(p + "HardKeyboardEvent");
        fCurrentPage = WaveSpec.field(cHk, "mCurrentPage");
        fListener = WaveSpec.field(cHk, "mListener");
        mHandleEvent = WaveSpec.method(cHk, "handleEvent", cEvent);
        fMode = WaveSpec.field(cPage, "mMode");
        fPressedKeys = WaveSpec.field(cPage, "mPressedKeys");
        fKeys = WaveSpec.field(cPage, "mKeys");
        fKeyCode = WaveSpec.field(cKey, "mKeyCode");
        fMapEvents = WaveSpec.field(cKey, "mMapEvents");
        fIsHold = WaveSpec.field(cKey, "mIsHold");
        fIsCombo = WaveSpec.field(cKey, "mIsCombo");
        fEventClass = WaveSpec.field(cEvent, "mEventClass");
        fStringData = WaveSpec.field(cEvent, "mStringData");
        tRelease = enumValue(p + "HardKeyboard$EventType", "EventType_Release");
        tPress = enumValue(p + "HardKeyboard$EventType", "EventType_Press");
        tHold = enumValue(p + "HardKeyboard$EventType", "EventType_Hold");
        cCharacter = enumValue(p + "HardKeyboard$EventClass", "EventClass_Character");
        cVirtual = enumValue(p + "HardKeyboard$EventClass", "EventClass_Virtual");
        cAlphaInputView = Class.forName(p + "AlphaInputView");
        mGetIc = WaveSpec.method(cAlphaInputView, "getCurrentInputConnection");
        sInit = true;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private static Object enumValue(String cls, String name) throws Exception {
        return Enum.valueOf((Class) Class.forName(cls), name);
    }

    /** The key object for keyCode in the page, if it is down. */
    private static Object pressedKey(Object page, int keyCode) throws Exception {
        for (Map.Entry<?, ?> e : ((Map<?, ?>) fKeys.get(page)).entrySet()) {
            if (fKeyCode.getInt(e.getKey()) == keyCode) return Boolean.TRUE.equals(e.getValue()) ? e.getKey() : null;
        }
        return null;
    }

    /** HardKeyboard.onKeyDown(int, KeyEvent), after the stock body. */
    public static void afterKeyDown(Object hk, int keyCode, KeyEvent event, boolean handled) {
        if (sDisabled || !handled || event.getRepeatCount() != 0) return;
        if (keyCode == KeyEvent.KEYCODE_0) {
            spaceDown(hk);
            return;
        }
        if (keyCode < KeyEvent.KEYCODE_2 || keyCode > KeyEvent.KEYCODE_9) return;
        if (Looper.myLooper() != Looper.getMainLooper()) return;
        Trace.beginSection("wave.early");
        try {
            if (!sInit) init();
            Object page = fCurrentPage.get(hk);
            Object listener = fListener.get(hk);
            if (page == null || !cAlphaInputView.isInstance(listener)) return;
            if (!"ambig".equalsIgnoreCase((String) fMode.get(page))) return;
            List<?> pressed = (List<?>) fPressedKeys.get(page);
            if (pressed.size() != 1 || ((Integer) pressed.get(0)) != keyCode) return;
            Object key = pressedKey(page, keyCode);
            if (key == null || fIsHold.getBoolean(key) || fIsCombo.getBoolean(key)) return;
            Map<?, ?> byType = (Map<?, ?>) ((Map<?, ?>) fMapEvents.get(key)).get("0");
            if (byType == null || byType.size() != 1) return;
            List<?> events = (List<?>) byType.get(tRelease);
            if (events == null || events.isEmpty()) return;
            for (Object e : events) if (fEventClass.get(e) != cCharacter) return;
            if (!sEarly.isEmpty()) return;
            Early x = new Early();
            x.keyCode = keyCode; x.events = new ArrayList<>(events); x.hk = hk; x.listener = listener; x.page = page;
            sEarly.add(x);
            for (Object e : x.events) {
                if (!(Boolean) mHandleEvent.invoke(hk, e)) ((HardKeyboard.HardKeyEventListener) listener).onHardKeyEvent((HardKeyboardEvent) e);
            }
        } catch (Throwable t) {
            Log.e(TAG, "early keys disabled", t);
            sDisabled = true;
            sEarly.clear();
        } finally {
            Trace.endSection();
        }
    }

    /**
     * The space key went down: type it early once it has been down SPACE_DELAY ms, unless it
     * is held (that opens the key's popup and types the digit after all).
     */
    private static void spaceDown(Object hk) {
        try {
            if (!sInit) init();
            if (!sEarly.isEmpty()) return;
            Object page = fCurrentPage.get(hk);
            Object listener = fListener.get(hk);
            if (page == null || !cAlphaInputView.isInstance(listener)) return;
            if (!"ambig".equalsIgnoreCase((String) fMode.get(page))) return;
            Object key = pressedKey(page, KeyEvent.KEYCODE_0);
            if (key == null || fIsHold.getBoolean(key) || fIsCombo.getBoolean(key)) return;
            Map<?, ?> byType = (Map<?, ?>) ((Map<?, ?>) fMapEvents.get(key)).get("0");
            if (byType == null) return;
            Object release = first(byType.get(tRelease), cVirtual), hold = first(byType.get(tHold), cVirtual);
            if (release == null) return;
            sSpaceRelease = release;
            sSpaceHold = hold;
            sSpaceKey = key;
            sSpaceDown = true;
            final Object h = hk, l = listener;
            sHandler.postDelayed(new Runnable() {
                @Override public void run() {
                    spaceEarly(h, l);
                }
            }, SPACE_DELAY);
        } catch (Throwable t) {
            Log.e(TAG, "early space disabled", t);
            sSpaceDown = false;
        }
    }

    /** The space has been down a moment: dispatch its Release event as stock does on key up. */
    private static void spaceEarly(Object hk, Object listener) {
        if (sDisabled || !sSpaceDown) return;
        sSpaceDown = false;
        if (WaveSpec.inKey() || !sEarly.isEmpty()) return;
        try {
            Object page = fCurrentPage.get(hk);
            if (page == null || fListener.get(hk) != listener) return;
            Object key = pressedKey(page, KeyEvent.KEYCODE_0);
            // Held: the stock code has shown the popup (or is about to); it types the digit.
            if (key == null || fIsHold.getBoolean(key) || fIsCombo.getBoolean(key)) return;
            // As during any key: the text-field answers come from the copy, not the app.
            WaveSpec.beginVirtualKey();
            try {
                if (!(Boolean) mHandleEvent.invoke(hk, sSpaceRelease)) {
                    ((HardKeyboard.HardKeyEventListener) listener).onHardKeyEvent((HardKeyboardEvent) sSpaceRelease);
                }
            } finally {
                WaveSpec.endVirtualKey();
            }
            Early x = new Early();
            x.keyCode = KeyEvent.KEYCODE_0; x.events = new ArrayList<Object>(java.util.Collections.singletonList(sSpaceRelease));
            x.hk = hk; x.listener = listener; x.page = page;
            sEarly.add(x);
        } catch (Throwable t) {
            Log.e(TAG, "early space disabled", t);
            sDisabled = true;
            sEarly.clear();
        }
    }

    private static Object first(Object list, Object cls) throws Exception {
        if (list == null) return null;
        for (Object e : (List<?>) list) if (fEventClass.get(e) == cls) return e;
        return null;
    }

    /**
     * Replaces listener.onHardKeyEvent(event) in HardKeyboard.onKeyDown / onKeyUp: drops the
     * dispatch of an event that was already dispatched when its key went down.
     */
    public static boolean dispatch(HardKeyboard.HardKeyEventListener listener, HardKeyboardEvent event) {
        // The space was typed early and is now held: take it back, then let the stock Hold
        // (and the release that follows) run, so the popup and the digit are as on stock.
        if (sSpaceHold != null && event == sSpaceHold) {
            sSpaceHold = null;
            if (undoSpace()) return listener.onHardKeyEvent(event);
            // Couldn't take the space back: let stock carry on with the key as it found it.
            return true;
        }
        for (int i = 0; i < sEarly.size(); i++) {
            Early x = sEarly.get(i);
            int j = indexOf(x.events, event);
            if (j >= 0) {
                x.events.remove(j);
                if (x.events.isEmpty()) sEarly.remove(i);
                return true;
            }
        }
        return listener.onHardKeyEvent(event);
    }

    /**
     * The space was typed early and the key is being held: take the space back. The stock Hold
     * event is about to type the digit (or open the popup), so removing the space leaves
     * exactly what stock would have: no space, then the digit. False if it can't be removed.
     */
    private static boolean undoSpace() {
        Early x = null;
        for (int i = sEarly.size() - 1; i >= 0; i--) {
            if (sEarly.get(i).keyCode == KeyEvent.KEYCODE_0) {
                x = sEarly.remove(i);
                break;
            }
        }
        if (x == null) return true;
        Trace.beginSection("wave.undo");
        try {
            return removeSpace(x.hk, x.listener, x.page);
        } catch (Throwable t) {
            Log.e(TAG, "undo space", t);
            return false;
        } finally {
            Trace.endSection();
        }
    }

    /** Remove the space the early Release typed. */
    private static boolean removeSpace(Object hk, Object listener, Object page) throws Exception {
        // The page's own Backspace event, where the page has one.
        Object bs = backspace(page);
        if (bs != null) {
            if (!(Boolean) mHandleEvent.invoke(hk, bs)) {
                ((HardKeyboard.HardKeyEventListener) listener).onHardKeyEvent((HardKeyboardEvent) bs);
            }
            return true;
        }
        // Otherwise delete the one character the space put there, as the stock code does before
        // a popup character goes in; the stock Hold then types the digit in its place.
        android.view.inputmethod.InputConnection ic =
                (android.view.inputmethod.InputConnection) mGetIc.invoke(listener);
        if (ic == null) return false;
        if (!ic.deleteSurroundingText(1, 0)) return false;
        return true;
    }

    private static int indexOf(List<?> l, Object o) {
        for (int i = 0; i < l.size(); i++) if (l.get(i) == o) return i;
        return -1;
    }

    /** IME.onKeyUp, after the stock body: the key is up, nothing more to drop for it. */
    static void keyUp(int keyCode) {
        if (keyCode == KeyEvent.KEYCODE_0) {
            // A tap that was never typed early (e.g. a very quick tap): let stock type it.
            sSpaceDown = false;
            sSpaceHold = null;
        }
        for (int i = sEarly.size() - 1; i >= 0; i--) if (sEarly.get(i).keyCode == keyCode) sEarly.remove(i);
    }

    /**
     * KeyboardViewEx.showPopupKeyboard, before the stock body: a held key opens its popup of
     * alternates. Stock never typed the letter in that case, so take it back.
     */
    public static void beforePopup(Object view, int popupKeyboard, CharSequence chars) {
        if (sEarly.isEmpty()) return;
        Early x = sEarly.remove(0);
        sEarly.clear();
        Trace.beginSection("wave.undo");
        try {
            Object bs = backspace(x.page);
            if (bs == null) {
                Log.w(TAG, "no Backspace event in page, letter stays");
                return;
            }
            if (!(Boolean) mHandleEvent.invoke(x.hk, bs)) ((HardKeyboard.HardKeyEventListener) x.listener).onHardKeyEvent((HardKeyboardEvent) bs);
        } catch (Throwable t) {
            Log.e(TAG, "undo", t);
        } finally {
            Trace.endSection();
        }
    }

    /** The page's Backspace press event (the stock CLEAR key). */
    private static Object backspace(Object page) throws Exception {
        for (Object key : ((Map<?, ?>) fKeys.get(page)).keySet()) {
            Map<?, ?> byType = (Map<?, ?>) ((Map<?, ?>) fMapEvents.get(key)).get("0");
            if (byType == null) continue;
            List<?> press = (List<?>) byType.get(tPress);
            if (press == null) continue;
            for (Object e : press) {
                if (fEventClass.get(e) == cVirtual && "Backspace".equalsIgnoreCase((String) fStringData.get(e))) return e;
            }
        }
        return null;
    }
}
