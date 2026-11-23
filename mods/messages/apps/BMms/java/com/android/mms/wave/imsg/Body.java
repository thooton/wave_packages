package com.android.mms.wave.imsg;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Compact binary application body format carried inside MSG frames.
 * Matches server/src/body.rs byte-for-byte.
 */
public final class Body {
    public static final int KIND_SEND_TEXT = 0x01;
    public static final int KIND_SEND_RESULT = 0x02;
    public static final int KIND_INCOMING_TEXT = 0x03;
    public static final int KIND_RECEIPT = 0x04;
    public static final int KIND_GET_HANDLES = 0x05;
    public static final int KIND_HANDLES = 0x06;
    public static final int KIND_CHECK_TARGETS = 0x07;
    public static final int KIND_TARGET_STATUS = 0x08;
    public static final int KIND_SEND_GROUP_TEXT = 0x09;
    /** Server to phone: setup state in {@code receiptKind}, detail in {@code text}. */
    public static final int KIND_SETUP_STATUS = 0x0A;
    /** Phone to server: MCC+MNC in {@code target}, phone number (optional) in {@code sender}. */
    public static final int KIND_SIM_INFO = 0x0B;
    /** Server to phone: gateway number in {@code target}, SMS text in {@code text}. */
    public static final int KIND_SEND_REG_SMS = 0x0C;
    /** Phone to server: Apple's REG-RESP in {@code text}. */
    public static final int KIND_REG_RESP = 0x0D;
    /** Phone to server: request current Apple registration / renewal status. */
    public static final int KIND_REG_INFO_REQ = 0x0E;
    /** Server to phone: Apple registration / renewal and built-in relay status. */
    public static final int KIND_REG_INFO = 0x0F;

    public static final int SETUP_READY = 0;
    public static final int SETUP_NEED_SIM = 1;
    public static final int SETUP_WORKING = 2;
    public static final int SETUP_WAITING_SMS = 3;
    public static final int SETUP_FAILED = 4;

    public static final int REG_STATE_OK = 0;
    public static final int REG_STATE_RENEWING = 1;
    public static final int REG_STATE_NEEDS_PHONE = 2;
    public static final int REG_STATE_FAILED = 3;

    public static final int RECEIPT_DELIVERED = 1;
    public static final int RECEIPT_READ = 2;

    public final int kind;
    public final String clientMsgId;
    public final String target;
    public final String text;
    public final String senderGuid;
    public final boolean ok;
    public final String appleMsgId;
    public final String error;
    public final String sender;
    public final List<String> participants;
    public final long timestampMs;
    public final int receiptKind;
    public final List<String> handles;
    public final String preferredHandle;
    public final String reqId;
    public final List<String> targets;
    public final List<String> registered;
    public final List<String> unregistered;
    public final long authExpiresAtMs;
    public final long nextReregAtMs;
    public final long renewAtMs;
    public final boolean providerConnected;
    public final int regState;

    private Body(
            int kind,
            String clientMsgId,
            String target,
            String text,
            String senderGuid,
            boolean ok,
            String appleMsgId,
            String error,
            String sender,
            List<String> participants,
            long timestampMs,
            int receiptKind,
            List<String> handles,
            String preferredHandle,
            String reqId,
            List<String> targets,
            List<String> registered,
            List<String> unregistered,
            long authExpiresAtMs,
            long nextReregAtMs,
            long renewAtMs,
            boolean providerConnected,
            int regState
    ) {
        this.kind = kind;
        this.clientMsgId = clientMsgId;
        this.target = target;
        this.text = text;
        this.senderGuid = senderGuid;
        this.ok = ok;
        this.appleMsgId = appleMsgId;
        this.error = error;
        this.sender = sender;
        this.participants = participants == null ? Collections.<String>emptyList() : Collections.unmodifiableList(participants);
        this.timestampMs = timestampMs;
        this.receiptKind = receiptKind;
        this.handles = handles == null ? Collections.<String>emptyList() : Collections.unmodifiableList(handles);
        this.preferredHandle = preferredHandle;
        this.reqId = reqId;
        this.targets = targets == null ? Collections.<String>emptyList() : Collections.unmodifiableList(targets);
        this.registered = registered == null ? Collections.<String>emptyList() : Collections.unmodifiableList(registered);
        this.unregistered = unregistered == null ? Collections.<String>emptyList() : Collections.unmodifiableList(unregistered);
        this.authExpiresAtMs = authExpiresAtMs;
        this.nextReregAtMs = nextReregAtMs;
        this.renewAtMs = renewAtMs;
        this.providerConnected = providerConnected;
        this.regState = regState;
    }

