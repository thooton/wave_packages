package org.wave.rcs;

/** RCS capabilities of a number. */
public final class RcsCapabilities {
    public boolean chat, fileTransferHttp, groupChat;
    /** ms when the network answered (or when the cached negative result was recorded). */
    public long fetchedAt;
    /** true if the number answered as an RCS user (any RCS feature tag), false for non-RCS/offline. */
    public boolean rcs;
    /** SIP status of the OPTIONS query (200, 404, 480, 408, 0 = local error). */
    public int code;

    public RcsCapabilities() {}

    public RcsCapabilities copy() {
        RcsCapabilities c = new RcsCapabilities();
        c.chat = chat; c.fileTransferHttp = fileTransferHttp; c.groupChat = groupChat;
        c.fetchedAt = fetchedAt; c.rcs = rcs; c.code = code;
        return c;
    }

    @Override public String toString() {
        return "caps{chat=" + chat + " ft=" + fileTransferHttp + " group=" + groupChat + " rcs=" + rcs
                + " code=" + code + " at=" + fetchedAt + "}";
    }
}
