"""SIP message model, framing, header helpers, SDP and multipart."""
import re
import secrets

COMPACT = {'v': 'Via', 'f': 'From', 't': 'To', 'i': 'Call-ID', 'm': 'Contact', 'l': 'Content-Length',
           'c': 'Content-Type', 'k': 'Supported', 's': 'Subject', 'e': 'Content-Encoding', 'o': 'Event',
           'u': 'Allow-Events', 'r': 'Refer-To', 'b': 'Referred-By', 'x': 'Session-Expires'}
CANON = {n.lower(): n for n in (
    'Via From To Call-ID CSeq Contact Content-Length Content-Type Max-Forwards Route Record-Route Service-Route '
    'Allow Supported Require Proxy-Require Authorization WWW-Authenticate Expires Event Subscription-State '
    'Accept Accept-Contact Reject-Contact P-Preferred-Service P-Asserted-Service P-Asserted-Identity '
    'P-Preferred-Identity P-Associated-URI P-Access-Network-Info P-Visited-Network-ID P-Charging-Vector '
    'Path Security-Client Security-Server Security-Verify User-Agent Server Date Subject Contribution-ID '
    'Conversation-ID InReplyTo-Contribution-ID Refer-To Referred-By Session-Expires Min-SE Retry-After '
    'Content-Disposition Content-Encoding Allow-Events Privacy Warning Flow-Timer Min-Expires Reason '
    'Accept-Language Accept-Encoding Organization Timestamp RAck RSeq').split()}
LIST_HEADERS = {'via', 'route', 'record-route', 'contact', 'path', 'service-route', 'p-associated-uri',
                'supported', 'require', 'allow', 'accept', 'allow-events', 'p-asserted-identity'}


def canon_name(n):
    n = n.strip()
    if n.lower() in COMPACT:
        return COMPACT[n.lower()]
    return CANON.get(n.lower(), '-'.join(p[:1].upper() + p[1:] for p in n.split('-')))


def split_commas(v):
    out, cur, q, ang = [], [], False, False
    for ch in v:
        if ch == '"':
            q = not q
        elif ch == '<' and not q:
            ang = True
        elif ch == '>' and not q:
            ang = False
        if ch == ',' and not q and not ang:
            out.append(''.join(cur).strip())
            cur = []
        else:
            cur.append(ch)
    s = ''.join(cur).strip()
    if s:
        out.append(s)
    return out


