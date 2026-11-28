# Launcher Improved behavior

Launcher Improved keeps the Sonim home screen (and its stock Home menu) and organizes the apps tray. Pressing Menu in the tray or inside a folder shows a flat, one-level menu tailored to the selected entry.

- **Home**: uses the stock Sonim Home menu unchanged.
- **App in the tray**: **Move (top level)**, **Move (into folder)** (disabled when the tray has no folders), **New folder**, **Add new app**, **Remove**, **App info**.
- **Folder in the tray**: **Move (top level)**, **Edit folder**, **Add new app**, **Delete folder**.
- **App inside a folder**: **Move (within level)** (disabled in a one-app folder), **Move outside**, **Add new app**, **Remove**, **App info**, **Edit folder**. SIM Toolkit (pinned to Tools) omits **Move outside** and **Remove**.
- **Move (top level)** / **Move (within level)**: lifts the selected entry onto a lavender card. D-pad arrows carry it one slot at a time while other cells slide smoothly out of its way; OK, Enter or Menu puts it down and Back restores the previous order.
- **Move (into folder)**: dims the app in its tray slot and floats a small shadowed copy of its icon on the top-right corner of the nearest folder. D-pad arrows jump strictly between folders (Left/Right: previous/next folder in tray order; Up/Down: nearest column in the nearest row above/below with a folder). OK drops the app at the end of the folder, updates its preview icon, closes the gap, and focuses the folder; Back returns the icon unchanged.
- **Move outside**: removes the app from the folder, inserts it on the tray right after the folder (or in the folder's slot if it was the last app, since folders are never empty), closes the folder dialog, and focuses the app in the tray.
- **New folder** / **Edit folder**: opens a dialog with a live preview of the folder icon and a name field (hint "Folder name", max 24 characters). The positive button (**Create** / **OK**) stays disabled while the name is blank, and duplicate folder names are rejected with a toast. Creating a folder replaces the tray app with a one-app folder; editing a folder updates its name in place (including while inside the folder dialog).
- **Add new app**: opens a dialog titled **Add new app** listing only launchable, exported apps that are in neither the tray nor any folder, alphabetically with icon and name rows. Selecting an app appends it to the end of the current tray or folder, focuses it, and closes the dialog. If none remain, it shows "Every app is already in the tray."
- **Remove**: removes the app from the tray or folder, hides it so it appears in **Add new app**, and shows a toast `"<App> removed"`. Removing the last app of a folder also removes the folder and closes the folder dialog.
- **Delete folder**: asks `"Delete <Folder>?"` listing the apps removed with it (`"<A>, <B> and <C> are removed with it."`, or `"<n> apps are removed with it."` for five or more), with **Cancel** focused by default. Confirming removes the folder and hides all of its apps, with a toast `"<Folder> deleted"`.
- **Persistence and fallback**: every folder's icon previews its first four apps in a 2x2 grid (coloured by folder name, or white with a red outline in the red theme). The arrangement survives a restart. New non-system apps not assigned a default location go to Applications, or to the main tray if absent. Uninstalled explicitly placed apps keep a reserved slot. If loading or building fails, the launcher falls back to the stock tray and stock menu.

## Phone checks

On a reserved XP3800:
1. On **Home**, press Menu and verify the stock Sonim Home menu opens unchanged.
2. In the **tray**, focus an app and press Menu: verify the six flat items (`Move (top level)`, `Move (into folder)`, `New folder`, `Add new app`, `Remove`, `App info`).
3. Run **Move (top level)**: carry an entry with the d-pad and check the lifted lavender card and smooth sliding; test **Back** restores the original order, then repeat and press **OK** to save.
4. Run **Move (into folder)** on a tray app: verify the app dims, the small icon rides between folders only, **Back** cancels cleanly, and **OK** drops the app into the folder, bumps its icon, updates its 2x2 preview, and closes the gap.
5. Open a folder, press Menu on an app, and verify the six flat items (`Move (within level)`, `Move outside`, `Add new app`, `Remove`, `App info`, `Edit folder`). Verify `Move (within level)` is disabled in a one-app folder.
6. Test **Move (within level)** and **Move outside** (confirm the folder closes and the app lands right after the folder, or in its slot when it was the last app).
7. Test **New folder** on a tray app (confirm Create is disabled while blank, live icon preview updates, and creating replaces the app) and **Edit folder** both from the tray and from inside a folder (confirm the folder title updates without closing).
8. Test **Remove** (no confirmation, `"<App> removed"` toast) and **Delete folder** (confirmation with Cancel focused, `"<Folder> deleted"` toast, folder and its apps hidden).
9. Test **Add new app** from both the tray and a folder: verify only unplaced apps appear with icons in alphabetical order, choosing one appends and focuses it and closes the dialog, and an empty list shows `"Every app is already in the tray."`.
10. Press Back or Home mid-move, mid-Move (into folder), and inside each dialog to confirm nothing crashes or leaves stale overlays, then restart the launcher (`am force-stop com.sonim.borqs.launcher`) to verify persistence.
