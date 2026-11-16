"""MSRP (RFC 4975) framing/builders, CPIM (RFC 3862), IMDN (RFC 5438), isComposing, FT-HTTP XML,
conference-info (RFC 4575)."""
import re
import secrets
import xml.etree.ElementTree as ET
from xml.sax.saxutils import escape

from .util import now_iso

NS_IMDN = 'urn:ietf:params:imdn'


# ---------------------------------------------------------------- MSRP
class MsrpMsg:
    def __init__(self):
        self.tid = ''
        self.method = None      # SEND / REPORT / other, None for responses
        self.status = None
        self.reason = ''
        self.headers = []       # [(name, value)]
        self.body = b''
        self.flag = '$'

    def header(self, name, default=None):
        n = name.lower()
        for k, v in self.headers:
            if k.lower() == n:
                return v
        return default

    @property
    def to_path(self):
        return (self.header('To-Path') or '').split()

    @property
    def from_path(self):
        return (self.header('From-Path') or '').split()

    def byte_range(self):
        v = self.header('Byte-Range')
        if not v:
            return None
        m = re.match(r'\s*(\d+)-(\d+|\*)/(\d+|\*)', v)
        if not m:
            return None
        return (int(m.group(1)), None if m.group(2) == '*' else int(m.group(2)),
                None if m.group(3) == '*' else int(m.group(3)))

    def text(self, maxbody=3000):
        s = ('MSRP %s %s' % (self.tid, self.method if self.method else '%s %s' % (self.status, self.reason))).strip()
        s += '\n' + '\n'.join('%s: %s' % h for h in self.headers)
        ct = (self.header('Content-Type') or '')
        if self.body:
            if ct.startswith('text/') or ct.startswith('message/') or 'xml' in ct:
                b = self.body.decode('utf-8', 'replace').replace('\r\n', '\n')
                s += '\n\n' + b[:maxbody] + ('...[+%d]' % (len(b) - maxbody) if len(b) > maxbody else '')
            else:
                s += '\n\n<%d bytes>' % len(self.body)
        s += '\n-------%s%s' % (self.tid, self.flag)
        return s


class MsrpFramer:
    def __init__(self):
        self.buf = bytearray()

    def feed(self, data):
        self.buf += data
        out = []
        while True:
            while self.buf.startswith(b'\r\n'):
                del self.buf[:2]
            if not self.buf:
                break
            idx = self.buf.find(b'\r\n')
            if idx < 0:
                if len(self.buf) > 4096:
                    raise ValueError('MSRP garbage')
                break
            first = bytes(self.buf[:idx]).decode('latin1').split(' ', 3)
            if first[0] != 'MSRP' or len(first) < 3:
                raise ValueError('bad MSRP start line %r' % first)
            tid = first[1]
            marker = b'\r\n-------' + tid.encode('latin1')
            pos = self.buf.find(marker, idx)
            if pos < 0:
                break
            end = pos + len(marker)
            if len(self.buf) < end + 3:
                break
            flag = chr(self.buf[end])
            if flag not in '$+#':
                raise ValueError('bad MSRP flag')
            m = MsrpMsg()
            m.tid = tid
            m.flag = flag
            if first[2].isdigit():
                m.status = int(first[2])
                m.reason = first[3] if len(first) > 3 else ''
            else:
                m.method = first[2]
            raw = bytes(self.buf[idx + 2:pos])
            hpart, sep, body = raw.partition(b'\r\n\r\n')
            for ln in hpart.decode('utf-8', 'replace').split('\r\n'):
                if not ln:
                    continue
                k, s, v = ln.partition(':')
                if s:
                    m.headers.append((k.strip(), v.strip()))
            m.body = body
            del self.buf[:end + 3]
            out.append(m)
        return out


def new_tid():
    return secrets.token_hex(6)


def build_msrp(tid, start, headers, body=None, flag='$'):
    """start: 'SEND' or '200 OK'."""
    out = 'MSRP %s %s\r\n' % (tid, start)
    out += ''.join('%s: %s\r\n' % h for h in headers)
    out = out.encode('utf-8')
    if body:
        out += b'\r\n' + body + b'\r\n'
    out += ('-------%s%s\r\n' % (tid, flag)).encode()
    return out


def msrp_session_id(uri):
    """msrp://host:port/sid;tcp -> sid"""
    m = re.match(r'msrps?://[^/]*/([^;]*)', uri or '')
    return m.group(1) if m else None


