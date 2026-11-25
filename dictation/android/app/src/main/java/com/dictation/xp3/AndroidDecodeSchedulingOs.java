package com.dictation.xp3;

import android.os.Process;
import android.util.Log;

/**
 * android.os.Process behind {@link DecodeScheduling} (every call here exists since API 1).
 * Android 8.1 maps setpriority/getpriority errors as: ESRCH and EINVAL to
 * IllegalArgumentException, EPERM and EACCES to SecurityException, anything else to
 * RuntimeException.
 */
final class AndroidDecodeSchedulingOs extends DecodeScheduling.ProcOs {

    private static final String TAG = "DictationSched";

    @Override
    public int myPid() {
        return Process.myPid();
    }

    @Override
    public int myTid() {
        return Process.myTid();
    }

    @Override
    public int getNice(int tid) {
        try {
            return Process.getThreadPriority(tid);
        } catch (RuntimeException gone) {
            return DecodeScheduling.NO_THREAD;
        }
    }

    @Override
    public int setNice(int tid, int nice) {
        try {
            Process.setThreadPriority(tid, nice);
            return DecodeScheduling.SET_OK;
        } catch (SecurityException e) {
            return DecodeScheduling.SET_DENIED;
        } catch (IllegalArgumentException e) {
            return DecodeScheduling.SET_GONE; // ESRCH; EINVAL can't happen after clamping
        } catch (RuntimeException e) {
            return DecodeScheduling.SET_FAILED;
        }
    }

    @Override
    public void log(String message) {
        Log.i(TAG, message);
    }
}
