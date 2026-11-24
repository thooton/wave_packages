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
 * Compact binary application body format carried inside MSG frames (protocol v2).
 * Matches imsg-server's src/body.rs byte-for-byte. Fields a kind doesn't use stay null / 0.
 */
public final class Body {
    /** Phone to server: a message to {@code participants} (one for a 1:1 chat). */
    public static final int KIND_SEND_MESSAGE = 0x01;
    public static final int KIND_SEND_RESULT = 0x02;
    /** Server to phone: a message, with media to fetch over a media connection. */
    public static final int KIND_INCOMING_MESSAGE = 0x03;
    public static final int KIND_RECEIPT = 0x04;
    public static final int KIND_GET_HANDLES = 0x05;
    public static final int KIND_HANDLES = 0x06;
    public static final int KIND_CHECK_TARGETS = 0x07;
    public static final int KIND_TARGET_STATUS = 0x08;
    /** Phone to server: add or remove a tapback. */
    public static final int KIND_SEND_REACTION = 0x09;
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
    /** Server to phone: a tapback was added or removed on {@code targetId}. */
    public static final int KIND_REACTION = 0x10;
    /** Server to phone: {@code targetId} now reads {@code text}. */
    public static final int KIND_EDIT = 0x11;
    /** Server to phone: {@code targetId} was unsent. */
    public static final int KIND_UNSEND = 0x12;
    /** Server to phone: a group was renamed, changed members or changed its photo. */
    public static final int KIND_GROUP_EVENT = 0x13;
    /** Phone to server: replace the text (part {@code part}) of our own message {@code targetId}. */
    public static final int KIND_SEND_EDIT = 0x14;
    /** Phone to server: take back our own message {@code targetId} ({@code part} = its part count). */
    public static final int KIND_SEND_UNSEND = 0x15;

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

    public static final int ATTACH_IMAGE = 1;
    public static final int ATTACH_VIDEO = 2;
    public static final int ATTACH_AUDIO = 3;
    public static final int ATTACH_VOICE = 4;
    public static final int ATTACH_VCARD = 5;
    public static final int ATTACH_FILE = 6;
    public static final int ATTACH_STICKER = 7;

    public static final int REACT_HEART = 0;
    public static final int REACT_LIKE = 1;
    public static final int REACT_DISLIKE = 2;
    public static final int REACT_LAUGH = 3;
    public static final int REACT_EMPHASIZE = 4;
    public static final int REACT_QUESTION = 5;
    public static final int REACT_EMOJI = 6;
    public static final int REACT_STICKER = 7;

    public static final int GROUP_RENAMED = 1;
    public static final int GROUP_PARTICIPANTS = 2;
    public static final int GROUP_ICON = 3;

    /** An attachment of an incoming message (MEDIA_GET {@code mediaId}). */
    public static final class InAttachment {
        public final String mediaId;
        public final int kind;
        public final String name;
        public final long size;

        public InAttachment(String mediaId, int kind, String name, long size) {
            this.mediaId = mediaId;
            this.kind = kind;
            this.name = name;
            this.size = size;
        }
    }

    /** An upload (MEDIA_PUT {@code uploadId}) to attach to an outgoing message. */
    public static final class OutAttachment {
        public final String uploadId;
        public final String name;
        public final String mime;

        public OutAttachment(String uploadId, String name, String mime) {
            this.uploadId = uploadId;
            this.name = name;
            this.mime = mime;
        }
    }

    public final int kind;
    public String clientMsgId;
    public String target;
    public String text;
    public String senderGuid;
    public boolean ok;
    public String appleMsgId;
    public String error;
    public String sender;
    public List<String> participants = Collections.emptyList();
    public long timestampMs;
    public int receiptKind;
    public List<String> handles = Collections.emptyList();
    public String preferredHandle;
    public String reqId;
    public List<String> targets = Collections.emptyList();
    public List<String> registered = Collections.emptyList();
    public List<String> unregistered = Collections.emptyList();
    public long authExpiresAtMs;
    public long nextReregAtMs;
    public long renewAtMs;
    public boolean providerConnected;
    public int regState;
    /** INCOMING_MESSAGE: the message this one replies to. */
    public String replyTo;
    public List<InAttachment> attachments = Collections.emptyList();
    public List<OutAttachment> outAttachments = Collections.emptyList();
    /** REACTION / SEND_REACTION / EDIT / UNSEND: the message acted on. */
    public String targetId;
    public int reaction;
    /** SEND_EDIT: index of the text part; SEND_UNSEND: how many parts the message has. */
    public int part;
    public String emoji;
    public boolean enable;
    /** GROUP_EVENT: GROUP_RENAMED / GROUP_PARTICIPANTS / GROUP_ICON. */
    public int event;
    /** GROUP_EVENT: the new name ("" when removed, "set" for an icon). */
    public String name;
    public List<String> newParticipants = Collections.emptyList();

