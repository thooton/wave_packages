# Messages Argon

Modified stock Messages app (BMms) and TelephonyProvider for the Sonim XP3800 (Android 8.1),
deployed as a Magisk module. Goal: a revamped messaging system on top of the stock apps.

* How to work in this repo (build, deploy, constraints): [AGENTS.md](AGENTS.md)
* Where things are in the stock code: [docs/code-map.md](docs/code-map.md)
* Fixes so far:
  * [Invisible unread SMS / stuck Missed Events (orphaned threads)](docs/fixes/sms-orphaned-threads/README.md)

Quick start: `tools/setup.sh && tools/build.sh && tools/deploy.sh`
