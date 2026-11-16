"""FT-over-HTTP content server (RCC.07 / OMA CPM FT HTTP) and in-memory file store."""
import asyncio
import base64
import hashlib
import re
import time

from .httpd import Response, parse_multipart_form
from .msrp import build_ft_xml
from .util import check_digest, derive_password, iso_in, rand_hex, now_iso

FT_REALM = 'ft.rcs.mock'
FT_CTYPE = 'application/vnd.gsma.rcs-ft-http+xml'


class FileStore:
    def __init__(self, net):
        self.net = net
        self.files = {}      # id -> rec
        self.by_tid = {}

    def put(self, name, ctype, data, thumb=None, uploader=None, tid=None, ttl=7 * 86400):
        fid = rand_hex(10)
        rec = {'id': fid, 'name': name, 'type': ctype, 'data': data, 'size': len(data),
               'sha256': hashlib.sha256(data).hexdigest(), 'thumb': thumb, 'uploader': uploader, 'tid': tid,
               'created': now_iso(), 'until': iso_in(ttl), 'downloads': 0}
        self.files[fid] = rec
        if tid:
            self.by_tid[tid] = rec
        return rec

    def url(self, rec):
        return '%s/files/%s' % (self.net.cfg.ft_base, rec['id'])

    def thumb_url(self, rec):
        return '%s/thumbs/%s' % (self.net.cfg.ft_base, rec['id'])

    def file_info_xml(self, rec):
        thumb = None
        if rec.get('thumb'):
            thumb = {'size': len(rec['thumb'][0]), 'type': rec['thumb'][1], 'url': self.thumb_url(rec)}
        return build_ft_xml(rec['name'], rec['size'], rec['type'], self.url(rec), rec['until'], thumb)

    def by_url(self, url):
        m = re.search(r'/ft/(files|thumbs)/([0-9a-f]+)', url or '')
        if not m:
            return None
        return self.files.get(m.group(2)), m.group(1)

    def summary(self, rec):
        return {k: rec[k] for k in ('id', 'name', 'type', 'size', 'sha256', 'uploader', 'tid', 'created', 'until',
                                    'downloads')} | {'url': self.url(rec), 'has_thumbnail': bool(rec.get('thumb'))}


def _challenge(net, stale=False):
    n = net.nonces.new()
    return Response(401, 'Unauthorized', 'text/plain', [
        ('WWW-Authenticate', 'Digest realm="%s", nonce="%s", qop="auth", algorithm=MD5, opaque="%s"%s' % (
            FT_REALM, n, rand_hex(8), ', stale=true' if stale else ''))])


def authenticate(net, req):
    """-> (user or None, challenge Response or None)"""
    cfg = net.cfg
    a = req.headers.get('authorization')
    if not a:
        return None, _challenge(net)
    scheme = a.split(' ', 1)[0].lower()
    if scheme == 'basic':
        try:
            u, _, p = base64.b64decode(a.split(' ', 1)[1]).decode().partition(':')
        except Exception:
            return None, _challenge(net)
        if p == cfg.ft_pass(u):
            return u, None
        return None, _challenge(net)
    if scheme == 'bearer':
        tok = a.split(' ', 1)[1].strip()
        t = net.tokens.get(tok)
        if t and t['expires'] > time.time():
            return t['msisdn'], None
        return None, _challenge(net)
    ok, user, stale = check_digest(a, req.method, cfg.ft_pass, FT_REALM, net.nonces)
    if ok:
        return user, None
    return None, _challenge(net, stale)


async def handle_ft(net, req):
    cfg = net.cfg
    fs = net.files
    rule = net.take_chaos('ft', req.method)
    if rule:
        if rule.get('delay_ms'):
            await asyncio.sleep(rule['delay_ms'] / 1000.0)
        if rule.get('action') == 'drop':
            return None
        return Response(rule.get('code', 503), 'injected failure', 'text/plain',
                        [('Retry-After', str(rule['retry_after']))] if rule.get('retry_after') else None)
    path = req.path
    rest = path[len('/ft'):].rstrip('/')
    # ---- downloads
    m = re.match(r'^/(files|thumbs)/([0-9a-f]+)$', rest)
    if m and req.method in ('GET', 'HEAD'):
        user = None
        if not cfg.ft_open_download:
            user, ch = authenticate(net, req)
            if ch:
                return ch
        rec = fs.files.get(m.group(2))
        if not rec:
            return Response(404, 'Not Found', 'text/plain')
        if m.group(1) == 'thumbs':
            if not rec.get('thumb'):
                return Response(404, 'Not Found', 'text/plain')
            data, ctype = rec['thumb']
        else:
            data, ctype = rec['data'], rec['type']
            if req.method == 'GET':
                rec['downloads'] += 1
                rec.setdefault('downloaded_by', []).append(user)
        rng = req.headers.get('range')
        if rng:
            mm = re.match(r'bytes=(\d*)-(\d*)', rng)
            if mm:
                total = len(data)
                if mm.group(1) == '':
                    start, end = max(0, total - int(mm.group(2))), total - 1
                else:
                    start = int(mm.group(1))
                    end = int(mm.group(2)) if mm.group(2) else total - 1
                end = min(end, total - 1)
                if start > end:
                    return Response(416, 'Range Not Satisfiable', 'text/plain',
                                    [('Content-Range', 'bytes */%d' % total)])
                return Response(206, data[start:end + 1], ctype,
                                [('Content-Range', 'bytes %d-%d/%d' % (start, end, total)),
                                 ('Accept-Ranges', 'bytes')])
        return Response(200, data, ctype, [('Accept-Ranges', 'bytes')])
    # ---- upload info (resume)
    if rest == '' and req.method == 'GET' and 'get_upload_info' in req.query:
        user, ch = authenticate(net, req)
        if ch:
            return ch
        rec = fs.by_tid.get(req.q('tid'))
        if not rec:
            return Response(404, 'Not Found', 'text/plain')
        body = ('<?xml version="1.0" encoding="UTF-8"?><file-resume-info><file-range start="0" end="%d"/>'
                '<data url="%s" until="%s"/></file-resume-info>' % (rec['size'] - 1, fs.url(rec), rec['until']))
        return Response(200, body, 'application/xml')
    # ---- upload
    if rest == '' and req.method in ('POST', 'PUT'):
        user, ch = authenticate(net, req)
        if ch:
            return ch
        ctype = req.headers.get('content-type', '')
        if 'multipart/form-data' not in ctype.lower():
            return Response(400, 'multipart/form-data expected', 'text/plain')
        if len(req.body) > cfg.max_file_mb * 1024 * 1024:
            return Response(413, 'too large', 'text/plain')
        parts = parse_multipart_form(ctype, req.body)
        tid = None
        file = None
        thumb = None
        for p in parts:
            n = p['name'].lower()
            if n == 'tid':
                tid = p['data'].decode('utf-8', 'replace').strip()
            elif n == 'file':
                file = p
            elif n == 'thumbnail':
                thumb = p
        if not file or tid is None:
            return Response(400, 'tid and File parts required', 'text/plain')
        rec = fs.put(file['filename'] or 'file', file['ctype'] or 'application/octet-stream', file['data'],
                     (thumb['data'], thumb['ctype'] or 'image/jpeg') if thumb else None, uploader=user, tid=tid)
        net.trace.event('FT: stored %s (%d bytes, sha256 %s) tid=%s by %s' % (
            rec['name'], rec['size'], rec['sha256'][:16], tid, user))
        return Response(200, fs.file_info_xml(rec), FT_CTYPE)
    return Response(404, 'Not Found', 'text/plain')
