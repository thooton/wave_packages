#!/usr/bin/env python3
"""Launcher Improved: the smali hooks for the arranged apps tray (FEAT(tray)), applied once to the
stock apktool project; the patched smali is what's committed (git diff stock-launcher -- mods/launcher/apps/ shows it).
The Java side is apps/SonimLauncher/java/com/sonim/borqs/launcher/Wave*.java.

Stock classes replaced wholesale by Java are deleted here: DrawerAdapter (+ViewHolder),
FolderLaunchActivity, FolderDrawerClickListener."""
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "..", "..", "tools"))
from smalipatch import patch

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
D = os.path.join(ROOT, "apps/SonimLauncher/apktool/smali/com/sonim/borqs/launcher")
LA = f"{D}/LauncherActivity.smali"
L = "Lcom/sonim/borqs/launcher/LauncherActivity;"
T = "Lcom/sonim/borqs/launcher/WaveTray;"

for name in ["DrawerAdapter", "DrawerAdapter$ViewHolder", "FolderLaunchActivity", "FolderDrawerClickListener"]:
    os.remove(f"{D}/{name}.smali")
    print(f"deleted {name}.smali (replaced by Java)")

# 1. The tray's list: WaveTray.rebuild() instead of the stock builder (kept as the fallback).
patch(LA, ".method public setAppsAndFolderList()V\n    .locals 13\n",
      f""".method public setAppsAndFolderList()V
    .locals 0

    # FEAT(tray): the tray as the user arranged it (WaveTray), not the stock list
    invoke-static {{p0}}, {T}->rebuild({L})V

    return-void
.end method

# FEAT(tray): the stock builder, renamed; WaveTray falls back to it (waveStockTray) if ours fails
.method public waveStockSetAppsAndFolderList()V
    .locals 13
""")

# 2. Package installs/removals: WaveTray rebuilds the tray instead of the stock folder patching.
patch(f"{D}/LauncherActivity$4.smali",
      ".method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V\n    .locals 13\n\n    .prologue\n",
      f""".method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    # FEAT(tray): WaveTray handles package changes (true = done)
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:{L}

    invoke-static {{v0, p2}}, {T}->onPackageEvent({L}Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :wave_stock_receiver

    return-void

    :wave_stock_receiver
""")

# 3. Keys: a move in progress gets them first.
patch(LA, ".method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z\n    .locals 6\n\n    .prologue\n",
      f""".method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    # FEAT(tray): while an app or folder is being moved, the d-pad carries it
    invoke-static {{p0, p1}}, {T}->dispatchKey({L}Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :wave_keys

    return v0

    :wave_keys
""")

# 4. Menu: build for the current screen/selection in onPrepare, not onCreate.
patch(LA, ".method public onCreateOptionsMenu(Landroid/view/Menu;)Z\n    .locals 8\n",
      """.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    # FEAT(tray): build the menu when opening it, with the current selection
    const/4 v0, 0x1

    return v0
.end method

# FEAT(tray): stock menu builder, used only for the stock fallback
.method private waveStockMenu(Landroid/view/Menu;)Z
    .locals 8
""")
patch(LA, "    .line 972\n    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z\n", "")
patch(LA, "    .line 1081\n    invoke-virtual {p0}, " + L + "->invalidateOptionsMenu()V\n",
      f"""    # FEAT(tray): replace the old menu, without invalidating it while it is opening
    invoke-interface {{p1}}, Landroid/view/Menu;->clear()V

    invoke-static {{p0, p1}}, Lcom/sonim/borqs/launcher/WaveMenu;->prepare({L}Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :wave_stock_menu

    return v0

    :wave_stock_menu
    invoke-direct {{p0, p1}}, {L}->waveStockMenu(Landroid/view/Menu;)Z
""")

# 5. Leaving mid-move keeps the entry where it was carried.
patch(LA, "    invoke-super {p0}, Landroid/app/Activity;->onPause()V\n",
      f"""    invoke-super {{p0}}, Landroid/app/Activity;->onPause()V

    # FEAT(tray): a move in progress is put down where it is
    invoke-static {{p0}}, {T}->onPause({L})V
""")

# 6. Folder icons: the user's folders get a drawn icon with a preview of their apps.
patch(LA, ".method private getFolderIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;\n    .locals 4\n\n    .prologue\n",
      f""".method private getFolderIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    # FEAT(tray): WaveTray's icon for the user's folders (null = stock folder: stock icon)
    invoke-static {{p0, p1}}, {T}->folderIconHook({L}Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :wave_icon

    return-object v0

    :wave_icon
""")

# 7. Opening the tray selects its first entry (stock: the 5th, the middle of the first 3x3).
p2 = f"{D}/LauncherActivity$2.smali"
patch(p2, "    const/4 v2, 0x4\n\n    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V\n",
      "    # FEAT(tray): open on the first entry\n    const/4 v2, 0x0\n\n"
      "    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V\n")
# onNewIntent: v5 is 4 (also INVISIBLE for the home screen), v4 is 0 (VISIBLE, just used).
patch(LA, "    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setSelection(I)V\n",
      "    # FEAT(tray): open on the first entry (v4 = 0)\n"
      "    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setSelection(I)V\n")
