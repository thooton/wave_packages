package com.android.mms.wave.imsg;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

/**
 * Push protocol v2 wire framing (matches imsg-server's src/proto.rs).
 * Frame format (all integers big-endian): | type: u8 | length: u32 | payload |
 */
public final class Frame {
    public static final int PROTOCOL_VERSION = 2;

    public static final int ROLE_MAIN = 0;
    public static final int ROLE_PROBE = 1;
    /** HELLO token is a one-time pairing code; the server answers with PAIRED. */
    public static final int ROLE_PAIR = 2;
    /** Short-lived connection for attachment downloads (MEDIA_GET) and uploads (MEDIA_PUT). */
    public static final int ROLE_MEDIA = 3;

    public static final int TYPE_HELLO = 0x01;
    public static final int TYPE_WELCOME = 0x02;
    public static final int TYPE_MSG = 0x03;
    public static final int TYPE_ACK = 0x04;
    public static final int TYPE_PING = 0x05;
    public static final int TYPE_PONG = 0x06;
    public static final int TYPE_SET_INTERVAL = 0x07;
    public static final int TYPE_BYE = 0x08;
    public static final int TYPE_PAIRED = 0x09;
    public static final int TYPE_MEDIA_GET = 0x0A;
    public static final int TYPE_MEDIA_DATA = 0x0B;
    public static final int TYPE_MEDIA_PUT = 0x0C;
    public static final int TYPE_MEDIA_PUT_ACK = 0x0D;
    public static final int TYPE_MEDIA_ERR = 0x0E;

    public static final int BYE_NORMAL = 0x00;
    public static final int BYE_REPLACED = 0x01;
    public static final int BYE_AUTH_FAILED = 0x02;
    public static final int BYE_BAD_VERSION = 0x03;
    public static final int BYE_PROTOCOL_ERROR = 0x04;
    public static final int BYE_SERVER_SHUTDOWN = 0x05;

    public static final int FALLBACK_INTERVAL_S = 60;
    public static final int PONG_TIMEOUT_S = 10;
    public static final int ACK_TIMEOUT_S = 5;
    public static final int PROBE_CAP_S = 60 * 60;
    public static final long PROBE_PERIOD_MS = 7L * 24L * 60L * 60L * 1000L;
    public static final double SAFETY_FACTOR = 0.8;

    public static final int HEADER_LEN = 5;
    public static final int MAX_PAYLOAD_LEN = 4 * 1024 * 1024;
    public static final int MAX_MSG_BODY_LEN = MAX_PAYLOAD_LEN - 8;
    /** File bytes per MEDIA_DATA / MEDIA_PUT frame. */
    public static final int MEDIA_CHUNK_LEN = 256 * 1024;

    public final int type;
    public final int version;
    public final int role;
    public final byte[] token;
    public final long seq;
    public final int intervalS;
    public final byte[] body;
    public final int nonce;
    public final int reason;

    /** Media frames: attachment / upload id, MIME type, file name, error message. */
    public String mediaId;
    public String mime;
    public String name;
    public String message;
    /** Media frames: byte offset of {@code body}, total file length, preview or full size. */
    public long offset;
    public long total;
    public boolean full;

    private Frame(
            int type,
            int version,
            int role,
            byte[] token,
            long seq,
            int intervalS,
            byte[] body,
            int nonce,
            int reason
    ) {
        this.type = type;
        this.version = version;
        this.role = role;
        this.token = token;
        this.seq = seq;
        this.intervalS = intervalS;
        this.body = body;
        this.nonce = nonce;
        this.reason = reason;
    }

    public static Frame hello(int role, String tokenHex, long lastRxSeq, int intervalS) {
        byte[] tokenBytes = tokenHex.getBytes(StandardCharsets.US_ASCII);
        return new Frame(TYPE_HELLO, PROTOCOL_VERSION, role, tokenBytes, lastRxSeq, intervalS, null, 0, 0);
    }

    public static Frame welcome(long lastRxSeq) {
        return new Frame(TYPE_WELCOME, 0, 0, null, lastRxSeq, 0, null, 0, 0);
    }

    public static Frame msg(long seq, byte[] body) {
        return new Frame(TYPE_MSG, 0, 0, null, seq, 0, body, 0, 0);
    }

    public static Frame ack(long seq) {
        return new Frame(TYPE_ACK, 0, 0, null, seq, 0, null, 0, 0);
    }

