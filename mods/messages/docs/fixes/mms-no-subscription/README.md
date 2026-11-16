# MMS crashes without a SIM / active subscription

Two stock crashes in the MMS path when there is no active subscription (no SIM, SIM not ready,
airplane mode on some builds). Both lost or stalled messages.

## 1. Incoming MMS: `PduParserUtil` NPE
`PduParserUtil.shouldParseContentDisposition()` reads `SmsManager.getCarrierConfigValues()`,
which returns null without an active subscription. `PushReceiver` then crashed with an NPE and the
MMS notification was lost.

Fix (`transaction/PduParserUtil.smali`, `# FIX(mms crash)`): a null bundle returns the default
(`true`).

## 2. Outgoing / any MMS transaction: phone id -1
`TransactionService.beginMmsConnectivity` and `releaseNetworkRequest` index per-phone arrays with
`SubscriptionManager.getPhoneId(subId)`, which is -1 without an active subscription:
`ArrayIndexOutOfBoundsException` on the `SendTransaction` thread, app crash. Found when sending an
MMS on the test phone; reachable for users since sending is allowed while RCS is registered without
a SIM (see docs/rcs/android.md).

Fix (`transaction/TransactionService.smali`, `# FIX(mms no subscription)`):
* `releaseNetworkRequest`: returns when the phone id is invalid (nothing was requested).
* `beginMmsConnectivity`: throws `IOException("no active subscription for MMS")`, which the stock
  callers handle like "no MMS connectivity": the message stays in the outbox and is retried by the
  stock pending-message logic.

## Verification
No-SIM phone, test network off: a 12-recipient MMS stays in the outbox (`msg_box=4`), log shows
the IOException, no crash. Incoming MMS on the same phone: `tools/testing/mms_suite.sh`.
