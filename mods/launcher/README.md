# Launcher Improved

The Sonim XP3800's own launcher, with an apps tray you arrange yourself. Shipped as a
systemless Magisk module that replaces `/system/priv-app/SonimLauncher`.

* **Folders.** Your apps start sorted into folders (Reading, Media, Daily, Files, System). Your
  most-used apps sit loose at the top, and Sonim's own tray follows unchanged. Each of your
  folders gets an icon showing its first four apps.
* **Menu key in the tray** (on an app): Move, Move to folder (an existing one, the main
  screen, or a new folder), Hide. On a folder: Move, Rename folder, Remove folder (its apps
  go back to the main screen). Always there: Hidden apps (to show one again), Reset layout.
* **Inside a folder**: Move, Move to folder, Hide, and the stock App info.
* **Moving**: the entry sits on a lavender card. The d-pad carries it, Center, Enter or Menu
  puts it down, and Back cancels.
* **New installs** go to the end of the Applications folder, as in stock. Uninstalling an app
  keeps its place, so reinstalling puts it back where it was.

Build and test with `tools/setup.sh`, `tools/build.sh`, `tools/test.sh`. See [shared signing and packaging requirements](../AGENTS.md) before attempting to install.
