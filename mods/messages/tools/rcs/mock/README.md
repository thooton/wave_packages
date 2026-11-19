# Mock RCS network

A single-process Python 3 (stdlib only) stand-in for a carrier RCS deployment, for testing the
RCS client engine (`apps/BMms/java/org/wave/rcs/`). It speaks the same wire protocols a Jibe/GSMA
Universal Profile network does: RCC.14 auto-configuration (ACS), SIP over TCP/TLS (registrar +
terminating UA/B2BUA for scripted "virtual users"), MSRP, CPIM, IMDN, conference focus (RFC 4579/4575),
and the FT-over-HTTP content server (RCC.07). A JSON control API creates virtual users, makes them send
things to the device, and reads back everything the device sent.

## Run

```
python3 -m tools.rcs.mock            # from the repo root (default ports below)
tools/rcs/mock/run.sh -v             # same, from anywhere; -v one line per message, -vv full messages
python3 tools/rcs/mock/selftest.py   # starts its own instance on ports 18xxx and runs ~100 checks
```

Flags (see `--help`): `--host` (advertised host, default `127.0.0.1`, what ACS tells the device to
connect to), `--bind`, `--domain` (default `rcs.mock.test`), every port, `--tls` (provision
SIPoTLS+MSRPoTLS), `--ft-https`, `--no-otp`, `--otp-style empty|html|511`, `--default-msisdn`,
`--unknown-users non-rcs|rcs`, `--address-without-port`, `--ft-open-download`, `--flow-timer N`,
`--secret` (seed of the derived passwords), `--cert-dir`.

| Service | Default | Notes |
|---|---|---|
| ACS + FT content server (HTTP) | 8080 | ACS at `/` (any path except below), `/config.xml`, FT at `/ft` |
| same app over HTTPS | 8443 | self-signed cert, generated with `openssl` into `tools/rcs/mock/.certs/` (git-ignored); `GET /cert.pem` on the control port downloads it |
| SIP TCP / TLS | 5060 / 5061 | RFC 5626 CRLF keep-alive answered |
| MSRP / MSRPoTLS | 2855 / 2856 | the mock is the passive endpoint (device connects) |
| Control API (JSON) | 8099 on 127.0.0.1 only | not for the device |

On a real phone: `adb reverse tcp:5060 tcp:5060` (and 8080, 2855, 8099 not needed) so `127.0.0.1:<port>` on
the phone reaches the host. The mock never opens connections to the phone: every request towards the
device (OPTIONS, INVITE, MESSAGE, NOTIFY, BYE) goes back over the device's own SIP connection, and the
device always connects to the MSRP port of the answer (the mock offers `a=setup:actpass` in its own
INVITEs and answers `passive` to the device's `active`; if the device answers `passive`, the mock
connects out to its `a=path` instead).

## ACS (RCC.14)

`GET http://127.0.0.1:8080/?vers=..&IMSI=..&msisdn=..&rcs_version=..&rcs_profile=..&client_vendor=..&client_version=..&terminal_*=..&token=..&otp=..&SMS_port=..`

1. No valid `token` and no `otp`: a 6-digit OTP is generated for the msisdn (the mock cannot send SMS) and the
   response is `200` with an empty body (`--otp-style html` returns a small HTML page, `511` returns 511).
   The OTP is printed on stdout, traced, and readable with `curl 'http://127.0.0.1:8099/api/otp?msisdn=%2B15551234567'`.
   If the request has no msisdn, `--default-msisdn` (`+15551230000`) is used; an IMSI seen with an msisdn is remembered.
2. `otp=<code>` (valid 15 min, single use): `200` with the full `wap-provisioningdoc` incl. a `TOKEN`. Wrong OTP: `403`.
3. `token=<t>` (valid `TOKEN/validity` s): if `vers` equals the current config version the reply is the short
   doc (VERS + TOKEN only, as RCC.14 prescribes), otherwise the full doc. Unknown/expired token: back to step 1.
4. `GET /config.xml?msisdn=%2B1555...` returns the full doc without OTP (convenience, also gives a token).
5. `--no-otp`: first request already returns the full doc.

Document layout (values for `+15551234567`, host 127.0.0.1, domain `rcs.mock.test`):

