#!/usr/bin/env python3
"""
Fake MMSC for testing incoming/outgoing MMS on a phone without a SIM (development only).

The phone reaches it through `adb reverse tcp:8098 tcp:8098` (http://127.0.0.1:8098) with the
BMms test network switched on:
    adb shell su -c 'setprop debug.argon.mms.testnet 1; setprop debug.argon.mms.mmsc http://127.0.0.1:8098/mmsc'

It encodes real OMA MMS 1.2 PDUs (WSP binary): M-Notification.ind (what the WAP push carries)
and M-Retrieve.conf (what the phone downloads), and decodes what the phone POSTs
(M-NotifyResp.ind, M-Acknowledge.ind, M-Send.req, M-Read-Rec.ind).

Control API (JSON over HTTP, same port):
  POST /ctl/new   {"from": "+15550001", "to": ["+15550002", ...], "cc": [], "text": "hi",
                   "subject": null, "image": false, "delay": 0, "fail": false}
                  -> {"id": "...", "push_hex": "<M-Notification.ind bytes>"}
                  delay = seconds before the retrieve answers; fail = answer 404
  GET  /ctl/log   -> everything the phone sent (decoded headers) and fetched
  GET  /ctl/reset
Phone-facing:
  GET  /mms/<id>  -> M-Retrieve.conf
  POST /mmsc      -> decodes the PDU, answers M-Send.conf for M-Send.req, 204 otherwise
Usage: python3 tools/testing/fake_mmsc.py [--port 8098]
"""
import argparse, json, struct, threading, time, uuid, sys
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

# ---------------------------------------------------------------- WSP / MMS encoding helpers
MSG_TYPE = {'send-req': 128, 'send-conf': 129, 'notification-ind': 130, 'notifyresp-ind': 131,
            'retrieve-conf': 132, 'acknowledge-ind': 133, 'delivery-ind': 134,
            'read-rec-ind': 135, 'read-orig-ind': 136}
H = dict(bcc=0x01, cc=0x02, content_location=0x03, content_type=0x04, date=0x05,
         delivery_report=0x06, expiry=0x08, from_=0x09, message_class=0x0A, message_id=0x0B,
         message_type=0x0C, mms_version=0x0D, message_size=0x0E, read_report=0x10,
         report_allowed=0x11, response_status=0x12, status=0x15, subject=0x16, to=0x17,
         transaction_id=0x18, retrieve_status=0x19)
HNAME = {v: k for k, v in H.items()}

def uintvar(n):
    out = [n & 0x7F]; n >>= 7
    while n:
        out.insert(0, (n & 0x7F) | 0x80); n >>= 7
    return bytes(out)

def value_length(n):
    return bytes([n]) if n < 31 else b'\x1f' + uintvar(n)

def text(s):
    b = s.encode('utf-8')
    if b and b[0] >= 0x80: b = b'\x7f' + b
    return b + b'\x00'

