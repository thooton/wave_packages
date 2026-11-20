# XP3800 mods

These are systemless overlays for the Sonim XP3800 (Android 8.1/API 27),
separate from the Wave app:

| Mod | Stock APKs | Baseline tag |
| --- | --- | --- |
| Messages Improved | BMms, TelephonyProvider, ContactsProvider | `stock-messages` |
| Launcher Improved | SonimLauncher | `stock-launcher` |
| Music Improved | BMusic | `stock-music` |

Each mod's `apps/<App>/apktool/` is the smali source tree; `java/` adds
Java 8 code and `stubs/` holds compile-only declarations. Keep changes in
small smali hooks and Java. Do not change stock manifests, resources,
permissions or shared UIDs. `firmware/system/` contains the five pinned APKs
and `build.prop`, plus three libraries used by the SQLite build, not a whole
phone backup. The firmware fingerprint is
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
`tools/build.sh`. The shared command builds all of the mod’s APKs into
`mods/<mod>/build/<mod>-improved-signing-request.zip`, together with SHA-256
checksums. This archive is **not installable**. Each build also writes
`build/<App>/<App>.apk`, the stock-signed test build described below. The host
checks catch duplicate classes, unresolved hook targets and some behavior
regressions; they are not tests on hardware.

## Deploying without the OEM key (test devices)

The test build is the stock APK with only its dex entries replaced
(`mods/tools/splice_apk.py`): resources and `META-INF` stay byte-identical and
the APK Signature Scheme v2 block is dropped. Android 8.1 verifies a
system-partition APK with v1 against `AndroidManifest.xml` only, so the
package keeps its original stock certificate. `mods/tools/verify_splice.py`
checks that the signature files are the stock ones and that every other entry
is exactly the unsigned build. For a reserved, recoverable test device only:

```bash
mods/messages/tools/build.sh
mods/messages/tools/deploy.sh          # WAVE_SPLICE defaults to 1
```

`WAVE_SPLICE=1 tools/package.sh` makes a test-only flashable zip the same way.
Never publish that zip; it is not OEM-signed.

## OEM signing and release

The patched system APKs keep their stock package IDs and shared UIDs. Releases
need genuine signatures from the OEM keys for the corresponding original
APKs, not the app key in `signing/`. The build never takes or distributes
private keys.

If an authorized signer returns **all** signed APKs for a mod as `<App>.apk`
in a directory, package them from the repo root as follows:

```bash
mods/tools/build-module.sh messages /path/to/signed/apks
```

The packager checks API 27 signatures, the signer identities against the
pinned originals, exact requested non-signature contents and alignment.
It writes `mods/messages/out/messages-improved-<version>.zip` with all the
verified APKs, Magisk scripts, and module metadata. To package against an
existing request without rebuilding, run
`OEM_SIGNED_APKS=/path/to/signed/apks mods/messages/tools/package.sh`. Bump both
`version` and `versionCode` in that mod's `module/module.prop`. Its `wave/`
metadata records package identity, compatibility and legacy ID replacements.
Don't install or release unsigned requests. `tools/deploy.sh` takes either
OEM-signed APKs (`OEM_SIGNED_APKS`) or the stock-signed test build
(`WAVE_SPLICE=1`, the default); only use a reserved, recoverable test device.

Pull requests and pushes build and test unsigned requests in the [package
workflow](../.github/workflows/build-apks.yml). An authorized maintainer can
supply signed artifacts in a separate workflow run and dispatch `release-mods`
as described in [../AGENTS.md](../AGENTS.md). Only then can CI publish the ZIP
and refresh the package entry in `wave_repository`. The Wave-side publishing
Action is [`thooton/wave/publish@v1`](https://github.com/thooton/wave/tree/master/publish).

The [experimental SQLite overlay](sqlite/README.md) is built and packaged
separately. It does not replace APKs and is not published in the catalog.
