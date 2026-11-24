import com.android.mms.wave.imsg.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.nio.file.*;
import java.util.*;
import javax.imageio.ImageIO;
import javax.net.ssl.*;

/** Host-side driver for imessage_interop_test.py: talks to imsg-server like the phone does. */
public class IMessageInteropTest {
    static final String HOST = "localhost";
    static int port;
    static String token;
    static InputStream in;
    static OutputStream out;
    static long txSeq = 0;

    static void check(boolean cond, String msg) {
        if (!cond) throw new AssertionError("FAIL: " + msg);
        System.out.println("  ok: " + msg);
    }

    static void send(Body b) throws IOException {
        out.write(Frame.msg(++txSeq, b.encode()).encode());
        out.flush();
    }

    /** Next body of one of {@code kinds} from the server (acking every MSG). */
    static Body next(int... kinds) throws IOException {
        long deadline = System.currentTimeMillis() + 120_000L;
        while (System.currentTimeMillis() < deadline) {
            Frame f = Frame.readFrom(in);
            if (f == null) throw new EOFException("server closed");
            if (f.type == Frame.TYPE_PING) {
                out.write(Frame.pong(f.nonce).encode());
                out.flush();
                continue;
            }
            if (f.type != Frame.TYPE_MSG) continue;
            out.write(Frame.ack(f.seq).encode());
            out.flush();
            Body b = Body.decode(f.body);
            for (int k : kinds) if (b.kind == k) return b;
        }
        throw new AssertionError("timed out waiting for kinds " + Arrays.toString(kinds));
    }

    /** Sends a message and returns what the echo backend answers with ({@code clientMsgId} = sent id). */
    static Body sendAndEcho(List<String> to, String text, List<Body.OutAttachment> atts) throws IOException {
        send(Body.sendMessage("c-" + UUID.randomUUID(), to, text, "guid-1", atts));
        Body res = next(Body.KIND_SEND_RESULT);
        check(res.ok && res.appleMsgId != null, "send ok: \"" + (text.length() > 30 ? text.substring(0, 30) + "..." : text) + "\"");
        Body echo = next(Body.KIND_INCOMING_MESSAGE, Body.KIND_REACTION, Body.KIND_EDIT, Body.KIND_UNSEND,
                Body.KIND_GROUP_EVENT);
        echo.clientMsgId = res.appleMsgId;
        return echo;
    }

