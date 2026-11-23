# Messages Improved

Systemless improvements to the stock Messages app, TelephonyProvider and ContactsProvider
on the Sonim XP3800 (Android 8.1). This build is SMS/MMS-only; the original Argon checkout
retains the custom RCS work.

* How to work in this repo (build, deploy, constraints): [AGENTS.md](AGENTS.md)
* Where things are in the stock code: [docs/code-map.md](docs/code-map.md)
* How to test on the phone (no SIM needed): [docs/testing.md](docs/testing.md)
* Project status and open ends: [docs/HANDOFF.md](docs/HANDOFF.md)

What it changes (the UI stays as it is):

* **Apple (iMessage) bridge support** with low-power dynamic keepalive, setup wizard in
  Settings > Advanced settings > Apple (iMessage) settings, and dynamic compose box hint
  (`Type SMS message` / `Type MMS message` / `Type iMessage`):
  [imessage](docs/fixes/imessage/README.md)
* **Group MMS appears once, in the right conversation** (no 1:1 "Downloading..." first):
  [mms-receive-placeholder](docs/fixes/mms-receive-placeholder/README.md),
  [self-number](docs/fixes/self-number/README.md)
* **No 10-recipient cap**: [recipient-limit](docs/fixes/recipient-limit/README.md)
* **Receipt policy** (send delivery receipts, never request any, no read receipts):
  [receipts](docs/fixes/receipts/README.md), [mms-ack](docs/fixes/mms-ack/README.md)
* **Faster receiving**, MMS notifications especially:
  [performance](docs/fixes/performance/README.md)
* Crash fixes: [mms-no-subscription](docs/fixes/mms-no-subscription/README.md),
  [invisible unread SMS / stuck Missed Events (orphaned threads)](docs/fixes/sms-orphaned-threads/README.md)

Build and test with `tools/setup.sh`, `tools/build.sh`, `tools/test.sh`. `tools/deploy.sh`
installs the stock-signed APK ([shared requirements](../AGENTS.md)).
