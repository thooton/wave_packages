# AGENTS.md (Messages Argon)

Messages Argon: a revamp of the stock messaging stack on the **Sonim XP3800** (Android 8.1,
API 27). We modify the stock system apps in place and deploy them systemlessly via Magisk. Read
this file fully before changing anything; `docs/code-map.md` explains where things live in the stock code.

## Layout
```
apps/<App>/apktool/   editable apktool (smali) project of a stock system app  (git: source of truth)
apps/<App>/java/      optional new Java code, built into an extra classesN.dex
apps/<App>/stubs/     compile-only Java declarations of stock classes that java/ calls (never shipped)
decompiled/<App>/     jadx Java of the STOCK apk: read-only reference for understanding code (ignored)
firmware/system/      stock /system dump (priv-app, app, framework, build.prop) (ignored)
tools/                build/deploy/test scripts (below)
docs/                 code map, testing, per-fix write-ups (docs/fixes/<name>/README.md), RCS (docs/rcs/)
module/               extra Magisk module files (service.sh: boot-time dexopt of the patched APKs)
build/, out/          build output (ignored); out/system/... mirrors device paths
```
`<App>` is the APK's directory name on the device: `BMms` (Messages, pkg `com.android.mms`),
`TelephonyProvider` (SMS/MMS database), and later e.g. `MmsService`, `SonimLauncher`.
Git tag `stock` = unmodified baseline; `git diff stock -- apps/` shows every change we made.

## Workflow
```
tools/setup.sh                 # once: check host tools, fetch jadx into .tools/
tools/pull_firmware.sh         # only if firmware/ is missing (needs phone without our module)
tools/decompile.sh <App>       # start working on another app (jadx ref + apktool project)
tools/build.sh [App...]        # -> out/system/.../<App>.apk  (all apps if none given)
tools/deploy.sh                # install out/ as Magisk module messages_argon + reboot
tools/deploy.sh --remove       # back to stock
tools/package.sh [version]     # flashable zip for other phones (same firmware only)
```
After deploy, wait for boot: `adb wait-for-device; until [ "$(adb shell getprop sys.boot_completed | tr -d '\r')" = 1 ]; do sleep 2; done`

## Hard constraints (read before designing features)
* **No re-signing.** These are platform-signed system apps (TelephonyProvider shares
  `android.uid.phone`); we don't have the key. `tools/lib/splice_apk.py` swaps only the dex files
  into the stock APK, keeps `META-INF`, and drops the v2 signature block. Android 8.1 then
  verifies system apps via v1 *on AndroidManifest.xml only*, so the platform certificate stays valid.
* **Therefore `AndroidManifest.xml` must stay byte-identical.** You can't add activities,
  services, receivers, providers or permissions to a stock app. `apktool d -r` keeps the
  manifest and resources binary; `build.sh` only takes `classes*.dex` from the apktool build.
  Resource edits (layouts, strings) aren't wired up yet either. Options for UI and features:
  reuse existing components, build views in code, or (bigger features) a separate companion APK
  signed with our own key. If a feature needs that decision, raise it with the user.
* SonimLauncher forces `sms_default_application` to `com.android.mms`, so a replacement SMS app
  would have to deal with that.
* Built APKs are tied to firmware `3A.0.0-01-8.1.0-11.17.00` (see `firmware/system/build.prop`).

## Code conventions
* Prefer **small smali hooks + Java**: put logic in `apps/<App>/java/` (same package as the stock
  class if you need package-private access) and make the smali change a single `invoke-static`.
  Add tiny package-private bridge methods in smali when Java needs private stock members
  (example: `ti_*` methods in `MmsSmsProvider.smali`, declared for javac in `stubs/`).
* Mark every smali edit with a `# FIX(<topic>)`, `# FEAT(<topic>)` or `# PERF(<topic>)` comment so
  `rg` finds it. Edit smali with `tools/lib/smalipatch.py` (`patch(path, old, new)`: each anchor
  must match exactly once) from a script, so the edit is reviewable and fails loudly on drift.
* smali gotchas: non-range `invoke-*` only reach registers v0..v15. Check `.locals` and use
  `invoke-*/range` or move registers otherwise. Respect existing `try_start/catch` ranges and
  `monitor-enter/exit` pairing.
* Java targets API 27, Java 8 language level, compiled against the SDK's `android.jar`. Hidden
  framework APIs: use reflection or declare them in `stubs/`.
* Write-ups for non-trivial fixes/features go in `docs/fixes/<name>/README.md`.

## Device
* Flip phone, 240x320, **no touchscreen**: drive the UI with keys (`adb shell input keyevent
  KEYCODE_DPAD_UP/DOWN/LEFT/RIGHT/CENTER/BACK/HOME`). Screenshot: `adb exec-out screencap -p > x.png`.
  The screen sleeps quickly: `adb shell svc power stayon usb` (resets on reboot).
* Launcher home: Left = Quick Settings, Right = Missed Events (`UnreadMessageInfoLoader`).
* Root: Magisk. `adb shell su -c '...'` (adbd itself isn't root). If it says "Permission denied"
  the Shell grant expired or was reset: re-grant in Magisk, then make it permanent (docs/testing.md).
  No `sqlite3` on device: `tools/testing/db.sh "<sql>"` (pulls a copy) or the providers
  (`tools/testing/dumpdb.sh`).
* No SIM inserted: sending fails and subId is invalid; use `SmsInject` for incoming SMS, the fake
  MMSC for MMS and the RCS mock for RCS (docs/testing.md).
* Shell writes to SMS providers are **silently ignored** unless
  `adb shell appops set com.android.shell WRITE_SMS allow` (reset with `default` afterwards).
* Clock is unset (1970); harmless so far.

## Testing
Full guide: docs/testing.md. Regression suites: `tools/testing/mms_suite.sh` (MMS receive),
`tools/rcs/device_suite.sh` (RCS on the phone), `tools/rcs/run_tests.sh` (RCS engine on the host).
* `tools/testing/push.sh` pushes `smsinject.dex` + `race.sh` to `/data/local/tmp`.
* Fake incoming SMS (real PDU through `SMS_DELIVER`):
  `adb shell su -c 'CLASSPATH=/data/local/tmp/smsinject.dex app_process /system/bin SmsInject 22000 "text" [count] [delayMs]'`
* `tools/testing/dumpdb.sh | tools/testing/orphans.py`: DB state and orphaned SMS.
* Logs: `adb logcat -s Mms Argon ArgonMms ArgonSelf ArgonRcs ArgonPerf MmsSmsProvider SmsProvider ThreadIntegrity`.
* Always verify on the device after deploy (build, deploy, exercise the flow, check logcat for
  `FATAL`/`ANR`). Leave the device clean: delete test messages, reset appops, remove temp files.
