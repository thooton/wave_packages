# Sonim Messages & iMessage UI Polish (1.7.0)

This document summarizes the UI refinements made across `BMms` (`mods/messages/apps/BMms/`) for the Sonim XP3800 (240x320, 160 dpi, D-pad navigation). Every change stays strictly within the DEX-only splice constraint (programmatic Java views and drawables plus small `# FEAT(imessage)` smali hooks; stock manifest, resources, and `META-INF` remain untouched).

The design goal is a simple, intuitive interface that brings Apple Messages clarity, typography, and media polish to the XP3800 while preserving Sonim Messages' native contact-color identity and D-pad ergonomics.

---

## 1. Full-Screen Attachment Viewer (`WaveAttachmentViewer.java`)

**Smali hooks:** `AttachmentViewActivity.smali` (`onCreate`, `onPause`, `onDestroy`, `dispatchKeyEvent`, `onBackPressed`, `onPrepareOptionsMenu`, `onOptionsItemSelected`). Leaves stock slideshow editing (`is_edit_slideshow`) untouched.

### Before (stock Sonim)
- Single attachments displayed a red dot indicator, horizontal divider, and an 80 px bottom filmstrip (25% of the 320 px screen) repeating the same thumbnail with clipped size text.
- Messages carrying both media and caption text created a bogus second `"NO MEDIA"` slide in the filmstrip instead of displaying the caption on the media.
- `ImageViewFragment` loaded low-resolution `ThumbnailManager` previews on stark white with no zoom or pan.
- `VideoViewFragment` rendered a small padded thumbnail on white with a bright red progress bar.
- `AudioViewFragment` showed a large hot-pink CD icon with raw internal filenames (`imsg0_Voice_message.m4a`).
- `VcardVcalViewFragment` only showed a generic box with the raw `.vcf` filename.

### After
- **Direct part extraction (`content://mms/<id>/part`)**: Separates real media parts from `text/plain` captions and ignores `application/smil`. Captions render cleanly in a subtle dark bottom scrim overlay; bogus `"NO MEDIA"` slides are eliminated.
- **Zero wasted chrome on single attachments**: Hides filmstrip, counter, and dots when viewing a single item. Multi-attachment messages display a compact floating top-right counter pill (`1 / 4`), a minimal 10 dp bottom dot strip, and instant `DPAD_LEFT` / `DPAD_RIGHT` slide switching.
- **Photos & animated GIFs**: Deep dark backdrop (`#0B0B0D`) and matching status bar. Decodes EXIF-oriented preview bitmaps (up to 960 px) and plays animated GIFs via `Movie`. Pressing `OK` toggles `2.2×` zoom (with a subtle `"2×  ◀▲▼▶ pan"` pill), D-pad arrows pan within image bounds, and `Back` or `OK` returns to 1x fit.
- **Video**: Pure black backdrop, aspect-preserving full-screen `VideoView`, auto-play on open, `OK` play/pause with a translucent circular play overlay when paused, `DPAD_LEFT` / `DPAD_RIGHT` 5-second seek, and an auto-hiding thin white iOS-style scrubber bar with `m:ss` timestamps.
- **Voice messages & audio**: Light `#F5F5F7` canvas with a clean white rounded card, friendly title (`"Voice message"` for voice memos, cleaned filenames otherwise), circular Play/Pause button in conversation accent color, 28-bar waveform progress indicator filled smoothly left-to-right, elapsed/total timestamps, `OK` play/pause/replay, and `◀`/`▶` seek.
- **vCard & vCalendar**: Parses `FN`, `ORG`, `TEL`, `EMAIL` (and `SUMMARY` for vCalendar) directly from the part stream into a clean contact card with a circular monogram avatar, formatted details, and a focused `"Open in Contacts"` action.
- **Unified Options Menu**: `Zoom in` / `Fit to screen` (photos), `Play` / `Pause` (video/audio), `Save attachment` (full-size iMessage download via `WaveIMessageSave`, with local MMS fallback to `Download/`), `Save all` (reusing one TLS media connection via `MediaClient.keepOpen()`), and `React` (for tracked iMessages).

---

## 2. Inline Attachments & Conversation Rows (`WaveMessageUi.java`)

