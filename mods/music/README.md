# Music Improved

Sonim XP3800's stock Music app (`com.android.music`) with an optional folder whitelist.

Open **Music → Menu → Settings**, turn **Folder whitelist** on, then select **Apply**. The preset is
`Music/` and `Podcasts/`, including subfolders, on the **removable microSD card only**. Android's
built-in `/sdcard` is not included. Use **Allowed folders** to add or remove folders, or **Reset
folders to default** to restore the preset. The whitelist is off until enabled. If you enable it
without a mounted card or remove all allowed folders, the filtered library is empty.

The setting filters the Music library, including search, tracks in playlists, and shuffle sources.
It doesn't alter Android's media index, delete files, change saved playlists, clear the playback
queue, or prevent explicitly opening an audio file from another app.

Build and test with `tools/setup.sh`, `tools/build.sh`, `tools/test.sh`. `tools/deploy.sh`
installs the stock-signed APK ([shared requirements](../AGENTS.md)).
