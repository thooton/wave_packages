#!/usr/bin/env python3
"""Host unit tests for the Messages Improved iMessage push client & framing."""
import os
import pathlib
import subprocess
import sys
import tempfile

ROOT = pathlib.Path(__file__).resolve().parents[2]
IMSG_DIR = ROOT / "apps" / "BMms" / "java" / "com" / "android" / "mms" / "wave" / "imsg"

HARNESS = r"""
import com.android.mms.wave.imsg.*;
import java.io.*;
import java.util.*;

public class IMessageHostTest {
    static void check(boolean cond, String msg) {
        if (!cond) throw new AssertionError("FAIL: " + msg);
    }

    public static void main(String[] args) throws Exception {
        // 1. Frame encode/decode roundtrips
        Frame[] frames = new Frame[] {
            Frame.hello(Frame.ROLE_MAIN, "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", 42L, 900),
            Frame.welcome(17L),
            Frame.msg(99L, new byte[] {1, 2, 3, 4}),
            Frame.ack(99L),
            Frame.ping(0x12345678),
            Frame.pong(0x12345678),
            Frame.setInterval(1200),
            Frame.bye(Frame.BYE_AUTH_FAILED),
            Frame.paired("phone-1a2b", "00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff"),
            Frame.mediaGet("m-1", true, 4096L),
            Frame.mediaData(300000L, 262144L, "image/jpeg", "IMG_0001.jpg", new byte[] {9, 8, 7}),
            Frame.mediaPut("u-1", 0L, 3L, new byte[] {1, 2, 3}),
            Frame.mediaPutAck("u-1", 3L),
            Frame.mediaErr("unknown attachment")
        };
        for (Frame f : frames) {
            byte[] wire = f.encode();
            Frame d = Frame.readFrom(new ByteArrayInputStream(wire));
            check(d != null && d.type == f.type, "frame type mismatch for " + f);
            if (f.type == Frame.TYPE_HELLO) {
                check(d.version == Frame.PROTOCOL_VERSION, "hello version");
                check(d.role == Frame.ROLE_MAIN, "hello role");
                check(d.seq == 42L, "hello seq");
                check(d.intervalS == 900, "hello interval");
            } else if (f.type == Frame.TYPE_PAIRED) {
                check("phone-1a2b".equals(d.pairedClientId()) && d.pairedToken().length() == 64, "paired roundtrip");
            } else if (f.type == Frame.TYPE_MSG) {
                check(d.seq == 99L && Arrays.equals(d.body, f.body), "msg roundtrip");
            } else if (f.type == Frame.TYPE_PING || f.type == Frame.TYPE_PONG) {
                check(d.nonce == 0x12345678, "ping/pong nonce");
            } else if (f.type == Frame.TYPE_SET_INTERVAL) {
                check(d.intervalS == 1200, "setInterval");
            } else if (f.type == Frame.TYPE_BYE) {
                check(d.reason == Frame.BYE_AUTH_FAILED, "bye reason");
            } else if (f.type == Frame.TYPE_MEDIA_GET) {
                check("m-1".equals(d.mediaId) && d.full && d.offset == 4096L, "mediaGet");
            } else if (f.type == Frame.TYPE_MEDIA_DATA) {
                check(d.total == 300000L && d.offset == 262144L && "image/jpeg".equals(d.mime)
                        && "IMG_0001.jpg".equals(d.name) && Arrays.equals(d.body, f.body), "mediaData");
            } else if (f.type == Frame.TYPE_MEDIA_PUT) {
                check("u-1".equals(d.mediaId) && d.total == 3L && Arrays.equals(d.body, f.body), "mediaPut");
            } else if (f.type == Frame.TYPE_MEDIA_PUT_ACK) {
                check("u-1".equals(d.mediaId) && d.total == 3L, "mediaPutAck");
            } else if (f.type == Frame.TYPE_MEDIA_ERR) {
                check("unknown attachment".equals(d.message), "mediaErr");
            }
        }

        // 2. Body encode/decode roundtrips (protocol v2)
        Body[] bodies = new Body[] {
            Body.sendMessage("c-1", Arrays.asList("tel:+15551234567"), "Hello iMessage!", "guid-1",
                    Arrays.asList(new Body.OutAttachment("u-1", "IMG_1.jpg", "image/jpeg"))),
            Body.sendResult("c-1", true, "apple-1", null),
            Body.sendResult("c-2", false, null, "target 'tel:+15550000' is not registered on iMessage"),
            Body.incomingMessage("apple-2", "mailto:alice@icloud.com",
                    Arrays.asList("mailto:alice@icloud.com", "tel:+15559998888"),
                    "guid-2", 1700000000000L, "Hi from Mac", "apple-1",
                    Arrays.asList(new Body.InAttachment("m-1", Body.ATTACH_IMAGE, "IMG_2.HEIC", 2345678L))),
            Body.receipt(Body.RECEIPT_DELIVERED, "apple-1", "tel:+15551234567", 1700000001000L),
            Body.getHandles(),
            Body.handles(Arrays.asList("tel:+15550001111", "mailto:me@icloud.com"), "tel:+15550001111"),
            Body.checkTargets("q-1", Arrays.asList("tel:+15551234567", "mailto:bob@icloud.com")),
            Body.targetStatus("q-1", Arrays.asList("mailto:bob@icloud.com"), Arrays.asList("tel:+15551234567")),
            Body.sendMessage("g-1", Arrays.asList("tel:+15551112222", "mailto:bob@icloud.com"), "Group hi", "guid-g", null),
            Body.sendReaction("r-1", Arrays.asList("tel:+15551234567"), null, "apple-2", Body.REACT_EMOJI, "\uD83D\uDD25", true, "Hi"),
            Body.reaction("apple-3", "tel:+15551234567", Arrays.asList("tel:+15551234567"), null, 1L, "apple-2",
                    Body.REACT_HEART, null, false),
            Body.edit("apple-4", "tel:+15551234567", 2L, "apple-2", "Hi from Mac!"),
            Body.unsend("apple-5", "tel:+15551234567", 3L, "apple-2"),
            Body.sendEdit("e-1", Arrays.asList("tel:+15551234567"), "guid-1", "apple-2", 2, "Hi there!"),
            Body.sendUnsend("u-1", Arrays.asList("tel:+15551234567", "mailto:bob@icloud.com"), null, "apple-2", 3),
            Body.groupEvent("apple-6", "tel:+15551234567", Arrays.asList("tel:+15551234567", "mailto:bob@icloud.com"),
                    "guid-g", 4L, Body.GROUP_PARTICIPANTS, "", Arrays.asList("tel:+15551234567")),
            Body.setupStatus(Body.SETUP_WAITING_SMS, "Waiting for Apple"),
            Body.simInfo("310260", "+15551234567"),
            Body.simInfo("", null),
            Body.sendRegSms("28818773", "REG-REQ?v=3;t=AB;r=1;"),
            Body.regResp("REG-RESP?v=3;r=1;n=+15551234567;s=00")
        };
        for (Body b : bodies) {
            byte[] enc = b.encode();
            Body dec = Body.decode(enc);
            check(dec.kind == b.kind, "body kind " + b.kind);
            if (b.kind == Body.KIND_SETUP_STATUS) {
                check(dec.receiptKind == Body.SETUP_WAITING_SMS && "Waiting for Apple".equals(dec.text), "setupStatus");
            } else if (b.kind == Body.KIND_SIM_INFO) {
                check(b.target.equals(dec.target) && (b.sender == null ? dec.sender == null : b.sender.equals(dec.sender)), "simInfo");
            } else if (b.kind == Body.KIND_SEND_REG_SMS) {
                check("28818773".equals(dec.target) && dec.text.startsWith("REG-REQ"), "sendRegSms");
            } else if (b.kind == Body.KIND_REG_RESP) {
                check(dec.text.startsWith("REG-RESP"), "regResp");
            } else if (b.kind == Body.KIND_CHECK_TARGETS) {
                check("q-1".equals(dec.reqId) && dec.targets.size() == 2, "checkTargets");
            } else if (b.kind == Body.KIND_TARGET_STATUS) {
                check(dec.registered.size() == 1 && dec.unregistered.size() == 1, "targetStatus");
            } else if (b.kind == Body.KIND_SEND_MESSAGE) {
                check(b.clientMsgId.equals(dec.clientMsgId) && dec.participants.equals(b.participants)
                        && b.text.equals(dec.text) && dec.outAttachments.size() == b.outAttachments.size(), "sendMessage");
            } else if (b.kind == Body.KIND_INCOMING_MESSAGE) {
                check("apple-1".equals(dec.replyTo) && dec.attachments.size() == 1
                        && "m-1".equals(dec.attachments.get(0).mediaId) && dec.attachments.get(0).size == 2345678L,
                        "incomingMessage");
            } else if (b.kind == Body.KIND_SEND_REACTION) {
                check("apple-2".equals(dec.targetId) && dec.reaction == Body.REACT_EMOJI && dec.enable
                        && "\uD83D\uDD25".equals(dec.emoji), "sendReaction");
            } else if (b.kind == Body.KIND_REACTION) {
                check(!dec.enable && dec.reaction == Body.REACT_HEART && "apple-2".equals(dec.targetId), "reaction");
            } else if (b.kind == Body.KIND_EDIT) {
                check("Hi from Mac!".equals(dec.text) && "apple-2".equals(dec.targetId), "edit");
            } else if (b.kind == Body.KIND_UNSEND) {
                check("apple-2".equals(dec.targetId), "unsend");
            } else if (b.kind == Body.KIND_SEND_EDIT) {
                check("e-1".equals(dec.clientMsgId) && "apple-2".equals(dec.targetId) && dec.part == 2
                        && "Hi there!".equals(dec.text) && "guid-1".equals(dec.senderGuid), "sendEdit");
            } else if (b.kind == Body.KIND_SEND_UNSEND) {
                check("u-1".equals(dec.clientMsgId) && "apple-2".equals(dec.targetId) && dec.part == 3
                        && dec.participants.size() == 2 && dec.senderGuid == null, "sendUnsend");
            } else if (b.kind == Body.KIND_GROUP_EVENT) {
                check(dec.event == Body.GROUP_PARTICIPANTS && dec.newParticipants.size() == 1, "groupEvent");
            }
        }

        // 3. ClientState atomic persistence, outbox replay, learned intervals
        File tmpDir = new File(args[0]);
        File stFile = new File(tmpDir, "imsg.state");
        ClientState st = ClientState.loadOrDefault(stFile);
        List<String> to = Arrays.asList("tel:+15551234567");
        long s1 = st.enqueue(Body.sendMessage("c-1", to, "one", null, null).encode());
        long s2 = st.enqueue(Body.sendMessage("c-2", to, "two", null, null).encode());
        check(s1 == 1L && s2 == 2L, "txSeq increments");
        st.setLastRxSeq(5L);
        st.setLearnedInterval("mobile:310260:ipv4", 1500);
        st.setLastProbeMs("mobile:310260:ipv4", 1700000000000L);
        st.save(stFile);

        ClientState reloaded = ClientState.loadOrDefault(stFile);
        check(reloaded.getTxSeq() == 2L, "reloaded txSeq");
        check(reloaded.getLastRxSeq() == 5L, "reloaded lastRxSeq");
        check(reloaded.pendingAfter(0L).size() == 2, "pendingAfter 0");
        check(reloaded.pendingAfter(1L).size() == 1, "pendingAfter 1");
        check(Integer.valueOf(1500).equals(reloaded.getLearnedInterval("mobile:310260:ipv4")), "learned interval");
        check(reloaded.ackUpTo(1L) == 1 && reloaded.outboxSize() == 1, "ackUpTo");
        check(!reloaded.isPending(1L) && reloaded.isPending(2L), "isPending after ack");
        check(reloaded.remove(2L) && !reloaded.remove(2L) && reloaded.outboxSize() == 0
                && reloaded.pendingAfter(0L).isEmpty(), "remove takes a send back (not resent)");
        check(st.getEpoch() != 0L && reloaded.getEpoch() == st.getEpoch(), "epoch made once and kept");
        check(!reloaded.adoptServerEpoch(0xF00DL) && reloaded.getLastRxSeq() == 5L, "first server epoch: no reset");
        check(!reloaded.adoptServerEpoch(0xF00DL), "same server epoch again: no reset");
        reloaded.save(stFile);
        ClientState again = ClientState.loadOrDefault(stFile);
        check(again.getServerEpoch() == 0xF00DL && again.getEpoch() == st.getEpoch(), "server epoch kept");
        check(again.adoptServerEpoch(0x8000000000000001L) && again.getLastRxSeq() == 0L,
                "new server epoch (unsigned) forgets lastRxSeq");
        again.save(stFile);
        check(ClientState.loadOrDefault(stFile).getServerEpoch() == 0x8000000000000001L, "high-bit epoch round-trips");
        check(ClientState.loadOrDefault(new File(tmpDir, "none.state")).getEpoch() != st.getEpoch(),
                "a new state gets a new epoch");
        Frame hm = Frame.decode(Frame.TYPE_HELLO, Arrays.copyOfRange(
                Frame.helloMain("ab", 7L, 60, -2L, 9L).encode(), 5, 5 + 3 + 2 + 8 + 2 + 16));
        check(hm.hasEpochs && hm.epoch == -2L && hm.peerEpoch == 9L && hm.seq == 7L, "HELLO epochs round-trip");
        Frame hp = Frame.decode(Frame.TYPE_HELLO, Arrays.copyOfRange(
                Frame.hello(Frame.ROLE_MEDIA, "ab", 0L, 0).encode(), 5, 5 + 3 + 2 + 8 + 2));
        check(!hp.hasEpochs, "HELLO without epochs still decodes");
        Frame we = Frame.decode(Frame.TYPE_WELCOME, Arrays.copyOfRange(Frame.welcome(3L, 0x1234L).encode(), 5, 21));
        Frame wp = Frame.decode(Frame.TYPE_WELCOME, Arrays.copyOfRange(Frame.welcome(3L).encode(), 5, 13));
        check(we.hasEpochs && we.epoch == 0x1234L && we.seq == 3L && !wp.hasEpochs && wp.seq == 3L,
                "WELCOME with and without epoch");

        // 4. Hex helpers
        byte[] sample = new byte[] {0x00, (byte) 0xab, (byte) 0xff};
        check("00abff".equals(ClientState.toHex(sample)), "toHex");
        check("00:AB:FF".equals(ClientState.toColonHex(sample)), "toColonHex");
        check(Arrays.equals(sample, ClientState.fromHex("00:AB:FF")), "fromHex colon");

        System.out.println("PASS: iMessage Frame/Body v2 (messages, media, tapbacks, edits, groups), ClientState persistence, outbox & hex helpers");
    }
}
"""

def main():
    with tempfile.TemporaryDirectory() as td:
        tmp = pathlib.Path(td)
        harness = tmp / "IMessageHostTest.java"
        harness.write_text(HARNESS, encoding="utf-8")
        classes = tmp / "classes"
        classes.mkdir()
        sources = [str(p) for p in sorted(IMSG_DIR.glob("*.java"))] + [str(harness)]
        subprocess.run(
            ["javac", "-nowarn", "-d", str(classes)] + sources,
            check=True,
        )
        subprocess.run(
            ["java", "-cp", str(classes), "IMessageHostTest", str(tmp)],
            check=True,
        )

if __name__ == "__main__":
    main()