    private Body(int kind) {
        this.kind = kind;
    }

    private static <T> List<T> copy(List<T> in) {
        return in == null ? Collections.<T>emptyList() : Collections.unmodifiableList(new ArrayList<T>(in));
    }

    public static Body sendMessage(String clientMsgId, List<String> participants, String text, String senderGuid,
                                   List<OutAttachment> attachments) {
        Body b = new Body(KIND_SEND_MESSAGE);
        b.clientMsgId = clientMsgId;
        b.participants = copy(participants);
        b.text = text == null ? "" : text;
        b.senderGuid = senderGuid;
        b.outAttachments = copy(attachments);
        return b;
    }

    public static Body sendResult(String clientMsgId, boolean ok, String appleMsgId, String error) {
        Body b = new Body(KIND_SEND_RESULT);
        b.clientMsgId = clientMsgId;
        b.ok = ok;
        b.appleMsgId = appleMsgId;
        b.error = error;
        return b;
    }

    public static Body incomingMessage(String appleMsgId, String sender, List<String> participants, String senderGuid,
                                       long timestampMs, String text, String replyTo, List<InAttachment> attachments) {
        Body b = new Body(KIND_INCOMING_MESSAGE);
        b.appleMsgId = appleMsgId;
        b.sender = sender;
        b.participants = copy(participants);
        b.senderGuid = senderGuid;
        b.timestampMs = timestampMs;
        b.text = text;
        b.replyTo = replyTo;
        b.attachments = copy(attachments);
        return b;
    }

    public static Body receipt(int receiptKind, String appleMsgId, String sender, long timestampMs) {
        Body b = new Body(KIND_RECEIPT);
        b.receiptKind = receiptKind;
        b.appleMsgId = appleMsgId;
        b.sender = sender;
        b.timestampMs = timestampMs;
        return b;
    }

    public static Body getHandles() {
        return new Body(KIND_GET_HANDLES);
    }

    public static Body handles(List<String> handles, String preferred) {
        Body b = new Body(KIND_HANDLES);
        b.handles = copy(handles);
        b.preferredHandle = preferred;
        return b;
    }

    public static Body checkTargets(String reqId, List<String> targets) {
        Body b = new Body(KIND_CHECK_TARGETS);
        b.reqId = reqId;
        b.targets = copy(targets);
        return b;
    }

    public static Body targetStatus(String reqId, List<String> registered, List<String> unregistered) {
        Body b = new Body(KIND_TARGET_STATUS);
        b.reqId = reqId;
        b.registered = copy(registered);
        b.unregistered = copy(unregistered);
        return b;
    }

    public static Body sendReaction(String clientMsgId, List<String> participants, String senderGuid,
                                    String targetId, int reaction, String emoji, boolean enable, String targetText) {
        Body b = new Body(KIND_SEND_REACTION);
        b.clientMsgId = clientMsgId;
        b.participants = copy(participants);
        b.senderGuid = senderGuid;
        b.targetId = targetId;
        b.reaction = reaction;
        b.emoji = emoji;
        b.enable = enable;
        b.text = targetText == null ? "" : targetText;
        return b;
    }

    public static Body sendEdit(String clientMsgId, List<String> participants, String senderGuid, String targetId,
                                int part, String text) {
        Body b = new Body(KIND_SEND_EDIT);
        b.clientMsgId = clientMsgId;
        b.participants = copy(participants);
        b.senderGuid = senderGuid;
        b.targetId = targetId;
        b.part = part;
        b.text = text == null ? "" : text;
        return b;
    }

