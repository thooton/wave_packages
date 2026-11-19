package org.wave.rcs;

/**
 * Everything the engine needs from its host (Android glue, or the host-JVM test harness).
 * All methods may be called from engine threads.
 */
public interface RcsPlatform {
    /** E.164 (+15551234567) or null if unknown. */
    String msisdn();
    String imsi();
    String imei();
    /** SIM operator MCC/MNC, may be null. */
    String mcc();
    String mnc();

    /** Small persistent key/value store. */
    String loadState(String key);
    void saveState(String key, String value);

    /** The engine may create files here (downloads, uploads). */
    java.io.File filesDir();

    /** level 2..6 like android.util.Log (VERBOSE..ERROR). */
    void log(int level, String msg);

    /** null = default factory. */
    javax.net.ssl.SSLSocketFactory sslSocketFactory();

    boolean networkAvailable();

    /**
     * Waits for an OTP SMS matching {@code pattern}. Returns group(1) of the match if the pattern
     * has a group, else the whole match (the engine re-applies the pattern to whatever is
     * returned, so returning the whole SMS body also works). null on timeout/unsupported.
     */
    String waitForOtp(java.util.regex.Pattern pattern, long timeoutMs);

    /** SIM AKA: returns RES for (RAND, AUTN), null if unsupported or failed. */
    byte[] simAkaChallenge(byte[] rand, byte[] autn);

    /** The engine balances these (it counts internally, so a non-refcounted lock is fine). */
    void acquireWakeLock(long ms);
    void releaseWakeLock();
}