def msrp_hostport(uri):
    m = re.match(r'(msrps?)://([^/:]+|\[[^\]]+\])(?::(\d+))?/', uri or '')
    if not m:
        return None
    return m.group(1), m.group(2).strip('[]'), int(m.group(3) or (2856 if m.group(1) == 'msrps' else 2855))


# ---------------------------------------------------------------- CPIM
class Cpim:
    def __init__(self):
        self.headers = []      # [(name, value)] of CPIM headers
        self.ctype = ''        # inner content type (full header value)
        self.mime = {}         # inner mime headers lowercase
        self.body = b''
        self.ns = {}           # prefix -> uri

    def get(self, name):
        """name like 'From' or 'imdn.Message-ID' (resolved through NS prefixes)."""
        n = name.lower()
        prefix, _, bare = n.rpartition('.')
        cands = {n}
        if prefix == 'imdn':
            for p, u in self.ns.items():
                if u == NS_IMDN:
                    cands.add((p + '.' + bare).lower())
        for k, v in self.headers:
            if k.lower() in cands:
                return v
        return None

    @property
    def message_id(self):
        return self.get('imdn.Message-ID')

    @property
    def dispositions(self):
        v = self.get('imdn.Disposition-Notification')
        return [x.strip().lower() for x in v.split(',') if x.strip()] if v else []

    @property
    def inner_type(self):
        return self.ctype.split(';')[0].strip().lower()


def uri_of(v):
    m = re.search(r'<([^>]*)>', v or '')
    return m.group(1) if m else (v or '').strip()


def parse_cpim(data):
    c = Cpim()
    head, sep, rest = data.partition(b'\r\n\r\n')
    if not sep:
        raise ValueError('not CPIM')
    for ln in head.decode('utf-8', 'replace').split('\r\n'):
        k, s, v = ln.partition(':')
        if not s:
            continue
        k, v = k.strip(), v.strip()
        if k.upper() == 'NS':
            m = re.match(r'(\w+)\s*<([^>]*)>', v)
            if m:
                c.ns[m.group(1).lower()] = m.group(2)
        c.headers.append((k, v))
    mh, sep, body = rest.partition(b'\r\n\r\n')
    if not sep:
        mh, body = rest, b''
    for ln in mh.decode('utf-8', 'replace').split('\r\n'):
        k, s, v = ln.partition(':')
        if s:
            c.mime[k.strip().lower()] = v.strip()
    c.ctype = c.mime.get('content-type', '')
    cl = c.mime.get('content-length')
    if cl and cl.isdigit():
        body = body[:int(cl)]
    c.body = body
    return c


def build_cpim(from_uri, to_uri, ctype, body, message_id=None, dispositions=None, datetime=None,
               extra=None, disposition_hdr=None):
    h = ['From: <%s>' % from_uri, 'To: <%s>' % to_uri, 'DateTime: %s' % (datetime or now_iso()),
         'NS: imdn <%s>' % NS_IMDN]
    if message_id:
        h.append('imdn.Message-ID: %s' % message_id)
    if dispositions:
        h.append('imdn.Disposition-Notification: %s' % ', '.join(dispositions))
    for k, v in (extra or []):
        h.append('%s: %s' % (k, v))
    m = ['Content-Type: %s' % ctype]
    if disposition_hdr:
        m.append('Content-Disposition: %s' % disposition_hdr)
    m.append('Content-Length: %d' % len(body))
    return ('\r\n'.join(h) + '\r\n\r\n' + '\r\n'.join(m) + '\r\n\r\n').encode('utf-8') + body


# ---------------------------------------------------------------- IMDN
def build_imdn(message_id, recipient_uri, status='delivered', original_recipient=None, datetime=None):
    note = 'display-notification' if status == 'displayed' else 'delivery-notification'
    xml = ('<?xml version="1.0" encoding="UTF-8"?>'
           '<imdn xmlns="urn:ietf:params:xml:ns:imdn"><message-id>%s</message-id><datetime>%s</datetime>'
           '<recipient-uri>%s</recipient-uri>%s<%s><status><%s/></status></%s></imdn>') % (
        escape(message_id), datetime or now_iso(), escape(recipient_uri),
        ('<original-recipient-uri>%s</original-recipient-uri>' % escape(original_recipient)) if original_recipient else '',
        note, status, note)
    return xml.encode()