```
VERS: version=1 (POST /api/acs/bump increments), validity=7776000
TOKEN: token=<random>, validity=3600
APPLICATION ap2001 "IMS Settings": Timer_T1=2000 Timer_T2=16000 Timer_T4=17000
  Public_user_identity_List: Public_user_identity=tel:+15551234567, Public_user_identity=sip:+15551234567@rcs.mock.test
  LBO_P-CSCF_Address: Address=127.0.0.1:5060 (5061 with --tls; no port with --address-without-port), AddressType=IPv4|FQDN
  APPAUTH: AuthType=Digest, Realm=rcs.mock.test, UserName=<IMSI|msisdn>@rcs.mock.test, UserPwd=<derived, stable across restarts>
  Private_User_Identity=<same as UserName>, Home_network_domain_name=rcs.mock.test, Keep_Alive_Enabled=1,
  Voice_Domain_Preference_E_UTRAN=1, SMS_Over_IP_Networks_Indication=0, RegRetryBaseTime=30, RegRetryMaxTime=1800
APPLICATION ap2002 "RCS settings":
  SERVICES: ChatAuth=1 GroupChatAuth=1 ftAuth=1 standaloneMsgAuth=1 geolocPushAuth=0 vsAuth=0 isAuth=0 ...
  IM: imMsgTech=1 AutAccept=1 AutAcceptGroupChat=1 firstMessageInvite=0 MaxSize1to1=65536 MaxSize1toM=65536
      TimerIdle=1800 MaxSizeFileTr=102400 FtWarnSize=10240 ftHTTPCSURI=http://127.0.0.1:8080/ft
      ftHTTPCSUser=<msisdn digits> ftHTTPCSPwd=<derived> ftDefaultMech=HTTP ftStAndFwEnabled=1 max_adhoc_group_size=100
      conf-fcty-uri=sip:Conference-Factory@rcs.mock.test deferred-msg-func-uri=sip:Deferred@rcs.mock.test
      exploder-uri=sip:Exploder@rcs.mock.test
  CAPDISCOVERY: pollingPeriod=0 capInfoExpiry=3600 defaultDisc=1 capDiscoveryViaPresence=0
  OTHER/transportProto: psSignalling=SIPoTCP|SIPoTLS psMedia=MSRP|MSRPoTLS psRTMedia=RTP wifiSignalling/wifiMedia/wifiRTMedia same
  SERVICEPROVIDEREXT/"joyn Messaging": deliveryTimeout=86400
```

Passwords are stateless: `SIP password = HMAC(secret, "sip:"+username)[:20]`, FT likewise, so a restarted mock
accepts credentials provisioned earlier (tokens and OTPs are in memory and are lost on restart).

## SIP

* REGISTER: first without credentials gets `401` (Digest MD5, `qop="auth"`, `realm=<domain>`); a request with a
  correct response (from the APPAUTH credentials) gets `200` with `Contact;expires=N` (capped by `--reg-expires`, default 3600),
  `Service-Route`, `P-Associated-URI` (`sip:` and `tel:`), `Supported: path, outbound`, `Allow`, `Allow-Events`, `Date`.
  A refresh carrying a still-valid nonce is accepted directly; an unknown nonce is answered with `401` (`stale=true` when expired).
  `Expires: 0` / `Contact: *` unregisters. Every other request on a connection without a live registration gets `403`.
* `CRLFCRLF` is answered with `CRLF`. Via gets `received`/`rport` filled in. Responses to INVITE carry `Record-Route`.
* OPTIONS to a virtual user: `200` with `Contact` feature tags (`+g.3gpp.icsi-ref`, `+g.3gpp.iari-ref`, defaults:
  cpim session, cpim msg, FT http, FT thumbnail), RCS-less or unknown number: `404`, offline user: `480`.
* INVITE to a virtual user (session mode, `m=message`): `100`, optional `180`, `200` with SDP answer
  (`TCP/MSRP` or `TCP/TLS/MSRP` following the offer, `a=path`, `a=setup:passive`, `accept-types: message/cpim`,
  `accept-wrapped-types: text/plain message/imdn+xml application/im-iscomposing+xml application/vnd.gsma.rcs-ft-http+xml ...`),
  `Session-Expires`/`Require: timer` echoed when the request had it. `Contribution-ID`, `Conversation-ID` etc. are recorded.
* INVITE to the conference factory (`conf-fcty-uri`; also anything with `Require: recipient-list-invite`): the multipart
  body (SDP + `application/resource-lists+xml`) is parsed, a focus `sip:chat-xxxxx@conf.rcs.mock.test` is created and
  returned as `Contact: <...;isfocus>`. INVITE to an existing focus with the same Conversation-ID resumes the group
  (unknown focus: 404). SUBSCRIBE `Event: conference` (inside the INVITE dialog or standalone) gets `200` + NOTIFY
  (`application/conference-info+xml`, full state, version increments). REFER adds/removes participants (202).
  BYE ends only the session; the group persists for a rejoin.
