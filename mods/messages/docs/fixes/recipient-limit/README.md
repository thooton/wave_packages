# Recipient limit (group messages capped at 10)

## Cause
The bundled `mms_config.xml` sets `recipientLimit` to 10; `MmsConfig.getRecipientLimit()` returns
it and compose refuses / warns above it. Resources can't be rebuilt (no re-signing), so the XML
can't be changed.

## Fix
`MmsConfig.smali getRecipientLimit` -> `WaveConfig.recipientLimit(stock)` returns
`Integer.MAX_VALUE`, which the stock code treats as "unlimited" (all limit checks and warnings are
skipped).

Caveat: the carrier's MMSC may still refuse very large MMS groups (Bell's AOSP carrier config lists
20 recipients and 600 KB). RCS group chats use the server's limit instead.

## Verification (device)
Compose to 12 recipients (`+1555888xxxx`), Send: no warning, thread "12 people", M-Send.req at the
fake MMSC lists all 12 recipients.

Note for testing: 9-digit numbers such as `+15550010` are treated as short codes, which stock
compose refuses in group messages ("Short code found in group message recipient"); use 10-digit
NANP numbers.
