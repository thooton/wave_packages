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
            Frame.paired("phone-1a2b", "00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff")
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
            }
        }

        // 2. Body encode/decode roundtrips (0x01..0x09)
        Body[] bodies = new Body[] {
            Body.sendText("c-1", "tel:+15551234567", "Hello iMessage!", "guid-1"),
            Body.sendResult("c-1", true, "apple-1", null),
            Body.sendResult("c-2", false, null, "target 'tel:+15550000' is not registered on iMessage"),
            Body.incomingText("apple-2", "mailto:alice@icloud.com",
                    Arrays.asList("mailto:alice@icloud.com", "tel:+15559998888"),
                    "guid-2", 1700000000000L, "Hi from Mac"),
            Body.receipt(Body.RECEIPT_DELIVERED, "apple-1", "tel:+15551234567", 1700000001000L),
            Body.getHandles(),
            Body.handles(Arrays.asList("tel:+15550001111", "mailto:me@icloud.com"), "tel:+15550001111"),
            Body.checkTargets("q-1", Arrays.asList("tel:+15551234567", "mailto:bob@icloud.com")),
            Body.targetStatus("q-1", Arrays.asList("mailto:bob@icloud.com"), Arrays.asList("tel:+15551234567")),
            Body.sendGroupText("g-1", Arrays.asList("tel:+15551112222", "mailto:bob@icloud.com"), "Group hi", "guid-g"),
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
            } else if (b.kind == Body.KIND_SEND_GROUP_TEXT) {
                check("g-1".equals(dec.clientMsgId) && dec.participants.size() == 2 && "Group hi".equals(dec.text), "sendGroupText");
            }
        }

        // 3. ClientState atomic persistence, outbox replay, learned intervals
        File tmpDir = new File(args[0]);
        File stFile = new File(tmpDir, "imsg.state");
        ClientState st = ClientState.loadOrDefault(stFile);
        long s1 = st.enqueue(Body.sendText("c-1", "tel:+15551234567", "one", null).encode());
        long s2 = st.enqueue(Body.sendText("c-2", "tel:+15551234567", "two", null).encode());
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

        // 4. Hex helpers
        byte[] sample = new byte[] {0x00, (byte) 0xab, (byte) 0xff};
        check("00abff".equals(ClientState.toHex(sample)), "toHex");
        check("00:AB:FF".equals(ClientState.toColonHex(sample)), "toColonHex");
        check(Arrays.equals(sample, ClientState.fromHex("00:AB:FF")), "fromHex colon");

        System.out.println("PASS: iMessage Frame/Body (0x01..0x0D, PAIRED), ClientState persistence, outbox & hex helpers");
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
            ["javac", "-nowarn", "--release", "8", "-d", str(classes)] + sources,
            check=True,
        )
        subprocess.run(
            ["java", "-cp", str(classes), "IMessageHostTest", str(tmp)],
            check=True,
        )

if __name__ == "__main__":
    main()
