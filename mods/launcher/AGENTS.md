# AGENTS.md (Launcher Argon)

Launcher Argon: the stock **Sonim XP3800** launcher (`com.sonim.borqs.launcher`,
`/system/priv-app/SonimLauncher`, Android 8.1 / API 27) with an apps tray the user arranges:
folders, moving apps and folders, hiding apps. It merges in what the separate "Launcher" app
(`com.custom.appdrawer`, `../sonim/launcher`) did. We patch the stock APK in place and deploy it
systemlessly via Magisk, exactly like `../messages_argon` (same tooling). Read this file fully
before changing anything.

## Layout
```
apps/SonimLauncher/apktool/  editable apktool (smali) project of the stock launcher (git: source of truth)
apps/SonimLauncher/java/     our Java (Argon*, plus DrawerAdapter / FolderLaunchActivity replacing stock), -> classes2.dex
apps/SonimLauncher/stubs/    compile-only declarations of stock classes the Java calls (never shipped)
decompiled/SonimLauncher/    jadx Java of the STOCK apk: read-only reference (ignored)
firmware/system/             stock SonimLauncher.apk + build.prop (ignored; tools/pull_firmware.sh)
tools/                       scripts (below); tools/patches/tray.py = the smali hooks, as applied
tools/test/, tools/preview/  host tests; on-phone renderer (not shipped)
module/                      extra Magisk module files (service.sh: boot-time dexopt)
docs/                        tray.md (design, file format, hooks)
build/, out/                 build output (ignored); out/system/... mirrors device paths
```
Git tag `stock` = unmodified baseline; `git diff stock -- apps/` shows every change.

## Workflow
```
tools/setup.sh                 # once: host tools, jadx into .tools/
tools/build.sh                 # -> out/system/priv-app/SonimLauncher/SonimLauncher.apk
                               #    (+ dexcheck: no class in two dex files; linkcheck: every
                               #    reference into the launcher's package resolves, no private access)
tools/test.sh                  # host tests of ArgonLayout (format, resolve, snapshot, defaults)
tools/preview.sh [0|1] [file]  # renders tray + folders with the BUILT code on the phone -> build/preview/
                               #    (app_process as shell; installs nothing, doesn't touch the screen)
tools/deploy.sh                # install out/ as Magisk module launcher_argon + REBOOT
tools/deploy.sh --remove       # back to stock (+ reboot)
tools/package.sh [version]     # flashable zip (same firmware only)
```
Full static check without installing: `dex2oat --compiler-filter=verify` on the phone into
/data/local/tmp (see docs/tray.md "Verifying").

## Hard constraints
* **No re-signing.** The launcher is platform-signed and runs as `android.uid.system`.
  `tools/lib/splice_apk.py` swaps only the dex files into the stock APK and keeps META-INF; 8.1
  verifies system apps via v1 on AndroidManifest.xml only.
* **So `AndroidManifest.xml` and resources stay byte-identical**: no new activities, receivers,
  layouts or strings. UI text we add is hardcoded English in Java; resource IDs we use are in
  `ArgonR.java` (from the stock R). Views are built in code or reuse stock layouts.
* Built APKs are tied to firmware `3A.0.0-01-8.1.0-11.17.00`.
* The launcher is the HOME app running as system: a crash loop = no home screen. Everything we
  add fails safe: a layout file that doesn't parse is renamed `.bad` and the defaults are used;
  if building the tray throws, the stock builder runs instead (`ArgonTray.sFallback`).

## Code conventions
* Small smali hooks + Java. Every smali edit is marked `# FEAT(tray)` and made by
  `tools/patches/tray.py` (`smalipatch.patch`: each anchor must match exactly once). The script
  was applied once to the stock project; the patched smali is committed. To redo it:
  `git checkout stock -- apps/SonimLauncher/apktool && python3 tools/patches/tray.py`.
* Java needs private stock members through package-private `argon*` bridges appended to
  `LauncherActivity.smali` (declared for javac in `stubs/`).
* Stock classes replaced wholesale by Java have their smali deleted (dexcheck enforces it):
  `DrawerAdapter`, `FolderLaunchActivity`, `FolderDrawerClickListener`.
* smali: non-range `invoke-*` only reaches v0..v15; respect try/monitor ranges.
* Java 8 language level, API 27, against the SDK android.jar. `ArgonLayout`/`ArgonDefaults` stay
  free of Android imports (host tests).
* Commits: author thooton; never name Claude/Anthropic or add AI attribution.

## Device
* Flip phone, 240x320, 160 dpi, **no touchscreen** (keys only). Root via Magisk (`adb shell su -c`).
* Other processes may be driving the phone's UI: don't send keyevents or reboot unless the user
  says so. `tools/preview.sh` and dex2oat verification are safe (no UI, temp files removed).
* The tray's arrangement lives in `/data/data/com.sonim.borqs.launcher/files/argon_tray.txt`
  (docs/tray.md). The old `com.custom.appdrawer` app stays installed (it's in the System folder):
  the PTT/convenience key that opened it can't open the stock tray (no new activities allowed).
