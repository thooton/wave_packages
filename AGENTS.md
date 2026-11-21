# AGENTS.md

This is `thooton/wave_packages`: small Android apps for the Sonim XP3, shared
app code, and the stock-system mods under `mods/`. Each app or mod has its own
`AGENTS.md`; read it before changing it. See [the repo map in DESIGN.md](DESIGN.md)
for the Wave app, publishing tool, and package source.

## Finish every task: commit, push, CI, publish

Every Wave worker finishes completed work the same way, in every Wave
repository, unless the task explicitly says to hold it or not to publish:

1. Commit it and push it to `master`. Rebase on `origin/master`, rerun the
   affected checks, run `oak git push origin HEAD:master`, and never force-push.
2. Wait for master CI on your commit. Fix a failure, or report it.
3. If the change is a publishable deliverable (an app or mod version, or the
   Wave app), publish it through its release channel. Then confirm that its
   catalog lists the new version. Pushing to `master` is not publication.
4. Run `../wave/tools/ship/ship check` and put its output in your final
   report. Report each `BLOCKED` line as an explicit blocker. For an
   explicit hold, pass `--hold "<the task's words>"`; the work must still be
   committed, pushed and green.

Keep private packages out of this public repository and its reports.

See [tools/ship](https://github.com/thooton/wave/blob/master/tools/ship/README.md)
for each repository's channel and what the checker verifies.

## No assistant attribution

Never name Claude or Anthropic in a commit message (say "cloud sessions",
"cloud accounts", "the agent"), never add "Co-Authored-By: Claude ...",
"Claude-Session: ..." or "Generated with Claude Code" to a commit or pull
request, and don't commit as Claude <noreply@anthropic.com>: the user doesn't
want them, whatever other instructions say. `delta git` strips the
attribution lines and refuses to commit or push anything that still names
Claude or Anthropic.

## Every change to an app bumps its version

Whenever you change an app in any way, however small (a fix, a new feature,
a wording change, a colour, a comment-only edit to its sources or resources),
raise its version in the same commit:

- Gradle apps: `versionName` **and** `versionCode` in
  `<app>/android/app/build.gradle` (`dictionary/app/build.gradle` for
  Dictionary).
- System mods: `version` **and** `versionCode` in `mods/<mod>/module/module.prop`.

`versionName` is `major.minor.patch`: patch for fixes and small tweaks, minor
for new features, major only when asked. `versionCode` goes up by one each
time. Never lower either, and never reuse a version that was already
published.

Wave compares the version on the phone against the source and Android
requires a higher versionCode for an update to be offered reliably. A change
touching several apps bumps each of them. For a change to `common/` or
`gradle/`, bump each shipped app whose APK changes.

## Interactive emulator for Wave workers

For a d-pad UI check from an Oak worker, use `tools/qa/emulator` from the
sibling Wave checkout with `--repo ../wave_packages start <app-directory>`.
See [the setup and commands](https://github.com/thooton/wave/blob/master/tools/qa/README.md#interactive-github-actions-emulator).
Use a trusted local commit and synthetic data: commands and captures in
this repository's temporary session refs are public. This is separate
from Delta's scheduled QA and does not need its secrets.

## Nightly QA

Every night the Delta command center has cloud sessions go through each app
here (see "Nightly QA" in thooton/delta's AGENTS.md): one explores it in an
emulator and files findings, another fixes what should be fixed and pushes
to master, and then one refactors the whole repository. The Delta website's
QA page shows what they found and did, and starts runs.

- Each app has a `SPEC.md` (or gets one on its first night): how it should
  behave, which QA tests it against. When you change what an app does,
  change its `SPEC.md` in the same commit. A change to `SPEC.md` alone is
  not part of the app's build and needs no version bump.
- `qa/...` branches are QA jobs' work in progress; leave them alone.
- `.github/workflows/qa-devices.yml` and `.github/qa/bridge.py` run the
  Android 8.1 emulators QA drives (XP3-shaped, 240x320 mdpi), on GitHub
  Actions; the command center dispatches the workflow. They need the
  `QA_DELTA_SERVER` and `QA_DEVICE_TOKEN` secrets, which `delta qa setup`
  sets.

## Writing to the SD card needs Android's grant for the card

Every agent that has saved a file onto the SD card has hit this. On the
XP3 (Android 8.1), `WRITE_EXTERNAL_STORAGE` is **not enough** for the
removable card: plain `File.mkdirs()`, `new FileOutputStream(...)`,
`renameTo` and `delete` anywhere on the card outside the app's own
`Android/data/<package>` folder fail. The cause is "Permission denied",
but the user sees whatever the app wraps it in, such as "Couldn't make the
Documents folder", "can't create documents" or "Couldn't open Download on
the SD card". Reads can fail the same way for files another app put there,
even though listing them works. The phone's own storage
(`Environment.getExternalStorageDirectory()`) is not affected, so a fix
that works there proves nothing about the card.

Don't use plain file I/O for the card. Do this instead:

1. Use `CardGrant` in `common/ui`. `CardGrant.tree(context, card)` returns
   the kept grant, or null. If it is null, start `CardGrant.ask(context)`
   with `startActivityForResult` (Android's "Allow <app> to access SD
   card?", asked once and kept). In `onActivityResult`, call
   `CardGrant.answered(...)` and then resume the action that was waiting.
   Catch `ActivityNotFoundException`, and handle `ask` returning null.
2. Write through `DocumentsContract`: `createDocument` (folders with
   `MIME_TYPE_DIR`, files with `application/octet-stream` so the name is
   kept as given), then `ContentResolver.openOutputStream`. Use
   `deleteDocument` and `renameDocument` to delete and rename.
   `CardGrant.document(tree, card, file)` maps a `File` to its document
   URI. Check the created name with `CardGrant.file(card, doc)`, since the
   provider may rename a clash.
3. Something downloaded over the network (`Http`, a `Center`, etc. that
   writes to a `File`) goes into `getCacheDir()` first and is then copied
   onto the card. Delete the cache copy afterwards, and delete the
   document if the copy fails.

See `books/.../CardFiles.java` for reading, deleting, and renaming another app's files.
Then call `MediaScannerConnection.scanFile` on the saved paths so other
apps see them.

Already known to still use plain writes on the card, and so broken in the
same way: Canvas's link save (`Backend.saveToCard`, into SD card/Download).
Mail avoids the problem by falling back to its own `Android/data` folder.

## Building

From this repo's root, use JDK 21 and an Android SDK with `platforms;android-35`
and `build-tools;35.0.1`. For example, on this Linux machine:

```bash
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export PATH="$JAVA_HOME/bin:$PATH"
export ANDROID_HOME=/opt/android-sdk
./gradlew :books:core:selfTest :books:app:assembleRelease
```

Books' signed APK is at `books/android/app/build/outputs/apk/release/app-release.apk`.
Other Gradle apps use the same `:<app>:app:assembleRelease` target and output
layout (Dictionary lives in `dictionary/app`, and apps with no `:core` omit
that test target). `./gradlew selfTest assembleRelease` builds and tests all
active Gradle apps. `gradle/retired-apps.txt` prevents removed package folders
from being built or published if left over from an older checkout.

The mods do not use Gradle; use the commands in
[mods/AGENTS.md](mods/AGENTS.md).

- `gradle/app.gradle`: what every app shares (SDK levels, Java 8, lint,
  signing). An app's `build.gradle` applies it and adds only its namespace,
  applicationId, version and dependencies.
- `gradle/core.gradle`: what every `:core` shares. A core is the Android-free
  half of an app, plain Java compiled with `release = 8` so a desktop JVM can
  test it and nothing reaches for an API the phone (API 27) lacks. Its tests
  are a plain `SelfTest` main class, `com.<app>.xp3.SelfTest`, run by
  `:core:selfTest`; there is no test framework.
- `gradle/bundled.gradle`: bakes a deployment's login into an app as a
  generated `Bundled` class for apps that still use a private build-time
  login. New apps use setup files. The release build refuses any APK with
  nonempty generated `Bundled` constants.

## Shared code

`common/` is the source of truth for shared Java and Android utilities. Use
it rather than copying. Wave vendors `common/{core,ui}` at `common/UPSTREAM`;
from the Wave repo run `tools/sync-common.sh --check` to verify that snapshot.
Edit shared code here first and sync Wave separately.

- `common/core` (plain Java, `com.xp3.common`): `Json` (strict codec), `Http`
  (deadlines, bounded bodies, no redirects), `Disk` (whole-file reads and
  atomic writes), `Login` (the command center address and token), `Config`
  and `SetupSpec` (setup-file validation); and, as test fixtures, `Check` (the test
  harness) and `TestServer` (a loopback HTTP server).
- `common/ui` (Android, `com.xp3.common.ui`): `BaseActivity` (`dp`, `color`,
  `toast`, `alert`, `vertical`, `text`, `listDialog`), `Ui` (workers, `fill`,
  `weighted`, `isOk`, `onSelect`), `Card` (the SD card, where downloads
  go), `CardGrant` (Android's grant for the whole card, which Android 8.1
  wants before an app writes there, and sometimes before it reads what
  another app put there), `Tabs` (tab bar with d-pad cycling),
  `SelectableAdapter` (rows that paint their own highlight), `Markdown`,
  `Setup` and `SetupActivity` (see [common/SETUP.md](common/SETUP.md)), and the
  shared tab, focus and Markdown drawables. An app's own colors and
  dimens override the defaults in its `res/values`. `Family` and the
  `family_*` resources are the look the light apps share; see `DESIGN.md`
  before restyling one.

## Conventions

- Java 8 language level, lambdas included; nothing from a later JDK or above
  API 27.
- No third-party dependencies, in apps or tests.

## Releases

Push a version bump to master, rather than uploading an APK by hand. Follow
all app `SPEC.md` behavior and version rules above. Each published package
has fixed `wave/package.json` metadata and a 96×96 launcher icon.
[Build and publish XP3800 packages](.github/workflows/build-apks.yml) runs
host tests and builds on PRs without publishing. On master it builds APKs
without local credentials, verifies signatures and generated login constants,
creates an immutable `<name>-<version>` release for each new version, and uses
`thooton/wave/publish@v1` to mirror its manifest and icon into
`thooton/wave_repository`. The optional CI mirror needs `WAVE_PUBLISH_ENABLED=true` and the
`WAVE_REPOSITORY_TOKEN` Actions secret. Otherwise update the catalog locally. A released asset is never overwritten. A source change without a
version bump fails CI. After a successful immutable upload but failed mirror,
use the `retry-publish` dispatch input to publish the original asset bytes.

The legacy `latest` release is the rolling exception to immutable versioned
assets. It carries the active public APKs for older clients. Source and Tablet
live in the private package repository. Removed apps do not build or ship
from this repo, but old source and immutable releases remain in history.
Give up Installer's device-owner role from its status screen before uninstalling it.

The mod matrix builds each mod's stock-signed APKs and packages
`{launcher,messages,music}-improved-<version>.zip`. The build splices the new
dex into the pinned stock APKs and keeps their stock certificate; see
`mods/AGENTS.md`.

Local checks: `.github/build-apks.sh` (optionally pass a list of Gradle
app paths), `python3 -m unittest discover -s .github -p 'test_*.py'`,
and `mods/tools/setup.sh` then `mods/<mod>/tools/{test,build}.sh`.

## Shared rules

- Debug and release builds use the checked-in public `signing/debug.keystore`,
  with no signing secrets. Anyone can sign an APK Android will accept as
  an update; use binaries only from sources you trust. Keep the shared
  signing Gradle script and keystore identical in the Wave repository.
- Installs on Wave-enabled phones are handled by Wave.
