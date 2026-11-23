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
     status (days until renewal, renewing state, or built-in relay offline), **Send with iMessage**
     (off: every send goes as SMS/MMS and the phone never asks the server whether a contact is on
     iMessage, while iMessages still arrive), SMS fallback toggle, **Connection notification**,
     server/connection details (with manual keepalive probe), reconnect, pair again, and clear
     setup.
   - Automatic renewal status uses two backwards-compatible application bodies (`0x0E REG_INFO_REQ`
     and `0x0F REG_INFO`) without bumping `PROTOCOL_VERSION`. The server pushes `REG_INFO` on main
     connect and whenever the renewal or relay state changes; during background SMS renewal the
     phone keeps its main status summary unchanged while the Renewal row shows `"Renewing..."`.

2. **Low-power persistent TCP connection (`wave/imsg/*` + `WaveIMessageHost`)**:
   - Reuses the dormant `RcsMessageStatusService` as a sticky started service and auto-starts on
     `BOOT_COMPLETED`. BMms targets API 23, so Android 8.1's background-service limits don't apply;
     the module's `service.sh` puts `com.android.mms` on the Doze whitelist (network and alarms in
     Doze) and allows `RUN_IN_BACKGROUND`. Each keepalive tick starts the service again so its
     last-activity time stays fresh and the process keeps its service priority. With
     **Connection notification** on, it runs as a foreground service with a silent
     `IMPORTANCE_MIN` notification instead, as before.
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

4. **Rich messages (protocol v2, imsg-server with `[media]`)**:
   - **Attachments both ways.** Incoming photos, stickers, videos, voice messages, audio and contacts
     are stored as MMS parts holding the server's screen-size previews (JPEG/PNG up to 640 px, 240p
     H.264 MP4, AAC); a 1:1 iMessage with media becomes an MMS in the 1:1 thread. They are fetched
     over a separate short-lived TLS connection (`ROLE_MEDIA`, `MEDIA_GET`/`MEDIA_DATA`, resumable),
     never over the push connection. **Save attachment** on such a message downloads the full-size
     file from the server into Download (`WaveIMessageSave`; hooks in
     `ComposeMessageActivity.saveAttachment` and the attachment viewer's Save attachment / Save all in
     `BaseAttachmentViewActivity`); without a configured server it saves the preview as before. Outgoing MMS with photos,
     video, audio or a contact go over iMessage (`MEDIA_PUT` uploads, then `SEND_MESSAGE`); the
     server converts them for iPhones. Anything else, or a failed upload, still goes as carrier MMS.
   - **Ordered, durable inbox** (`WaveIMessageInbox`): the push client hands every message-changing
     body to an on-disk queue before it ACKs, and one worker stores them in order. A failed
     attachment download keeps the message queued and retries (30 s, and on reconnect) for up to
     6 hours, then stores it with a `[Photo (couldn't download)]` placeholder.
   - **Tapbacks** (`WaveTapbacks`, `MessageListItem.bind` hook): iPhone-style badges on the top
     corner of the bubble (blue when one is yours). Pressing a text message with tapbacks lists who
     reacted with what; the message menu (Menu with a message selected, `onPrepareOptionsMenu`, and the
     context menu) has **React** (the six standard tapbacks; choosing your
     current one removes it) and **Reactions**. When someone reacts to one of your messages you
     get a notification like iPhones show (`Alex Loved "see you at 5"`, `WaveTapbackNotify`; follows
     the stock Notifications setting).
   - **Edits** replace the stored text and add ` (edited)`; **unsends** replace it with
     `This message was unsent` and drop its attachments and tapbacks. **Inline replies** start with
     a quote of the original (`↩ "..."`).
   - **Group renames, member and photo changes** are stored as already-read notices in the
     conversation. Android files a group by its member set, so after a member change new messages
     arrive in a new thread; the notice says so in both, and replies there reuse the group's id.
   - `WaveIMessageDb` (`wave_imessage.db`) maps Apple message ids to stored rows (for tapbacks,
     edits, unsends, quotes and outgoing tapbacks), holds the current tapbacks, and maps MMS parts to
     server attachment ids. Rows older than 180 days are dropped.
   - Verified on the XP3800 against `imsg-server run --no-apple` (see that README for its test
     commands): text, 640 px photo previews, 240p video, AAC voice playback, outgoing photos over
     iMessage, badges (blue for yours, left corner on sent bubbles), React, the reactions list,
     tapback notifications, full-size saves from both menus, reply quotes, edits, unsends, and group
     renames and member changes moving the group to its new thread.
   - Host tests: `tools/testing/imessage_test.py` (framing and bodies) and
     `tools/testing/imessage_interop_test.py` (this client code against `imsg-server run --no-apple`:
     media upload/preview/full-size/resume, HEIC, tapbacks, replies, edits, unsends, group events).
