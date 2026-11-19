# Wave RCS engine

Pure-Java (Java 8 language level, Android API 27 runtime) GSMA RCS Universal Profile client in
`apps/BMms/java/org/wave/rcs/`. No `android.*` imports: everything platform-specific goes through
`RcsPlatform` (implemented by the glue in `com.android.mms.wave`). The public contract is the one in
[design.md](design.md); this document describes how it is implemented.

## Public API (as implemented)

`RcsEngine(RcsPlatform, RcsListener, RcsConfig.Policy)` with every method from design.md. All of them
return immediately, never throw, and do their work on engine threads. Additions:

| method | purpose |
|---|---|
| `stopAndWait(ms)` | `stop()` and block until the un-REGISTER finished (max ~3 s) |
| `stateDetail()` | detail string of the last state change |
| `setProvisioner(Provisioner)` | replace the RCC.14 ACS client (call before `start()`) |
| `setInstanceId(String)` | `+sip.instance` URN, e.g. `urn:gsma:imei:35123456-789012-0` or `urn:uuid:...`; null = default |
| `onNetworkChanged()` | connectivity changed: re-check `networkAvailable()`, tear down and re-register |
| `groups()` | copies of the known groups |
| `config()` / `msisdn()` | current parsed config, own number as the engine sees it |
| `core()` | internals, for tests/diagnostics only |

Semantics worth knowing:

* `stop()` un-REGISTERs (Expires 0, waits up to 3 s), BYEs open sessions, then reports `DISABLED` with detail `"stopped"`.
  `start()`/`stop()` are idempotent; the engine can be restarted.
* Listener callbacks run on one dedicated thread (`rcs-callback-1`), never on the caller's thread and never
  concurrently; a slow listener cannot stall the SIP stack.
* `onSendResult(id, ok, ...)`: `ok=true` when the network accepted the message (MSRP 200 for the last chunk,
  SIP 200/202 for a pager MESSAGE or for an INVITE carrying the message). `ok=false` for everything else:
  not registered, non-RCS peer (404), offline peer that rejects (480...), timeouts, size limits, upload failures.
  The glue falls back to SMS/MMS on `false`.
* `RcsMessage` has extra fields `fileName` and `fileSize`; `RcsCapabilities` has `rcs` (peer is an RCS user)
  and `code` (SIP status of the last OPTIONS, 0 = never asked).
* `reprovision()` also switches a manual config back to ACS provisioning.
* 1:1 peers are addressed as `tel:+E164` (state `uri_scheme=sip` switches to `sip:+E164@domain;user=phone`).

## Architecture

```
RcsEngine (facade, async)
  core/Core     lifecycle, provisioning, flow + registration, keep-alive, reconnect, request dispatch
  core/Chat     1:1 + group CPM sessions, pager mode, IMDN policy, conference events, FT over HTTP
  core/Caps     OPTIONS capability discovery + cache
  prov/         Provisioner interface, AcsProvisioner (RCC.14)
  sip/          SipMessage, NameAddr, SipTransport (TCP/TLS flow), SipStack (transactions, auth), Dialog, Registration
  msrp/         MsrpMessage (codec), MsrpSession (one TCP/TLS connection per session, chunking, reassembly)
  im/           Cpim, Imdn, Sdp, Multipart, GroupXml (resource-lists, conference-info)
  ft/           FileInfo (vnd.gsma.rcs-ft-http+xml), FtHttpClient (upload/download with Digest)
  util/         Log, Xml (hardened DOM), Digest (MD5, qop=auth, AKA hook), Http (HttpURLConnection), U
```

Threads: one single-threaded scheduled executor (`rcs-engine`) owns all mutable state (sessions, groups,
registration, timers); blocking work (TCP/TLS connect, ACS, FT upload/download, MSRP passive accept) runs on a
cached pool (`rcs-io`) and posts the result back. Each socket has a reader thread that only parses and posts.
The platform wake lock is reference counted: held while provisioning, connecting/registering, handling an
incoming request, waiting for a send result, and during file transfers.

## Protocol behaviour

### Provisioning (RCC.14)
* URL: state `acs_url`, else `https://config.rcs.mnc<MNC 3 digits>.mcc<MCC>.pub.3gppnetwork.org/`.
  For the default URL and no token yet, a plain-HTTP request is made first (network-based authentication);
  `acs_http_first=0/1` overrides.
* Parameters: `vers`, `rcs_state`, `IMSI`, `IMEI`, `msisdn`, `terminal_vendor/model/sw_version`,
  `client_vendor`, `client_version`, `rcs_version` (9.0), `rcs_profile` (UP_2.4), `provisioning_version` (5.0),
  `SMS_port` (37273), `default_sms_app=1`, `token`, `OTP`. All terminal/client values can be overridden with state keys
  of the same name.
