"""Shared helpers: trace ring buffer, ids, credentials, URIs, digest auth, TLS certs."""
import asyncio
import collections
import datetime
import hashlib
import hmac
import os
import re
import secrets
import shutil
import ssl
import subprocess
import sys
import time

_start = time.time()


def now_iso():
    d = datetime.datetime.now(datetime.timezone.utc)
    return d.strftime('%Y-%m-%dT%H:%M:%S.') + '%03dZ' % (d.microsecond // 1000)


def iso_in(seconds):
    d = datetime.datetime.now(datetime.timezone.utc) + datetime.timedelta(seconds=seconds)
    return d.strftime('%Y-%m-%dT%H:%M:%SZ')


def rand_hex(n=8):
    return secrets.token_hex(n)


def rand_token(n=10):
    return secrets.token_urlsafe(n).replace('-', 'a').replace('_', 'b')


def md5hex(s):
    if isinstance(s, str):
        s = s.encode('utf-8')
    return hashlib.md5(s).hexdigest()


def derive_password(secret, kind, ident):
    """Stateless credential: survives mock restarts, no storage needed."""
    return hmac.new(secret.encode(), ('%s:%s' % (kind, ident)).encode(), hashlib.sha256).hexdigest()[:20]


# ---------------------------------------------------------------- trace
class Trace:
    def __init__(self, maxlen=4000, verbose=0):
        self.buf = collections.deque(maxlen=maxlen)
        self.n = 0
        self.verbose = verbose

    def add(self, proto, direction, peer, text, **kw):
        self.n += 1
        if isinstance(text, (bytes, bytearray)):
            text = bytes(text).decode('utf-8', 'replace')
        e = {'n': self.n, 'ts': now_iso(), 'proto': proto, 'dir': direction, 'peer': str(peer), 'text': text}
        e.update(kw)
        self.buf.append(e)
        if self.verbose:
            first = text.split('\n', 1)[0].strip()
            if self.verbose > 1:
                sys.stderr.write('[%s] %s %s %s\n%s\n' % (e['ts'][11:23], proto, direction, peer, text))
            else:
                sys.stderr.write('[%s] %s %s %s %s\n' % (e['ts'][11:23], proto, direction, peer, first[:160]))
            sys.stderr.flush()
        return e

    def event(self, text, **kw):
        return self.add('EVT', '--', '-', text, **kw)

    def tail(self, limit=200, proto=None, contains=None, since=0):
        out = []
        for e in self.buf:
            if e['n'] <= since:
                continue
            if proto and e['proto'].lower() != proto.lower():
                continue
            if contains and contains.lower() not in e['text'].lower():
                continue
            out.append(e)
        return out[-limit:]


# ---------------------------------------------------------------- numbers / URIs
_NUM_RE = re.compile(r'^\+?[\d][\d\-\.\(\) ]*$')


def norm_number(s):
    if s is None:
        return None
    s = str(s).strip()
    if not s:
        return None
    if not _NUM_RE.match(s):
        return None
    d = re.sub(r'\D', '', s)
    return '+' + d if d else None


def number_from_uri(uri):
    """sip:+1555@host;user=phone / tel:+1555;x=y / <...> -> '+1555' or None."""
    if not uri:
        return None
    u = uri.strip()
    m = re.search(r'<([^>]*)>', u)
    if m:
        u = m.group(1)
    u = u.split(';', 1)[0] if u.lower().startswith('tel:') else u
    low = u.lower()
    if low.startswith('tel:'):
        return norm_number(u[4:])
    if low.startswith('sip:') or low.startswith('sips:'):
        rest = u.split(':', 1)[1]
        user = rest.split('@', 1)[0] if '@' in rest else ''
        user = user.split(';', 1)[0]
        user = user.replace('%2B', '+').replace('%2b', '+')
        return norm_number(user)
    return None


def local_ip_for(host):
    import socket
    try:
        socket.inet_aton(host)
        return host
    except OSError:
        pass
    try:
        return socket.gethostbyname(host)
    except OSError:
        return '127.0.0.1'


def is_ip(host):
    import socket
    try:
        socket.inet_aton(host)
        return True
    except OSError:
        return False


# ---------------------------------------------------------------- digest
_AUTH_RE = re.compile(r'(\w+)\s*=\s*(?:"((?:[^"\\]|\\.)*)"|([^\s,]+))')


def parse_auth_params(value):
    value = value.strip()
    scheme, _, rest = value.partition(' ')
    params = {}
    for m in _AUTH_RE.finditer(rest):
        params[m.group(1).lower()] = m.group(2) if m.group(2) is not None else m.group(3)
    return scheme.lower(), params


def digest_response(username, realm, password, method, uri, nonce, nc=None, cnonce=None, qop=None):
    ha1 = md5hex('%s:%s:%s' % (username, realm, password))
    ha2 = md5hex('%s:%s' % (method, uri))
    if qop:
        return md5hex('%s:%s:%s:%s:%s:%s' % (ha1, nonce, nc, cnonce, qop, ha2))
    return md5hex('%s:%s:%s' % (ha1, nonce, ha2))


class NonceStore:
    def __init__(self, ttl=300):
        self.ttl = ttl
        self.nonces = {}

    def new(self):
        now = time.time()
        for k in [k for k, t in self.nonces.items() if now - t > self.ttl * 4]:
            del self.nonces[k]
        n = rand_hex(16)
        self.nonces[n] = now
        return n

    def state(self, nonce):
        t = self.nonces.get(nonce)
        if t is None:
            return 'unknown'
        if time.time() - t > self.ttl:
            return 'stale'
        return 'ok'


def check_digest(auth_value, method, password_for, realm, nonces):
    """Return (ok, username, stale). password_for(username) -> password or None."""
    try:
        scheme, p = parse_auth_params(auth_value)
    except Exception:
        return False, None, False
    if scheme != 'digest':
        return False, None, False
    user = p.get('username')
    nonce = p.get('nonce', '')
    if not user or not p.get('response'):
        return False, user, False
    st = nonces.state(nonce)
    if st != 'ok':
        return False, user, st == 'stale'
    pw = password_for(user)
    if pw is None:
        return False, user, False
    alg = p.get('algorithm', 'MD5').upper()
    if alg != 'MD5':
        return False, user, False
    exp = digest_response(user, p.get('realm', realm), pw, method, p.get('uri', ''), nonce,
                          p.get('nc'), p.get('cnonce'), p.get('qop'))
    return hmac.compare_digest(exp, p['response'].lower()), user, False


# ---------------------------------------------------------------- TLS
def ensure_cert(cert_dir, hosts):
    """Self-signed cert via openssl. Returns (certfile, keyfile) or None."""
    if not shutil.which('openssl'):
        return None
    os.makedirs(cert_dir, exist_ok=True)
    cert = os.path.join(cert_dir, 'cert.pem')
    key = os.path.join(cert_dir, 'key.pem')
    hostsf = os.path.join(cert_dir, 'hosts.txt')
    want = ','.join(sorted(set(hosts) | {'localhost', '127.0.0.1'}))
    have = open(hostsf).read() if os.path.exists(hostsf) else None
    if os.path.exists(cert) and os.path.exists(key) and have == want:
        return cert, key
    san = []
    for h in want.split(','):
        san.append(('IP:' if is_ip(h) else 'DNS:') + h)
    cmd = ['openssl', 'req', '-x509', '-newkey', 'rsa:2048', '-nodes', '-keyout', key, '-out', cert,
           '-days', '3650', '-sha256', '-subj', '/CN=rcs-mock', '-addext', 'subjectAltName=' + ','.join(san)]
    try:
        subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, timeout=60)
    except Exception as e:
        sys.stderr.write('openssl cert generation failed: %s\n' % e)
        return None
    with open(hostsf, 'w') as f:
        f.write(want)
    return cert, key


def server_ssl(cert_key):
    ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    ctx.load_cert_chain(*cert_key)
    try:
        ctx.minimum_version = ssl.TLSVersion.TLSv1_2
    except Exception:
        pass
    return ctx


def client_ssl_noverify():
    ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_CLIENT)
    ctx.check_hostname = False
    ctx.verify_mode = ssl.CERT_NONE
    return ctx


def spawn(coro, name=None):
    t = asyncio.ensure_future(coro)
    _tasks.add(t)
    t.add_done_callback(_task_done)
    return t


_tasks = set()


def _task_done(t):
    _tasks.discard(t)
    if not t.cancelled() and t.exception() is not None:
        import traceback
        sys.stderr.write('background task failed: %r\n' % (t.exception(),))
        traceback.print_exception(t.exception())
