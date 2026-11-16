"""Tiny asyncio HTTP/1.1 server (keep-alive, chunked request bodies, Expect: 100-continue, TLS)."""
import asyncio
import json
import re
import sys
import traceback
import urllib.parse

REASONS = {100: 'Continue', 200: 'OK', 201: 'Created', 202: 'Accepted', 204: 'No Content', 206: 'Partial Content',
           400: 'Bad Request', 401: 'Unauthorized', 403: 'Forbidden', 404: 'Not Found', 405: 'Method Not Allowed',
           408: 'Request Timeout', 411: 'Length Required', 413: 'Payload Too Large', 416: 'Range Not Satisfiable',
           500: 'Internal Server Error', 503: 'Service Unavailable', 511: 'Network Authentication Required'}


class Request:
    def __init__(self):
        self.method = 'GET'
        self.target = '/'
        self.path = '/'
        self.query = {}
        self.headers = {}
        self.body = b''
        self.peer = ''
        self.tls = False
        self.version = 'HTTP/1.1'

    def q(self, name, default=None):
        v = self.query.get(name)
        return v[0] if v else default

    def json(self):
        if not self.body:
            return {}
        return json.loads(self.body.decode('utf-8'))

    def form(self):
        return {k: v[0] for k, v in urllib.parse.parse_qs(self.body.decode('utf-8', 'replace')).items()}

    def host(self):
        return self.headers.get('host', '')


class Response:
    def __init__(self, status=200, body=b'', ctype=None, headers=None):
        self.status = status
        if isinstance(body, str):
            body = body.encode('utf-8')
        self.body = body
        self.headers = list(headers or [])
        if ctype:
            self.headers.append(('Content-Type', ctype))

    @staticmethod
    def json(obj, status=200):
        return Response(status, json.dumps(obj, indent=1, default=str).encode(), 'application/json')