    public static Frame ping(int nonce) {
        return new Frame(TYPE_PING, 0, 0, null, 0, 0, null, nonce, 0);
    }

    public static Frame pong(int nonce) {
        return new Frame(TYPE_PONG, 0, 0, null, 0, 0, null, nonce, 0);
    }

    public static Frame setInterval(int intervalS) {
        return new Frame(TYPE_SET_INTERVAL, 0, 0, null, 0, intervalS, null, 0, 0);
    }

    public static Frame bye(int reason) {
        return new Frame(TYPE_BYE, 0, 0, null, 0, 0, null, 0, reason);
    }

    /** PAIRED (server reply to ROLE_PAIR): client id in {@code body}, wire token in {@code token}. */
    public static Frame paired(String clientId, String tokenHex) {
        return new Frame(TYPE_PAIRED, 0, 0, tokenHex.getBytes(StandardCharsets.US_ASCII), 0, 0,
                clientId.getBytes(StandardCharsets.UTF_8), 0, 0);
    }

    /** MEDIA_GET: send attachment {@code id} (full size or preview) from byte {@code offset}. */
    public static Frame mediaGet(String id, boolean full, long offset) {
        Frame f = new Frame(TYPE_MEDIA_GET, 0, 0, null, 0, 0, null, 0, 0);
        f.mediaId = id;
        f.full = full;
        f.offset = offset;
        return f;
    }

    public static Frame mediaData(long total, long offset, String mime, String name, byte[] data) {
        Frame f = new Frame(TYPE_MEDIA_DATA, 0, 0, null, 0, 0, data, 0, 0);
        f.total = total;
        f.offset = offset;
        f.mime = mime;
        f.name = name;
        return f;
    }

    /** MEDIA_PUT: {@code data} (any length up to MEDIA_CHUNK_LEN) at {@code offset} of upload {@code id}. */
    public static Frame mediaPut(String id, long offset, long total, byte[] data) {
        Frame f = new Frame(TYPE_MEDIA_PUT, 0, 0, null, 0, 0, data, 0, 0);
        f.mediaId = id;
        f.offset = offset;
        f.total = total;
        return f;
    }

    public static Frame mediaPutAck(String id, long received) {
        Frame f = new Frame(TYPE_MEDIA_PUT_ACK, 0, 0, null, 0, 0, null, 0, 0);
        f.mediaId = id;
        f.total = received;
        return f;
    }

    public static Frame mediaErr(String message) {
        Frame f = new Frame(TYPE_MEDIA_ERR, 0, 0, null, 0, 0, null, 0, 0);
        f.message = message;
        return f;
    }

    private static void writeStr16(DataOutputStream dos, String s) throws IOException {
        byte[] b = (s == null ? "" : s).getBytes(StandardCharsets.UTF_8);
        if (b.length > 65535) throw new IOException("String too long: " + b.length);
        dos.writeShort(b.length);
        dos.write(b);
    }

    private static String readStr16(DataInputStream dis) throws IOException {
        int n = dis.readUnsignedShort();
        byte[] b = new byte[n];
        dis.readFully(b);
        return new String(b, StandardCharsets.UTF_8);
    }

    public String pairedClientId() {
        return body == null ? "" : new String(body, StandardCharsets.UTF_8);
    }

    public String pairedToken() {
        return token == null ? "" : new String(token, StandardCharsets.US_ASCII);
    }

    public static String byeReasonName(int reason) {
        switch (reason) {
            case BYE_NORMAL: return "normal";
            case BYE_REPLACED: return "replaced";
            case BYE_AUTH_FAILED: return "auth_failed";
            case BYE_BAD_VERSION: return "bad_version";
            case BYE_PROTOCOL_ERROR: return "protocol_error";
            case BYE_SERVER_SHUTDOWN: return "server_shutdown";
            default: return "unknown(" + reason + ")";
        }
    }

