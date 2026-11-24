# Sonim Messages & iMessage UI Polish

This document summarizes the UI refinements made across `BMms` (`mods/messages/apps/BMms/`) for the Sonim XP3800 (240x320, 160 dpi, D-pad navigation). Every change stays strictly within the DEX-only splice constraint (programmatic Java views and drawables plus small `# FEAT(imessage)` smali hooks; stock manifest, resources, and `META-INF` remain untouched).

The design keeps Sonim Messages' native aesthetic (original message bubbles, original bottom compose box, native Material dialogs, and native Attachment Details look) while elevating inline attachments, in-chat voice playback, photo zoom, tapbacks, edit history, unsent labels, group notices, inbox snippets, and iMessage settings.

---

## 1. Attachment Details Viewer (`WaveAttachmentViewer.java`)

**Smali hooks:** `AttachmentViewActivity.smali` (`onCreate`, `onPause`, `onDestroy`, `dispatchKeyEvent`, `onBackPressed`, `onPrepareOptionsMenu`, `onOptionsItemSelected`). Leaves stock slideshow editing (`is_edit_slideshow`) untouched.

### Changes
- **Native Sonim details aesthetic**: Preserves Sonim's white `#FFFFFF` background, grey status bar, centered red indicator dot, black horizontal divider, and bottom thumbnail carousel (with Sonim's `#607D8B` / `#EDF2F4` active border, framed `CENTER_CROP` thumbnails, and unclipped file sizes).
- **Caption fix (no bogus `"NO MEDIA"` slide)**: Separates `text/plain` captions from real media parts (`content://mms/<id>/part`, ignoring `application/smil`) and displays captions cleanly on white above the bottom divider.
- **Full-res EXIF-oriented photo zoom & pan**: Decodes crisp EXIF-oriented photos (up to 960 px) and plays animated GIFs. Pressing `OK` toggles `2.2×` zoom (hiding the bottom carousel temporarily for full-screen viewing with no overlay hint text), D-pad arrows pan within bounds, and `Back` or `OK` returns to `1×` fit.
- **Video, audio & vCard**: Videos open paused on Sonim's white details preview (first frame + white-ring Play icon, no auto-play); pressing `OK` (or `Menu -> Play`) enters full-screen black video playback with `OK` play/pause, `◀`/`▶` 5 s seek, auto-hiding progress bar, and `Back` returning to details. Multi-attachment audio uses a clean light progress view; vCards parse `FN`, `ORG`, `TEL`, `EMAIL` into a clean contact summary.
- **Unified Options Menu**: `Zoom in` / `Fit to screen`, `Play` / `Pause`, `Save attachment` (full-size iMessage via `WaveIMessageSave`, with local MMS `Download/` fallback), `Save all` (single TLS connection via `MediaClient.keepOpen()`), and `React`.

---

## 2. Inline Attachments, In-Chat Voice Playback & Conversation Rows (`WaveMessageUi.java`)

**Smali hooks:** `MessageListItem.smali` (`bindCommonMessage` plus `suppressStockMms` guards in `showMmsView`, `initPlayVideoPicView`, `initPlayAudioView`, `initSlideShow`, and `attachmentCountDetails`), `ComposeMessageActivity.smali` (`onPause` -> `stopVoicePlayback`).

### Changes
- **Native Sonim bubbles preserved**: Saves and restores stock `message_item_bubble_recv` and `message_item_bubble_send` drawables, text sizes, colors, and paddings on normal text rows so standard bubbles match stock Sonim exactly.
- **Inline photos, stickers, videos & grids**: Aspect-preserving rounded previews (up to 160x128 dp) with centered Play badge and corner duration pill on videos, plus 2-column rounded multi-media grids, suppressing duplicate stock 56x56 / 3-box / `"13KB"` / `"4 Attachments"` views and stock's empty 24 dp `mms_subject_text` gap.
- **In-chat Voice Message playback (Sonim Material style)**: Single voice/audio messages render cleanly inside the stock Sonim bubble with a plain Material Play/Pause icon, `"Voice message"` title, live `m:ss` duration/elapsed timer, and a Material horizontal seekbar with circular thumb. Pressing `OK` toggles playback directly in the chat bubble (no separate details screen), animating progress live and stopping cleanly on `ComposeMessageActivity.onPause()`.
- **Inline Reply Quotes**: Splits quoted context from `WaveIMessageDb.infoForUri` (with legacy `↩ “...”\n` fallback) into an indented accent-bar quote block above the reply body.
- **Edited messages**: Strips ` (edited)` from body text (or uses `Info.text`) and appends a subtle `Edited` label in the bubble footer.
- **Unsent messages**: 1.6.0+ unsent messages (`Info.unsent()`) keep original text, media, and tapbacks visible inside a softened dashed-outline bubble with an `Unsent` footer label; legacy `"This message was unsent"` rows render as a quiet ghosted italic pill.
- **Group change notices**: Renders `Info.notice()` (and legacy group event lines) as centered muted gray system lines with no bubble, no footer, formatted phone numbers, and no autoLink underlines.

