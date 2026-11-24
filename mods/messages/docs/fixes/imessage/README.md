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
     Each holder has its own (`WaveIMessage:connect`, `:rx`, `:ping`, `:alarm`, `:probe-<s>`), so
     one thread finishing can't let the CPU sleep under another: before, the watchdog rescheduling
     its alarm released the one shared lock while the reader was still storing and ACKing a message,
     which could then wait for the next keepalive wakeup. The inbox takes its lock when a message is
     queued, not when its thread gets to it, and the network-change debounce holds `:alarm`.
     While offline there's no alarm (it used to wake every 30 s); the network callback wakes it.
     Closing the socket on purpose (network change, Reconnect) reconnects at once on the new
     network's learned interval; it used to count as a failure (backoff, error status) and, on a
     learned interval, drop to 60 s keepalives and re-probe under the old network's key.
   - **Probes keep their own time.** A probe sleeps for its interval and then pings; `Object.wait`
     doesn't run while the CPU is suspended, so each probe now sets its own wakeup (the clock keeps
     keyed deadlines and arms the one alarm for the earliest, taking a wakelock named after a probe
     whose wakeup fires). Before, probes only woke at the main loop's next alarm: on a learned
     48-minute keepalive (the weekly re-probe, or one after a network change) every probe really
     idled ~48 minutes, so a NAT that drops idle sockets sooner failed them all and the interval
     collapsed to 60 s keepalives (~60 wakeups an hour instead of ~1.25). A network change no
     longer forces a full re-probe (7 TLS connections over up to an hour) when the network has a
     fresh learned interval; it stops a probe of the old network, and the new one is probed on
     connect when due (weekly, or never probed).
   - **Only a failed keepalive drops a learned interval.** It used to happen on any disconnect:
     a server restart or deploy, a server BYE, or a failed reconnect each switched to 60 s
     keepalives and started a full re-probe (7 TLS connections, up to an hour). Now only a PONG
     timeout, a PING that can't be written, or the socket dying while a PING is out do; other
     disconnects reconnect with backoff on the learned interval.
   - **Sent messages aren't delivered twice.** The server ACKs every `MSG` at once, so one still
     unACKed after 10 s means the connection is dead without anyone saying so (a NAT that forgot
     it): the client reconnects then and resends (it used to find out at the next keepalive, up to
     ~48 min, while the sender had long fallen back to SMS). A send the server never ACKed is taken
     back from the outbox when the sender gives up, and the dead socket is closed abortively (RST)
     so a MSG left in its buffer can't reach the server minutes later after its SMS went out. A send
     the server has (ACKed) but hasn't answered for isn't sent another way: the sender waits up to
     5 min for its result, then shows a text as failed (the user can resend; a picture message
     still goes as MMS then, the stock MMS sender has no failed-without-sending state). If a result comes after
     its SMS fallback was queued (no service) or failed, the fallback is dropped and the message
     becomes the sent iMessage. Covered by `PushClientInteropTest` (the real client through a relay
     that goes silent).
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
     attachment download keeps the message queued and retries for up to 6 hours, then stores it
     with a `[Photo (couldn't download)]` placeholder. Retries back off (30 s doubling to 15 min,
     back to the start on reconnect); while connected each has its own wakeup (`inbox` on the
     keyed alarm), since a Handler delay doesn't run while the CPU sleeps and a failed download used
     to wait for the next keepalive (up to ~48 min); offline the reconnect kicks the queue.
     Previews fetched before another attachment of the same message failed are kept in the cache
     (`imsg-media/<id>` + `.meta`) and reused instead of downloaded again.
   - **One media connection per message**: `MediaClient.keepOpen()` serves all of a message's
     attachment downloads (incoming) or uploads (outgoing) over one TLS connection, closed when
     the message is done (the server takes any number of requests per connection and drops idle
     ones after 120 s); a kept connection that broke is replaced at once. A message with five
     photos costs one handshake instead of five. Plain clients (no keepOpen) still open and close
     a connection per request.
   - **Tapbacks** (`WaveTapbacks`, `MessageListItem.bind` hook): iPhone-style round tapback bubbles
     hanging off the bubble's top outer corner (right on received bubbles, left on sent ones), with
     the two-dot tail toward the message, older ones stacked behind and a ring of the conversation
     background around each. Yours are in the conversation's color (the one that tints received
     bubbles, `ComposeMessageActivity.getSendContactColor()`), other people's gray (pink heart), like
     iPhones' blue and gray; standard tapbacks are one-color symbols, emoji keep their colors. Pressing a text message with tapbacks lists who
     reacted with what; the message menu (Menu with a message selected, `onPrepareOptionsMenu`, and the
     context menu) has **React** (the six standard tapbacks; choosing your
     current one removes it) and **Reactions**. When someone reacts to one of your messages you
     get a notification like iPhones show (`Alex Loved "see you at 5"`, `WaveTapbackNotify`; follows
     the stock Notifications setting).
   - **Edits** replace the stored text and add ` (edited)`, and every earlier version is kept
     (`WaveIMessageDb.editHistory`: original first, current last, each with when it was written).
     **Unsends** keep the message (text, attachments, tapbacks) and add a last line `Unsent`;
     before 1.6.0 they replaced it with `This message was unsent` and dropped its attachments and
     tapbacks. **Inline replies** start with a quote of the original (`↩ "..."`).
   - **What the UI draws** (`WaveIMessageDb.infoForUri`, cached, a set lookup for ordinary rows):
     flags `FLAG_EDITED` / `FLAG_UNSENT` / `FLAG_NOTICE` (group notices), the text alone (no quote,
     ` (edited)` or `Unsent` line), and the replied-to message's id and text. The stored body keeps
     the plain-text markers so notifications, inbox snippets and search still read sensibly.
   - **Group renames, member and photo changes** are stored as already-read notices in the
     conversation. Android files a group by its member set, so after a member change new messages
     arrive in a new thread; the notice says so in both, and replies there reuse the group's id.
   - `WaveIMessageDb` (`wave_imessage.db`) maps Apple message ids to stored rows (for tapbacks,
     edits, unsends, quotes and outgoing tapbacks), holds the current tapbacks, and maps MMS parts to
     server attachment ids. Rows older than 180 days are dropped.
   - Verified on the XP3800 against `imsg-server run --no-apple` (see that README for its test
     commands): text, 640 px photo previews, 240p video, AAC voice playback, outgoing photos over
     iMessage, tapback bubbles (yours in the conversation color, others' gray, left corner on sent bubbles), React, the reactions list,
     tapback notifications, full-size saves from both menus, reply quotes, edits, unsends, and group
     renames and member changes moving the group to its new thread.
   - Host tests: `tools/testing/imessage_test.py` (framing and bodies) and
     `tools/testing/imessage_interop_test.py` (this client code against `imsg-server run --no-apple`:
     media upload/preview/full-size/resume, HEIC, tapbacks, replies, edits, unsends, group events).
