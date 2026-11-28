# Clear the MMS process binding at teardown

`TransactionService` uses Android's process-wide network binding for stock MMS. On Android 8.1, a binding to a removed network can make creation of a new IP socket fail with `ENONET` before even connecting. An existing iMessage connection can mask the problem until the user presses Reconnect or the connection drops. `Network.bindSocket` isn't enough here: Android must first create the socket, which is the step that fails.

Keep the stock binding while MMS needs it. Release it when its request ends (before unregistering the callback) or when that request's network is lost. Clearing the process binding does not unregister the MMS network or change the separate five-second linger request. Track the subscription and network so an unrelated release or delayed loss does not clear a newer binding.

Device check: on LTE with iMessage connected, receive or send a regular MMS, let its request finish, and press Reconnect. The same Messages process should return to Connected and the server should see the new session. Also check a pair of back-to-back MMS transactions.
