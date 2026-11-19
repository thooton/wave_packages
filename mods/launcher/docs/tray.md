# The arranged tray (FEAT(tray))

## How the stock tray works
`LauncherActivity` keeps the tray in `mAppsAndFolderList` (`Apps` and `Folder` entries) shown by
`mDrawerFolderGrid` (3 columns) through `DrawerAdapter`. `setAppsAndFolderList()` (called by
`ParseThread` at start and by `AppTrayListChangedReceiver`) fills it from the `App_Tray` database
(`appinfo(id, folder, pkgname)`, seeded from `res/xml/app_tray_list.xml`). It then adds every
non-system app to the folder at pref `sonim_postion` ("Applications"), and STK to the one at
`stk_postion` ("Tools"). The package receiver `LauncherActivity$4` patches that folder on
install/uninstall. A folder opens `FolderLaunchActivity` (a dialog, 2 columns) with extra
`folder` = its name.

## What we changed
| Where | Hook |
|---|---|
| `setAppsAndFolderList()` | now just `WaveTray.rebuild(this)`; the stock body is `waveStockSetAppsAndFolderList()` (fallback) |
| `LauncherActivity$4.onReceive` | `WaveTray.onPackageEvent` first; true = handled (worker rebuild + swap on the UI thread) |
| `dispatchKeyEvent` | `WaveTray.dispatchKey`: a move in progress takes the d-pad, Center/Enter/Menu/Back |
| `onCreateOptionsMenu` (after super) / `onOptionsItemSelected` | our menu items (ids 101-107; stock uses 2-9) |
| `onPause` | a move in progress is put down |
| `getFolderIcon(name)` | `WaveTray.folderIconHook`: drawn icon for the user's folders, stock icon for stock ones |
| `LauncherActivity$2`, `onNewIntent` | opening the tray selects entry 0 (stock: 4) |
| `wave*` static methods appended | bridges to private fields/methods for the Java code |
| `DrawerAdapter`, `FolderLaunchActivity` (+`FolderDrawerClickListener`) | replaced by Java with the same names and ctor/extras |

Java (`apps/SonimLauncher/java/com/sonim/borqs/launcher/`):
* `WaveLayout`: the file format, matching against installed apps (`resolve`), and saving what's
  shown (`snapshot`). Pure Java, tested by `tools/test.sh`.
* `WaveDefaults`: the first-run arrangement. Its `stock` line becomes Sonim's tray, read from `App_Tray`.
* `WaveTray`: builds the list, package events, menu, dialogs, saving.
* `WaveMover`: carrying an entry through a grid (tray or folder).
* `WaveIcons`: folder icons (colourful theme: coloured folder, red theme: white with red outline;
  2x2 preview of the first apps).

After every build, `WaveTray` writes prefs `sonim_postion`/`stk_postion` (Applications/Tools
indexes, or -1). It then calls the stock `setSTKApp()` and `setAppsAndFolderListForShorcut`, so
STK and the navigation-key shortcuts behave as in stock.

## The layout file
`/data/data/com.sonim.borqs.launcher/files/wave_tray.txt`, written on every change (atomically).
It doesn't exist until the first change; until then the defaults are used. One entry per line:
```
app com.list.xp3                      # an app on the main screen (package or package/activity)
folder Reading                        # a folder; the indented lines are its apps
    com.books.xp3/com.books.xp3.LibraryActivity
    com.newyorker.xp3
hide com.android.browser/com.android.browser.BrowserActivity
```
Rules: `package/activity` shows that activity. If the activity is gone but the package has
another launcher activity that isn't placed anywhere (a renamed main activity), that one takes
its place. A bare `package` shows all of its unplaced launcher activities. Apps that aren't
installed keep their line, so they come back in place. Installed non-system apps the file doesn't
mention go to the end of the "Applications" folder, or the end of the main screen if there is
none. System apps it doesn't mention stay out, as in stock. A file that doesn't parse is renamed
`wave_tray.txt.bad` and the defaults are used.

Editing it by hand (the launcher runs as `system`):
```
adb shell su -c 'cat /data/data/com.sonim.borqs.launcher/files/wave_tray.txt' > tray.txt
# edit, then:
adb push tray.txt /data/local/tmp/ && adb shell su -c 'cp /data/local/tmp/tray.txt \
  /data/data/com.sonim.borqs.launcher/files/wave_tray.txt && chown system:system \
  /data/data/com.sonim.borqs.launcher/files/wave_tray.txt && am force-stop com.sonim.borqs.launcher'
```
`tools/preview.sh 0 tray.txt` renders a file before you push it.

## Verifying (no install)
* `tools/build.sh`: dexcheck + linkcheck.
* `tools/test.sh`: format/resolve/snapshot.
* `tools/preview.sh`: real rendering with the built dex, as the shell user via app_process.
* ART verifier on the phone:
  ```
  adb push out/system/priv-app/SonimLauncher/SonimLauncher.apk /data/local/tmp/a.apk
  adb shell su -c "'dex2oat --dex-file=/data/local/tmp/a.apk --oat-file=/data/local/tmp/a.odex \
    --instruction-set=arm --compiler-filter=verify -j1; rm -f /data/local/tmp/a.*'"
  adb logcat -d -s dex2oat     # look for "Verification error" / "Rejecting"
  ```

## Known limits
* PTT/convenience key: the old `com.custom.appdrawer` app was opened by a key. We can't add an
  activity to the stock launcher, so that app stays installed (System folder) and the key still opens it.
* UI strings we add are English only (no resource edits).
* With `hide_bell_PTT_app` (true on this firmware), stock `updateAppTrayList()` rearranges the live
  list when the PTT app is *disabled*. Our build leaves out disabled apps anyway; that stock
  shuffle still runs on top and would be saved with the user's next edit. PTT is enabled now.
