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
 * Only plain cases are handled early: predictive (ambig) page, a single key down, a key whose
 * Release events are all Character events. Everything else is left to the stock code.
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
    private static Field fCurrentPage, fListener, fMode, fPressedKeys, fKeys, fKeyCode, fMapEvents, fIsHold, fIsCombo,
            fEventClass, fStringData;
    private static Method mHandleEvent;
    private static Object tRelease, tPress, cCharacter, cVirtual;
    private static Class<?> cAlphaInputView;

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
        cCharacter = enumValue(p + "HardKeyboard$EventClass", "EventClass_Character");
        cVirtual = enumValue(p + "HardKeyboard$EventClass", "EventClass_Virtual");
        cAlphaInputView = Class.forName(p + "AlphaInputView");
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
     * Replaces listener.onHardKeyEvent(event) in HardKeyboard.onKeyDown / onKeyUp: drops the
     * dispatch of an event that was already dispatched when its key went down.
     */
    public static boolean dispatch(HardKeyboard.HardKeyEventListener listener, HardKeyboardEvent event) {
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

    private static int indexOf(List<?> l, Object o) {
        for (int i = 0; i < l.size(); i++) if (l.get(i) == o) return i;
        return -1;
    }

    /** IME.onKeyUp, after the stock body: the key is up, nothing more to drop for it. */
    static void keyUp(int keyCode) {
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