# setSelection already sets the position for the next layout. Don't queue an animated scroll too.
for file, grid_and_call in [
        (p2, f"    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:{L}\n\n"
             f"    invoke-static {{v0}}, {L}->-get12({L})Landroid/widget/GridView;\n\n"
             "    move-result-object v0\n\n    const/4 v2, 0x4\n\n"
             "    invoke-virtual {v0, v2}, Landroid/widget/GridView;->smoothScrollToPosition(I)V\n"),
        (LA, f"    iget-object v0, p0, {L}->mDrawerFolderGrid:Landroid/widget/GridView;\n\n"
             "    invoke-virtual {v0, v5}, Landroid/widget/GridView;->smoothScrollToPosition(I)V\n")]:
    patch(file, grid_and_call, "    # FEAT(tray): no smooth scroll after setSelection\n")

# FragmentPagerAdapter resumes offscreen pages too. Start Quick Settings on its first visible
# draw instead. Keep the stock setup/teardown and do not unregister anything if setup never ran.
qs = f"{D}/QuickSettingFragment.smali"
Q = "Lcom/sonim/borqs/launcher/QuickSettingFragment;"
W = "Lcom/sonim/borqs/launcher/WaveQuickSettings;"
patch(qs, "# instance fields\n", f"""# instance fields
# FEAT(tray): pending or active Quick Settings for this resume
.field private mWaveQuickSettings:{W}
""")
patch(qs, "    .line 204\n    invoke-direct {p0}, " + Q + "->registerReceivers()V\n", f"""    # FEAT(tray): only initialize Quick Settings when its page is shown
    new-instance v0, {W}

    invoke-direct {{v0, p0}}, {W}-><init>({Q})V

    iput-object v0, p0, {Q}->mWaveQuickSettings:{W}

    return-void
.end method

# FEAT(tray): the stock Quick Settings startup, called by WaveQuickSettings
.method waveStartSettings()V
    .locals 2

    .line 204
    invoke-direct {{p0}}, {Q}->registerReceivers()V
""")
patch(qs, "    :cond_0\n    invoke-direct {p0}, " + Q + "->unregisterReceivers()V\n", f"""    :cond_0
    # FEAT(tray): cancel pending startup, or fall through to tear down active listeners
    iget-object v0, p0, {Q}->mWaveQuickSettings:{W}

    const/4 v1, 0x0

    iput-object v1, p0, {Q}->mWaveQuickSettings:{W}

    if-eqz v0, :wave_settings_paused

    invoke-virtual {{v0}}, {W}->stop()Z

    move-result v0

    if-eqz v0, :wave_settings_paused

    invoke-direct {{p0}}, {Q}->unregisterReceivers()V
""")
patch(qs, ".method public onPause()V\n    .locals 1\n", ".method public onPause()V\n    .locals 2\n")
patch(qs, "    .line 238\n    return-void\n.end method\n", "    .line 238\n    :wave_settings_paused\n    return-void\n.end method\n")

# Keep the stock PTT-disabled shuffle from moving Calculator out of Tools in the arranged tray.
patch(LA, ".method private updateAppTrayList()V\n    .locals 9\n\n    .prologue\n",
      f""".method private updateAppTrayList()V
    .locals 9

    .prologue
    # FEAT(tray): disabled PTT only promotes Calculator in the stock fallback
    invoke-static {{}}, {T}->usesStockTray()Z

    move-result v0

    if-nez v0, :wave_stock_ptt

    return-void

    :wave_stock_ptt
""")

# 8. Bridges: Java can't reach LauncherActivity's private members.
def getter(name, field, typ):
    return f"""
.method static {name}({L}){typ}
    .locals 1

    iget-object v0, p0, {L}->{field}:{typ}

    return-object v0
.end method
"""

bridges = "\n# FEAT(tray): bridges for WaveTray (package-private, Java can't name the synthetic -getN)\n"
bridges += getter("waveList", "mAppsAndFolderList", "Ljava/util/ArrayList;")
bridges += getter("waveGrid", "mDrawerFolderGrid", "Landroid/widget/GridView;")
bridges += getter("waveAdapter", "mDrawerAdapterObject", "Lcom/sonim/borqs/launcher/DrawerAdapter;")
bridges += getter("wavePrefs", "mSharedPrefs", "Landroid/content/SharedPreferences;")
bridges += getter("waveCursor", "mAppsAndFolderCursor", "Landroid/database/Cursor;")
bridges += getter("waveDb", "mDataBaseHelpler", "Lcom/sonim/borqs/launcher/helper/DatabaseHelper;")
bridges += f"""
.method static waveWallpaper({L})V
    .locals 0

    invoke-direct {{p0}}, {L}->startWallpaper()V

    return-void
.end method

.method static waveLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, {L}->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static waveTrayVisible({L})Z
    .locals 1

    invoke-direct {{p0}}, {L}->isAppTrayVisible()Z

    move-result v0

    return v0
.end method

.method static waveStockFolderIcon({L}Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {{p0, p1}}, {L}->getFolderIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static waveCheckNavKey({L}Ljava/lang/String;)V
    .locals 0

    invoke-direct {{p0, p1}}, {L}->checkNavigationKeyAndSetDefault(Ljava/lang/String;)V

    return-void
.end method

.method static waveUpdateNavKey({L}Ljava/lang/String;)V
    .locals 0

    invoke-direct {{p0, p1}}, {L}->updateNavigationKey(Ljava/lang/String;)V

    return-void
.end method

.method static waveStockTray({L})V
    .locals 1

    iget-object v0, p0, {L}->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    invoke-virtual {{v0}}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->getAppAndFolderCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, {L}->mAppsAndFolderCursor:Landroid/database/Cursor;

    invoke-virtual {{p0}}, {L}->waveStockSetAppsAndFolderList()V

    return-void
.end method
# END FEAT(tray)
"""
with open(LA, "a") as f:
    f.write(bridges)
print("appended bridges to LauncherActivity.smali")
