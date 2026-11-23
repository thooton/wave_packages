# Apple (iMessage) Bridge Support

Integrates the [imsg-server](https://github.com/soupskin-b2/imsg-server) iMessage bridge into the
stock Sonim XP3800 Messages app (`BMms` / `com.android.mms`) without modifying the stock manifest,
resources, or conversation UI.

## What was added

1. **Setup Wizard & Settings (`Settings > Advanced settings > Apple (iMessage) settings`)**:
   - Hosted inside stock `MessagingReportsPreferenceActivity` (`msg_type=wave_imessage` /
     `wave_imessage_wizard`).
   - First-time launch opens a two-step D-pad screen:
     1. **Pair**: the server name (`host` or `host:port`) and the one-time code printed by
        `imsg-server pair`. The phone connects over TLS (system trusted CAs and host name check,
        no pinning), sends the code with `ROLE_PAIR`, and gets back its own client id and token
        (`PAIRED`).
     2. **Phone-number setup**, driven by the server: the phone sends its SIM's MCC+MNC
        (`SIM_INFO`), sends the `REG-REQ` text the server asks for to Apple's gateway
        (`SEND_REG_SMS`, via `SmsManager`), catches Apple's `REG-RESP` reply as a normal or data SMS
        and passes it to the server (`REG_RESP`). The reply never reaches the inbox
        (`SmsReceiverService.handleSmsReceived` hook). The screen follows `SETUP_STATUS` until
        "iMessage is ready" with the registered number.
   - Once configured, opening **Apple (iMessage) settings** displays the settings screen: enable
     switch, live status + learned keepalive interval, registered Apple handles, automatic renewal
     status (days until renewal, renewing state, or built-in relay offline), SMS fallback toggle,
     server/connection details (with manual keepalive probe), reconnect, pair again, and clear
     setup.
   - Automatic renewal status uses two backwards-compatible application bodies (`0x0E REG_INFO_REQ`
     and `0x0F REG_INFO`) without bumping `PROTOCOL_VERSION`. The server pushes `REG_INFO` on main
     connect and whenever the renewal or relay state changes; during background SMS renewal the
     phone keeps its main status summary unchanged while the Renewal row shows `"Renewing..."`.

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