---

## 3. Tapbacks, Sonim Reactions Dialog & Edit History (`WaveTapbacks.java`)

**Smali hooks:** `MessageListItem.smali`, `ComposeMessageActivity.smali` (`React` / `Reactions` / `Edit history` moved to top of selected-message menu), `ComposeMessageActivity$5.smali`, `ComposeMessageActivity$79.smali`.

### Changes
- **Flipped bubble-matched reaction colors**: Matches Sonim's bubble convention where the user is white and the contact is colored:
  - **Your reactions**: White fill (`#FFFFFF`) with a subtle hairline outline, dark glyph (`#555558`), and pink heart (`#FF2D55`).
  - **Their reactions**: Conversation contact color fill (`ComposeMessageActivity.getSendContactColor()`) with white glyph (`#FFFFFF`).
- **Crisp 160 dpi vector glyphs**: Anti-aliased Canvas vector paths for Heart, Thumbs Up, Thumbs Down, slanted `HA`, double exclamation `!!`, and `?`.
- **Native Sonim Reactions & React dialogs**: Uses native Android Material `AlertDialog` styling for both **Reactions** (with flipped-color mini-badges, formatted phone numbers/names, action verbs, and flat `OK` / `React` / `Edits` buttons) and the single-row 6-reaction **React** picker (with Sonim's `#607D8B` / `#EDF2F4` selection box and `◀`/`▶` + `OK` D-pad control).
- **Edit History sheet**: Opens from `Edit history` in the message menu, by clicking an edited text message directly, or via `Edits` from Reactions, showing every saved version from `WaveIMessageDb.editHistoryForUri` (`Original` -> `Edit N` -> highlighted `Current`) with timestamps.

---

## 4. Compose Bar & Outgoing Previews (`WaveIMessageUi.java`, `ImageAttachmentView.smali`, `VideoAttachmentView.smali`)

- **Native Sonim compose box preserved**: Restores Sonim's exact stock compose input box and send buttons while dynamically switching the placeholder hint (`"Type iMessage"`, `"Type SMS message"`, `"Type MMS message"`).
- **Aspect-accurate outgoing previews**: Switched `ImageAttachmentView` and `VideoAttachmentView` from stock `fitXY` distortion to `CENTER_CROP`.

---

## 5. Conversation List, Settings, Wizard & Full-Size Save (`WaveInboxUi.java`, `WaveIMessageSettings.java`, `WaveIMessageSave.java`)

- **Inbox snippets (`WaveInboxUi`, `ConversationListItem.smali`)**: Media-only and text-only group MMS threads with empty `threads.snippet` resolve and display formatted text or italic media labels (`"Photo"`, `"Video"`, `"Voice message"`, `"4 Attachments"`).
- **Settings & Setup Wizard (`WaveIMessageSettings`)**: Top-level non-truncating `iMessage` entry in Messages Settings, categorized under `Messaging`, `Connection`, and `Setup`, streamlined Connection Details dialog with single-line `Optimize` / `Close` buttons, and Setup Wizard with labeled fields and clear primary/secondary button hierarchy.
- **Full-size attachment saves (`WaveIMessageSave`)**: Multi-attachment `Save all` reuses one TLS media connection via `MediaClient.keepOpen()`/`close()`, with local MMS `Download/` fallbacks.
