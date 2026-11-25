# Dictation

## Purpose

Dictation provides completely offline, on-device English speech-to-text for the
Sonim XP3800 (240x320 mdpi, d-pad and keypad only, Android 8.1 API 27). When
enabled in the Dictation app, pressing `*` in an ordinary text field starts
listening, turns the text cursor blue (`#007AFF`) with a microphone badge beside
it, and streams punctuated, capitalized text directly into the field as you
speak.

## Defaults and Confirmed Behaviour

- **Enable switch**: lives in the Dictation app's main screen (default **Off**).
  When Dictation is **Off**, Keyboard Improved leaves `*` byte-for-byte
  identical to stock.
- **Starting dictation**: pressing `*` (`KEYCODE_STAR`) in a normal text field
  (never in password, number, phone, or date/time fields).
- **Stopping dictation**:
  - `*` again or OK: stop listening, finalize punctuation/tail, and commit.
  - Back: stop listening and keep the text already dictated.
  - Any other key: stop listening, commit, and handle that key normally.
  - Continuous silence of about **8 seconds**: auto-stop and commit.
  - `onFinishInput`, focus loss, keyboard hide, screen off, incoming call, or
    loss of audio focus: stop listening and commit.
- **Cursor look**: an iOS-blue (`#007AFF`) vertical caret slightly wider than
  the app's own caret, paired with a compact iOS-blue microphone glyph drawn
  right beside it (flipping left near the 240px right screen edge). Hidden
  immediately when dictation stops or the field loses focus.
- **Offline operation**: the `futo-org/asr4all-s` model is bundled inside the
  APK (`asr_encoder.pte` stored uncompressed and memory-mapped directly from the
  APK). Zero runtime network calls and no `INTERNET` permission.

## Privacy (Hard Rules)

- The microphone (`AudioRecord`) is opened **only** while dictation is actively
  running and is released immediately on stop, screen off, audio focus loss, or
  client disconnect.
- Microphone audio is **never** written to disk. An explicit debug-only WAV
  input path (OFF by default, restricted to `android.permission.DUMP`) exists
  strictly for automated WAV replay and benchmarking.
- Password and other sensitive input types never start dictation.
- Zero network permissions or runtime network traffic.

## Screens

### Main screen

A plain `Family`-look list with no header naming the app and no instructional
text. D-pad Up/Down moves focus; OK activates the selected row:

1. **Dictation**: `On` (green Medium) or `Off` (muted). OK toggles state;
   turning On without microphone permission requests `RECORD_AUDIO` first and
   enables once granted.
2. **Microphone**: `Allowed` (green) or `Denied` (red). OK requests
   `RECORD_AUDIO` (or opens app details settings if already granted/blocked).
3. **Caret overlay**: `Allowed` (green) or `Denied` (muted). OK opens Android's
   overlay permission screen for this package.
4. **Notices**: `Asr4All, ExecuTorch, XNNPACK`. OK opens the Notices screen.

### Notices screen

A dark slate-blue (`#0B2545`) 36dp header reading "Notices" over white grouped
cards on a pale slate page (`#EFF2F6`), scrolled with Up/Down and closed with
Back. Displays:

1. **Asr4All** provenance and embedded-use notice.
2. Full verbatim **FUTO Model Weights License (Restricted Use) 1.0** loaded from
   `assets/FUTO_LICENSE.txt`.
3. **ExecuTorch** (BSD-3-Clause).
4. **XNNPACK** (BSD-3-Clause).

## Look

`DESIGN.md` family look in four tones of deep slate-blue: dark frame `#0B2545`,
accent `#0057B8`, focus wash `#EBF3FC`, page `#EFF2F6`, white cards/rows,
semantic green `#1E7B34` for On/Allowed and red `#B3261E` for denied microphone.
The live caret overlay uses iOS dictation blue `#007AFF`. Launcher icon is a
white and pale-blue microphone on a `#0057B8` rounded square.

## Not Wanted

- No header naming the app on the main screen (`DESIGN.md` rule 8).
- No instructional text or key hints (`DESIGN.md` rule 7).
- No `INTERNET` permission or cloud speech fallback.
- No writing microphone audio to storage.
- No third-party Java/Android libraries (the only third-party exception is the
  native `libasr4all.so` ExecuTorch/XNNPACK runtime and bundled `asr4all-s`
  model weights).
