# Music Argon

Stock BMusic for the Sonim XP3800, Android 8.1 / API 27, firmware `3A.0.0-01-8.1.0-11.17.00`.
It is platform-signed and shares `android.uid.system`. Follow the sibling Argon projects: change
only DEX files, keep manifest/resources/META-INF byte-identical, and deploy only as a Magisk system
overlay. Do not re-sign. The source is `apps/BMusic/apktool` (stock baseline: git tag `stock`),
`apps/BMusic/java` and compile-only `apps/BMusic/stubs`. `tools/patches/whitelist.py` recreates the
marked smali hooks from `stock`. `tools/decompile.sh BMusic` produces the ignored JADX reference.

The whitelist is a Music-only preference (`argon_library`). Directory entries are paths relative
to mounted, removable, non-emulated volumes. MediaProvider on this firmware indexes removable
volumes as `/storage/<UUID>`. The stock audio selection is ANDed with escaped directory-prefix
conditions before the query runs, including the Songs tab's limited and unlimited queries.
Artist and album rows are kept only if allowed tracks back them. Saved playlist member IDs are
filtered without altering the playlists, including the ID-only query used for Play. Oreo's fancy
search ignores the caller selection, so its results are intersected with the scoped MediaStore
IDs. Explicit opens and the existing playback queue are intentionally not filtered. When settings
change, any active party-shuffle pool is dropped back to normal shuffle rather than retaining its
old candidate pool.

`tools/build.sh` assembles smali, compiles Java into classes2.dex, and checks APK alignment and
in-app symbols. `tools/test.sh` tests the actual predicates on stock-shaped SQLite views. On-device
smoke testing (only when allowed): use the hardware Menu/D-pad, turn the whitelist on, verify
subfolders, excluded Download and built-in Music, Podcasts, Artist/Album views, search and shuffle;
turn it off and check stock behavior. Test the escape path with no card (the Settings entry must
remain available). Do not drive the phone UI, launch apps, deploy or reboot while another agent
is using it.
