# RCS in Messages Improved: design and contract

## Constraints that shape the design
* The phone (Sonim XP3800, Android 8.1 / API 27, firmware for Bell Canada) has **no Google Play
  services**. Bell's RCS is hosted on Google Jibe, and as of late 2026 Jibe's auto-configuration
  server (ACS) requires a DroidGuard attestation token (`Droid-Guard` header) that only GMS can
  produce. A non-Google client therefore cannot be provisioned by Jibe today. The engine below is
  a standards-based GSMA RCS Universal Profile (UP 2.x) client: it works with any carrier ACS that
  follows GSMA RCC.14 (HTTPS + SMS OTP), with a manually supplied configuration XML, and against
  the local mock network used for testing. Provisioning is pluggable so a future method (TS.43
  EAP-AKA entitlement, a Jibe token) can be added without touching the rest.
* We can't add components to BMms (manifest must stay byte-identical, see /AGENTS.md). The engine
  runs inside the BMms process (`com.android.mms`, targetSdk 23 so no background-service limits),
  hosted by an existing declared service. BMms already holds INTERNET, WAKE_LOCK,
  READ_PRIVILEGED_PHONE_STATE (SIM EAP-AKA), RECEIVE_BOOT_COMPLETED.
* RCS messages are stored in the normal telephony provider tables so the stock UI shows them
  unchanged: 1:1 chat text in `sms`, group chat and files in `pdu`/`part`/`addr` (so they land in
  the same thread as the group MMS conversation with the same participants).

## Receipt policy (user requirement)
* Never request delivery or display (read) notifications on outgoing messages
  (no `imdn.Disposition-Notification`, or none of positive-delivery/display).
* Never send display (read) notifications.
* Do send delivery notifications (IMDN `delivered`) when a sender requests positive-delivery.
* Ignore any incoming IMDN (answer 200 OK, don't surface it).
* isComposing: answer 200, never send.
These are `RcsConfig.Policy` fields with exactly these defaults.

## Layering
```
apps/BMms/java/org/wave/rcs/        pure Java 8 engine (NO android.* imports): provisioning,
                                     SIP UA, MSRP, CPIM/IMDN, chat/group/FT, capabilities
apps/BMms/java/com/android/mms/wave/   Android glue (service, storage in telephony provider,
                                     routing from the compose screen, notifications)
tools/rcs/mock/                      mock RCS network (Python 3 stdlib): ACS, SIP registrar/proxy,
                                     MSRP, FT-over-HTTP content server, scriptable virtual users,
                                     HTTP control API
tools/rcs/test/ + run_tests.sh       host tests: engine on the host JVM against the mock
```

## Engine API (contract the Android glue codes against)
Package `org.wave.rcs`. All numbers are E.164 strings (`+15551234567`). Callbacks arrive on
engine threads; the glue must not block them for long.

```java
public interface RcsPlatform {
    String msisdn();                 // E.164 or null if unknown
    String imsi(); String imei();    // may be null
    String mcc(); String mnc();      // SIM operator, may be null
    String loadState(String key);    // small persistent key/value store
    void saveState(String key, String value);
    java.io.File filesDir();         // engine may create files here (downloads, uploads)
    void log(int level, String msg); // 2..6 like android.util.Log
    javax.net.ssl.SSLSocketFactory sslSocketFactory(); // null = default
    boolean networkAvailable();
    // provisioning helpers; may return null/false when unsupported
    String waitForOtp(java.util.regex.Pattern pattern, long timeoutMs);
    byte[] simAkaChallenge(byte[] rand, byte[] autn); // null if unsupported
    void acquireWakeLock(long ms); void releaseWakeLock();
}

public interface RcsListener {
    void onRegistrationState(RcsEngine.State state, String detail);
    void onMessage(RcsMessage m);                     // incoming chat text or file (file already downloaded)
    void onSendResult(String messageId, boolean ok, int code, String reason); // ok = accepted by network
    void onCapabilities(String number, RcsCapabilities caps);
    void onGroupUpdate(RcsGroup group);               // created/joined/participants/subject changed
}

public final class RcsEngine {
    public enum State { DISABLED, PROVISIONING, REGISTERING, REGISTERED, OFFLINE, ERROR }
    public RcsEngine(RcsPlatform p, RcsListener l, RcsConfig.Policy policy);
    public void start();                       // provision if needed, register, keep alive, reconnect
    public void stop();
    public State state();
    public void setManualConfig(String provisioningXml);   // bypass ACS
    public void reprovision();
    public RcsCapabilities cachedCapabilities(String number);    // null if unknown/expired
    public void refreshCapabilities(String number);              // async SIP OPTIONS -> onCapabilities
    public String sendText(String to, String text);              // returns message id (1:1)
    public String sendFile(String to, java.io.File f, String mime);
    public String sendGroupText(java.util.Set<String> participants, String groupId, String text); // groupId null = find/create by participant set
    public String sendGroupFile(java.util.Set<String> participants, String groupId, java.io.File f, String mime);
}

public final class RcsMessage {   // immutable value object
    public String id;             // IMDN Message-ID
    public String from;           // E.164 sender
    public String to;             // E.164 (self) for 1:1
    public RcsGroup group;        // null for 1:1
    public long timestamp;        // ms (CPIM DateTime, else receive time)
    public String contentType;    // text/plain, or the file's mime
    public String text;           // for text/plain
    public java.io.File file;     // for files; String fileName
}

public final class RcsGroup { public String id /*Conversation-ID*/; public String focusUri; public String subject; public java.util.Set<String> participants; /* excluding self */ }
public final class RcsCapabilities { public boolean chat, fileTransferHttp, groupChat; public long fetchedAt; }
```
The engine may add methods; it must not change the meaning of these.