def long_int(n):
    b = n.to_bytes(max(1, (n.bit_length() + 7) // 8), 'big')
    return bytes([len(b)]) + b

def encoded_string(s):
    # charset utf-8 (106 -> short-integer 0xEA) when non-ascii, else plain text-string
    try:
        s.encode('ascii'); return text(s)
    except UnicodeEncodeError:
        body = b'\xea' + text(s)
        return value_length(len(body)) + body

def address(num):
    return encoded_string(num + '/TYPE=PLMN' if not '@' in num else num)

def hdr(name, value):
    return bytes([0x80 | H[name]]) + value

def ct_part(media, charset_utf8=False, name=None):
    """Content-type for a multipart entry: general form with params."""
    wk = {'text/plain': 0x83, 'image/jpeg': 0x9E, 'image/png': 0xA0, 'image/gif': 0x9D}
    m = bytes([wk[media]]) if media in wk else text(media)
    params = b''
    if charset_utf8: params += b'\x81\xea'
    if name: params += b'\x85' + text(name)
    body = m + params
    return value_length(len(body)) + body

def multipart(parts):
    """parts: list of (content_type_bytes, headers_bytes, data)"""
    out = uintvar(len(parts))
    for ct, hs, data in parts:
        headers = ct + hs
        out += uintvar(len(headers)) + uintvar(len(data)) + headers + data
    return out

SMIL = ('<smil><head><layout><root-layout/><region id="Image" top="0" left="0" height="80%%" '
        'width="100%%"/><region id="Text" top="80%%" left="0" height="20%%" width="100%%"/>'
        '</layout></head><body><par dur="5000ms">%s<text src="text_0.txt" region="Text"/></par>'
        '</body></smil>')

# 1x1 red JPEG
JPEG = bytes.fromhex(
    'ffd8ffe000104a46494600010100000100010000ffdb004300080606070605080707070909080a0c140d0c0b0b0c19'
    '12130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffc0000b08'
    '0001000101011100ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b51000'
    '02010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f0'
    '2433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768'
    '696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3'
    'c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffda0008010100003f00fb'
    'd3ffd9')

def retrieve_conf(m):
    out = hdr('message_type', bytes([0x80 | 0x04]))  # placeholder, fixed below
    out = hdr('message_type', bytes([MSG_TYPE['retrieve-conf']]))
    out += hdr('transaction_id', text(m['tid']))
    out += hdr('mms_version', b'\x92')
    out += hdr('message_id', text(m['mid']))
    out += hdr('date', long_int(int(time.time())))
    f = b'\x80' + address(m['from'])
    out += hdr('from_', value_length(len(f)) + f)
    for t in m['to']: out += hdr('to', address(t))
    for c in m.get('cc') or []: out += hdr('cc', address(c))
    if m.get('subject'): out += hdr('subject', encoded_string(m['subject']))
    out += hdr('message_class', b'\x80')
    out += hdr('delivery_report', b'\x81')
    out += hdr('read_report', b'\x81')
    parts = []
    img = ''
    if m.get('image'):
        parts.append((ct_part('image/jpeg', name='image.jpg'),
                      b'\xc0' + b'"<image>\x00' + b'\x8e' + text('image.jpg'), JPEG))
        img = '<img src="image.jpg" region="Image"/>'
    parts.append((ct_part('text/plain', charset_utf8=True),
                   b'\xc0' + b'"<text_0>\x00' + b'\x8e' + text('text_0.txt'),
                   m['text'].encode('utf-8')))
    smil = (SMIL % img).encode()
    parts.insert(0, (ct_part('application/smil', charset_utf8=True),
                     b'\xc0' + b'"<smil>\x00' + b'\x8e' + text('smil.xml'), smil))
    # Content-Type: application/vnd.wap.multipart.related; type=application/smil; start=<smil>
    ctv = b'\xb3' + b'\x89' + text('application/smil') + b'\x8a' + text('<smil>')
    out += hdr('content_type', value_length(len(ctv)) + ctv)
    return out + multipart(parts)

def notification_ind(m, host):
    out = hdr('message_type', bytes([MSG_TYPE['notification-ind']]))
    out += hdr('transaction_id', text(m['tid']))
    out += hdr('mms_version', b'\x92')
    f = b'\x80' + address(m['from'])
    out += hdr('from_', value_length(len(f)) + f)
    if m.get('subject'): out += hdr('subject', encoded_string(m['subject']))
    out += hdr('message_class', b'\x80')
    out += hdr('message_size', long_int(m['size']))
    exp = b'\x81' + long_int(7 * 24 * 3600)  # relative
    out += hdr('expiry', value_length(len(exp)) + exp)
    out += hdr('content_location', text('%s/mms/%s' % (host, m['id'])))
    return out

# ---------------------------------------------------------------- decoding (for logging)
def parse_uintvar(b, i):
    n = 0
    while True:
        c = b[i]; i += 1; n = (n << 7) | (c & 0x7F)
        if not c & 0x80: return n, i

def parse_text(b, i):
    if b[i] == 0x7f: i += 1
    j = b.index(0, i); return b[i:j].decode('utf-8', 'replace'), j + 1

def parse_value(b, i):
    """returns (python value, new index) for a header value (best effort)."""
    c = b[i]
    if c >= 0x80: return c & 0x7F | 0x80, i + 1           # short integer (keep raw 0x80-based)
    if c < 31:                                               # value-length + data
        ln = c; i += 1
        return b[i:i + ln], i + ln
    if c == 31:
        ln, j = parse_uintvar(b, i + 1); return b[j:j + ln], j + ln
    return parse_text(b, i)

def decode_headers(b):
    i = 0; out = []
    while i < len(b):
        c = b[i]
        if c & 0x80 == 0: break
        name = HNAME.get(c & 0x7F, hex(c)); i += 1
        if name == 'content_type':
            out.append((name, '...')); break
        v, i = parse_value(b, i)
        if isinstance(v, bytes):
            try:
                if name in ('from_',) and v[:1] == b'\x80': v = parse_text(v, 1)[0]
                elif v and v[0] == 0xea: v = parse_text(v, 1)[0]
                elif name in ('date', 'message_size'): v = int.from_bytes(v[1:], 'big')
                else: v = v.hex()
            except Exception: v = v.hex()
        if isinstance(v, int) and name == 'message_type':
            v = {x: k for k, x in MSG_TYPE.items()}.get(v, v)
        out.append((name, v))
    return out

# ---------------------------------------------------------------- server
STATE = {'msgs': {}, 'log': []}
LOCK = threading.Lock()

class Handler(BaseHTTPRequestHandler):
    host = 'http://127.0.0.1:8098'

    def log_message(self, fmt, *a):
        sys.stderr.write('[mmsc] ' + (fmt % a) + '\n')

    def _send(self, code, body=b'', ctype='application/json'):
        self.send_response(code)
        self.send_header('Content-Type', ctype)
        self.send_header('Content-Length', str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _json(self, obj, code=200):
        self._send(code, json.dumps(obj, indent=1).encode())

    def do_GET(self):
        if self.path == '/ctl/log':
            with LOCK: return self._json(STATE['log'])
        if self.path == '/ctl/reset':
            with LOCK: STATE['msgs'].clear(); STATE['log'].clear()
            return self._json({'ok': True})
        if self.path.startswith('/mms/'):
            mid = self.path.split('/')[2]
            with LOCK:
                m = STATE['msgs'].get(mid)
                STATE['log'].append({'t': time.time(), 'event': 'fetch', 'id': mid,
                                     'ua': self.headers.get('User-Agent'),
                                     'found': m is not None})
            if not m: return self._send(404)
            if m.get('delay'): time.sleep(m['delay'])
            if m.get('fail'): return self._send(404)
            return self._send(200, retrieve_conf(m), 'application/vnd.wap.mms-message')
        return self._send(404)

    def do_POST(self):
        n = int(self.headers.get('Content-Length') or 0)
        body = self.rfile.read(n)
        if self.path == '/ctl/new':
            req = json.loads(body or b'{}')
            mid = uuid.uuid4().hex[:12]
            m = dict(id=mid, tid='T' + mid, mid='M' + mid + '@fake.mmsc',
                     to=req.get('to') or [], cc=req.get('cc') or [], text=req.get('text', ''),
                     subject=req.get('subject'), image=req.get('image', False),
                     delay=req.get('delay', 0), fail=req.get('fail', False))
            m['from'] = req['from']
            m['size'] = len(retrieve_conf(m))
            with LOCK: STATE['msgs'][mid] = m
            return self._json({'id': mid, 'push_hex': notification_ind(m, self.host).hex()})
        if self.path.startswith('/mmsc'):
            hs = decode_headers(body)
            d = dict(hs)
            entry = {'t': time.time(), 'event': 'post', 'pdu': d, 'len': len(body)}
            if d.get('message_type') == 'send-req':
                tos = [v for k, v in hs if k in ('to', 'cc', 'bcc')]
                entry['recipients'] = tos
            with LOCK: STATE['log'].append(entry)
            if d.get('message_type') == 'send-req':
                out = hdr('message_type', bytes([MSG_TYPE['send-conf']]))
                out += hdr('transaction_id', text(str(d.get('transaction_id', 'x'))))
                out += hdr('mms_version', b'\x92')
                out += hdr('response_status', b'\x80')
                out += hdr('message_id', text('S' + uuid.uuid4().hex[:10]))
                return self._send(200, out, 'application/vnd.wap.mms-message')
            return self._send(200, b'', 'application/vnd.wap.mms-message')  # real MMSCs: 200, empty
        return self._send(404)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--port', type=int, default=8098)
    a = ap.parse_args()
    Handler.host = 'http://127.0.0.1:%d' % a.port
    srv = ThreadingHTTPServer(('127.0.0.1', a.port), Handler)
    print('fake MMSC on', Handler.host, flush=True)
    srv.serve_forever()

if __name__ == '__main__':
    main()