* 200 without a provisioning document, or 511 -> OTP: `RcsPlatform.waitForOtp(pattern, timeout)` (pattern state
  `otp_pattern`, default 4-8 digit run; timeout `otp_timeout_ms`, default 120 s), then the same request with `OTP=`.
  A 511 without msisdn is retried with it. A rejected OTP (403) waits for one more SMS.
* `VERS version`: 0 = disabled + config reset (retry later), -1 = permanently disabled + reset, -2 = disabled, keep config,
  -3 = dormant. A short document (VERS + TOKEN only, unchanged config) refreshes validity and token only.
* 503 + Retry-After honored; 403 with a token drops the token and retries; failures keep using the previous config
  and retry with backoff. Validity is honoured: the config is re-fetched (in the background, staying registered)
  when `config_fetched_at + validity` passes.
* Persisted: `config_xml` (raw), `config_source` (`acs`|`manual`), `config_fetched_at`, `config_validity`,
  `config_version`, `prov_token`.

### Registration (SIP over TCP or TLS, one persistent flow)
* P-CSCF from `LBO_P-CSCF_Address` (`host`, `host:port`, `[v6]:port`); no port = 5061 for SIPoTLS, 5060 for SIPoTCP.
  Transport from `transportProto/psSignalling` (`SIPoTLS` -> TLS). TLS uses SNI with the P-CSCF host name and the
  platform `SSLSocketFactory`.
* REGISTER: stable Call-ID, Contact `<sip:user@ip:port;transport=..;ob>;+sip.instance=..;reg-id=1;+g.3gpp.icsi-ref=
  "..cpm.msg,..cpm.session";+g.3gpp.iari-ref="..rcs.fthttp"`, `Supported: path, gruu, outbound`, Expires 600000
  (what Google Messages asks for; the registrar shortens it), User-Agent (state `user_agent`, default
  `IM-client/OMA1.0 Wave/1.0`). Digest MD5 (qop=auth, MD5-sess, opaque) for 401 and 407 on every request
  (up to two retries), AKA via `simAkaChallenge` if a challenge asks for it. Credentials: APPAUTH `UserName`
  (else the private identity) and `UserPwd`; state `auth_user` overrides.
* 200: Service-Route used as the Route set of all later requests, P-Associated-URI reported in the
  `REGISTERED` detail, refresh at half the granted expiry (expiries above 1200 s: 600 s before expiry), 423 Min-Expires retried.
* Keep-alive: RFC 5626 CRLFCRLF ping every `keepalive_s` (state) / `Flow-Timer - 5` / config KeepAliveInterval / 30 s;
  no pong (or any traffic) in 10 s = dead flow.
* Dead flow / failed REGISTER: reconnect with RFC 5626 backoff `min(max, base * 2^n)` randomised 50-100 %
  (RegRetryBaseTime/RegRetryMaxTime, state `reg_retry_base_s`/`reg_retry_max_s`); a flow that was registered is
  retried immediately once. Retry-After of 503 etc. wins. 403 on REGISTER triggers one re-provisioning (ACS configs).
* Incoming: OPTIONS (200 with our tags), INVITE, ACK, BYE, CANCEL (200 + 487), MESSAGE, NOTIFY, UPDATE;
  SUBSCRIBE/REFER/PUBLISH/INFO/PRACK/REGISTER 405; anything else 501.

### Capabilities
OPTIONS with `Accept-Contact` for the CPM session ICSI. 2xx: tags from Contact (`cpm.session`/`cpm.msg` = chat,
`cpm.session` = group chat, `rcs.fthttp` = FT). 404/604 etc. = not RCS. 480/408/486/503 = offline: not RCS
unless the number was known RCS and `imCapAlwaysON=1`. Cache persisted in state `caps`, positive TTL
`msgCapValidity` else `capInfoExpiry` else 24 h (minimum 60 s), negative TTL `nonRcsCapInfoExpiry` else 1 h;
a number asked within the last 60 s is answered from the cache; local failures (no flow) are not cached.
Capabilities in incoming OPTIONS are cached for free.

### 1:1 chat
* Session mode (OMA CPM): INVITE `tel:` with SDP `m=message 9 TCP/MSRP *` (or `TCP/TLS/MSRP` for MSRPoTLS),
  `a=setup:active`, `accept-types: message/cpim application/im-iscomposing+xml`, wrapped types incl. IMDN and
  FT-HTTP; headers Contribution-ID, Conversation-ID (kept per peer), P-Preferred-Service, Accept-Contact.
  With `firstMessageInvite=1` the first text rides in the INVITE (multipart SDP + CPIM).