**Smali hooks:** `MessageListItem.smali` (`bindCommonMessage` plus `suppressStockMms` guards in `showMmsView`, `initPlayVideoPicView`, `initPlayAudioView`, `initSlideShow`, and `attachmentCountDetails`).

### Before (stock Sonim)
- Inline photos and videos were shrunk to 56x56 dp `fitXY`-squashed squares with huge side margins and `"13KB"` / `"4 Attachments  117KB"` metadata clutter.
- Inline voice messages rendered as a giant empty box with a stock CD icon and `"19KB"`.
- Inline reply quotes (`↩ “...”`), edits (` (edited)`), unsends (`Unsent`), and group change notices rendered as plain text inside solid bubbles (with `autoLink` underlining phone numbers in notices).
- `mms_subject_text` lacked `visibility="gone"` in stock XML, leaving an empty 24 dp gap below media inside MMS bubbles.
- White sent bubbles had low edge definition against Sonim's `#F4EFF0` conversation backdrop.

### After
- **Inline photos, stickers & videos**: Generous aspect-preserving rounded previews (up to 160x128 dp, 12 dp corner radius) decoded asynchronously with an in-memory `LruCache`. Videos display a centered translucent Play badge and a corner duration pill (`0:04`). Empty `mms_subject_text` views and redundant stock 56x56/3-box/`13KB`/`4 Attachments` views are cleanly suppressed so bubbles wrap tightly around media and captions.
- **Multi-media grids**: Messages with 2+ attachments render as a clean 2-column rounded tile grid with mini play badges on video tiles and a `+N` overflow badge when more than 4 items are present.
- **Inline Voice Message pill**: Compact iOS-style horizontal waveform pill inside the bubble with a circular Play icon (adapted for received vs sent bubbles), 16 vertical waveform bars, and asynchronously cached `m:ss` duration.
- **Inline Reply Quotes**: Splits quoted context from `WaveIMessageDb.infoForUri` (with legacy `↩ “...”\n` fallback) into an indented rounded quote container with a vertical left accent bar above the reply body.
- **Edited messages**: Strips ` (edited)` from the message body (or uses `Info.text`) and appends a subtle `Edited` label in the bubble footer beside the timestamp.
- **Unsent messages**:
  - 1.6.0+ unsent messages (`Info.unsent()`): preserves original text, media, and tapbacks inside a subtly softened dashed-outline bubble with an `Unsent` label in the footer.
  - Pre-1.6.0 legacy `"This message was unsent"` messages: renders as a quiet ghosted dashed-outline italic pill.
- **Group change notices**: Renders `Info.notice()` (and legacy group event lines) as centered muted gray system lines with no bubble, no footer, and no underlined phone links, formatting raw E.164 phone numbers cleanly.
- **Bubble definition**: Keeps Sonim's contact-colored received bubbles and asymmetric corners while adding a subtle 1 px `#DFDADE` hairline around white sent bubbles.

---

## 3. Tapbacks, Horizontal Picker, Reactions & Edit History (`WaveTapbacks.java`)

**Smali hooks:** `MessageListItem.smali`, `ComposeMessageActivity.smali` (`React` / `Reactions` / `Edit history` moved to top of selected-message menu), `ComposeMessageActivity$5.smali`, `ComposeMessageActivity$79.smali`.

### Improvements
- **Crisp 160 dpi vector glyphs**: Custom anti-aliased `Canvas` vector paths for Heart, Thumbs Up, Thumbs Down, slanted `HA`, double exclamation `!!`, and `?` at 23 dp diameter with refined stack spacing (`STEP = 0.62f`).
- **iOS-style horizontal Tapback bar**: Replaces the tall scrolling list dialog (which clipped `Emphasize` and hid `Question` off-screen) with a floating rounded pill displaying all 6 circular tapback options side-by-side. `DPAD_LEFT` / `DPAD_RIGHT` cycles across all 6 with a live label below (`Love` / `Remove Love`, etc.), and `OK` applies immediately.
- **Polished Reactions sheet**: Custom rounded card with circular mini-badges matching conversation badges, formatted phone numbers (`PhoneNumberUtils.formatNumber`) or contact names, action verbs, and direct `Edits` (when edited), `React`, and `Done` buttons.
- **Edit History sheet**: Opens from `Edit history` in the message menu, by clicking an edited text message directly, or via `Edits` inside the Reactions sheet. Shows every version from `WaveIMessageDb.editHistoryForUri` (`Original` -> `Edit N` -> highlighted `Current`) with timestamps.

