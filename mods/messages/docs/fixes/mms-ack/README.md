# MMS acknowledgements (M-NotifyResp / M-Acknowledge) and Report-Allowed

## Problem
* `NotificationTransaction.sendNotifyRespInd` and `RetrieveTransaction.sendAcknowledgeInd` were
  gated on a preference; with it off, the MMSC never got the M-NotifyResp.ind / M-Acknowledge.ind
  and could keep re-sending notifications.
* The user wants delivery receipts **sent** (not requested, see receipts). For MMS that is the
  `X-Mms-Report-Allowed` header in those acknowledgements. The framework `PduComposer` never encodes
  Report-Allowed for M-NotifyResp.ind (AOSP: "not supported"), so with immediate retrieval the MMSC
  got no "report allowed" at all.

## Fix
* `NotificationTransaction.smali` / `RetrieveTransaction.smali`: the gates are replaced by
  `goto :cond_0`; acknowledgements are always sent (`# FIX(mms ack)`).
* `ArgonMmsReceive.setReportAllowed(AcknowledgeInd)`: sets Report-Allowed (128 yes / 129 no) from
  `pref_key_mms_send_delivery_report` (default yes, see receipts).
* `ArgonMmsReceive.withReportAllowed(byte[])`: appends `0x91 0x80|0x81` to the composed
  M-NotifyResp.ind bytes (applied after both `PduComposer.make()` call sites).

## Verification
`tools/testing/mms_suite.sh` test 5: every NotifyResp/Ack the fake MMSC receives carries
Report-Allowed=128.