class SipMessage:
    def __init__(self, method=None, uri=None, status=None, reason=''):
        self.is_request = status is None
        self.method = method or ''
        self.uri = uri or ''
        self.status = status or 0
        self.reason = reason
        self.headers = []          # [(canon-name, value)]
        self.body = b''

    # ------------------------------------------------ parse
    @classmethod
    def parse(cls, data):
        head, _, body = data.partition(b'\r\n\r\n')
        text = head.decode('utf-8', 'replace')
        lines = text.split('\r\n')
        unfolded = []
        for ln in lines[1:]:
            if ln[:1] in (' ', '\t') and unfolded:
                unfolded[-1] += ' ' + ln.strip()
            else:
                unfolded.append(ln)
        first = lines[0].strip()
        if first.upper().startswith('SIP/2.0'):
            parts = first.split(' ', 2)
            m = cls(status=int(parts[1]), reason=parts[2] if len(parts) > 2 else '')
        else:
            parts = first.split(' ')
            if len(parts) < 3:
                raise ValueError('bad request line: %r' % first)
            m = cls(method=parts[0].upper(), uri=parts[1])
        for ln in unfolded:
            if not ln.strip():
                continue
            k, sep, v = ln.partition(':')
            if not sep:
                raise ValueError('bad header: %r' % ln)
            m.headers.append((canon_name(k), v.strip()))
        cl = m.header('Content-Length')
        if cl is not None and cl.strip().isdigit():
            body = body[:int(cl)]
        m.body = body
        return m

    # ------------------------------------------------ headers
    def header(self, name, default=None):
        n = name.lower()
        for k, v in self.headers:
            if k.lower() == n:
                return v
        return default

    def all(self, name):
        n = name.lower()
        out = []
        for k, v in self.headers:
            if k.lower() == n:
                if n in LIST_HEADERS:
                    out.extend(split_commas(v))
                else:
                    out.append(v)
        return out

    def set(self, name, value):
        n = name.lower()
        replaced = False
        new = []
        for k, v in self.headers:
            if k.lower() == n:
                if not replaced:
                    new.append((canon_name(name), value))
                    replaced = True
            else:
                new.append((k, v))
        if not replaced:
            new.append((canon_name(name), value))
        self.headers = new

    def add(self, name, value):
        self.headers.append((canon_name(name), value))

    def insert(self, name, value, index=0):
        self.headers.insert(index, (canon_name(name), value))

    def remove(self, name):
        n = name.lower()
        self.headers = [(k, v) for k, v in self.headers if k.lower() != n]

    def has_option(self, header, tag):
        return any(tag.lower() == t.split(';')[0].strip().lower() for t in self.all(header))

    @property
    def call_id(self):
        return self.header('Call-ID', '')

    @property
    def cseq(self):
        v = self.header('CSeq', '0 X').split()
        try:
            return int(v[0]), (v[1].upper() if len(v) > 1 else '')
        except ValueError:
            return 0, ''

    @property
    def branch(self):
        v = self.header('Via', '')
        m = re.search(r';\s*branch=([^;,\s]+)', v)
        return m.group(1) if m else ''

    @property
    def ctype(self):
        return (self.header('Content-Type', '') or '').split(';')[0].strip().lower()

    @property
    def from_tag(self):
        return addr_param(self.header('From', ''), 'tag')

    @property
    def to_tag(self):
        return addr_param(self.header('To', ''), 'tag')

    @property
    def from_uri(self):
        return addr_uri(self.header('From', ''))

    @property
    def to_uri(self):
        return addr_uri(self.header('To', ''))

    # ------------------------------------------------ encode
    def encode(self):
        if self.is_request:
            first = '%s %s SIP/2.0' % (self.method, self.uri)
        else:
            first = 'SIP/2.0 %d %s' % (self.status, self.reason)
        hdrs = [(k, v) for k, v in self.headers if k.lower() != 'content-length']
        hdrs.append(('Content-Length', str(len(self.body))))
        out = first + '\r\n' + ''.join('%s: %s\r\n' % (k, v) for k, v in hdrs) + '\r\n'
        return out.encode('utf-8') + self.body

    def text(self, maxbody=4000):
        raw = self.encode()
        head, _, body = raw.partition(b'\r\n\r\n')
        t = head.decode('utf-8', 'replace').replace('\r\n', '\n')
        if body:
            ct = self.ctype
            if ct.startswith('text/') or ct.endswith('xml') or ct in ('application/sdp', 'message/cpim') or \
                    ct.startswith('multipart/') or ct.startswith('message/'):
                b = body.decode('utf-8', 'replace').replace('\r\n', '\n')
                t += '\n\n' + (b[:maxbody] + ('...[+%d]' % (len(b) - maxbody) if len(b) > maxbody else ''))
            else:
                t += '\n\n<%d bytes %s>' % (len(body), ct)
        return t


class SipFramer:
    PING = object()
    MAXHDR = 64 * 1024

    def __init__(self):
        self.buf = bytearray()

    def feed(self, data):
        self.buf += data
        out = []
        while True:
            while True:
                if self.buf.startswith(b'\r\n\r\n'):
                    del self.buf[:4]
                    out.append(self.PING)
                elif self.buf.startswith(b'\r\n') and len(self.buf) > 2:
                    del self.buf[:2]
                else:
                    break
            idx = self.buf.find(b'\r\n\r\n')
            if idx < 0:
                if len(self.buf) > self.MAXHDR:
                    raise ValueError('SIP header too large')
                break
            head = bytes(self.buf[:idx])
            m = re.search(rb'(?im)^(?:content-length|l)[ \t]*:[ \t]*(\d+)', head)
            cl = int(m.group(1)) if m else 0
            total = idx + 4 + cl
            if len(self.buf) < total:
                break
            raw = bytes(self.buf[:total])
            del self.buf[:total]
            out.append(SipMessage.parse(raw))
        return out


# ---------------------------------------------------------------- addr helpers
def addr_uri(v):
    if not v:
        return ''
    m = re.search(r'<([^>]*)>', v)
    if m:
        return m.group(1)
    return v.split(';')[0].strip()


def addr_params(v):
    if not v:
        return {}
    if '>' in v:
        rest = v.split('>', 1)[1]
    else:
        rest = ';'.join(v.split(';')[1:])
        rest = ';' + rest if rest else ''
    out = {}
    for p in rest.split(';'):
        p = p.strip()
        if not p:
            continue
        k, _, val = p.partition('=')
        out[k.strip().lower()] = val.strip().strip('"')
    return out


def addr_param(v, name):
    return addr_params(v).get(name)


