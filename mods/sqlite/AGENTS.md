# SQLite Improved

Read [README.md](README.md) and [the shared mod guide](../AGENTS.md). Keep
this module independent of the APK overlays. The checked-in firmware inputs
are limited to the original ARM libraries necessary for the ABI check and
link. Never copy personal databases, device dumps, or build outputs into Git.

After changes run `tools/package.sh` and inspect the ZIP payload. A passing
ABI check is not a device test. Do not install or reboot without authorization
on a reserved, recoverable device. Keep Android's stock rescue settings intact.