    public static void main(String[] args) throws Exception {
        port = Integer.parseInt(args[0]);
        token = args[1];
        File work = new File(args[2]);
        // The JDK's default verifier rejects everything; Android's checks the certificate.
        HttpsURLConnection.setDefaultHostnameVerifier((h, s) -> HOST.equals(h));

        SSLSocket sock = TlsHelper.connect(HOST, port, 5000, 5000);
        sock.setSoTimeout(120_000);
        in = new BufferedInputStream(sock.getInputStream());
        out = sock.getOutputStream();
        out.write(Frame.hello(Frame.ROLE_MAIN, token, 0L, 60).encode());
        out.flush();
        Frame w = Frame.readFrom(in);
        check(w != null && w.type == Frame.TYPE_WELCOME, "main connection welcomed (protocol v" + Frame.PROTOCOL_VERSION + ")");

        send(Body.simInfo("310260", "+15550001111"));
        check(next(Body.KIND_SEND_REG_SMS).text.startsWith("REG-REQ"), "server asked for the registration SMS");
        send(Body.regResp("REG-RESP?v=3;r=123456789;n=+15550001111;s=00"));
        Body ready = next(Body.KIND_SETUP_STATUS);
        while (ready.receiptKind != Body.SETUP_READY) ready = next(Body.KIND_SETUP_STATUS);
        check(true, "setup ready as " + ready.text);

        List<String> peer = Collections.singletonList("tel:+15557654321");
        Body t = sendAndEcho(peer, "hello there", null);
        check(t.kind == Body.KIND_INCOMING_MESSAGE && "hello there".equals(t.text) && t.attachments.isEmpty(),
                "text echoed back");
        String firstEcho = t.appleMsgId;

        StringBuilder big = new StringBuilder();
        while (big.length() < 70_000) big.append("long text 0123456789 ");
        check(big.toString().equals(sendAndEcho(peer, big.toString(), null).text), "70 KB text survives (32-bit lengths)");

        MediaClient mc = new MediaClient(HOST, port, token);
        byte[] jpeg = Files.readAllBytes(new File(work, "photo.jpg").toPath());
        byte[] video = Files.readAllBytes(new File(work, "clip.3gp").toPath());
        String up1 = mc.upload(jpeg, null);
        String up2 = mc.upload(video, null);
        check(up1.startsWith("u-") && up2.startsWith("u-"),
                "uploaded photo (" + jpeg.length + " B) and video (" + video.length + " B)");
        Body m = sendAndEcho(peer, "look", Arrays.asList(
                new Body.OutAttachment(up1, "IMG_0001.jpg", "image/jpeg"),
                new Body.OutAttachment(up2, "VID_0001.3gp", "video/3gpp")));
        check(m.attachments.size() == 2, "echo carries 2 attachments");
        check(m.attachments.get(0).kind == Body.ATTACH_IMAGE && m.attachments.get(1).kind == Body.ATTACH_VIDEO,
                "attachment kinds image + video");

        File prev = new File(work, "prev.jpg");
        MediaClient.Result p = mc.download(m.attachments.get(0).mediaId, false, prev, null);
        BufferedImage img = ImageIO.read(p.file);
        check("image/jpeg".equals(p.mime) && img != null && Math.max(img.getWidth(), img.getHeight()) == 640,
                "photo preview is a 640 px JPEG (" + img.getWidth() + "x" + img.getHeight() + ", " + p.length + " B)");
        MediaClient.Result fr = mc.download(m.attachments.get(0).mediaId, true, new File(work, "full.jpg"), null);
        check(Arrays.equals(Files.readAllBytes(fr.file.toPath()), jpeg), "full-size photo is the original file");

        MediaClient.Result vp = mc.download(m.attachments.get(1).mediaId, false, new File(work, "prev.mp4"), null);
        check("video/mp4".equals(vp.mime) && vp.length > 1000, "video preview is MP4 (" + vp.length + " B)");

        File heicFile = new File(work, "photo.heic");
        if (heicFile.exists()) {
            String up3 = mc.upload(Files.readAllBytes(heicFile.toPath()), null);
            Body h = sendAndEcho(peer, "", Collections.singletonList(new Body.OutAttachment(up3, "IMG_0002.HEIC", "image/heic")));
            check(h.attachments.size() == 1 && h.attachments.get(0).kind == Body.ATTACH_IMAGE, "HEIC echoed as a photo");
            MediaClient.Result hp = mc.download(h.attachments.get(0).mediaId, false, new File(work, "heic-prev.jpg"), null);
            BufferedImage hi = ImageIO.read(hp.file);
            check("image/jpeg".equals(hp.mime) && hi != null && hi.getWidth() == 640, "HEIC preview is a 640 px JPEG");
            MediaClient.Result hf = mc.download(h.attachments.get(0).mediaId, true, new File(work, "heic-full.jpg"), null);
            BufferedImage hfi = ImageIO.read(hf.file);
            check("image/jpeg".equals(hf.mime) && hfi != null && hfi.getWidth() == 1600 && hf.name.endsWith(".jpg"),
                    "HEIC full size is a 1600 px JPEG named " + hf.name);
        }

        File part = new File(work, "resume.jpg.part");
        byte[] prevBytes = Files.readAllBytes(prev.toPath());
        Files.write(part.toPath(), Arrays.copyOf(prevBytes, prevBytes.length / 2));
        MediaClient.Result rr = mc.download(m.attachments.get(0).mediaId, false, new File(work, "resume.jpg"), null);
        check(Arrays.equals(Files.readAllBytes(rr.file.toPath()), prevBytes), "interrupted download resumes correctly");

        try {
            mc.download("00000000-0000-0000-0000-000000000000", false, new File(work, "none"), null);
            check(false, "missing attachment errors");
        } catch (MediaClient.ServerError e) {
            check(true, "missing attachment is a server error (" + e.getMessage() + ")");
        }
        check(mc.connectionsOpened() >= 9, "plain client opens a connection per request");

        // keepOpen(): one connection for uploads, downloads and a server error in between.
        MediaClient kc = new MediaClient(HOST, port, token).keepOpen();
        String ku1 = kc.upload(jpeg, null);
        String ku2 = kc.upload(video, null);
        Body km = sendAndEcho(peer, "kept", Arrays.asList(
                new Body.OutAttachment(ku1, "IMG_0003.jpg", "image/jpeg"),
                new Body.OutAttachment(ku2, "VID_0003.3gp", "video/3gpp")));
        MediaClient.Result k1 = kc.download(km.attachments.get(0).mediaId, false, new File(work, "k1.jpg"), null);
        try {
            kc.download("00000000-0000-0000-0000-000000000000", false, new File(work, "k-none"), null);
            check(false, "kept: missing attachment errors");
        } catch (MediaClient.ServerError e) {
            // expected; the connection stays usable
        }
        MediaClient.Result k2 = kc.download(km.attachments.get(1).mediaId, false, new File(work, "k2.mp4"), null);
        check(Arrays.equals(Files.readAllBytes(k1.file.toPath()), prevBytes) || k1.length > 1000, "kept: photo preview");
        check("video/mp4".equals(k2.mime) && k2.length > 1000, "kept: video preview after a server error");
        check(kc.connectionsOpened() == 1, "kept: 2 uploads + 3 downloads on 1 connection ("
                + kc.connectionsOpened() + ")");
        // The server (or the network) drops the kept connection: the next request reconnects at once.
        java.lang.reflect.Field sf = MediaClient.class.getDeclaredField("sock");
        sf.setAccessible(true);
        ((java.net.Socket) sf.get(kc)).close();
        MediaClient.Result k3 = kc.download(km.attachments.get(0).mediaId, true, new File(work, "k3.jpg"), null);
        check(Arrays.equals(Files.readAllBytes(k3.file.toPath()), jpeg) && kc.connectionsOpened() == 2,
                "kept: a dropped connection is replaced (" + kc.connectionsOpened() + " connections)");
        kc.close();

        send(Body.sendReaction("r-1", peer, "guid-1", firstEcho, Body.REACT_HEART, null, true, "hello there"));
        check(next(Body.KIND_SEND_RESULT).ok, "tapback sent");
        Body mirror = next(Body.KIND_REACTION);
        check(mirror.reaction == Body.REACT_HEART && firstEcho.equals(mirror.targetId) && mirror.enable, "tapback mirrored");
        Body r = sendAndEcho(peer, "/react \uD83D\uDD25", null);
        check(r.kind == Body.KIND_REACTION && r.reaction == Body.REACT_EMOJI && "\uD83D\uDD25".equals(r.emoji),
                "emoji tapback from the other side");

        Body reply = sendAndEcho(peer, "/reply sure thing", null);
        check(reply.kind == Body.KIND_INCOMING_MESSAGE && reply.replyTo != null && "sure thing".equals(reply.text),
                "inline reply carries reply_to");
        Body ed = sendAndEcho(peer, "/edit sure thing!!", null);
        check(ed.kind == Body.KIND_EDIT && reply.appleMsgId.equals(ed.targetId) && "sure thing!!".equals(ed.text),
                "edit targets the last echo");
        Body un = sendAndEcho(peer, "/unsend", null);
        check(un.kind == Body.KIND_UNSEND && reply.appleMsgId.equals(un.targetId), "unsend targets the last echo");

        // Our own edits and unsends.
        send(Body.sendEdit("e-1", peer, "guid-1", firstEcho, 0, "hello there (fixed)"));
        Body er = next(Body.KIND_SEND_RESULT);
        check("e-1".equals(er.clientMsgId) && er.ok && er.appleMsgId != null, "own edit sent");
        send(Body.sendEdit("e-2", peer, "guid-1", firstEcho, 0, "/fail"));
        Body ef = next(Body.KIND_SEND_RESULT);
        check("e-2".equals(ef.clientMsgId) && !ef.ok && ef.error != null, "refused edit reported (" + ef.error + ")");
        send(Body.sendUnsend("u-1", peer, "guid-1", firstEcho, 1));
        Body ur = next(Body.KIND_SEND_RESULT);
        check("u-1".equals(ur.clientMsgId) && ur.ok, "own unsend sent");

        List<String> group = Arrays.asList("tel:+15557654321", "mailto:alice@icloud.com");
        Body rn = sendAndEcho(group, "/rename Hike crew", null);
        check(rn.kind == Body.KIND_GROUP_EVENT && rn.event == Body.GROUP_RENAMED && "Hike crew".equals(rn.name),
                "group rename event");
        Body add = sendAndEcho(group, "/add tel:+15553334444", null);
        check(add.event == Body.GROUP_PARTICIPANTS && add.newParticipants.size() == add.participants.size() + 1,
                "group add event (" + add.participants.size() + " -> " + add.newParticipants.size() + " members)");

        out.write(Frame.bye(Frame.BYE_NORMAL).encode());
        out.flush();
        sock.close();
        System.out.println("PASS: phone client <-> imsg-server v" + Frame.PROTOCOL_VERSION + " interop");
    }
}
