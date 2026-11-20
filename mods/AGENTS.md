# XP3800 mods

These are systemless overlays for the Sonim XP3800 (Android 8.1/API 27),
separate from the Wave app:

| Mod | Stock APKs | Baseline tag |
| --- | --- | --- |
| Messages Improved | BMms, TelephonyProvider, ContactsProvider | `stock-messages` |
| Launcher Improved | SonimLauncher | `stock-launcher` |
| Music Improved | BMusic | `stock-music` |
| SQLite Improved | None; native library overlay | 11.17.00 and 11.20.00 |

Each mod's `apps/<App>/apktool/` is the smali source tree; `java/` adds
Java 8 code and `stubs/` holds compile-only declarations. Keep changes in
small smali hooks and Java. Do not change stock manifests, resources,
permissions or shared UIDs. `firmware/system/` contains the five pinned APKs
and `build.prop`, plus three stock library inputs for SQLite, not a whole phone backup. The firmware fingerprint is
advisory for module compatibility, not a substitute for device testing.
Never add personal data or device dumps. The tags above record the original imports. Messages and Launcher now build
against 11.20.00; decode the APKs in `firmware/system/priv-app/` to compare
against their current stock smali. The two provider APKs are identical on
11.17.00 and 11.20.00. Music still uses the baseline in `build.prop`.

## Build and test

Install JDK 21 and SDK platform/build-tools listed in [../AGENTS.md](../AGENTS.md).
The shared setup needs Python 3, zip/unzip and curl; it installs apktool
2.11.0 if necessary. Use `--jadx` for the optional read-only Java reference
(decompile with the mod's `tools/decompile.sh`). No Gradle, NDK or adb is
needed for the APK host builds. From the repo root:

```bash
mods/tools/setup.sh
mods/tools/test.sh
mods/messages/tools/test.sh
mods/tools/build-module.sh messages
```

Swap `messages` for `launcher` or `music` to work on those mods. To build a
single APK, pass its directory name such as `BMms` to the mod-specific
`tools/build.sh`. The shared command builds every APK and packages the module:
`mods/tools/build-module.sh messages` writes
`mods/messages/out/messages-improved-<version>.zip`. The host checks catch
duplicate classes, unresolved hook targets and some behavior regressions; they
are not tests on hardware.

## Signing and deploy

The build does not re-sign. The APK is the stock one with only its dex entries
replaced (`mods/tools/splice_apk.py`): resources and `META-INF` stay
byte-identical and the APK Signature Scheme v2 block is dropped. Android 8.1
verifies a system-partition APK with v1 against `AndroidManifest.xml` only, so
the package keeps its original stock certificate. `mods/tools/verify_splice.py`
checks that the signature files are the stock ones and that every other entry
is exactly the built payload. For a reserved, recoverable test device only:

```bash
mods/messages/tools/build.sh       # build/<App>/<App>.apk
mods/messages/tools/deploy.sh      # install as a Magisk module, then reboot
mods/messages/tools/package.sh     # out/messages-improved-<version>.zip
```

Bump both `version` and `versionCode` in the mod's `module/module.prop` before
packaging. Its `wave/` metadata records package identity, compatibility and
legacy ID replacements.

`mods/tools/build-module.sh messages` builds every APK and packages the module
zip that the [package workflow](../.github/workflows/build-apks.yml) tests.
The Wave-side publishing Action is [`thooton/wave/publish@v1`](https://github.com/thooton/wave/tree/master/publish).

[SQLite Improved](sqlite/README.md) has its own NDK build and packaging command.
