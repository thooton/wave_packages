# Receipt policy

The user's rules:
* Read receipts: never send, never request, ignore incoming ones.
* Delivery receipts: send them; don't request them; ignore incoming ones.

## SMS
* `transaction/SmsMessageSender.smali`: the delivery-report flag is forced to false (`const/4 v9,
  0x0` after `:goto_2`): no status-report request (TP-SRR) is set, and the stored row gets
  `status=-1` (none) instead of pending.
* Sending SMS delivery receipts is the network's job (the SMSC); nothing to do on the phone.

## MMS
* `transaction/MmsMessageSender.smali`: `X-Mms-Delivery-Report` and `X-Mms-Read-Report` are always
  129 (No) in M-Send.req; `sendReadRec` returns immediately (no read reports ever sent).
* Delivery receipts are sent through Report-Allowed in M-NotifyResp/M-Acknowledge (docs/fixes/mms-ack).
* `transaction/PushReceiver.smali`: `findThreadId` returns -1 for incoming M-Delivery.ind and
  M-Read-Orig.ind, which makes the stock code drop them (it skips reports it can't match).

## RCS
`RcsConfig.Policy` defaults: no delivery/display notification requests on outgoing messages,
delivery notifications sent for incoming ones, never "displayed", never isComposing.

## Settings
`WaveInit.applyReceiptPolicy` (every app start) mirrors the policy into the settings so the
switches show what happens: all "request delivery/read report" and "send read report" switches off;
on first run `pref_key_mms_send_delivery_report` on (the user may switch that one off later).

## Verification (device)
* SMS sent: `status=-1`.
* 12-recipient MMS at the fake MMSC: M-Send.req `delivery_report=129`, `read_report=129`.
* Injected M-Delivery.ind with the Message-ID of a sent MMS: nothing stored (no `m_type=134` row),
  no crash.
* MMS acknowledgements carry Report-Allowed=128 (`mms_suite.sh` test 5).
* RCS: `tools/rcs/device_suite.sh` 1b (only "delivered" IMDNs sent back) and 4b (outgoing chat
  messages carry no Disposition-Notification header).
