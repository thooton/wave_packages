import tempfile
import unittest
from pathlib import Path
from unittest import mock

import check_signer

DEBUG = "3a5643633e00450967b7674cded6b2cce46456561a6f2c1d48ae8344b1fadb0e"
DRAWER = "0a4c7a2fe861f04444dab12adaab57e93eb5edce2d1a1a15cf42e0a01bc0dd4c"
OTHER = "f" * 64


class CheckSigner(unittest.TestCase):
    def test_public_keys_are_refused(self):
        for digest in (DEBUG, DRAWER):
            self.assertIn("PUBLIC", check_signer.refusal("a.apk", [digest]))
        self.assertIn("PUBLIC", check_signer.refusal("a.apk", [OTHER, DEBUG]))

    def test_other_key_is_admitted_until_one_is_pinned(self):
        self.assertIsNone(check_signer.refusal("a.apk", [OTHER]))

    def test_pinned_release_key(self):
        with tempfile.TemporaryDirectory() as tmp:
            Path(tmp, "release-key.sha256").write_text(f"# the owner's key\n{OTHER} release\n")
            Path(tmp, "public-key-digests.txt").write_text((check_signer.HERE / "public-key-digests.txt").read_text())
            with mock.patch.object(check_signer, "HERE", Path(tmp)):
                self.assertIsNone(check_signer.refusal("a.apk", [OTHER]))
                self.assertIn("not the release key", check_signer.refusal("a.apk", ["e" * 64]))
                self.assertIn("PUBLIC", check_signer.refusal("a.apk", [DEBUG]))

    def test_bad_digest_line_is_an_error(self):
        with tempfile.TemporaryDirectory() as tmp:
            Path(tmp, "public-key-digests.txt").write_text("not-a-digest label\n")
            with mock.patch.object(check_signer, "HERE", Path(tmp)):
                with self.assertRaises(ValueError):
                    check_signer.digests("public-key-digests.txt")

    def test_signer_digests_are_parsed(self):
        out = mock.Mock(returncode=0, stderr="", stdout=f"Signer #1 certificate DN: CN=x\nSigner #1 certificate SHA-256 digest: {DEBUG.upper()}\n")
        with mock.patch.object(check_signer.subprocess, "run", return_value=out):
            self.assertEqual(check_signer.signers("a.apk"), [DEBUG])


if __name__ == "__main__":
    unittest.main()
