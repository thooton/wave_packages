# XP3800 mods

This is not the Wave app or the standalone AppDrawer. These are overlays for
stock system apps on the XP3800 (Android 8.1/API 27):

| Mod | Stock APKs | Baseline tag |
| --- | --- | --- |
| Messages Improved | BMms, TelephonyProvider, ContactsProvider | `stock-messages` |
| Launcher Improved | SonimLauncher | `stock-launcher` |
| Music Improved | BMusic | `stock-music` |

Each mod's `apps/<App>/apktool/` is the smali source tree; `java/` adds
Java 8 code and `stubs/` holds compile-only declarations. Keep changes in
small smali hooks and Java. Do not change stock manifests, resources,
permissions or shared UIDs. `firmware/system/` contains the five pinned APKs
and `build.prop`, not a whole phone backup. The firmware fingerprint is
advisory for module compatibility, not a substitute for device testing.
Never add personal data or device dumps. Compare with the corresponding
stock tag, e.g. `git diff stock-messages -- mods/messages/apps/`.

## Build and test

Install JDK 21 and SDK platform/build-tools listed in [../AGENTS.md](../AGENTS.md).
The shared setup needs Python 3, zip/unzip and curl; it installs apktool
2.11.0 if necessary. Use `--jadx` for the optional read-only Java reference
(decompile with the mod's `tools/decompile.sh`). No Gradle, NDK or adb is
needed for the host builds. Messages TLS tests also need OpenSSL. From the
repo root:

```bash
mods/tools/setup.sh
mods/tools/test.sh
mods/messages/tools/test.sh
mods/messages/tools/build.sh
```

Swap `messages` for `launcher` or `music` to work on those mods. To build a
single target, pass its directory name such as `BMms` to `tools/build.sh`.
The mod build writes `.dex` files and `mods/<mod>/build/<App>/unsigned.apk`,
an **unsigned signing request**, not an installable APK. The host checks
catch duplicate classes, unresolved hook targets and some behavior
regressions; they are not tests on hardware.

## OEM signing and release

The patched system APKs keep their stock package IDs and shared UIDs. They
need genuine signatures from the OEM keys for the corresponding original
APKs, not the app key in `signing/`. Earlier builds substituted DEX and left
stale signer records, which did not sign the modified code. That helper was
not imported; the build never takes or distributes private keys.

If an authorized signer returns **all** signed APKs for a mod as `<App>.apk`
in a directory, package them from the repo root as follows:

```bash
OEM_SIGNED_APKS=/path/to/signed/apks mods/messages/tools/package.sh
```

The packager checks API 27 signatures, the signer identities against the
pinned originals, exact requested non-signature contents and alignment.
It writes `mods/messages/out/messages-improved-<version>.zip`. Bump both
`version` and `versionCode` in that mod's `module/module.prop`. Its `wave/`
metadata records package identity, compatibility and legacy ID replacements.
Don't install or release unsigned requests. `tools/deploy.sh` also requires
verified inputs; only use a reserved, recoverable test device.

Pull requests and pushes build and test unsigned requests in the [package
workflow](../.github/workflows/build-apks.yml). An authorized maintainer can
supply signed artifacts in a separate workflow run and dispatch `release-mods`
as described in [../AGENTS.md](../AGENTS.md). Only then can CI publish the ZIP
and refresh the package entry in `wave_repository`. The Wave-side publishing
Action is [`thooton/wave/publish@v1`](https://github.com/thooton/wave/tree/master/publish).

SQLite and native code were not in the upstream committed history and are
not shipped. See each mod's own `AGENTS.md` for its code and tests.