    public static Body sendUnsend(String clientMsgId, List<String> participants, String senderGuid, String targetId,
                                  int parts) {
        Body b = new Body(KIND_SEND_UNSEND);
        b.clientMsgId = clientMsgId;
        b.participants = copy(participants);
        b.senderGuid = senderGuid;
        b.targetId = targetId;
        b.part = parts;
        return b;
    }

    public static Body setupStatus(int state, String detail) {
        Body b = new Body(KIND_SETUP_STATUS);
        b.receiptKind = state;
        b.text = detail;
        return b;
    }

    public static Body simInfo(String mccmnc, String number) {
        Body b = new Body(KIND_SIM_INFO);
        b.target = mccmnc;
        b.sender = number;
        return b;
    }

    public static Body sendRegSms(String gateway, String text) {
        Body b = new Body(KIND_SEND_REG_SMS);
        b.target = gateway;
        b.text = text;
        return b;
    }

    public static Body regResp(String text) {
        Body b = new Body(KIND_REG_RESP);
        b.text = text;
        return b;
    }

    public static Body regInfoReq() {
        return new Body(KIND_REG_INFO_REQ);
    }

    public static Body regInfo(long authExpiresAtMs, long nextReregAtMs, long renewAtMs, boolean providerConnected,
                               int state, String detail) {
        Body b = new Body(KIND_REG_INFO);
        b.authExpiresAtMs = authExpiresAtMs;
        b.nextReregAtMs = nextReregAtMs;
        b.renewAtMs = renewAtMs;
        b.providerConnected = providerConnected;
        b.regState = state;
        b.text = detail;
        return b;
    }

    public static Body reaction(String appleMsgId, String sender, List<String> participants, String senderGuid,
                                long timestampMs, String targetId, int reaction, String emoji, boolean enable) {
        Body b = new Body(KIND_REACTION);
        b.appleMsgId = appleMsgId;
        b.sender = sender;
        b.participants = copy(participants);
        b.senderGuid = senderGuid;
        b.timestampMs = timestampMs;
        b.targetId = targetId;
        b.reaction = reaction;
        b.emoji = emoji;
        b.enable = enable;
        return b;
    }

    public static Body edit(String appleMsgId, String sender, long timestampMs, String targetId, String text) {
        Body b = new Body(KIND_EDIT);
        b.appleMsgId = appleMsgId;
        b.sender = sender;
        b.timestampMs = timestampMs;
        b.targetId = targetId;
        b.text = text;
        return b;
    }

    public static Body unsend(String appleMsgId, String sender, long timestampMs, String targetId) {
        Body b = new Body(KIND_UNSEND);
        b.appleMsgId = appleMsgId;
        b.sender = sender;
        b.timestampMs = timestampMs;
        b.targetId = targetId;
        return b;
    }

    public static Body groupEvent(String appleMsgId, String sender, List<String> participants, String senderGuid,
                                  long timestampMs, int event, String name, List<String> newParticipants) {
        Body b = new Body(KIND_GROUP_EVENT);
        b.appleMsgId = appleMsgId;
        b.sender = sender;
        b.participants = copy(participants);
        b.senderGuid = senderGuid;
        b.timestampMs = timestampMs;
        b.event = event;
        b.name = name == null ? "" : name;
        b.newParticipants = copy(newParticipants);
        return b;
    }

