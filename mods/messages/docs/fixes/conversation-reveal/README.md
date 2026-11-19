# Reveal a conversation after its first messages are ready

Opening an existing thread used to show its title and composer before the
asynchronous history query and row layout finished. Keep the starting window
until the first accepted history result has been laid out. For MMS rows on
that first screen, also wait for the stock PDU callback to complete or fail.
This does not wait for off-screen rows, attachment downloads or background
thumbnail decoding.

This is a one-time pre-draw check, not a main-thread wait. It releases an empty
history normally, stops when the activity stops, and fails open after 3.5
seconds if a provider or attachment never finishes. New compose, mailbox and
reply-only screens are unchanged. Later history refreshes, the full scrollbar
range, and scrolling are not gated.

Set `log.tag.WaveLaunch=DEBUG` to see `history_revealed` or the fallback
`history_reveal_timeout`. `rows_ready` still means first nonempty layout, not
necessarily the first displayed frame.

Verified on the XP3800: a cold inline-text thread released at 0.97 s and its
first window displayed at 1.05 s. A cold group that used fallback MMS loading
released at 1.48 s and first displayed at 1.59 s. Both displayed only after
the reveal check passed, with no timeout.
