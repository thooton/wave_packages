# Slow group MMS conversations

## Cause

The stock history query returns MMS headers but no MMS text. Each visible MMS then
loads its header, parts and addresses in a background job and builds a slideshow.
Contact lookups across the conversation list repeatedly invalidated those rows and
cancelled their loads. The activity also waited 500 ms to start the history query,
and the row layouts' `autoLink="all"` initialized Chromium on the main thread to
detect street addresses.

## Changes

* TelephonyProvider adds `argon_msg`, a `WITHOUT ROWID` read model ordered by thread,
  normalized date and message identity. The first eligible history request installs
  and backfills it atomically. Triggers on `sms`, `pdu`, `part`, `addr` and
  `pending_msgs` keep it current inside the source transaction. The stock tables,
  URIs, schema version and journal mode are unchanged.
* Messages opts in with `argon_index=1` on its existing history URI. The provider
  accepts only the fixed stock Messages projection with no custom filter or sort,
  checks the existing access restriction, and falls back to the stock query if the
  index is unavailable. Normal opens now request the newest 20 messages. Near the
  top of the list the app extends the range by up to 32 messages, preserving the
  visible row and pixel offset by message identity. A search jump starts the range
  up to 10 messages before the hit and includes the newer history; a search into
  an old thread may therefore read more than 20. Stock callers and the after-delete
  existence check still get the full history.
* Common single-slide text MMS with known SMIL and encodings bind from the cursor.
  Photos, notifications, unfamiliar layouts and MMS with receipt requests retain the
  full PDU path. Forward loads the original slideshow on demand. A provider that
  doesn't understand the opt-in parameter still returns the stock cursor.
* The UI removes the fixed delay, coalesces recipient contact updates, keeps the
  PDU cache on row cancellation, and prefetches only the newest fallback rows.
  The row inflater swaps out WebView address detection for a small street-address
  matcher with `geo:` links. It covers common North American street formats, not
  arbitrary international or postal addresses. Web, phone and email still use
  Android's existing link handling. No layouts, resources or manifests changed.

## Cold startup

Process startup no longer enumerates all conversations and resolves their
recipients. That pass held the same cache lock used by the first conversation
lookup, including while it queried the provider. The conversation list still
populates its cache as rows bind, and a direct thread open loads that thread on
demand. Explicit cache repair after deletion is unchanged. Device timing is
pending; this removes the work rather than moving it to a later frame.

## Lightweight text rows

Inline MMS reuse the SMS row pool: those rows use the same send/receive layouts,
but don't inflate the unused attachment stub. The normal conversation layouts
also hide the avatar. For an inline text row with a hidden avatar, the binder
applies the original bubble tint without looking up or constructing the avatar.
Visible avatars, checked rows, and media still take the stock path.

## Verification

`tools/testing/conversation_index_test.py` exercises the shipped SQL and address
matcher on the host. `--db PATH` checks an in-memory copy of a read-only database
snapshot. The test snapshot had 1,693 of 1,697 MMS eligible for inline rendering.

Checked on the XP3800 with no SIM: received group MMS with plain text and a photo,
confirmed both render and only the photo uses the slideshow loader. The link menu
listed street, web and phone links together. The 387-message group was entirely
eligible for inline rendering and did not launch Chromium or schedule PDU loads.
The baseline for that group was 7–8.4 s to fill the visible rows (loader logs).
After the change, USB screen sampling put the settled visible text at 2.2–2.6 s
on three cold opens and about 1.2 s on one warm open. These are approximate and
use a different measurement marker from the baseline.

`tools/testing/conversation_open.sh THREAD --cold` reports stock log markers. The
`Displayed` marker is the window opening, not necessarily the first text drawn.

The paging changes are built and host-tested, including mixed SMS/MMS timestamps,
appends, deleting the range boundary, and a direct search key lookup. Scroll and
focus checks on the handset are pending USB reconnection.
