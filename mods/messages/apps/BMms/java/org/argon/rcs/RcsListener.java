package org.argon.rcs;

/** Engine callbacks. They arrive on engine threads; don't block them for long. */
public interface RcsListener {
    void onRegistrationState(RcsEngine.State state, String detail);

    /** Incoming chat text or file (file already downloaded). */
    void onMessage(RcsMessage m);

    /**
     * Outcome of sendText/sendFile/sendGroupText/sendGroupFile. ok = accepted by the network
     * (MSRP 200 / SIP 200/202). ok=false: fall back to SMS/MMS. code = SIP/MSRP/HTTP status,
     * 0 for local errors (timeout, not registered, too large...).
     */
    void onSendResult(String messageId, boolean ok, int code, String reason);

    void onCapabilities(String number, RcsCapabilities caps);

    /** Group created/joined, participants or subject changed. */
    void onGroupUpdate(RcsGroup group);
}
