# Launcher Improved

The Sonim XP3800's own launcher, with an apps tray you arrange yourself. Shipped as a
systemless Magisk module that replaces `/system/priv-app/SonimLauncher`.

* **Folders.** The default tray starts with common apps, then Media, Reading, Tools, Files,
  System and Applications. Every
  folder, Tools and Applications included, gets an icon showing its first four apps.
* **Add apps.** Open Menu in the tray or inside a folder and choose **Add apps**. The picker
  includes hidden and unlisted launchable apps. Choosing an app shown elsewhere moves it here
  instead of making a copy.
* **Short menus.** The tray shows Add apps, Edit app or Edit folder for the selected entry,
  and Reset layout. Inside a folder the menu has Add apps and Edit app. Edit holds move, hide,
  and App info for apps, or move, rename, and remove for folders.
* **Home menu.** Notifications, Settings, and Customize home (wallpaper, themes, and home shortcuts).
* **Moving**: the entry sits on a lavender card. The d-pad carries it, Center, Enter or Menu
  puts it down, and Back cancels.
* **New installs** go to the end of the Applications folder, as in stock. Uninstalling an app
  keeps its place, so reinstalling puts it back where it was.

* **Faster tray and home resume.** Opening the tray selects the first entry without a scroll
  animation. Quick Settings starts on its first visible frame.

Build and test with `tools/setup.sh`, `tools/build.sh`, `tools/test.sh`. `tools/deploy.sh`
installs the stock-signed APK ([shared requirements](../AGENTS.md)).
