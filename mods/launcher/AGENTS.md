# Launcher Improved

Read [the shared constraints](../AGENTS.md) for building, signing and testing.

**No re-signing.** `tools/build.sh` splices the new dex into the stock APK and keeps its
`META-INF` (`../tools/splice_apk.py`); Android 8.1 verifies system APKs by v1 on the manifest
only, so the package keeps the stock certificate. `tools/deploy.sh` installs that build on a
reserved test device (`WAVE_SPLICE=1`); releases still need OEM-signed APKs.

* The launcher is the HOME app running as system: a crash loop = no home screen. Everything we
  add fails safe: a layout file that doesn't parse is renamed `.bad` and the defaults are used;
  if building the tray throws, the stock builder runs instead (`WaveTray.sFallback`).

## Code conventions
* Small smali hooks + Java. Every smali edit is marked `# FEAT(tray)` and made by
  `tools/patches/tray.py` (`smalipatch.patch`: each anchor must match exactly once). The script
  was applied to the stock project; the patched smali is committed. To redo it, decode the pinned
  `../firmware/system/priv-app/SonimLauncher/SonimLauncher.apk` with `apktool d -r` in a temporary
  directory, replace `apps/SonimLauncher/apktool/smali` with its `smali/`, then run
  `python3 tools/patches/tray.py`. The `stock-launcher` tag is the older 11.17.00 baseline.
* Java needs private stock members through package-private `wave*` bridges appended to
  `LauncherActivity.smali` (declared for javac in `stubs/`).
* Stock classes replaced wholesale by Java have their smali deleted (dexcheck enforces it):
  `DrawerAdapter`, `FolderLaunchActivity`, `FolderDrawerClickListener`.
* smali: non-range `invoke-*` only reaches v0..v15; respect try/monitor ranges.
* Java 8 language level, API 27, against the SDK android.jar. `WaveLayout`/`WaveDefaults` stay
  free of Android imports (host tests).
* Commits: author thooton; never name Claude/Anthropic or add AI attribution.

* The tray's arrangement lives in `/data/data/com.sonim.borqs.launcher/files/wave_tray.txt`
  (docs/tray.md). The PTT/convenience key cannot open the stock tray directly.
