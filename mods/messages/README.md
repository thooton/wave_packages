# Messages Argon

Modified stock Messages app (BMms) and TelephonyProvider for the Sonim XP3800 (Android 8.1),
deployed as a Magisk module. Goal: a revamped messaging system on top of the stock apps.

* How to work in this repo (build, deploy, constraints): [AGENTS.md](AGENTS.md)
* Where things are in the stock code: [docs/code-map.md](docs/code-map.md)
* How to test on the phone (no SIM needed): [docs/testing.md](docs/testing.md)
* Project status and open ends: [docs/HANDOFF.md](docs/HANDOFF.md)

What it changes (the UI stays as it is):

* **RCS chat** (GSMA Universal Profile): 1:1 and group chat, file transfer, delivery receipts sent but
  never requested, no read receipts or typing notices. Falls back to SMS/MMS whenever RCS can't
  deliver. Needs an imported configuration because Bell's Jibe can't provision a phone without
  Google services. On/off, delivery reports and status under Settings > Advanced settings.
  [Design](docs/rcs/design.md), [engine](docs/rcs/engine.md),
  [on the phone](docs/rcs/android.md)
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

Build and test with `tools/setup.sh`, `tools/build.sh`, `tools/test.sh`. See [shared signing and packaging requirements](../AGENTS.md) before attempting to install.