    public byte[] encode() throws IOException {
        ByteArrayOutputStream payloadOut = new ByteArrayOutputStream();
        DataOutputStream pdos = new DataOutputStream(payloadOut);
        switch (type) {
            case TYPE_HELLO:
                if (token == null || token.length > 255) {
                    throw new IOException("Invalid HELLO token length");
                }
                pdos.writeByte(version);
                pdos.writeByte(role);
                pdos.writeByte(token.length);
                pdos.write(token);
                pdos.writeLong(seq);
                pdos.writeShort(intervalS & 0xFFFF);
                break;
            case TYPE_WELCOME:
                pdos.writeLong(seq);
                break;
            case TYPE_MSG:
                if (body == null || body.length > MAX_MSG_BODY_LEN) {
                    throw new IOException("Invalid MSG body length");
                }
                pdos.writeLong(seq);
                pdos.write(body);
                break;
            case TYPE_ACK:
                pdos.writeLong(seq);
                break;
            case TYPE_PING:
            case TYPE_PONG:
                pdos.writeInt(nonce);
                break;
            case TYPE_SET_INTERVAL:
                pdos.writeShort(intervalS & 0xFFFF);
                break;
            case TYPE_BYE:
                pdos.writeByte(reason);
                break;
            case TYPE_PAIRED:
                if (body.length > 255 || token.length > 255) {
                    throw new IOException("PAIRED field too long");
                }
                pdos.writeByte(body.length);
                pdos.write(body);
                pdos.writeByte(token.length);
                pdos.write(token);
                break;
            case TYPE_MEDIA_GET:
                writeStr16(pdos, mediaId);
                pdos.writeByte(full ? 1 : 0);
                pdos.writeLong(offset);
                break;
            case TYPE_MEDIA_DATA:
                pdos.writeLong(total);
                pdos.writeLong(offset);
                writeStr16(pdos, mime);
                writeStr16(pdos, name);
                if (body != null) pdos.write(body);
                break;
            case TYPE_MEDIA_PUT:
                writeStr16(pdos, mediaId);
                pdos.writeLong(offset);
                pdos.writeLong(total);
                if (body != null) pdos.write(body);
                break;
            case TYPE_MEDIA_PUT_ACK:
                writeStr16(pdos, mediaId);
                pdos.writeLong(total);
                break;
            case TYPE_MEDIA_ERR:
                writeStr16(pdos, message);
                break;
            default:
                throw new IOException("Unknown frame type: " + type);
        }
        pdos.flush();
        byte[] payload = payloadOut.toByteArray();
        if (payload.length > MAX_PAYLOAD_LEN) {
            throw new IOException("Payload length exceeds " + MAX_PAYLOAD_LEN + ": " + payload.length);
        }

        ByteArrayOutputStream frameOut = new ByteArrayOutputStream(HEADER_LEN + payload.length);
        DataOutputStream fdos = new DataOutputStream(frameOut);
        fdos.writeByte(type);
        fdos.writeInt(payload.length);
        fdos.write(payload);
        fdos.flush();
        return frameOut.toByteArray();
    }

    public void writeTo(OutputStream out) throws IOException {
        out.write(encode());
        out.flush();
    }

    public static Frame readFrom(InputStream in) throws IOException {
        int typeByte = in.read();
        if (typeByte == -1) {
            return null;
        }
        DataInputStream dis = new DataInputStream(in);
        int len = dis.readInt();
        if (len < 0 || len > MAX_PAYLOAD_LEN) {
            throw new IOException("Frame payload length out of range: " + len);
        }
        byte[] payload = new byte[len];
        if (len > 0) {
            dis.readFully(payload);
        }
        return decode(typeByte, payload);
    }

