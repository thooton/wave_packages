package com.android.mms.wave.imsg;

/**
 * Monotonic sleep-aware clock + Doze wakeup + brief partial wakelock hook for PushClient.
 *
 * On Android 8.1 (API 27), elapsedRealtimeMs() uses SystemClock.elapsedRealtime() (which advances
 * during deep sleep), scheduleWakeup() sets a single AlarmManager.setExactAndAllowWhileIdle alarm
 * so the CPU sleeps completely between keepalives, and acquireBriefWakeLock() keeps the CPU awake
 * only for the few milliseconds needed to exchange PING/PONG or persist+ACK an incoming frame.
 */
public interface WakeupClock {
    /** Monotonic milliseconds including deep sleep. */
    long elapsedRealtimeMs();

    /** Schedule a wakeup tick after delayMs (replaces any previously scheduled wakeup). */
    void scheduleWakeup(long delayMs);

    /** Cancel any pending scheduled wakeup. */
    void cancelWakeup();

    /** Acquire a brief partial wakelock (bounded by maxMs) for active socket I/O. */
    void acquireBriefWakeLock(long maxMs);

    /** Release the brief partial wakelock once active I/O is finished. */
    void releaseWakeLock();

    /** Default non-Android implementation for host tests. */
    final class DefaultClock implements WakeupClock {
        @Override
        public long elapsedRealtimeMs() {
            return System.nanoTime() / 1_000_000L;
        }

        @Override
        public void scheduleWakeup(long delayMs) {
        }

        @Override
        public void cancelWakeup() {
        }

        @Override
        public void acquireBriefWakeLock(long maxMs) {
        }

        @Override
        public void releaseWakeLock() {
        }
    }
}
