# Messages Improved behavior

This supplements the stock Messages behavior and the features listed in [README.md](README.md).

## MMS and iMessage network routing

- Stock MMS continues to use the carrier MMS network during a transaction and can keep the network available briefly for the next transaction.
- When an MMS request finishes or loses its network, it must not leave the Messages process bound to that MMS network. New iMessage connections, including the manual Reconnect action, can then use the system's Internet connection without restarting the app.
- Releasing one MMS request or receiving a delayed loss for an old network must not remove a different request's current binding.

## Send feedback

- An ordinary successful SMS or MMS send is reflected in the conversation without a separate success toast.
- Send failures, retry warnings, and user-enabled delivery reports are unchanged.