* MSRP: we connect (setup active) and bind with an empty SEND; messages are CPIM with the IMDN namespace,
  chunked at 2048 bytes, `Success-Report: no`, `Failure-Report: yes`. The session is reused for later messages
  and closed with BYE after `TimerIdle` (state `timer_idle_s` overrides).
* If the INVITE fails or the session breaks, the message is retried once in pager mode (SIP MESSAGE with
  `P-Preferred-Service: ...cpm.msg`) when `standaloneMsgAuth=1` (state `force_pager=1` forces it), then reported.
* Incoming INVITEs are auto-accepted: offer `setup:active` -> we listen (passive, plain TCP), otherwise we connect
  (active, TLS if offered). First message in the INVITE body is delivered. MSRP chunks are reassembled by
  Message-ID/Byte-Range, REPORT is sent if the peer asks for success reports. Incoming pager MESSAGEs (CPIM or
  plain text) are delivered too. Duplicates (same sender + Message-ID) are delivered once.

### Receipts policy (`RcsConfig.Policy`, defaults)
`requestDeliveryReports=false`, `requestDisplayReports=false`: outgoing CPIM carries no
`imdn.Disposition-Notification` unless enabled. `sendDeliveryReports=true`: if a sender asks for
`positive-delivery`, an IMDN `delivered` goes back (in the session if open, else SIP MESSAGE, CPIM To = the
original sender). `displayed` is never sent; `sendComposing` is not used. Incoming IMDNs and isComposing are
answered (200) and ignored.

### Group chat
* `sendGroupText/File(participants, groupId, ...)`: group by id, else a known group with exactly that participant
  set (numbers compared on the last 10 digits), else a new group (limit `max_adhoc_group_size`).
* Create: INVITE to `conf-fcty-uri`, `Require: recipient-list-invite`, multipart SDP + resource-lists. The focus URI
  comes from the 200 Contact (`isfocus` as header or URI parameter). Rejoin: INVITE to the focus with the same
  Conversation-ID; 403/404/410/480 on rejoin restarts the group through the factory with the same Conversation-ID.
* After joining: SUBSCRIBE `Event: conference`; NOTIFY conference-info (full or partial) updates participants
  (departed/booted/deleted users are removed) and subject -> `onGroupUpdate`.
* Incoming group INVITEs (Contact isfocus) are auto-accepted; participants from the resource-list + the inviter
  (P-Asserted-Identity / Referred-By / From). Group messages report the real sender from CPIM From.
* Groups are persisted in state `groups`.

### File transfer over HTTP
* Upload: empty POST to `ftHTTPCSURI` for the Digest challenge, then multipart/form-data (`tid`, `File`) with
  credentials `ftHTTPCSUser/ftHTTPCSPwd` (else the SIP credentials). The returned file-info is sent as
  `application/vnd.gsma.rcs-ft-http+xml` in CPIM over the chat session (or pager / group session).
* Download: incoming file-info -> GET with Digest on 401 into `filesDir()/rcs_ft/<id>_<name>` (3 attempts), then
  `onMessage` with `file`, `fileName`, `fileSize`, `contentType` = the file's MIME type. Files above
  `MaxSizeFileTr` (state `max_incoming_file` overrides) are not downloaded; a text message
  `[File not received: ...]` is delivered instead. ftWarnSize does not block (auto-accept).

## State keys

Persisted by the engine: `config_xml`, `config_source`, `config_fetched_at`, `config_validity`,
`config_version`, `prov_token`, `instance_id`, `groups`, `caps`.

Optional overrides (set by the glue / adb for debugging):

| key | effect |
|---|---|
| `acs_url` | ACS URL instead of the 3gppnetwork.org default |
| `acs_http_first` | 1/0: do / skip the plain-HTTP first request |
| `msisdn` | own number (if the SIM does not report it) |
| `pcscf` | `host:port` (or `host`) instead of the provisioned P-CSCF |
| `sip_transport` / `msrp_transport` | `TLS`/`TCP` |
| `auth_user` | Digest user name |
| `user_agent` | User-Agent for SIP, ACS and FT |
| `instance_id`, `instance_use_uuid` | `+sip.instance` value / use a UUID instead of the IMEI URN |
| `uri_scheme` | `sip` to address peers as sip: URIs |
| `reg_retry_base_s`, `reg_retry_max_s`, `keepalive_s`, `timer_idle_s` | timers |
| `otp_pattern`, `otp_timeout_ms` | OTP SMS regex (group 1 = code) and wait |
| `terminal_vendor`, `terminal_model`, `terminal_sw_version`, `client_vendor`, `client_version`, `rcs_version`, `rcs_profile` | ACS parameters |
| `max_incoming_file` | download size limit |
| `force_pager` | allow pager fallback even if standaloneMsgAuth=0 |
| `no_conference_subscribe` | don't SUBSCRIBE to the conference event package |

## Importing a config from another phone