    public static Frame decode(int frameType, byte[] payload) throws IOException {
        DataInputStream dis = new DataInputStream(new ByteArrayInputStream(payload));
        switch (frameType) {
            case TYPE_HELLO: {
                if (payload.length < 3) {
                    throw new IOException("HELLO payload too short: " + payload.length);
                }
                int version = dis.readUnsignedByte();
                int role = dis.readUnsignedByte();
                int tokenLen = dis.readUnsignedByte();
                if (payload.length != 3 + tokenLen + 8 + 2) {
                    throw new IOException("HELLO payload length mismatch: " + payload.length);
                }
                byte[] token = new byte[tokenLen];
                dis.readFully(token);
                long lastRxSeq = dis.readLong();
                int intervalS = dis.readUnsignedShort();
                return new Frame(TYPE_HELLO, version, role, token, lastRxSeq, intervalS, null, 0, 0);
            }
            case TYPE_WELCOME: {
                if (payload.length != 8) {
                    throw new IOException("WELCOME payload length != 8: " + payload.length);
                }
                return welcome(dis.readLong());
            }
            case TYPE_MSG: {
                if (payload.length < 8) {
                    throw new IOException("MSG payload too short: " + payload.length);
                }
                long seq = dis.readLong();
                byte[] body = new byte[payload.length - 8];
                dis.readFully(body);
                return msg(seq, body);
            }
            case TYPE_ACK: {
                if (payload.length != 8) {
                    throw new IOException("ACK payload length != 8: " + payload.length);
                }
                return ack(dis.readLong());
            }
            case TYPE_PING: {
                if (payload.length != 4) {
                    throw new IOException("PING payload length != 4: " + payload.length);
                }
                return ping(dis.readInt());
            }
            case TYPE_PONG: {
                if (payload.length != 4) {
                    throw new IOException("PONG payload length != 4: " + payload.length);
                }
                return pong(dis.readInt());
            }
            case TYPE_SET_INTERVAL: {
                if (payload.length != 2) {
                    throw new IOException("SET_INTERVAL payload length != 2: " + payload.length);
                }
                return setInterval(dis.readUnsignedShort());
            }
            case TYPE_BYE: {
                if (payload.length != 1) {
                    throw new IOException("BYE payload length != 1: " + payload.length);
                }
                return bye(dis.readUnsignedByte());
            }
            case TYPE_PAIRED: {
                int idLen = dis.readUnsignedByte();
                byte[] id = new byte[idLen];
                dis.readFully(id);
                int tokenLen = dis.readUnsignedByte();
                byte[] tok = new byte[tokenLen];
                dis.readFully(tok);
                if (payload.length != 2 + idLen + tokenLen) {
                    throw new IOException("PAIRED payload length mismatch: " + payload.length);
                }
                return new Frame(TYPE_PAIRED, 0, 0, tok, 0, 0, id, 0, 0);
            }
            case TYPE_MEDIA_GET: {
                String id = readStr16(dis);
                boolean full = dis.readUnsignedByte() != 0;
                return mediaGet(id, full, dis.readLong());
            }
            case TYPE_MEDIA_DATA: {
                long total = dis.readLong();
                long off = dis.readLong();
                String mime = readStr16(dis);
                String name = readStr16(dis);
                byte[] data = new byte[dis.available()];
                dis.readFully(data);
                return mediaData(total, off, mime, name, data);
            }
            case TYPE_MEDIA_PUT: {
                String id = readStr16(dis);
                long off = dis.readLong();
                long total = dis.readLong();
                byte[] data = new byte[dis.available()];
                dis.readFully(data);
                return mediaPut(id, off, total, data);
            }
            case TYPE_MEDIA_PUT_ACK: {
                String id = readStr16(dis);
                return mediaPutAck(id, dis.readLong());
            }
            case TYPE_MEDIA_ERR:
                return mediaErr(readStr16(dis));
            default:
                throw new IOException("Unknown frame type: 0x" + Integer.toHexString(frameType));
        }
    }

    @Override
    public String toString() {
        switch (type) {
            case TYPE_HELLO:
                return "HELLO(v=" + version + ", role=" + role + ", lastRx=" + seq + ", iv=" + intervalS + ")";
            case TYPE_WELCOME:
                return "WELCOME(lastRx=" + seq + ")";
            case TYPE_MSG:
                return "MSG(seq=" + seq + ", len=" + (body == null ? 0 : body.length) + ")";
            case TYPE_ACK:
                return "ACK(seq=" + seq + ")";
            case TYPE_PING:
                return "PING(nonce=" + nonce + ")";
            case TYPE_PONG:
                return "PONG(nonce=" + nonce + ")";
            case TYPE_SET_INTERVAL:
                return "SET_INTERVAL(iv=" + intervalS + ")";
            case TYPE_BYE:
                return "BYE(" + byeReasonName(reason) + ")";
            case TYPE_PAIRED:
                return "PAIRED(" + pairedClientId() + ")";
            case TYPE_MEDIA_GET:
                return "MEDIA_GET(" + mediaId + ", full=" + full + ", from=" + offset + ")";
            case TYPE_MEDIA_DATA:
                return "MEDIA_DATA(" + offset + "/" + total + ", len=" + (body == null ? 0 : body.length) + ")";
            case TYPE_MEDIA_PUT:
                return "MEDIA_PUT(" + mediaId + ", " + offset + "/" + total + ")";
            case TYPE_MEDIA_PUT_ACK:
                return "MEDIA_PUT_ACK(" + mediaId + ", " + total + ")";
            case TYPE_MEDIA_ERR:
                return "MEDIA_ERR(" + message + ")";
            default:
                return "FRAME(type=" + type + ")";
        }
    }
}
