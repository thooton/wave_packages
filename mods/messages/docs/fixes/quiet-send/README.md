# Quiet successful sends

Stock `SmsReceiverService` posts a separate “SMS has been successfully sent” toast after a successful send. Skip only that post. Moving the row to Sent, draining the send queue, and updating failure notifications still run. The stock MMS transaction path does not post an equivalent send-completion toast in the bundled APK; its failure and retry notices are left intact, as are opt-in delivery reports.

Device check: send a plain SMS and a carrier MMS to a test recipient. Both should reach Sent with no success toast. Verify that a message that cannot be sent still shows its existing failure or retry feedback.
