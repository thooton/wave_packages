# Notes, for the Sonim XP3

Apple Notes for the XP3's 240x320 screen, d-pad and keypad: notes in
folders, search across them, pinned notes and Recently Deleted. It has no
network access; notes stay in the app's private storage.

The design was drawn first, in [mockups/index.html](mockups/index.html).

## Build and test

```bash
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew :notes:core:selfTest :notes:app:assembleRelease
adb install -r notes/android/app/build/outputs/apk/release/app-release.apk
```

## Controls

| Key | Action |
| --- | --- |
| Up / Down | Move the highlight; Up from the top opens Search. In a note, move the caret |
| OK | Open the folder or note; on an empty folder, start a note. In a note, a new line |
| Keypad | Search for what you type. In a note, type |
| Back / Left | Back a page. A new note left blank is discarded |
| Menu | New Note, Pin, Move, Delete; Recover in Recently Deleted; New, Rename and Delete Folder in Folders |
