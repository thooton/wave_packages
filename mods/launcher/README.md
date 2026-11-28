# Launcher Improved

The Sonim XP3800's own launcher, with an apps tray you arrange yourself. Shipped as a
systemless Magisk module that replaces `/system/priv-app/SonimLauncher`.

* **Stock Home screen.** Home and its Menu remain stock; only the apps tray and its folders change.
* **Folders.** The default tray starts with common apps, then Media, Reading, Tools, Files,
  System and Applications. Every folder, Tools and Applications included, gets a drawn icon
  showing its first four apps.
* **Flat menus.** Press Menu on an entry for one-level options with no submenus:
  * App in the tray: **Move (top level)**, **Move (into folder)**, **New folder**, **Add new app**, **Remove**, **App info**.
  * Folder in the tray: **Move (top level)**, **Edit folder**, **Add new app**, **Delete folder**.
  * App inside a folder: **Move (within level)**, **Move outside**, **Add new app**, **Remove**, **App info**, **Edit folder**.
* **Moving.** **Move (top level)** and **Move (within level)** lift the entry onto a lavender card
  and slide neighbouring entries out of its way as you carry it with the d-pad; OK, Enter or Menu
  puts it down and Back puts everything back. **Move (into folder)** dims the app in place and
  floats a small copy of its icon between folders; OK drops it at the end of the folder and Back
  cancels. **Move outside** closes the folder and places the app on the tray right after it (or in
  its place if it was the last app).
* **Folders and apps.** **New folder** and **Edit folder** show a preview of the folder icon and
  the folder name. **Add new app** lists only launchable apps not currently anywhere in the tray
  (with icon and name rows, A to Z) and appends the chosen app at the end of the current tray or
  folder. **Remove** takes an app out of the tray (restorable via Add new app). **Delete folder**
  asks for confirmation (Cancel focused by default) and removes both the folder and its apps from
  the tray.
* **New installs** go to the end of the Applications folder, as in stock. Uninstalling an app
  keeps its place, so reinstalling puts it back where it was.
* **Faster tray and home resume.** Opening the tray selects the first entry without a scroll
  animation. Quick Settings starts on its first visible frame.

Build and test with `tools/setup.sh`, `tools/build.sh`, `tools/test.sh`. `tools/deploy.sh`
installs the stock-signed APK ([shared requirements](../AGENTS.md)).