    public static Body sendText(String clientMsgId, String target, String text, String senderGuid) {
        return new Body(KIND_SEND_TEXT, clientMsgId, target, text, senderGuid, false, null, null, null, null, 0L, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body sendResult(String clientMsgId, boolean ok, String appleMsgId, String error) {
        return new Body(KIND_SEND_RESULT, clientMsgId, null, null, null, ok, appleMsgId, error, null, null, 0L, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body incomingText(String appleMsgId, String sender, List<String> participants, String senderGuid, long timestampMs, String text) {
        return new Body(KIND_INCOMING_TEXT, null, null, text, senderGuid, false, appleMsgId, null, sender, new ArrayList<String>(participants), timestampMs, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body receipt(int receiptKind, String appleMsgId, String sender, long timestampMs) {
        return new Body(KIND_RECEIPT, null, null, null, null, false, appleMsgId, null, sender, null, timestampMs, receiptKind, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body getHandles() {
        return new Body(KIND_GET_HANDLES, null, null, null, null, false, null, null, null, null, 0L, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body handles(List<String> handles, String preferred) {
        return new Body(KIND_HANDLES, null, null, null, null, false, null, null, null, null, 0L, 0, new ArrayList<String>(handles), preferred, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body checkTargets(String reqId, List<String> targets) {
        return new Body(KIND_CHECK_TARGETS, null, null, null, null, false, null, null, null, null, 0L, 0, null, null, reqId, new ArrayList<String>(targets), null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body targetStatus(String reqId, List<String> registered, List<String> unregistered) {
        return new Body(KIND_TARGET_STATUS, null, null, null, null, false, null, null, null, null, 0L, 0, null, null, reqId, null, new ArrayList<String>(registered), new ArrayList<String>(unregistered), 0L, 0L, 0L, false, 0);
    }

    public static Body setupStatus(int state, String detail) {
        return new Body(KIND_SETUP_STATUS, null, null, detail, null, false, null, null, null, null, 0L, state, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body simInfo(String mccmnc, String number) {
        return new Body(KIND_SIM_INFO, null, mccmnc, null, null, false, null, null, number, null, 0L, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body sendRegSms(String gateway, String text) {
        return new Body(KIND_SEND_REG_SMS, null, gateway, text, null, false, null, null, null, null, 0L, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body regResp(String text) {
        return new Body(KIND_REG_RESP, null, null, text, null, false, null, null, null, null, 0L, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body regInfoReq() {
        return new Body(KIND_REG_INFO_REQ, null, null, null, null, false, null, null, null, null, 0L, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public static Body regInfo(long authExpiresAtMs, long nextReregAtMs, long renewAtMs, boolean providerConnected, int state, String detail) {
        return new Body(KIND_REG_INFO, null, null, detail, null, false, null, null, null, null, 0L, 0, null, null, null, null, null, null, authExpiresAtMs, nextReregAtMs, renewAtMs, providerConnected, state);
    }

    public static Body sendGroupText(String clientMsgId, List<String> participants, String text, String senderGuid) {
        return new Body(KIND_SEND_GROUP_TEXT, clientMsgId, null, text, senderGuid, false, null, null, null, new ArrayList<String>(participants), 0L, 0, null, null, null, null, null, null, 0L, 0L, 0L, false, 0);
    }

    public byte[] encode() throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        DataOutputStream dos = new DataOutputStream(baos);
        dos.writeByte(kind);
        switch (kind) {
            case KIND_SEND_TEXT:
                writeStr(dos, clientMsgId);
                writeStr(dos, target);
                writeStr(dos, text);
                writeOptStr(dos, senderGuid);
                break;
            case KIND_SEND_RESULT:
                writeStr(dos, clientMsgId);
                dos.writeByte(ok ? 1 : 0);
                writeOptStr(dos, appleMsgId);
                writeOptStr(dos, error);
                break;
            case KIND_INCOMING_TEXT:
                writeStr(dos, appleMsgId);
                writeStr(dos, sender);
                writeStrList(dos, participants);
                writeOptStr(dos, senderGuid);
                dos.writeLong(timestampMs);
                writeStr(dos, text);
                break;
            case KIND_RECEIPT:
                dos.writeByte(receiptKind);
                writeStr(dos, appleMsgId);
                writeStr(dos, sender);
                dos.writeLong(timestampMs);
                break;
            case KIND_GET_HANDLES:
                break;
            case KIND_HANDLES:
                writeStrList(dos, handles);
                writeOptStr(dos, preferredHandle);
                break;
            case KIND_CHECK_TARGETS:
                writeStr(dos, reqId);
                writeStrList(dos, targets);
                break;
            case KIND_TARGET_STATUS:
                writeStr(dos, reqId);
                writeStrList(dos, registered);
                writeStrList(dos, unregistered);
                break;
            case KIND_SEND_GROUP_TEXT:
                writeStr(dos, clientMsgId);
                writeStrList(dos, participants);
                writeStr(dos, text);
                writeOptStr(dos, senderGuid);
                break;
            case KIND_SETUP_STATUS:
                dos.writeByte(receiptKind);
                writeStr(dos, text);
                break;
            case KIND_SIM_INFO:
                writeStr(dos, target);
                writeOptStr(dos, sender);
                break;
            case KIND_SEND_REG_SMS:
                writeStr(dos, target);
                writeStr(dos, text);
                break;
            case KIND_REG_RESP:
                writeStr(dos, text);
                break;
            case KIND_REG_INFO_REQ:
                break;
            case KIND_REG_INFO:
                dos.writeLong(authExpiresAtMs);
                dos.writeLong(nextReregAtMs);
                dos.writeLong(renewAtMs);
                dos.writeByte(providerConnected ? 1 : 0);
                dos.writeByte(regState);
                writeStr(dos, text);
                break;
            default:
                throw new IOException("Unknown body kind: " + kind);
        }
        dos.flush();
        return baos.toByteArray();
    }

    public static Body decode(byte[] data) throws IOException {
        ByteArrayInputStream bais = new ByteArrayInputStream(data);
        DataInputStream dis = new DataInputStream(bais);
        int kind = dis.readUnsignedByte();
        Body body;
        switch (kind) {
            case KIND_SEND_TEXT: {
                String clientMsgId = readStr(dis);
                String target = readStr(dis);
                String text = readStr(dis);
                String senderGuid = readOptStr(dis);
                body = sendText(clientMsgId, target, text, senderGuid);
                break;
            }
            case KIND_SEND_RESULT: {
                String clientMsgId = readStr(dis);
                int okByte = dis.readUnsignedByte();
                if (okByte != 0 && okByte != 1) {
                    throw new IOException("Invalid bool tag: " + okByte);
                }
                String appleMsgId = readOptStr(dis);
                String error = readOptStr(dis);
                body = sendResult(clientMsgId, okByte == 1, appleMsgId, error);
                break;
            }
            case KIND_INCOMING_TEXT: {
                String appleMsgId = readStr(dis);
                String sender = readStr(dis);
                List<String> participants = readStrList(dis);
                String senderGuid = readOptStr(dis);
                long timestampMs = dis.readLong();
                String text = readStr(dis);
                body = incomingText(appleMsgId, sender, participants, senderGuid, timestampMs, text);
                break;
            }
            case KIND_RECEIPT: {
                int receiptKind = dis.readUnsignedByte();
                String appleMsgId = readStr(dis);
                String sender = readStr(dis);
                long timestampMs = dis.readLong();
                body = receipt(receiptKind, appleMsgId, sender, timestampMs);
                break;
            }
            case KIND_GET_HANDLES:
                body = getHandles();
                break;
            case KIND_HANDLES: {
                List<String> handles = readStrList(dis);
                String preferred = readOptStr(dis);
                body = handles(handles, preferred);
                break;
            }
            case KIND_CHECK_TARGETS: {
                String reqId = readStr(dis);
                List<String> targets = readStrList(dis);
                body = checkTargets(reqId, targets);
                break;
            }
            case KIND_TARGET_STATUS: {
                String reqId = readStr(dis);
                List<String> registered = readStrList(dis);
                List<String> unregistered = readStrList(dis);
                body = targetStatus(reqId, registered, unregistered);
                break;
            }
            case KIND_SEND_GROUP_TEXT: {
                String clientMsgId = readStr(dis);
                List<String> participants = readStrList(dis);
                String text = readStr(dis);
                String senderGuid = readOptStr(dis);
                body = sendGroupText(clientMsgId, participants, text, senderGuid);
                break;
            }
            case KIND_SETUP_STATUS: {
                int state = dis.readUnsignedByte();
                body = setupStatus(state, readStr(dis));
                break;
            }
            case KIND_SIM_INFO: {
                String mccmnc = readStr(dis);
                body = simInfo(mccmnc, readOptStr(dis));
                break;
            }
            case KIND_SEND_REG_SMS: {
                String gateway = readStr(dis);
                body = sendRegSms(gateway, readStr(dis));
                break;
            }
            case KIND_REG_RESP:
                body = regResp(readStr(dis));
                break;
            case KIND_REG_INFO_REQ:
                body = regInfoReq();
                break;
            case KIND_REG_INFO: {
                long authExpires = dis.readLong();
                long nextRereg = dis.readLong();
                long renewAt = dis.readLong();
                int provByte = dis.readUnsignedByte();
                if (provByte != 0 && provByte != 1) {
                    throw new IOException("Invalid bool tag: " + provByte);
                }
                int st = dis.readUnsignedByte();
                String detail = readStr(dis);
                body = regInfo(authExpires, nextRereg, renewAt, provByte == 1, st, detail);
                break;
            }
            default:
                throw new IOException("Unknown body kind: 0x" + Integer.toHexString(kind));
        }
        if (bais.available() != 0) {
            throw new IOException("Trailing bytes in body: " + bais.available());
        }
        return body;
    }

    private static void writeStr(DataOutputStream dos, String s) throws IOException {
        byte[] bytes = (s == null ? "" : s).getBytes(StandardCharsets.UTF_8);
        if (bytes.length > 65535) {
            throw new IOException("String too long: " + bytes.length);
        }
        dos.writeShort(bytes.length);
        dos.write(bytes);
    }

    private static void writeOptStr(DataOutputStream dos, String s) throws IOException {
        if (s == null) {
            dos.writeByte(0);
        } else {
            dos.writeByte(1);
            writeStr(dos, s);
        }
    }

    private static void writeStrList(DataOutputStream dos, List<String> items) throws IOException {
        if (items.size() > 65535) {
            throw new IOException("String list too long: " + items.size());
        }
        dos.writeShort(items.size());
        for (String item : items) {
            writeStr(dos, item);
        }
    }

    private static String readStr(DataInputStream dis) throws IOException {
        int len = dis.readUnsignedShort();
        byte[] buf = new byte[len];
        if (len > 0) {
            dis.readFully(buf);
        }
        return new String(buf, StandardCharsets.UTF_8);
    }

    private static String readOptStr(DataInputStream dis) throws IOException {
        int tag = dis.readUnsignedByte();
        if (tag == 0) {
            return null;
        } else if (tag == 1) {
            return readStr(dis);
        } else {
            throw new IOException("Invalid option tag: " + tag);
        }
    }

    private static List<String> readStrList(DataInputStream dis) throws IOException {
        int count = dis.readUnsignedShort();
        List<String> list = new ArrayList<String>(Math.min(count, 256));
        for (int i = 0; i < count; i++) {
            list.add(readStr(dis));
        }
        return list;
    }

    @Override
    public String toString() {
        switch (kind) {
            case KIND_SETUP_STATUS:
                return "SETUP_STATUS(state=" + receiptKind + ", detail=" + text + ")";
            case KIND_SIM_INFO:
                return "SIM_INFO(mccmnc=" + target + ")";
            case KIND_SEND_REG_SMS:
                return "SEND_REG_SMS(gateway=" + target + ")";
            case KIND_REG_RESP:
                return "REG_RESP(len=" + (text == null ? 0 : text.length()) + ")";
            case KIND_REG_INFO_REQ:
                return "REG_INFO_REQ";
            case KIND_REG_INFO:
                return "REG_INFO(state=" + regState + ", provider=" + providerConnected + ", renewAtMs=" + renewAtMs + ", authExpMs=" + authExpiresAtMs + ")";
            case KIND_SEND_TEXT:
                return "SEND_TEXT(id=" + clientMsgId + ", target=" + target + ", len=" + (text == null ? 0 : text.length()) + ")";
            case KIND_SEND_RESULT:
                return "SEND_RESULT(id=" + clientMsgId + ", ok=" + ok + ", appleId=" + appleMsgId + ", err=" + error + ")";
            case KIND_INCOMING_TEXT:
                return "INCOMING_TEXT(appleId=" + appleMsgId + ", from=" + sender + ", participants=" + participants.size() + ")";
            case KIND_RECEIPT:
                return "RECEIPT(kind=" + receiptKind + ", appleId=" + appleMsgId + ", from=" + sender + ")";
            case KIND_GET_HANDLES:
                return "GET_HANDLES";
            case KIND_HANDLES:
                return "HANDLES(count=" + handles.size() + ", preferred=" + preferredHandle + ")";
            case KIND_CHECK_TARGETS:
                return "CHECK_TARGETS(reqId=" + reqId + ", count=" + targets.size() + ")";
            case KIND_TARGET_STATUS:
                return "TARGET_STATUS(reqId=" + reqId + ", reg=" + registered.size() + ", unreg=" + unregistered.size() + ")";
            case KIND_SEND_GROUP_TEXT:
                return "SEND_GROUP_TEXT(id=" + clientMsgId + ", participants=" + participants.size() + ")";
            default:
                return "BODY(kind=" + kind + ")";
        }
    }
}