* SIP MESSAGE (pager mode, `message/cpim` or raw): `200` (`202` if the user is offline), same content handling as MSRP.
* SUBSCRIBE `Event: reg` gets a reginfo NOTIFY; network deregistration terminates it.
* CANCEL of a pending INVITE (with `answer_delay_ms` > 0) gets `200` and the INVITE `487`.

## Virtual users

Create with the control API (`rcs` defaults true, `online` true). Unknown numbers behave as non-RCS (404) unless
the mock is started with `--unknown-users rcs`.

| field | default | meaning |
|---|---|---|
| `rcs` | true | false: 404 for OPTIONS/INVITE/MESSAGE |
| `online` | true | false: OPTIONS gets 480; INVITE/MESSAGE still accepted (store-and-forward) unless `offline_response` is set |
| `offline_response` | null | SIP status for INVITE/MESSAGE when offline |
| `invite_response` / `options_response` | null | always answer INVITE / OPTIONS with this status |
| `answer_delay_ms` | 0 | delay before 200 to an INVITE (180 first; CANCEL-able) |
| `auto_delivery_imdn` / `auto_display_imdn` | false | send IMDN `delivered` / `displayed` for every text or file the device sends (even if not requested, to test that the client ignores them); if the session is already closed they go as SIP MESSAGE |
| `auto_composing` | false | send isComposing active/idle around the auto responses |
| `auto_reply` | null | reply with this text |
| `imdn_delay_ms` | 50 | delay of the auto responses |
| `request_dispositions` | `["positive-delivery","display"]` | `imdn.Disposition-Notification` the user puts on its own messages |
| `features` | `chat standalone ft_http ft_thumb` | advertised tags: `chat`, `standalone`, `ft_msrp`, `ft_http`, `ft_thumb`, `geopush`, `ft_sf`, or raw `urn:...icsi/iari` strings |

## Control API

All JSON; base `http://127.0.0.1:8099`. Errors: `{"error": "..."}` with 4xx/5xx; `409` = no registered device.
`GET /` lists the routes. Numbers in URLs: `%2B15551234567` or `15551234567` (a `+` is added).

```
GET  /api/state                      ports, registrations, SIP connections, counts, pending OTPs
POST /api/reset                      forget users, groups, sessions, files, chaos rules (registrations stay)
GET  /api/otp[?msisdn=+1..]          {"pending": {"+1555..": {"otp": "123456", "age_s": 3}}}
POST /api/otp {"msisdn","otp"}       set a known OTP

POST /api/users {"number":"+15557770001","rcs":true,"auto_delivery_imdn":true,...}
GET  /api/users | /api/users/<n>     PUT|PATCH /api/users/<n> {fields}    DELETE /api/users/<n>
GET  /api/users/<n>/received[?kind=text,imdn&since=<id>&clear=1]
GET  /api/users/<n>/sent             what the user sent to the device (with MSRP/SIP result)
DELETE /api/users/<n>/received       clears received+sent
POST /api/users/<n>/send             user -> device (see below)
POST /api/users/<n>/options {"to":"+1device"}    network-side OPTIONS to the device, answer recorded as 'options_response'

POST /api/groups {"creator":"+1555..","participants":["+1device","+1666.."],"subject":"x","invite_device":true}
GET  /api/groups | /api/groups/<id|focus-user> | /api/groups/<id>/messages
POST /api/groups/<id>/message {"from":"+1666..","text":"hi"} | {"from":..,"file":{...}} | {"from":..,"composing":"active"}
POST /api/groups/<id>/participants {"add":["+1.."],"remove":["+1.."]}     (removing the device sends NOTIFY then BYE)
POST /api/groups/<id>/subject {"subject":"new"}
POST /api/groups/<id>/bye            BYE towards the device's group session(s)
GET  /api/sessions                   MSRP chat sessions (paths, setup, connected flag, ids)
POST /api/sessions/<sid>/bye

GET  /api/registrations              device registrations (contact, transport, peer, expires_in, instance, options_seen)
GET  /api/trace[?limit=200&proto=SIP|MSRP|HTTP|CTRL|EVT&contains=INVITE&since=<n>&format=text]
DELETE /api/trace
GET  /api/acs/requests               every ACS request with its parameters, headers and the result
POST /api/acs/bump                   increment the config version
GET  /api/files | /api/files/<id>/content    FT store (uploads by the device and files from virtual users)

POST /api/events/deregister {"msisdn":..,"drop_connection":false}   network deregisters the device (reg NOTIFY if subscribed; later requests get 403)
POST /api/events/drop-connection {"which":"sip|msrp|all","msisdn":..}   RST the TCP connection(s)
POST /api/events/fail-next {"target":"sip|acs|ft|*","method":"INVITE|*","count":1,"code":503,"retry_after":10,"delay_ms":0,"action":"respond|drop"}
GET|DELETE /api/events/chaos         list / clear the rules
```

