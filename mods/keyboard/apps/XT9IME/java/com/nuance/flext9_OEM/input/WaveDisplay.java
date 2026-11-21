package com.nuance.flext9_OEM.input;

import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * Display info without an IPC on every keyboard frame.
 *
 * The framework lays out input method windows from the display's real size, which it asks the
 * display service for on every layout pass (DisplayManagerGlobal.getDisplayInfo, a synchronous
 * call to system_server, as the framework's own cache is compiled out). While a key is being
 * handled, this answers that call from a copy of the service's last answer, if it is under a
 * second old; every other call (and any call outside key handling) goes to the service as before.
 */
final class WaveDisplay implements InvocationHandler {
    private static final String TAG = WaveSpec.TAG;
    private static final long MAX_AGE_MS = 1000;

    private final Object mReal;
    private Constructor<?> mCopy;
    private Object mInfo;
    private int mId;
    private long mAt;

    private WaveDisplay(Object real) {
        mReal = real;
    }

    static void install() {
        try {
            Class<?> g = Class.forName("android.hardware.display.DisplayManagerGlobal");
            Object global = g.getMethod("getInstance").invoke(null);
            if (global == null) return;
            Field fDm = g.getDeclaredField("mDm");
            fDm.setAccessible(true);
            Object dm = fDm.get(global);
            Class<?> iface = Class.forName("android.hardware.display.IDisplayManager");
            if (dm == null || Proxy.isProxyClass(dm.getClass())) return;
            WaveDisplay h = new WaveDisplay(dm);
            Class<?> info = Class.forName("android.view.DisplayInfo");
            h.mCopy = info.getConstructor(info);
            fDm.set(global, Proxy.newProxyInstance(iface.getClassLoader(), new Class<?>[] {iface}, h));
        } catch (Throwable t) {
            Log.i(TAG, "display info cache not used: " + t);
        }
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        boolean info = "getDisplayInfo".equals(method.getName()) && args != null && args.length == 1
                && args[0] instanceof Integer;
        if (info && WaveSpec.inKey() && Looper.myLooper() == Looper.getMainLooper()) {
            synchronized (this) {
                if (mInfo != null && mId == (Integer) args[0] && SystemClock.uptimeMillis() - mAt < MAX_AGE_MS) {
                    return mCopy.newInstance(mInfo);
                }
            }
        }
        Object r;
        try {
            r = method.invoke(mReal, args);
        } catch (InvocationTargetException e) {
            throw e.getCause();
        }
        if (info && r != null) {
            synchronized (this) {
                mInfo = mCopy.newInstance(r);
                mId = (Integer) args[0];
                mAt = SystemClock.uptimeMillis();
            }
        }
        return r;
    }
}
