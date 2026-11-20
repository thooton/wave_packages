# Launcher button latency (Sonim XP3800, Android 8.1)

There are two separate delays: Android's Home-key dispatch, and resuming/drawing the launcher.

## Baseline

Existing device logs showed the same launcher PID across repeated HOME presses. The installed APK was already dex-optimized with the `speed` filter. Home-up to the system's HOME intent was 307–313 ms in four recorded samples. The foreground app was also being force-stopped during those samples, so they aren't a controlled benchmark of drawing or physical key-to-display latency. The first completed launcher frame was about 365–550 ms after key-up in four samples matched to `gfxinfo` frame timestamps. The ActivityManager `Displayed: +1m42s…` log in the first sample was timed from the earlier boot-time activity launch, not that key press.

The firmware's `PhoneWindowManager` waits `ViewConfiguration.getDoubleTapTimeout()` on Home-up when `config_doubleTapOnHomeBehavior` is enabled. On this build the framework resource is `1` (double-tap for Recents), so a single press waits about 300 ms before the launcher can act. The launcher APK cannot change that timeout. Removing it would be a separate firmware change that disables double-tap HOME for Recents.

## Launcher-side changes

* The stock pager resumes the Quick Settings fragment even when it is offscreen. Its resume path used to register multiple receivers, bind Bluetooth PAN and query service state before the launcher drew. This work now starts on the first draw where the page is selected and actually shown, including when returning to it from the tray. If the launcher pauses before that, the pending callback is removed without attempting to unregister anything. Once started, its stock updates and pause-time cleanup stay in place.
* The tray still selects the first entry on open, but no longer schedules a smooth scroll to the same entry after `setSelection()`.

## On-device comparison after deployment

With the device available, collect several warm presses from the same foreground app, keeping the screen awake and not force-stopping either app. Compare HOME-up to HOME intent separately from the time to the first launcher frame. `adb logcat -d -v threadtime -b main -b system -b events` and `adb shell dumpsys gfxinfo com.sonim.borqs.launcher framestats` collect existing logs and frames without sending input. For an app-enabled system trace (`atrace -a com.sonim.borqs.launcher view`), Quick Settings setup is labeled `WaveQuickSettings.activate` and should be absent when opening directly to the tray or workspace. Also check that navigating to Quick Settings shows current toggles, that returning from an app to Quick Settings still refreshes them, and that the tray still focuses entry 0 on a fresh open.