`POST /api/users/<n>/send` body (all optional except one of the content keys):

```
{"to": "+15551234567",             device number (default: the single registered device)
 "mode": "session"|"pager",        session = INVITE (if no open session) + MSRP, pager = SIP MESSAGE
 "text": "hello"                   | "file": {"name":"a.png","type":"image/png","content_b64":".."|"path":"/x/y"|"size":4096,
                                              "thumbnail_b64":".."}
                                   | "composing": "active"|"idle" | "imdn": {"message_id":"..","status":"delivered|displayed"}
                                   | "content_type":"..","body_b64":".."   (raw inner content, CPIM wrapped)
 "dispositions": ["positive-delivery","display"] | []   default: the user's request_dispositions
 "message_id": "..", "chunk_size": 0 (MSRP chunking), "success_report": false, "failure_report": "yes"}
-> {"ok":true,"status":200,"message_id":"..","via":"msrp","session":"<sid>","chunks":1,"elapsed_ms":12}   (502 when the device rejects/does not answer)
```

For `file`, the mock stores the bytes in its FT store, builds the `application/vnd.gsma.rcs-ft-http+xml` file-info
pointing at `<ftHTTPCSURI>/files/<id>` (thumbnail at `/thumbs/<id>`) and sends it as a CPIM message; the device
downloads it from the content server with its Digest credentials.

### What virtual users record (`GET /api/users/<n>/received`)

Each entry: `id` (increasing), `ts`, `kind`, plus fields below. Common to message kinds: `from` (device), `via`
(`msrp` or `sip-message`), `group` (Conversation-ID or null), `session`, `msrp_message_id`, `message_id` (the IMDN
Message-ID of the CPIM), `dispositions` (list from `imdn.Disposition-Notification`), `disposition_requested`
(bool), `cpim` (`{"headers": [[name, value],...], "content_type": ..}` the raw CPIM headers), `cpim_from`, `cpim_to`,
`content_type` (inner), `sip_headers` (Contribution-ID, Conversation-ID, ...).

| kind | extra fields |
|---|---|
| `text` | `text` |
| `file` | `file`: `{name,type,size,url,until,downloaded,sha256,actual_size,file_id,uploader}` (the mock "downloads" it from its own store; a url elsewhere gets `error`), `thumbnail` |
| `imdn` | `imdn`: `{message_id,status: delivered\|displayed\|failed..,kind,recipient}` |
| `composing` | `composing`: `{state,contenttype,refresh}` |
| `options` | `contact`, `accept_contact`, `body` (the device's OPTIONS) |
| `options_response` | `status`, `contact`, `allow`, `body` (device's answer to a network OPTIONS) |
| `invite` | `session`, `headers` (Contribution-ID, Conversation-ID, P-Preferred-Service, Accept-Contact, ...), `sdp` |
| `group_invite` / `group_rejoin` | `group`, `subject`, `participants`, `via` |
| `other` / `error` | `body_b64` / `error` |

## Not implemented / deviations from real networks

* No IPsec/AKA (Digest MD5 only), no SMS (OTP is read through the control API), no SIP over UDP, no TCP/TLS client
  certificate checks, no real SIP proxying between two registered devices, no PRACK/100rel, no MSRP relays,
  no presence (PUBLISH answered 200, nothing stored), no Large Message Mode / deferred messaging, no chatbot
  content, no GRUU; `Require: outbound` is not added to the REGISTER 200.
* Registrar is stateless w.r.t. credentials (derived passwords); any username with the right derived password is accepted.
* Conference-info is always sent as full state; departed users appear once as `disconnected` (booted/departed).
* FT resume (`?tid=..&get_upload_info`) answers only for completed uploads (`file-resume-info`, start 0, end size-1); partial
  uploads are not kept. Uploads/downloads are plain HTTP(S) with Digest (or Basic / Bearer token), downloads accept `Range`.
* A virtual user that is `online:false` still accepts INVITE/MESSAGE (200/202) unless `offline_response` is set.
* A non-RCS number returns 404 (Jibe-like); some carriers answer 480/604 instead.
* The conference focus URI domain (`conf.<domain>`) is not resolvable; the device must route to it through the
  Service-Route/Record-Route (the mock), which every client behind a P-CSCF already does.