class HttpServer:
    MAX_BODY = 512 * 1024 * 1024

    def __init__(self, handler, name, trace, max_trace_body=0):
        self.handler = handler
        self.name = name
        self.trace = trace
        self.server = None

    async def start(self, host, port, ssl=None):
        self.server = await asyncio.start_server(self._conn, host, port, ssl=ssl, reuse_address=True)
        return self.server

    async def _read_request(self, reader, writer, peer, tls):
        line = await reader.readline()
        if not line:
            return None
        while line in (b'\r\n', b'\n'):
            line = await reader.readline()
            if not line:
                return None
        parts = line.decode('latin1').strip().split(' ')
        if len(parts) != 3:
            raise ValueError('bad request line')
        req = Request()
        req.method, req.target, req.version = parts[0].upper(), parts[1], parts[2]
        req.peer = peer
        req.tls = tls
        while True:
            h = await reader.readline()
            if h in (b'\r\n', b'\n', b''):
                break
            k, _, v = h.decode('latin1').partition(':')
            req.headers[k.strip().lower()] = v.strip()
        u = urllib.parse.urlsplit(req.target)
        req.path = urllib.parse.unquote(u.path)
        req.query = urllib.parse.parse_qs(u.query, keep_blank_values=True)
        if req.headers.get('expect', '').lower() == '100-continue':
            writer.write(b'HTTP/1.1 100 Continue\r\n\r\n')
            await writer.drain()
        te = req.headers.get('transfer-encoding', '').lower()
        if 'chunked' in te:
            body = bytearray()
            while True:
                sz = await reader.readline()
                n = int(sz.split(b';')[0].strip() or b'0', 16)
                if n == 0:
                    while (await reader.readline()) not in (b'\r\n', b'\n', b''):
                        pass
                    break
                body += await reader.readexactly(n)
                await reader.readexactly(2)
                if len(body) > self.MAX_BODY:
                    raise ValueError('body too large')
            req.body = bytes(body)
        else:
            cl = int(req.headers.get('content-length', '0') or 0)
            if cl > self.MAX_BODY:
                raise ValueError('body too large')
            if cl:
                req.body = await reader.readexactly(cl)
        return req

    async def _conn(self, reader, writer):
        pn = writer.get_extra_info('peername')
        peer = '%s:%s' % (pn[0], pn[1]) if pn else '?'
        tls = writer.get_extra_info('sslcontext') is not None
        try:
            while True:
                try:
                    req = await self._read_request(reader, writer, peer, tls)
                except (asyncio.IncompleteReadError, ConnectionError):
                    break
                except Exception as e:
                    self.trace.add(self.name, '<-', peer, 'malformed request: %r' % e)
                    await self._write(writer, Response(400, 'bad request'), False)
                    break
                if req is None:
                    break
                self.trace.add(self.name, '<-', peer, '%s %s\n%s%s' % (
                    req.method, req.target, ''.join('%s: %s\n' % (k, v) for k, v in req.headers.items()),
                    self._bodytxt(req.body, req.headers.get('content-type', ''))))
                try:
                    resp = await self.handler(req)
                except Exception:
                    sys.stderr.write(traceback.format_exc())
                    resp = Response(500, 'internal error')
                if resp is None:   # handler wants the connection dropped
                    break
                keep = req.headers.get('connection', '').lower() != 'close' and req.version != 'HTTP/1.0'
                await self._write(writer, resp, keep, head=(req.method == 'HEAD'))
                self.trace.add(self.name, '->', peer, 'HTTP %d %s\n%s%s' % (
                    resp.status, REASONS.get(resp.status, ''), ''.join('%s: %s\n' % h for h in resp.headers),
                    self._bodytxt(resp.body, dict((k.lower(), v) for k, v in resp.headers).get('content-type', ''))))
                if not keep:
                    break
        except (ConnectionError, asyncio.CancelledError):
            pass
        except Exception:
            sys.stderr.write(traceback.format_exc())
        finally:
            try:
                writer.close()
            except Exception:
                pass

    @staticmethod
    def _bodytxt(body, ctype):
        if not body:
            return ''
        if ctype.startswith('text/') or 'xml' in ctype or 'json' in ctype or 'urlencoded' in ctype:
            t = body.decode('utf-8', 'replace')
            return '\n' + t[:3000] + ('...' if len(t) > 3000 else '')
        return '\n<%d bytes %s>' % (len(body), ctype)

    async def _write(self, writer, resp, keep, head=False):
        hdrs = [(k, v) for k, v in resp.headers if k.lower() not in ('content-length', 'connection')]
        out = 'HTTP/1.1 %d %s\r\n' % (resp.status, REASONS.get(resp.status, 'Status'))
        out += ''.join('%s: %s\r\n' % h for h in hdrs)
        out += 'Content-Length: %d\r\nConnection: %s\r\n\r\n' % (len(resp.body), 'keep-alive' if keep else 'close')
        writer.write(out.encode('latin1') + (b'' if head else resp.body))
        await writer.drain()


def parse_multipart_form(ctype, body):
    """-> list of dict(name, filename, ctype, data)"""
    m = re.search(r'boundary="?([^";]+)"?', ctype or '', re.I)
    if not m:
        return []
    delim = b'--' + m.group(1).encode()
    out = []
    for chunk in body.split(delim)[1:]:
        if chunk.startswith(b'--'):
            break
        if chunk.startswith(b'\r\n'):
            chunk = chunk[2:]
        if chunk.endswith(b'\r\n'):
            chunk = chunk[:-2]
        head, sep, data = chunk.partition(b'\r\n\r\n')
        hd = {}
        for ln in head.decode('utf-8', 'replace').split('\r\n'):
            k, s, v = ln.partition(':')
            if s:
                hd[k.strip().lower()] = v.strip()
        cd = hd.get('content-disposition', '')
        nm = re.search(r'\bname="([^"]*)"', cd)
        fn = re.search(r'filename\*?="?([^";]*)"?', cd)
        out.append({'name': nm.group(1) if nm else '', 'filename': fn.group(1) if fn else None,
                    'ctype': hd.get('content-type'), 'data': data})
    return out
