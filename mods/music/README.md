# Music Argon

Sonim XP3800's stock Music app (`com.android.music`) with an optional folder whitelist.

Open **Music → Menu → Settings**, turn **Folder whitelist** on, then select **Apply**. The preset is
`Music/` and `Podcasts/`, including subfolders, on the **removable microSD card only**. Android's
built-in `/sdcard` is not included. Use **Allowed folders** to add or remove folders, or **Reset
folders to default** to restore the preset. The whitelist is off until enabled. If you enable it
without a mounted card or remove all allowed folders, the filtered library is empty.

The setting filters the Music library, including search, tracks in playlists, and shuffle sources.
It doesn't alter Android's media index, delete files, change saved playlists, clear the playback
queue, or prevent explicitly opening an audio file from another app.

## Build and package

```sh
tools/setup.sh
tools/pull_firmware.sh          # read-only; requires the unmodified stock APK on the phone
tools/build.sh                  # out/system/priv-app/BMusic/BMusic.apk
tools/test.sh                   # host tests for the library predicates
tools/package.sh 1.0.0           # out/music_argon-1.0.0.zip
```

The ZIP is a Magisk module for stock Sonim firmware `3A.0.0-01-8.1.0-11.17.00`. Install it through
Magisk and reboot when ready. Removing the module and rebooting restores stock Music.
