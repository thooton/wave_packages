# Apple (iMessage) Bridge Support

Integrates the Push Protocol v1 iMessage bridge (`imsg-server`) into the stock Sonim XP3800
Messages app (`BMms` / `com.android.mms`) without modifying the stock manifest, resources, or
conversation UI.

## What was added

1. **Setup Wizard & Settings (`Settings > Advanced settings > Apple (iMessage) settings`)**:
   - Hosted inside stock `MessagingReportsPreferenceActivity` (`msg_type=wave_imessage` /
     `wave_imessage_wizard`).
   - First-time launch opens a 4-step D-pad-friendly wizard:
     1. **Server address** (`host`, `host:port`, `https://...`, `imsg://host:port?token=...&pin=...`,
        or optional `/sdcard/imessage.txt` import).
     2. **Certificate verification** (connects over TLS, displays the leaf SHA-256 fingerprint for
        Trust-On-First-Use confirmation, or allows manual SHA-256 entry).
     3. **Access token** (client hex token from `imsg-server add-client`, or load from file).
     4. **Verify & connect** (verifies credentials via `ROLE_PROBE`, saves config, starts the
        foreground host service, fetches Apple handles, and starts automatic NAT keepalive probing).
   - Once configured, opening **Apple (iMessage) settings** displays the settings screen: enable
     switch, live status + learned keepalive interval, registered Apple handles, SMS fallback
     toggle, server/connection details (with manual keepalive probe), reconnect, re-run wizard, and
     clear setup.

2. **Low-power persistent TCP connection (`wave/imsg/*` + `WaveIMessageHost`)**:
   - Reuses the dormant `RcsMessageStatusService` as a sticky foreground service with a silent
     `IMPORTANCE_MIN` notification channel on Android 8.1 (API 27) and auto-starts on
     `BOOT_COMPLETED`.
   - Uses `SystemClock.elapsedRealtime()` and `AlarmManager.setExactAndAllowWhileIdle` so the CPU
     sleeps completely between dynamic keepalives (no periodic polling). Brief partial `WakeLock`s
     are held only during active `PING`/`PONG` exchanges and incoming frame persistence/ACKing.
   - Tracks network changes via `ConnectivityManager.registerDefaultNetworkCallback` +
     `TelephonyManager`, learning and persisting per-network optimal keepalive intervals via
     parallel `ROLE_PROBE` NAT probing.

3. **Messaging routing & compose box hint (`WaveIMessageSend`, `WaveIMessageStore`, `WaveIMessageUi`)**:
   - Keeps the messaging UI stock while updating the bottom compose box hint to `"Type SMS message"`,
     `"Type MMS message"`, or `"Type iMessage"` based on recipient capabilities and attachments.
   - Routes 1:1 text, email recipients, and all-iMessage text groups through the bridge with
     capability caching (`CHECK_TARGETS`/`TARGET_STATUS`), `sender_guid` reuse, and automatic SMS
     fallback on failure.
   - Stores incoming 1:1, group, and self-sent (synced from other Apple devices) messages into
     `mmssms.db` with `apple_msg_id` deduplication and stock notifications.