def uri_parts(uri):
    """-> (scheme, user, host, port, params dict)"""
    uri = addr_uri(uri)
    scheme, _, rest = uri.partition(':')
    params = {}
    if ';' in rest:
        rest, _, p = rest.partition(';')
        for x in p.split(';'):
            k, _, v = x.partition('=')
            params[k.lower()] = v
    user = ''
    if '@' in rest:
        user, _, rest = rest.rpartition('@')
    host, port = rest, None
    if rest.startswith('['):
        h, _, pp = rest.partition(']')
        host = h + ']'
        if pp.startswith(':'):
            port = int(pp[1:])
    elif ':' in rest:
        host, _, p = rest.partition(':')
        port = int(p) if p.isdigit() else None
    return scheme.lower(), user, host, port, params


def new_tag():
    return secrets.token_hex(5)


def new_branch():
    return 'z9hG4bK' + secrets.token_hex(6)


def new_callid(host):
    return secrets.token_hex(10) + '@' + host


# ---------------------------------------------------------------- SDP
def parse_sdp(text):
    r = {'ip': None, 'port': 0, 'proto': '', 'path': [], 'setup': None, 'accept_types': [], 'accept_wrapped': [],
         'has_message': False, 'attrs': {}, 'sendrecv': None}
    in_msg = False
    for ln in text.replace('\r\n', '\n').split('\n'):
        ln = ln.strip()
        if ln.startswith('c=') and not in_msg:
            parts = ln[2:].split()
            if len(parts) >= 3:
                r['ip'] = parts[2]
        elif ln.startswith('m='):
            parts = ln[2:].split()
            if parts and parts[0] == 'message' and not r['has_message']:
                in_msg = True
                r['has_message'] = True
                r['port'] = int(parts[1]) if parts[1].isdigit() else 0
                r['proto'] = parts[2] if len(parts) > 2 else ''
            else:
                in_msg = False
        elif ln.startswith('c=') and in_msg:
            parts = ln[2:].split()
            if len(parts) >= 3:
                r['ip'] = parts[2]
        elif ln.startswith('a=') and in_msg:
            k, _, v = ln[2:].partition(':')
            r['attrs'][k] = v
            if k == 'path':
                r['path'] = v.split()
            elif k == 'setup':
                r['setup'] = v.strip().lower()
            elif k == 'accept-types':
                r['accept_types'] = v.split()
            elif k == 'accept-wrapped-types':
                r['accept_wrapped'] = v.split()
            elif k in ('sendrecv', 'sendonly', 'recvonly', 'inactive'):
                r['sendrecv'] = k
    return r


def build_sdp(ip, port, proto, path, setup, accept_types, accept_wrapped, sess_id=None, version=None):
    sid = sess_id or secrets.randbits(31)
    lines = ['v=0', 'o=- %s %s IN IP4 %s' % (sid, version or sid, ip), 's=-', 'c=IN IP4 %s' % ip, 't=0 0',
             'm=message %d %s *' % (port, proto),
             'a=path:%s' % path]
    if setup:
        lines.append('a=setup:%s' % setup)
    lines.append('a=accept-types:%s' % ' '.join(accept_types))
    if accept_wrapped:
        lines.append('a=accept-wrapped-types:%s' % ' '.join(accept_wrapped))
    lines.append('a=sendrecv')
    return ('\r\n'.join(lines) + '\r\n').encode()


# ---------------------------------------------------------------- multipart
def parse_multipart(ctype_header, body):
    """-> list of (headers dict lowercase, bytes)"""
    m = re.search(r'boundary="?([^";]+)"?', ctype_header or '', re.I)
    if not m:
        return []
    b = ('--' + m.group(1)).encode()
    parts = []
    chunks = body.split(b)
    for c in chunks[1:]:
        if c.startswith(b'--'):
            break
        if c.startswith(b'\r\n'):
            c = c[2:]
        if c.endswith(b'\r\n'):
            c = c[:-2]
        h, sep, data = c.partition(b'\r\n\r\n')
        if not sep:
            h, sep, data = c.partition(b'\n\n')
        hd = {}
        for ln in h.decode('utf-8', 'replace').replace('\r\n', '\n').split('\n'):
            k, s, v = ln.partition(':')
            if s:
                hd[k.strip().lower()] = v.strip()
        parts.append((hd, data))
    return parts


def build_multipart(parts, boundary=None, subtype='mixed'):
    """parts: [(content_type, bytes[, extra header lines])] -> (content-type header, body)"""
    boundary = boundary or ('boundary_' + secrets.token_hex(8))
    out = b''
    for p in parts:
        ct, data = p[0], p[1]
        extra = p[2] if len(p) > 2 else []
        out += ('--%s\r\nContent-Type: %s\r\n' % (boundary, ct)).encode()
        for e in extra:
            out += (e + '\r\n').encode()
        out += b'\r\n' + data + b'\r\n'
    out += ('--%s--\r\n' % boundary).encode()
    return 'multipart/%s;boundary=%s' % (subtype, boundary), out