    public byte[] encode() throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        DataOutputStream dos = new DataOutputStream(baos);
        dos.writeByte(kind);
        switch (kind) {
            case KIND_SEND_MESSAGE:
                writeStr(dos, clientMsgId);
                writeStrList(dos, participants);
                writeOptStr(dos, senderGuid);
                writeText(dos, text);
                writeCount(dos, outAttachments.size());
                for (OutAttachment a : outAttachments) {
                    writeStr(dos, a.uploadId);
                    writeStr(dos, a.name);
                    writeStr(dos, a.mime);
                }
                break;
            case KIND_SEND_RESULT:
                writeStr(dos, clientMsgId);
                dos.writeByte(ok ? 1 : 0);
                writeOptStr(dos, appleMsgId);
                writeOptStr(dos, error);
                break;
            case KIND_INCOMING_MESSAGE:
                writeStr(dos, appleMsgId);
                writeStr(dos, sender);
                writeStrList(dos, participants);
                writeOptStr(dos, senderGuid);
                dos.writeLong(timestampMs);
                writeText(dos, text);
                writeOptStr(dos, replyTo);
                writeCount(dos, attachments.size());
                for (InAttachment a : attachments) {
                    writeStr(dos, a.mediaId);
                    dos.writeByte(a.kind);
                    writeStr(dos, a.name);
                    dos.writeLong(a.size);
                }
                break;
            case KIND_RECEIPT:
                dos.writeByte(receiptKind);
                writeStr(dos, appleMsgId);
                writeStr(dos, sender);
                dos.writeLong(timestampMs);
                break;
            case KIND_GET_HANDLES:
            case KIND_REG_INFO_REQ:
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
            case KIND_SEND_REACTION:
                writeStr(dos, clientMsgId);
                writeStrList(dos, participants);
                writeOptStr(dos, senderGuid);
                writeStr(dos, targetId);
                dos.writeByte(reaction);
                writeOptStr(dos, emoji);
                dos.writeByte(enable ? 1 : 0);
                writeText(dos, text);
                break;
            case KIND_SEND_EDIT:
                writeStr(dos, clientMsgId);
                writeStrList(dos, participants);
                writeOptStr(dos, senderGuid);
                writeStr(dos, targetId);
                dos.writeByte(part);
                writeText(dos, text);
                break;
            case KIND_SEND_UNSEND:
                writeStr(dos, clientMsgId);
                writeStrList(dos, participants);
                writeOptStr(dos, senderGuid);
                writeStr(dos, targetId);
                dos.writeByte(part);
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
            case KIND_REG_INFO:
                dos.writeLong(authExpiresAtMs);
                dos.writeLong(nextReregAtMs);
                dos.writeLong(renewAtMs);
                dos.writeByte(providerConnected ? 1 : 0);
                dos.writeByte(regState);
                writeStr(dos, text);
                break;
            case KIND_REACTION:
                writeStr(dos, appleMsgId);
                writeStr(dos, sender);
                writeStrList(dos, participants);
                writeOptStr(dos, senderGuid);
                dos.writeLong(timestampMs);
                writeStr(dos, targetId);
                dos.writeByte(reaction);
                writeOptStr(dos, emoji);
                dos.writeByte(enable ? 1 : 0);
                break;
            case KIND_EDIT:
                writeStr(dos, appleMsgId);
                writeStr(dos, sender);
                dos.writeLong(timestampMs);
                writeStr(dos, targetId);
                writeText(dos, text);
                break;
            case KIND_UNSEND:
                writeStr(dos, appleMsgId);
                writeStr(dos, sender);
                dos.writeLong(timestampMs);
                writeStr(dos, targetId);
                break;
            case KIND_GROUP_EVENT:
                writeStr(dos, appleMsgId);
                writeStr(dos, sender);
                writeStrList(dos, participants);
                writeOptStr(dos, senderGuid);
                dos.writeLong(timestampMs);
                dos.writeByte(event);
                writeStr(dos, name);
                writeStrList(dos, newParticipants);
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
            case KIND_SEND_MESSAGE: {
                String clientMsgId = readStr(dis);
                List<String> participants = readStrList(dis);
                String senderGuid = readOptStr(dis);
                String text = readText(dis);
                int n = dis.readUnsignedShort();
                List<OutAttachment> atts = new ArrayList<OutAttachment>(Math.min(n, 64));
                for (int i = 0; i < n; i++) {
                    atts.add(new OutAttachment(readStr(dis), readStr(dis), readStr(dis)));
                }
                body = sendMessage(clientMsgId, participants, text, senderGuid, atts);
                break;
            }
            case KIND_SEND_RESULT: {
                String clientMsgId = readStr(dis);
                boolean ok = readBool(dis);
                String appleMsgId = readOptStr(dis);
                String error = readOptStr(dis);
                body = sendResult(clientMsgId, ok, appleMsgId, error);
                break;
            }
            case KIND_INCOMING_MESSAGE: {
                String appleMsgId = readStr(dis);
                String sender = readStr(dis);
                List<String> participants = readStrList(dis);
                String senderGuid = readOptStr(dis);
                long timestampMs = dis.readLong();
                String text = readText(dis);
                String replyTo = readOptStr(dis);
                int n = dis.readUnsignedShort();
                List<InAttachment> atts = new ArrayList<InAttachment>(Math.min(n, 64));
                for (int i = 0; i < n; i++) {
                    String id = readStr(dis);
                    int k = dis.readUnsignedByte();
                    String name = readStr(dis);
                    long size = dis.readLong();
                    atts.add(new InAttachment(id, k, name, size));
                }
                body = incomingMessage(appleMsgId, sender, participants, senderGuid, timestampMs, text, replyTo, atts);
                break;
            }
            case KIND_RECEIPT: {
                int receiptKind = dis.readUnsignedByte();
                String appleMsgId = readStr(dis);
                String sender = readStr(dis);
                body = receipt(receiptKind, appleMsgId, sender, dis.readLong());
                break;
            }
            case KIND_GET_HANDLES:
                body = getHandles();
                break;
            case KIND_HANDLES: {
                List<String> handles = readStrList(dis);
                body = handles(handles, readOptStr(dis));
                break;
            }
            case KIND_CHECK_TARGETS: {
                String reqId = readStr(dis);
                body = checkTargets(reqId, readStrList(dis));
                break;
            }
            case KIND_TARGET_STATUS: {
                String reqId = readStr(dis);
                List<String> registered = readStrList(dis);
                body = targetStatus(reqId, registered, readStrList(dis));
                break;
            }
            case KIND_SEND_REACTION: {
                String clientMsgId = readStr(dis);
                List<String> participants = readStrList(dis);
                String senderGuid = readOptStr(dis);
                String targetId = readStr(dis);
                int reaction = dis.readUnsignedByte();
                String emoji = readOptStr(dis);
                boolean enable = readBool(dis);
                String targetText = readText(dis);
                body = sendReaction(clientMsgId, participants, senderGuid, targetId, reaction, emoji, enable, targetText);
                break;
            }
            case KIND_SEND_EDIT: {
                String clientMsgId = readStr(dis);
                List<String> participants = readStrList(dis);
                String senderGuid = readOptStr(dis);
                String targetId = readStr(dis);
                int part = dis.readUnsignedByte();
                body = sendEdit(clientMsgId, participants, senderGuid, targetId, part, readText(dis));
                break;
            }
            case KIND_SEND_UNSEND: {
                String clientMsgId = readStr(dis);
                List<String> participants = readStrList(dis);
                String senderGuid = readOptStr(dis);
                String targetId = readStr(dis);
                body = sendUnsend(clientMsgId, participants, senderGuid, targetId, dis.readUnsignedByte());
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
                boolean prov = readBool(dis);
                int st = dis.readUnsignedByte();
                body = regInfo(authExpires, nextRereg, renewAt, prov, st, readStr(dis));
                break;
            }
            case KIND_REACTION: {
                String appleMsgId = readStr(dis);
                String sender = readStr(dis);
                List<String> participants = readStrList(dis);
                String senderGuid = readOptStr(dis);
                long ts = dis.readLong();
                String targetId = readStr(dis);
                int reaction = dis.readUnsignedByte();
                String emoji = readOptStr(dis);
                boolean enable = readBool(dis);
                body = reaction(appleMsgId, sender, participants, senderGuid, ts, targetId, reaction, emoji, enable);
                break;
            }
            case KIND_EDIT: {
                String appleMsgId = readStr(dis);
                String sender = readStr(dis);
                long ts = dis.readLong();
                String targetId = readStr(dis);
                body = edit(appleMsgId, sender, ts, targetId, readText(dis));
                break;
            }
            case KIND_UNSEND: {
                String appleMsgId = readStr(dis);
                String sender = readStr(dis);
                long ts = dis.readLong();
                body = unsend(appleMsgId, sender, ts, readStr(dis));
                break;
            }
            case KIND_GROUP_EVENT: {
                String appleMsgId = readStr(dis);
                String sender = readStr(dis);
                List<String> participants = readStrList(dis);
                String senderGuid = readOptStr(dis);
                long ts = dis.readLong();
                int event = dis.readUnsignedByte();
                String name = readStr(dis);
                List<String> newParticipants = readStrList(dis);
                body = groupEvent(appleMsgId, sender, participants, senderGuid, ts, event, name, newParticipants);
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

    private static boolean readBool(DataInputStream dis) throws IOException {
        int b = dis.readUnsignedByte();
        if (b != 0 && b != 1) throw new IOException("Invalid bool tag: " + b);
        return b == 1;
    }

    private static void writeCount(DataOutputStream dos, int n) throws IOException {
        if (n > 65535) throw new IOException("List too long: " + n);
        dos.writeShort(n);
    }

    private static void writeStr(DataOutputStream dos, String s) throws IOException {
        byte[] bytes = (s == null ? "" : s).getBytes(StandardCharsets.UTF_8);
        if (bytes.length > 65535) {
            throw new IOException("String too long: " + bytes.length);
        }
        dos.writeShort(bytes.length);
        dos.write(bytes);
    }

    /** Message text: 32-bit length. */
    private static void writeText(DataOutputStream dos, String s) throws IOException {
        byte[] bytes = (s == null ? "" : s).getBytes(StandardCharsets.UTF_8);
        if (bytes.length > Frame.MAX_MSG_BODY_LEN / 2) {
            throw new IOException("Text too long: " + bytes.length);
        }
        dos.writeInt(bytes.length);
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
        writeCount(dos, items.size());
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

    private static String readText(DataInputStream dis) throws IOException {
        int len = dis.readInt();
        if (len < 0 || len > Frame.MAX_MSG_BODY_LEN) throw new IOException("Bad text length: " + len);
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

    private static int len(String s) {
        return s == null ? 0 : s.length();
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
                return "REG_RESP(len=" + len(text) + ")";
            case KIND_REG_INFO_REQ:
                return "REG_INFO_REQ";
            case KIND_REG_INFO:
                return "REG_INFO(state=" + regState + ", provider=" + providerConnected + ", renewAtMs=" + renewAtMs
                        + ", authExpMs=" + authExpiresAtMs + ")";
            case KIND_SEND_MESSAGE:
                return "SEND_MESSAGE(id=" + clientMsgId + ", to=" + participants.size() + ", len=" + len(text)
                        + ", attachments=" + outAttachments.size() + ")";
            case KIND_SEND_RESULT:
                return "SEND_RESULT(id=" + clientMsgId + ", ok=" + ok + ", appleId=" + appleMsgId + ", err=" + error + ")";
            case KIND_INCOMING_MESSAGE:
                return "INCOMING_MESSAGE(appleId=" + appleMsgId + ", from=" + sender + ", participants="
                        + participants.size() + ", attachments=" + attachments.size() + ", reply=" + (replyTo != null) + ")";
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
            case KIND_SEND_REACTION:
                return "SEND_REACTION(id=" + clientMsgId + ", on=" + targetId + ", kind=" + reaction + ", enable=" + enable + ")";
            case KIND_SEND_EDIT:
                return "SEND_EDIT(id=" + clientMsgId + ", on=" + targetId + ", part=" + part + ", len=" + len(text) + ")";
            case KIND_SEND_UNSEND:
                return "SEND_UNSEND(id=" + clientMsgId + ", on=" + targetId + ", parts=" + part + ")";
            case KIND_REACTION:
                return "REACTION(appleId=" + appleMsgId + ", from=" + sender + ", on=" + targetId + ", kind=" + reaction
                        + ", enable=" + enable + ")";
            case KIND_EDIT:
                return "EDIT(appleId=" + appleMsgId + ", on=" + targetId + ", len=" + len(text) + ")";
            case KIND_UNSEND:
                return "UNSEND(appleId=" + appleMsgId + ", on=" + targetId + ")";
            case KIND_GROUP_EVENT:
                return "GROUP_EVENT(appleId=" + appleMsgId + ", event=" + event + ", members=" + newParticipants.size() + ")";
            default:
                return "BODY(kind=" + kind + ")";
        }
    }
}
