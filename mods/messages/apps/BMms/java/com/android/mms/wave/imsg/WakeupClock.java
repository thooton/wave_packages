package com.android.mms.wave.imsg;

/**
 * Monotonic sleep-aware clock + Doze wakeup + brief partial wakelocks for PushClient.
 *
 * On Android 8.1 (API 27), elapsedRealtimeMs() uses SystemClock.elapsedRealtime() (which advances
 * during deep sleep), scheduleWakeup() sets a single AlarmManager.setExactAndAllowWhileIdle alarm
 * so the CPU sleeps completely between keepalives, and acquireBriefWakeLock() keeps the CPU awake
 * only for the few milliseconds needed to exchange PING/PONG or persist+ACK an incoming frame.
 *
 * Wakelocks are per holder: the reader, the watchdog, the alarm receiver and each probe run on
 * their own threads, and one of them finishing must not let the CPU sleep while another is still
 * working (e.g. the watchdog rescheduling its alarm while the reader is still storing and ACKing
 * a message, which could otherwise sit unACKed until the next keepalive wakeup).
 */
public interface WakeupClock {
    /** Main connection attempt: connect, TLS, HELLO/WELCOME, resend. */
    String HOLD_CONNECT = "connect";
    /** Handling one incoming frame until it is persisted and ACKed. */
    String HOLD_RX = "rx";
    /** A keepalive PING waiting for its PONG. */
    String HOLD_PING = "ping";
    /** The AlarmManager wakeup, until the loop that it woke has handled it. */
    String HOLD_ALARM = "alarm";

    /** Monotonic milliseconds including deep sleep. */
    long elapsedRealtimeMs();

    /** Schedule a wakeup tick after delayMs (replaces any previously scheduled wakeup). */
    void scheduleWakeup(long delayMs);

    /** Cancel any pending scheduled wakeup. */
    void cancelWakeup();

    /** Acquire (or extend) holder's brief partial wakelock, bounded by maxMs. */
    void acquireBriefWakeLock(String holder, long maxMs);

    /** Release holder's wakelock; other holders keep theirs. */
    void releaseWakeLock(String holder);

    /** Release every holder's wakelock (on stop). */
    void releaseAllWakeLocks();

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
        public void acquireBriefWakeLock(String holder, long maxMs) {
        }

        @Override
        public void releaseWakeLock(String holder) {
        }

        @Override
        public void releaseAllWakeLocks() {
        }
    }
}
