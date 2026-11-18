# Prefetch a focused conversation

When keypad focus rests on an inbox row for 180 ms, one low-priority worker
queries the newest indexed page (up to 20 rows). It closes the cursor after the
read, warming the provider's caches. It also starts up to four stock MMS
loads when the newest rows need the fallback loader. Inline text needs no PDU
load. Work is debounced, the worker queue holds only the newest request, and
moving focus or leaving the inbox discards old results. Nothing changes what
is drawn in the inbox while this happens.

Prefetch is read-only. It does not launch the thread, mark it read, download
messages, or retain a speculative history cursor. Opening still queries the
latest data and presents the full scrollbar range; the first-frame reveal
continues to wait for the visible messages.

Set `log.tag.ArgonPrefetch=DEBUG` to see aggregate row and fallback-MMS counts
only. No thread IDs, addresses or message bodies are logged.

Verified on the XP3800: moving keypad focus warmed both inline-text and fallback
MMS rows while the inbox stayed open. Pressing Select then opened the focused
conversation with the first-frame reveal intact. This verifies that prefetch
runs, not a measured launch-time improvement.
