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

    /** The main loops' wakeup (keepalive, PONG deadline, reconnect backoff). */
    String WAKE_MAIN = "main";

    /** Schedule the main wakeup after delayMs (replaces the previous main wakeup). */
    void scheduleWakeup(long delayMs);

    /**
     * Schedule wakeup {@code key} after delayMs, replacing that key's previous one. Keys are
     * independent (one alarm fires at the earliest of them), so a probe sleeping for 15 minutes
     * isn't left waiting for the next 48-minute keepalive. When a non-main key fires, the clock
     * takes a brief wakelock named after the key; its owner releases it.
     */
    void scheduleWakeup(String key, long delayMs);

    /** Cancel wakeup {@code key}. */
    void cancelWakeup(String key);

    /** Cancel every pending wakeup. */
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
        public void scheduleWakeup(String key, long delayMs) {
        }

        @Override
        public void cancelWakeup(String key) {
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
