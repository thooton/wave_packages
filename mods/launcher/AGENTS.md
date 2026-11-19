# Launcher Argon

Read [the shared constraints](../AGENTS.md) for building, signing and testing.

* The launcher is the HOME app running as system: a crash loop = no home screen. Everything we
  add fails safe: a layout file that doesn't parse is renamed `.bad` and the defaults are used;
  if building the tray throws, the stock builder runs instead (`ArgonTray.sFallback`).

## Code conventions
* Small smali hooks + Java. Every smali edit is marked `# FEAT(tray)` and made by
  `tools/patches/tray.py` (`smalipatch.patch`: each anchor must match exactly once). The script
  was applied once to the stock project; the patched smali is committed. To redo it:
  `git restore --source=stock-launcher -- apps/SonimLauncher/apktool && python3 tools/patches/tray.py`.
* Java needs private stock members through package-private `argon*` bridges appended to
  `LauncherActivity.smali` (declared for javac in `stubs/`).
* Stock classes replaced wholesale by Java have their smali deleted (dexcheck enforces it):
  `DrawerAdapter`, `FolderLaunchActivity`, `FolderDrawerClickListener`.
* smali: non-range `invoke-*` only reaches v0..v15; respect try/monitor ranges.
* Java 8 language level, API 27, against the SDK android.jar. `ArgonLayout`/`ArgonDefaults` stay
  free of Android imports (host tests).
* Commits: author thooton; never name Claude/Anthropic or add AI attribution.

* The tray's arrangement lives in `/data/data/com.sonim.borqs.launcher/files/argon_tray.txt`
  (docs/tray.md). The old `com.custom.appdrawer` app stays installed (it's in the System folder):
  the PTT/convenience key that opened it can't open the stock tray (no new activities allowed).
