# Launcher Improved behavior

Launcher Improved keeps the Sonim home screen and organizes the apps tray. The Menu key shows actions for the current screen and, when relevant, its selected entry.

- Home: **Notifications**, **Settings**, and **Customize home**. Customize home contains wallpaper, themes, and home shortcuts.
- Main tray: **Add apps**, **Edit app** or **Edit folder** when an entry is selected, and **Reset layout**. Reset asks for confirmation before restoring defaults.
- Every folder's icon, Sonim's Tools and Applications included, previews its first four apps in a 2x2 grid, so the tray shows what each folder holds.
- Inside a folder: **Add apps** and **Edit app** when an app is selected. The app edit menu offers reorder, move to another folder, hide, and App info, as applicable. The folder edit menu offers reorder, rename, and remove. Removing a folder puts its apps back in the main tray.
- **Add apps** lists installed, launchable activities alphabetically, excluding those already in the destination, the launcher itself, and the stock-managed SIM Toolkit. Hidden and otherwise unlisted apps are eligible. Selecting an app appends it to the current tray or folder, moving it out of its old location if necessary. Back cancels without making changes.
- The arrangement survives a restart. New non-system apps not assigned a default location go to Applications, or to the main tray if that folder is absent. Explicitly placed apps that are uninstalled keep a reserved place. The stock menu remains available if the launcher falls back to the stock tray.

## Phone checks

On a reserved XP3800, open Menu on Home, on an app and a folder in the tray, and inside a folder. Check the top-level items and that D-pad Center can open each submenu. Close and reopen Menu after moving focus to a different entry. Check that Add apps moves an app out of Applications, restores a hidden app, and adds an unlisted stock app if one is available. Try adding to a folder, verify the picker no longer lists that app for that destination, and restart the launcher to check the saved positions. Check that Back dismisses the picker and submenus without changing the tray.