Carriers that only provision Google's Jibe through the Google Messages app (no reachable ACS for a
third-party client) can be used by importing the `wap-provisioningdoc` that another device received and passing it
to `setManualConfig(xml)`. What matters in that document:

* `Public_user_identity_List` (tel: and sip: IMPU), `Private_User_Identity`, `Home_network_domain_name`.
* `APPAUTH` `UserName` + `UserPwd` (+ `Realm`): the SIP Digest credentials. Other `UserName`/`UserPwd` parms
  (MessageStore, XDMS) are ignored.
* `LBO_P-CSCF_Address` `Address`: Jibe gives an FQDN without port (`us-tmobile.rcs.telephony.goog`); with
  `psSignalling=SIPoTLS` the engine connects to port 5061 over TLS. State `pcscf=host:port` overrides.
* `IM`: `ftHTTPCSURI`, `ftHTTPCSUser`, `ftHTTPCSPwd`, `conf-fcty-uri`, `MaxSize1to1`, `firstMessageInvite`,
  `TimerIdle`, `MaxSizeFileTr`; `SERVICES` (ChatAuth etc.); `CAPDISCOVERY` (`capInfoExpiry 0`, `msgCapValidity 10`
  becomes a 60 s cache floor).
* `TOKEN`/`VERS`/`XGOOGLE`/`MSG` are kept in the raw map but not needed.

A manual config is never re-provisioned, wiped or stopped when its `validity` passes: the engine keeps registering
with it and only reports `"manual config validity expired (still in use)"` through `onRegistrationState`.
The credentials may still be revoked by the network, which then shows up as REGISTER 403 (state ERROR).

Caveats: the credentials belong to one registration identity. Jibe allows one active client per number: if
the donor phone (or Google Messages anywhere else) keeps the same identity registered, the two registrations
replace each other and messages go to whichever registered last. Turn RCS chat off on the donor device first.
Keep the IMEI-based `+sip.instance` of the donor (`setInstanceId("urn:gsma:imei:...")`) if the network ties the
registration to it; the XML contains passwords, treat it as a secret (the engine never logs it at INFO).

## Testing

```
tools/rcs/run_tests.sh            # unit + integration + TLS (starts mocks on 28xxx and 38xxx ports)
tools/rcs/run_tests.sh unit       # or integration | tls ; RCS_TEST=<substring> filters (integration tests depend on order)
tools/rcs/check_android.sh        # javac against android.jar + d8 --min-api 27 into build/rcs-check
```

* `tools/rcs/test/UnitTests.java`: SIP parse/serialize (compact headers, folding, lists), name-addr, Digest
  (RFC 2617 vector), numbers/ISO dates, MSRP codec (bodies containing end-line look-alikes) and a loopback session
  with 10 KB chunked transfer, CPIM (other NS prefixes), IMDN, SDP, multipart, conference-info, file-info,
  capability tags, dialog route sets, mock-style config and a realistic redacted Jibe config
  (`tools/rcs/test/data/jibe_config.xml`).
* `tools/rcs/test/IntegrationTests.java` against `tools/rcs/mock`: ACS with OTP, token reuse, un-REGISTER on stop,
  keep-alive, reconnect after a dropped flow, REGISTER 503 Retry-After, 403 re-provisioning, capabilities
  (RCS/non-RCS/throttle), 1:1 text both ways (session, pager, chunked, duplicates), receipt policy (no requests by
  default, `delivered` sent, never `displayed`, incoming IMDN/composing ignored), idle timer, fallback `ok=false`
  for non-RCS/offline, group create/send/receive/participant change/subject/rejoin/incoming invite, FT both ways with
  hash check, group FT, too-large files, wake-lock balance, network change, manual config + expiry, policy with
  delivery requests.
* `tools/rcs/test/TlsTests.java` against a mock with `--tls`: HTTPS ACS, SIPoTLS, MSRP over TLS both directions.
* Logs: `build/rcs-test/work/engine.log`, `build/rcs-test/mock.log` (and `-tls`).

## Not supported / known gaps

* MSRP file transfer (file-selector offers are rejected with 488), FT thumbnails on upload, FT resume.
* Passive MSRP over TLS (incoming offers with `setup:active` over TLS are answered with plain TCP).
* IPsec / sec-agree, SIP over UDP, IMS AKA beyond the `simAkaChallenge` hook (not tested), GRUU use.
* Presence/social presence, chatbots, geolocation push, message revocation, Store-and-forward specific handling,
  isComposing sending, `displayed` reports, group management (add/remove participants, leave, subject change)
  from the device side.
* No AutAccept=0 handling (everything is auto-accepted) and no user-visible ACS `MSG` (terms) prompt.
* Delivery to multiple own devices / multi-device (only one registration per identity is assumed).
