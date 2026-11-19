# Messages Improved

Read [the shared constraints](../AGENTS.md) for building, signing and testing.

## Code conventions
* Prefer **small smali hooks + Java**: put logic in `apps/<App>/java/` (same package as the stock
  class if you need package-private access) and make the smali change a single `invoke-static`.
  Add tiny package-private bridge methods in smali when Java needs private stock members
  (example: `ti_*` methods in `MmsSmsProvider.smali`, declared for javac in `stubs/`).
* Mark every smali edit with a `# FIX(<topic>)`, `# FEAT(<topic>)` or `# PERF(<topic>)` comment so
  `rg` finds it. Edit smali with `../tools/smalipatch.py` (`patch(path, old, new)`: each anchor
  must match exactly once) from a script, so the edit is reviewable and fails loudly on drift.
* smali gotchas: non-range `invoke-*` only reach registers v0..v15. Check `.locals` and use
  `invoke-*/range` or move registers otherwise. Respect existing `try_start/catch` ranges and
  `monitor-enter/exit` pairing.
* Java targets API 27, Java 8 language level, compiled against the SDK's `android.jar`. Hidden
  framework APIs: use reflection or declare them in `stubs/`.
* Write-ups for non-trivial fixes/features go in `docs/fixes/<name>/README.md`.

## Testing
Full guide: docs/testing.md. Regression suites: `tools/testing/mms_suite.sh` (MMS receive),
`tools/rcs/device_suite.sh` (RCS on the phone), `tools/rcs/run_tests.sh` (RCS engine on the host).
* `tools/testing/push.sh` pushes `smsinject.dex` + `race.sh` to `/data/local/tmp`.
* Fake incoming SMS (real PDU through `SMS_DELIVER`):
  `adb shell su -c 'CLASSPATH=/data/local/tmp/smsinject.dex app_process /system/bin SmsInject 22000 "text" [count] [delayMs]'`
* `tools/testing/dumpdb.sh | tools/testing/orphans.py`: DB state and orphaned SMS.
* Logs: `adb logcat -s Mms Wave WaveMms WaveSelf WaveRcs WavePerf MmsSmsProvider SmsProvider ThreadIntegrity`.
* Always verify on the device after deploy (build, deploy, exercise the flow, check logcat for
  `FATAL`/`ANR`). Leave the device clean: delete test messages, reset appops, remove temp files.
