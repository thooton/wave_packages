#!/usr/bin/env python3
"""End-to-end test of the phone's iMessage client code against a real imsg-server.

Builds nothing on the phone: it compiles the client's plain-Java protocol classes
(apps/BMms/java/com/android/mms/wave/imsg) for the host JVM, starts `imsg-server run --no-apple`
(the echo backend) with a throwaway localhost certificate, and drives it like the phone does:
setup, sending text, uploading a photo and a video, receiving the echo with media, fetching
previews and full-size files, tapbacks, inline replies, edits, unsends and group changes. Then it
runs the real PushClient through a relay that can go silent like a dead NAT (ACK deadline,
reconnect and resend, taking back a send the server never got).

Needs ffmpeg/ffprobe (server conversions) and an imsg-server binary:
    IMSG_SERVER=/path/to/imsg-server tools/testing/imessage_interop_test.py
(default: ../imsg-server/target/debug/imsg-server next to this repository).
"""
import hashlib
import os
import pathlib
import secrets
import shutil
import socket
import subprocess
import sys
import tempfile
import time

ROOT = pathlib.Path(__file__).resolve().parents[2]
IMSG_DIR = ROOT / "apps" / "BMms" / "java" / "com" / "android" / "mms" / "wave" / "imsg"
DEFAULT_SERVER = ROOT.parents[2] / "imsg-server" / "target" / "debug" / "imsg-server"
# Host-JVM code, kept out of tools/testing/*.java (push.sh compiles those for the phone).
HARNESSES = [pathlib.Path(__file__).parent / "interop" / n
             for n in ("IMessageInteropTest.java", "PushClientInteropTest.java")]

CONFIG = """server_name = "localhost"
listen_addrs = ["127.0.0.1:{port}"]
cert_path = "{tmp}/cert.pem"
key_path = "{tmp}/key.pem"
state_dir = "{tmp}/state"
apple_dir = "{tmp}/apple"

[[clients]]
id = "phone"
token_sha256 = "{token_hash}"

[[clients]]
id = "pushclient"
token_sha256 = "{token2_hash}"
"""


def free_port():
    s = socket.socket()
    s.bind(("127.0.0.1", 0))
    port = s.getsockname()[1]
    s.close()
    return port


def run(cmd, **kw):
    return subprocess.run(cmd, check=True, **kw)


def main():
    server = pathlib.Path(os.environ.get("IMSG_SERVER", DEFAULT_SERVER))
    if not server.exists():
        print(f"SKIP: no imsg-server binary at {server} (set IMSG_SERVER)")
        return 0
    for tool in ("ffmpeg", "ffprobe", "openssl", "keytool", "javac", "java"):
        if not shutil.which(tool):
            print(f"SKIP: {tool} not installed")
            return 0
    with tempfile.TemporaryDirectory() as td:
        tmp = pathlib.Path(td)
        run(["openssl", "req", "-x509", "-newkey", "ec", "-pkeyopt", "ec_paramgen_curve:P-256", "-nodes",
             "-days", "2", "-subj", "/CN=localhost", "-addext", "subjectAltName=DNS:localhost",
             "-keyout", str(tmp / "key.pem"), "-out", str(tmp / "cert.pem")], capture_output=True)
        run(["keytool", "-importcert", "-noprompt", "-alias", "imsg", "-file", str(tmp / "cert.pem"),
             "-keystore", str(tmp / "trust.p12"), "-storetype", "PKCS12", "-storepass", "changeit"],
            capture_output=True)
        work = tmp / "work"
        work.mkdir()
        run(["ffmpeg", "-loglevel", "error", "-f", "lavfi", "-i", "testsrc=size=1600x1200:rate=1", "-frames:v", "1",
             str(work / "photo.jpg")])
        run(["ffmpeg", "-loglevel", "error", "-f", "lavfi", "-i", "testsrc=size=352x288:rate=15:duration=2",
             "-f", "lavfi", "-i", "sine=frequency=440:duration=2", "-c:v", "mpeg4", "-c:a", "aac", "-ac", "1",
             "-ar", "16000", "-shortest", str(work / "clip.3gp")])

        # iPhones send HEIC; the phone can't decode it, so the server must hand out JPEGs.
        heic = shutil.which("heif-enc") is not None
        if heic:
            run(["heif-enc", "-q", "60", str(work / "photo.jpg"), "-o", str(work / "photo.heic")],
                capture_output=True)

        port = free_port()
        token = secrets.token_hex(32)
        token2 = secrets.token_hex(32)
        cfg = tmp / "config.toml"
        cfg.write_text(CONFIG.format(port=port, tmp=tmp, token_hash=hashlib.sha256(token.encode()).hexdigest(),
                                     token2_hash=hashlib.sha256(token2.encode()).hexdigest()))
        log = open(tmp / "server.log", "w")
        proc = subprocess.Popen([str(server), "-c", str(cfg), "run", "--no-apple"], stdout=log, stderr=log,
                                env=dict(os.environ, RUST_LOG="info"))
        try:
            for _ in range(100):
                try:
                    socket.create_connection(("127.0.0.1", port), 0.2).close()
                    break
                except OSError:
                    time.sleep(0.1)
            classes = tmp / "classes"
            classes.mkdir()
            run(["javac", "-nowarn", "-d", str(classes)]
                + [str(p) for p in sorted(IMSG_DIR.glob("*.java"))] + [str(p) for p in HARNESSES])
            java = ["java", f"-Djavax.net.ssl.trustStore={tmp / 'trust.p12'}",
                    "-Djavax.net.ssl.trustStorePassword=changeit", "-cp", str(classes)]
            res = subprocess.run(java + ["IMessageInteropTest", str(port), token, str(work)])
            if res.returncode == 0:
                # Runs after the first one: that one sets up the echo backend's registration.
                res = subprocess.run(java + ["PushClientInteropTest", str(port), token2, str(work)], timeout=300)
            if res.returncode != 0:
                print("---- server log ----")
                print((tmp / "server.log").read_text()[-6000:])
                return 1
            for prev in sorted((tmp / "state" / "media").glob("*/preview")):
                probe = subprocess.run(["ffprobe", "-v", "error", "-select_streams", "v:0", "-show_entries",
                                        "stream=codec_name,profile,width,height", "-of", "csv=p=0", str(prev)],
                                       capture_output=True, text=True)
                print("server preview:", probe.stdout.strip())
            return 0
        finally:
            proc.terminate()
            proc.wait(10)


if __name__ == "__main__":
    sys.exit(main())