def _local(tag):
    return tag.rsplit('}', 1)[-1]


def parse_imdn(data):
    root = ET.fromstring(data)
    r = {'message_id': None, 'status': None, 'kind': None, 'recipient': None}
    for e in root.iter():
        t = _local(e.tag)
        if t == 'message-id':
            r['message_id'] = (e.text or '').strip()
        elif t == 'recipient-uri':
            r['recipient'] = (e.text or '').strip()
        elif t in ('delivery-notification', 'display-notification', 'processing-notification'):
            r['kind'] = t
            for s in e.iter():
                if _local(s.tag) in ('delivered', 'failed', 'forbidden', 'error', 'displayed', 'processed', 'stored'):
                    r['status'] = _local(s.tag)
    return r


# ---------------------------------------------------------------- isComposing
def build_composing(state='active', refresh=60, ctype='text/plain'):
    return ('<?xml version="1.0" encoding="UTF-8"?><isComposing xmlns="urn:ietf:params:xml:ns:im-iscomposing" '
            'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><state>%s</state><contenttype>%s</contenttype>'
            '<refresh>%d</refresh></isComposing>' % (state, ctype, refresh)).encode()


def parse_composing(data):
    root = ET.fromstring(data)
    r = {'state': None, 'contenttype': None, 'refresh': None}
    for e in root.iter():
        t = _local(e.tag)
        if t in r:
            r[t] = (e.text or '').strip()
    return r


# ---------------------------------------------------------------- FT over HTTP
def build_ft_xml(name, size, ctype, url, until, thumb=None):
    s = '<?xml version="1.0" encoding="UTF-8"?><file>'
    if thumb:
        s += ('<file-info type="thumbnail"><file-size>%d</file-size><content-type>%s</content-type>'
              '<data url="%s" until="%s"/></file-info>') % (thumb['size'], escape(thumb['type']),
                                                            escape(thumb['url'], {'"': '&quot;'}), until)
    s += ('<file-info type="file"><file-size>%d</file-size><file-name>%s</file-name><content-type>%s</content-type>'
          '<data url="%s" until="%s"/></file-info></file>') % (size, escape(name), escape(ctype),
                                                              escape(url, {'"': '&quot;'}), until)
    return s.encode()


def parse_ft_xml(data):
    root = ET.fromstring(data)
    out = {'file': None, 'thumbnail': None}
    for fi in root.iter():
        if _local(fi.tag) != 'file-info':
            continue
        d = {'type': fi.get('type', 'file')}
        for c in fi:
            t = _local(c.tag)
            if t == 'data':
                d['url'] = c.get('url')
                d['until'] = c.get('until')
            elif t == 'file-size':
                d['size'] = int((c.text or '0').strip() or 0)
            elif t in ('file-name', 'content-type'):
                d[t.replace('-', '_')] = (c.text or '').strip()
        out['thumbnail' if d['type'] == 'thumbnail' else 'file'] = d
    return out


# ---------------------------------------------------------------- conference-info
def build_conf_info(entity, version, state, subject, users):
    """users: list of dict(uri, status, method=None, display=None, roles=[])"""
    s = ('<?xml version="1.0" encoding="UTF-8"?><conference-info xmlns="urn:ietf:params:xml:ns:conference-info" '
         'entity="%s" state="%s" version="%d">') % (escape(entity), state, version)
    s += '<conference-description><subject>%s</subject></conference-description>' % escape(subject or '')
    n = sum(1 for u in users if u['status'] == 'connected')
    s += '<conference-state><user-count>%d</user-count></conference-state><users>' % n
    for u in users:
        s += '<user entity="%s" state="full">' % escape(u['uri'])
        if u.get('display'):
            s += '<display-text>%s</display-text>' % escape(u['display'])
        if u.get('roles'):
            s += '<roles>%s</roles>' % ''.join('<entry>%s</entry>' % escape(r) for r in u['roles'])
        s += '<endpoint entity="%s"><status>%s</status>' % (escape(u['uri']), u['status'])
        if u['status'] == 'connected':
            s += '<joining-method>dialed-in</joining-method>'
        elif u.get('method'):
            s += '<disconnection-method>%s</disconnection-method>' % u['method']
        s += '</endpoint></user>'
    s += '</users></conference-info>'
    return s.encode()
