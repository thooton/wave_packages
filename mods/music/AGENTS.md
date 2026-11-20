# Music Improved

Read [the shared constraints](../AGENTS.md) for building, signing and testing.

**No re-signing.** `tools/build.sh` splices the new dex into the stock APK and keeps its
`META-INF` (`../tools/splice_apk.py`); Android 8.1 verifies system APKs by v1 on the manifest
only, so the package keeps the stock certificate. `tools/deploy.sh` installs that build.

The whitelist is a Music-only preference (`wave_library`). Directory entries are paths relative
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
