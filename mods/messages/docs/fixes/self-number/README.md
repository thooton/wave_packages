# Own number unknown: group MMS filed wrong

## Problem
Many SIMs have no MSISDN on the card (`TelephonyManager.getLine1Number()` empty). Without its own
number the framework `PduPersister` can't tell which address of a group MMS is "me": it keeps "me"
in the thread recipients (a group with yourself in it) or, for To==From, drops the 1-entry To.
Group MMS mode (`getIsGroupMmsEnabled`) also requires a known number.

## Fix (`apps/BMms/java/com/android/mms/wave/WaveSelf.java`)
* `MessageUtils.getLocalNumber` hook (`localNumber`): the stock value if non-empty, else a
  learned number (pref `wave_self_number`) or the development override property
  `debug.wave.self_number`.
* Learning: a 1:1 M-Retrieve.conf (exactly one To, no Cc) addressed to a phone number that isn't
  the sender is ours (`beforePersist`).
* Both persist call sites (`NotificationTransaction`, `RetrieveTransaction`): `beforePersist`
  returns the `createThreadId` argument (`false` when we pick the thread); `afterPersist` files the
  message under sender + To + Cc minus our number (sender alone for 1:1) and rewrites `msg_box`
  so the provider triggers recount the thread.

## Verification
`tools/testing/mms_suite.sh` tests 1b/2/3 (run with `debug.wave.self_number`): group of 2 others,
group of 3 others and 1:1 each in the right thread.
