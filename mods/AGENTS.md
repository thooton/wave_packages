# XP3800 mods

Work in `messages/`, `launcher/` or `music/`. Each `apps/<App>` has an
apktool smali tree, optional Java 8 code and compile-only stock declarations
in `stubs/`. Change small smali hooks, keep the logic in Java. Check the
corresponding `stock-<mod>` tag before changing stock symbols. The shared
`tools/` directory is separate from each mod's entry points and tests.
`firmware/system` holds only the pinned five APKs and build.prop, not a
whole phone backup. Never add personal data or device dumps.

Run `mods/tools/setup.sh` once (JDK 21, apktool 2.11.0, Android platform 35,
build-tools 35.0.1, Python 3, zip/unzip; `--jadx` adds optional JADX 1.5.1).
From the mod directory run `tools/build.sh` and `tools/test.sh`. The build
writes **unsigned signing requests** to `build/<App>/unsigned.apk`, not
installable modules. It changes dex only; keep the manifest and resources
byte-identical. Android API 27, no new permissions or shared UIDs.

These privileged stock apps require genuine OEM signing. The release
builder never takes private keys. After an authorized signer returns the
signed APKs named `<App>.apk`, set `OEM_SIGNED_APKS` to their directory and
run `tools/package.sh`. Every APK must pass Android's signature verification,
match the signer of its stock counterpart, and contain exactly the locally
built payload. Never distribute or install an unsigned signing request.
`tools/deploy.sh` requires the same verified inputs. Device tests require a
reserved, recoverable test phone: no owner-device install or reboot here.

The Gradle build intentionally does not discover mods. SQLite and native
code were not in the committed upstream and are not published.
