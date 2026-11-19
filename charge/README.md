# Charge

Charge is a small native Android app for finding Tesla Superchargers and
starting, monitoring, and stopping a charging session. It is designed for the
Sonim XP3's 240 x 320 display and physical keypad.

- Left/right changes tabs.
- Up/down moves through controls and lists.
- Center/OK activates the selected item.
- Clear or Back leaves a detail screen.
- Menu opens refresh, search-radius, account and setup actions.

## Build

The project requires JDK 21, Android SDK Platform 35 and Build Tools 35.0.1.
Nothing private: the APK carries no login.

```bash
./gradlew :charge:app:assembleRelease
```

This writes the signed, optimized APK to
`android/app/build/outputs/apk/release/app-release.apk`.

## Setup

On first launch the app opens on its setup screen. Make a setup file on the
Wave site (a Tesla refresh token for the owner API, and optionally a Google
Maps key, a contact email and regional settings), copy
`wave-setup-charge.json` to `Android/data/com.teslacharge.xp3/files` on the
phone and choose Import, or choose it with the file picker. The file is
deleted once read. The app rotates the token as Tesla requires; don't use the
same refresh token in another client. A version that had a token built in
hands its live token over to the setup on update.

> **Important:** A setup file holds a live Tesla credential. Keep it, and
> signing keys, private and out of source control.

See [AGENTS.md](AGENTS.md) for architecture, development constraints, and
validation guidance.
