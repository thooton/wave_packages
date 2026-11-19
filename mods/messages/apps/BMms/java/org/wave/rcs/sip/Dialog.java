package org.wave.rcs.sip;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.wave.rcs.util.U;

/** A SIP dialog (RFC 3261 section 12), loose routing only. */
public final class Dialog {
    public String callId, localTag, remoteTag;
    public String localUri, remoteUri;   // From/To URIs (as name-addr values without tags)
    public String remoteTarget;          // Contact URI of the peer
    public List<String> routeSet = new ArrayList<>();
    public long localCseq, remoteCseq = -1;
    public String remoteContactHeader;   // full Contact value (feature tags such as isfocus)

    /** UAC side: from our request and a 1xx/2xx response with a To tag. */
    public static Dialog fromUac(SipMessage req, SipMessage resp) {
        Dialog d = new Dialog();
        d.callId = req.callId();
        NameAddr from = req.from(), to = resp.to();
        d.localTag = from.param("tag");
        d.remoteTag = to.param("tag");
        d.localUri = from.uri;
        d.remoteUri = to.uri;
        List<String> contacts = resp.headerValues("Contact");
        if (!contacts.isEmpty()) {
            d.remoteContactHeader = contacts.get(0);
            d.remoteTarget = NameAddr.parse(contacts.get(0)).uri;
        } else d.remoteTarget = req.uri;
        List<String> rr = resp.headerValues("Record-Route");
        Collections.reverse(rr);
        d.routeSet = rr;
        d.localCseq = req.cseq();
        return d;
    }

    /** UAS side: from an incoming request; localTag is the To tag we put in our responses. */
    public static Dialog fromUas(SipMessage req, String localTag) {
        Dialog d = new Dialog();
        d.callId = req.callId();
        NameAddr from = req.from(), to = req.to();
        d.localTag = localTag;
        d.remoteTag = from.param("tag");
        d.localUri = to.uri;
        d.remoteUri = from.uri;
        List<String> contacts = req.headerValues("Contact");
        if (!contacts.isEmpty()) {
            d.remoteContactHeader = contacts.get(0);
            d.remoteTarget = NameAddr.parse(contacts.get(0)).uri;
        } else d.remoteTarget = from.uri;
        d.routeSet = req.headerValues("Record-Route");
        d.remoteCseq = req.cseq();
        d.localCseq = U.RND.nextInt(10000) + 1;
        return d;
    }

    /** New in-dialog request (Via/branch is added by the stack). */
    public SipMessage newRequest(String method) {
        SipMessage m = SipMessage.request(method, remoteTarget);
        for (String r : routeSet) m.add("Route", r);
        m.add("From", "<" + localUri + ">;tag=" + localTag);
        m.add("To", "<" + remoteUri + ">" + (remoteTag != null ? ";tag=" + remoteTag : ""));
        m.add("Call-ID", callId);
        m.add("CSeq", (++localCseq) + " " + method);
        m.add("Max-Forwards", "70");
        return m;
    }

    /** ACK for a 2xx to the INVITE with that CSeq number. */
    public SipMessage ack(long inviteCseq) {
        SipMessage m = SipMessage.request("ACK", remoteTarget);
        for (String r : routeSet) m.add("Route", r);
        m.add("From", "<" + localUri + ">;tag=" + localTag);
        m.add("To", "<" + remoteUri + ">" + (remoteTag != null ? ";tag=" + remoteTag : ""));
        m.add("Call-ID", callId);
        m.add("CSeq", inviteCseq + " ACK");
        m.add("Max-Forwards", "70");
        return m;
    }

    public boolean matches(SipMessage m) {
        if (!callId.equals(m.callId())) return false;
        String ft = m.fromTag(), tt = m.toTag();
        if (m.isRequest) return eq(ft, remoteTag) && eq(tt, localTag);
        return eq(ft, localTag);
    }

    private static boolean eq(String a, String b) { return a == null ? b == null : a.equals(b); }

    public String key() { return callId + "|" + localTag; }
}