---

## 4. Compose Bar & Outgoing Previews (`WaveIMessageUi.java`, `ImageAttachmentView.smali`, `VideoAttachmentView.smali`)

- **Rounded pill compose bar**: Replaces stock's harsh 3 dp dark-gray square box (`edittext_border.xml`) with a soft rounded pill input (`18 dp` radius, white fill, `#D1D1D6` idle border, and a 2 dp transport-colored focus outline: `#007AFF` iMessage Blue vs `#2E9E47` SMS Green) inside a light `#F7F7F9` compose bar with top hairline and balanced padding.
- **Concise Apple-style hints & send button**: Sets `"iMessage"`, `"Text message"`, or `"MMS message"` hints and styles `send_button_sms` / `send_button_mms` with a crisp circular upward-arrow drawable tinted iMessage Blue or SMS Green.
- **Aspect-accurate outgoing previews**: Switched `ImageAttachmentView` and `VideoAttachmentView` from stock `fitXY` stretching to `CENTER_CROP` so attached photos and videos aren't squashed before sending.

---

## 5. Conversation List / Inbox (`WaveInboxUi.java`)

**Smali hook:** `ConversationListItem.smali` (`bind`).

- **No blank media or group snippets**: When `threads.snippet` is empty (media-only messages or text-only group MMS notices), asynchronously resolves the latest MMS parts and displays either the formatted text snippet or a clean italic Apple-style media label (`"Photo"`, `"Video"`, `"Voice message"`, `"Contact"`, `"4 Attachments"`, etc.), cached per thread.
- **Clean reply, unsent & notice snippets**: Strips verbose quote headers (`↩ reply`), folds trailing `\nUnsent` inline (`... (unsent)`), and formats raw E.164 phone numbers in group notices.

---

## 6. Settings, Connection Details & Setup Wizard (`WaveIMessageSettings.java`)

- **Top-level discoverability & clean title**: Placed `iMessage` right at the top of Messages Settings (order `-100`) with a clean non-truncating `"iMessage"` ActionBar title (previously `"Apple (iMessage) set..."` buried under Advanced settings).
- **Categorized iMessage settings**: Grouped preferences under native Sonim blue `PreferenceCategory` headers (`Messaging`, `Connection`, `Setup`), made `Status` clickable to open Connection details, and tightened verbose multi-line summaries for 240 px width.
- **Connection Details dialog**: Clean label-over-value rows (removing duplicate Keepalive/Relay lines) fitting cleanly on screen with single-line `Optimize` and `Close` buttons.
- **Setup Wizard**: Added explicit `Server` and `Pairing code` field labels above soft rounded input fields with `#007AFF` focus rings, a solid `#007AFF` rounded primary button (`Pair` / `Done`), and an understated rounded secondary button (`Cancel`).

---

## 7. Full-Size Attachment Saving (`WaveIMessageSave.java`)

- Multi-attachment `Save all` now reuses a single TLS media connection via `MediaClient.keepOpen()` / `close()`.
- Added `saveLocalPart` and `saveLocalParts` fallbacks so `WaveAttachmentViewer` can also save standard carrier MMS attachments cleanly to `Download/`.

---

## Verification

All screens were visually verified on real Sonim XP3800 hardware (240x320, 160 dpi) with zero runtime errors across:
- Conversation list (text, media-only, unread/read group notices)
- Conversation thread (single photo, photo + caption, 2x2 multi-media grid, inline video with play badge and duration pill, inline voice message waveform pill, inline reply quotes, edited footer + 3-version Edit History sheet, 1.6.0 unsent photo + legacy ghost unsent pill, centered group system notices, crisp vector tapback badges, horizontal 6-button Tapback bar, Reactions sheet)
- Attachment viewer (full-screen photo + 2× zoom/pan + caption overlay, 4-attachment multi-slide switcher, full-screen video player, iOS-style voice message waveform player, options menu)
- Compose bar (rounded pill + iMessage blue focus outline while idle and typing)
- Messages Settings, iMessage Settings, Connection Details dialog, and Setup Wizard
- Host build & test suite (`mods/messages/tools/build.sh BMms` + `mods/messages/tools/test.sh`): `dexcheck OK`, `linkcheck OK`, and all host & interop tests passing.
