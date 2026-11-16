"""SIP transport (TCP/TLS), registrar, dialogs, UAC helpers. Business logic for sessions lives in chat.py."""
import asyncio
import re
import sys
import time
import traceback

from .core import Registration
from .sipmsg import (SipMessage, SipFramer, addr_uri, addr_params, addr_param, new_tag, new_branch, new_callid,
                     uri_parts)
from .util import check_digest, number_from_uri, rand_hex, spawn, norm_number

REASONS = {100: 'Trying', 180: 'Ringing', 183: 'Session Progress', 200: 'OK', 202: 'Accepted',
           400: 'Bad Request', 401: 'Unauthorized', 403: 'Forbidden', 404: 'Not Found',
           405: 'Method Not Allowed', 408: 'Request Timeout', 415: 'Unsupported Media Type',
           420: 'Bad Extension', 422: 'Session Interval Too Small', 480: 'Temporarily Unavailable',
           481: 'Call/Transaction Does Not Exist', 486: 'Busy Here', 487: 'Request Terminated',
           488: 'Not Acceptable Here', 500: 'Server Internal Error', 501: 'Not Implemented',
           503: 'Service Unavailable', 504: 'Server Time-out', 603: 'Decline', 604: 'Does Not Exist Anywhere'}
ALLOW = 'INVITE, ACK, CANCEL, BYE, OPTIONS, MESSAGE, SUBSCRIBE, NOTIFY, REFER, UPDATE, PRACK, INFO'


def strip_tag(v):
    return re.sub(r';\s*tag=[^;,>]*', '', v or '')


class SipConn:
    _ids = 0

    def __init__(self, server, reader, writer, transport):
        SipConn._ids += 1
        self.id = SipConn._ids
        self.server = server
        self.reader = reader
        self.writer = writer
        self.transport = transport           # 'tcp' | 'tls'
        pn = writer.get_extra_info('peername')
        self.peer_ip, self.peer_port = (pn[0], pn[1]) if pn else ('?', 0)
        self.peer = '%s:%s' % (self.peer_ip, self.peer_port)
        self.closed = False
        self.reg = None
        self.framer = SipFramer()
        self.tasks = set()
        self.pings = 0
        self.opened = time.time()

    async def send(self, msg):
        if self.closed:
            raise ConnectionError('SIP connection closed')
        self.server.net.trace.add('SIP', '->', '%s#%d' % (self.peer, self.id), msg.text())
        self.writer.write(msg.encode())
        await self.writer.drain()

    def write_raw(self, data, note):
        if self.closed:
            return
        self.server.net.trace.add('SIP', '->', '%s#%d' % (self.peer, self.id), note)
        self.writer.write(data)

    def close(self, abort=False):
        if self.closed:
            return
        self.closed = True
        try:
            if abort and self.writer.transport:
                self.writer.transport.abort()
            else:
                self.writer.close()
        except Exception:
            pass


class Dialog:
    def __init__(self, sip, call_id, local_hdr, remote_hdr, local_tag, remote_tag, role, conn, device=None):
        self.sip = sip
        self.call_id = call_id
        self.local_hdr = strip_tag(local_hdr)      # name-addr we use in From (as UAC) / To (as UAS)
        self.remote_hdr = strip_tag(remote_hdr)
        self.local_tag = local_tag
        self.remote_tag = remote_tag
        self.role = role
        self.conn = conn
        self.device = device
        self.local_cseq = 1
        self.remote_cseq = 0
        self.remote_target = None
        self.local_contact = None
        self.state = 'early'
        self.kind = 'chat'
        self.session = None
        self.group = None
        self.vuser = None
        self.invite_cseq = 1
        self.created = time.time()
        self.extra = {}

    def live_conn(self):
        c = self.conn
        if c and not c.closed:
            return c
        reg = self.sip.net.regs.get(self.device)
        if reg and reg.conn and not reg.conn.closed:
            self.conn = reg.conn
            return self.conn
        return None

    def build_request(self, method, headers=(), body=b'', ctype=None, ruri=None, cseq=None, branch=None):
        c = self.live_conn() or self.conn
        r = SipMessage(method=method, uri=ruri or self.remote_target)
        r.add('Via', 'SIP/2.0/%s %s:%d;branch=%s' % (c.transport.upper(), self.sip.net.cfg.host,
                                                      self.sip.port_for(c), branch or new_branch()))
        r.add('Max-Forwards', '70')
        r.add('From', '%s;tag=%s' % (self.local_hdr, self.local_tag))
        r.add('To', '%s%s' % (self.remote_hdr, (';tag=' + self.remote_tag) if self.remote_tag else ''))
        r.add('Call-ID', self.call_id)
        if cseq is None:
            self.local_cseq += 1
            cseq = self.local_cseq
        r.add('CSeq', '%d %s' % (cseq, method))
        if self.local_contact and method not in ('BYE', 'ACK'):
            r.add('Contact', self.local_contact)
        for k, v in headers:
            r.add(k, v)
        if ctype:
            r.add('Content-Type', ctype)
        r.add('User-Agent', 'RCS-Mock/1.0')
        r.body = body
        return r


class SipServer:
    def __init__(self, net):
        self.net = net
        self.cfg = net.cfg
        self.conns = {}
        self.dialogs = {}          # call_id -> Dialog
        self.pending = {}          # branch -> (future, method)
        self.pending_invites = {}  # call_id -> asyncio.Event (cancel)
        self.servers = []
        self.handlers = None       # chat module

    # ------------------------------------------------ lifecycle
    async def start(self, ssl_ctx):
        cfg = self.cfg
        if cfg.sip_port:
            self.servers.append(await asyncio.start_server(
                lambda r, w: self._on_conn(r, w, 'tcp'), cfg.bind, cfg.sip_port, reuse_address=True))
        if cfg.sip_tls_port and ssl_ctx:
            self.servers.append(await asyncio.start_server(
                lambda r, w: self._on_conn(r, w, 'tls'), cfg.bind, cfg.sip_tls_port, ssl=ssl_ctx, reuse_address=True))
        spawn(self._reaper())

    def port_for(self, conn):
        return self.cfg.sip_tls_port if conn.transport == 'tls' else self.cfg.sip_port

    def my_uri(self, conn, user=None, extra=''):
        t = conn.transport
        return 'sip:%s%s:%d;transport=%s%s' % ((user + '@') if user else '', self.cfg.host, self.port_for(conn), t, extra)

    async def _reaper(self):
        while True:
            await asyncio.sleep(5)
            now = time.time()
            for n, reg in list(self.net.regs.items()):
                if reg.expires_at < now:
                    self.net.trace.event('SIP: registration of %s expired' % n)
                    del self.net.regs[n]

    # ------------------------------------------------ connection loop
    async def _on_conn(self, reader, writer, transport):
        conn = SipConn(self, reader, writer, transport)
        self.conns[conn.id] = conn
        self.net.trace.event('SIP %s connection #%d from %s' % (transport, conn.id, conn.peer))
        try:
            while True:
                data = await reader.read(65536)
                if not data:
                    break
                try:
                    items = conn.framer.feed(data)
                except Exception as e:
                    self.net.trace.add('SIP', '<-', conn.peer, 'framing error %r; closing' % e)
                    break
                for it in items:
                    if it is SipFramer.PING:
                        conn.pings += 1
                        self.net.trace.add('SIP', '<-', '%s#%d' % (conn.peer, conn.id), 'CRLFCRLF keep-alive ping')
                        conn.write_raw(b'\r\n', 'CRLF keep-alive pong')
                        continue
                    self.net.trace.add('SIP', '<-', '%s#%d' % (conn.peer, conn.id), it.text())
                    t = spawn(self._safe_dispatch(conn, it))
                    conn.tasks.add(t)
                    t.add_done_callback(conn.tasks.discard)
        except (ConnectionError, asyncio.CancelledError):
            pass
        except Exception:
            sys.stderr.write(traceback.format_exc())
        finally:
            conn.close()
            self.conns.pop(conn.id, None)
            self.net.trace.event('SIP connection #%d from %s closed' % (conn.id, conn.peer))

    async def _safe_dispatch(self, conn, msg):
        try:
            if msg.is_request:
                await self.on_request(conn, msg)
            else:
                self.on_response(conn, msg)
        except ConnectionError:
            pass
        except Exception:
            sys.stderr.write('SIP handler error:\n' + traceback.format_exc())
            if msg.is_request and msg.method != 'ACK':
                try:
                    await self.respond(conn, msg, 500, 'Server Internal Error')
                except Exception:
                    pass

    # ------------------------------------------------ responses
    def make_response(self, req, code, reason=None, headers=(), body=b'', ctype=None, to_tag=None, conn=None,
                      record_route=False):
        resp = SipMessage(status=code, reason=reason or REASONS.get(code, 'Status'))
        vias = req.all('Via')
        for i, v in enumerate(vias):
            if i == 0 and conn is not None:
                if re.search(r';\s*rport\b', v):
                    v = re.sub(r';\s*rport(=\d*)?', ';rport=%d' % conn.peer_port, v, count=1)
                    if 'received=' not in v:
                        v += ';received=%s' % conn.peer_ip
            resp.add('Via', v)
        if record_route:
            if conn is not None:
                resp.add('Record-Route', '<sip:%s:%d;transport=%s;lr>' % (self.cfg.host, self.port_for(conn), conn.transport))
            for rr in req.all('Record-Route'):
                resp.add('Record-Route', rr)
        resp.add('From', req.header('From', ''))
        to = req.header('To', '')
        if code > 100 and 'tag=' not in to:
            to += ';tag=%s' % (to_tag or new_tag())
        resp.add('To', to)
        resp.add('Call-ID', req.call_id)
        resp.add('CSeq', req.header('CSeq', ''))
        for k, v in headers:
            resp.add(k, v)
        if ctype:
            resp.add('Content-Type', ctype)
        resp.add('Server', 'RCS-Mock/1.0')
        resp.body = body
        return resp

    async def respond(self, conn, req, code, reason=None, **kw):
        resp = self.make_response(req, code, reason, conn=conn, **kw)
        await conn.send(resp)
        return resp

    # ------------------------------------------------ UAC
    async def request(self, conn, msg, timeout=15):
        """Send a request and wait for the final response. Raises asyncio.TimeoutError."""
        fut = asyncio.get_running_loop().create_future()
        br = msg.branch
        self.pending[br] = (fut, msg.method)
        try:
            await conn.send(msg)
            return await asyncio.wait_for(fut, timeout)
        finally:
            self.pending.pop(br, None)

    def on_response(self, conn, resp):
        br = resp.branch
        ent = self.pending.get(br)
        if not ent:
            return
        fut, method = ent
        if resp.status >= 200 and not fut.done():
            fut.set_result(resp)

    # ------------------------------------------------ requests
    async def on_request(self, conn, req):
        m = req.method
        if m == 'ACK':
            d = self.dialogs.get(req.call_id)
            if d and d.state == 'early':
                d.state = 'confirmed'
            return
        rule = self.net.take_chaos('sip', m)
        if rule:
            if rule.get('delay_ms'):
                await asyncio.sleep(rule['delay_ms'] / 1000.0)
            if rule.get('action') == 'drop':
                self.net.trace.event('chaos: dropping SIP connection #%d on %s' % (conn.id, m))
                conn.close(abort=True)
                return
            code = rule.get('code', 503)
            hdrs = [('Retry-After', str(rule['retry_after']))] if rule.get('retry_after') else []
            await self.respond(conn, req, code, headers=hdrs)
            return
        if m == 'REGISTER':
            return await self.on_register(conn, req)
        if m == 'CANCEL':
            return await self.on_cancel(conn, req)
        reg = conn.reg
        if not reg or reg.expires_at < time.time() or self.net.regs.get(reg.number) is None:
            await self.respond(conn, req, 403, 'Forbidden', headers=[('Warning', '399 mock "not registered"')])
            return
        h = self.handlers
        if m == 'OPTIONS':
            return await h.on_options(conn, reg, req)
        if m == 'INVITE':
            return await h.on_invite(conn, reg, req)
        if m == 'MESSAGE':
            return await h.on_message(conn, reg, req)
        if m == 'BYE':
            return await h.on_bye(conn, reg, req)
        if m == 'SUBSCRIBE':
            ev = (req.header('Event') or '').split(';')[0].strip().lower()
            if ev == 'reg':
                return await self.on_subscribe_reg(conn, reg, req)
            return await h.on_subscribe(conn, reg, req)
        if m == 'REFER':
            return await h.on_refer(conn, reg, req)
        if m in ('NOTIFY', 'INFO', 'PRACK', 'PUBLISH'):
            return await self.respond(conn, req, 200, headers=[('Allow', ALLOW)])
        if m == 'UPDATE':
            return await h.on_update(conn, reg, req)
        await self.respond(conn, req, 501, 'Not Implemented', headers=[('Allow', ALLOW)])

    async def on_cancel(self, conn, req):
        ev = self.pending_invites.get(req.call_id)
        if ev is None:
            await self.respond(conn, req, 481, 'Call/Transaction Does Not Exist')
            return
        await self.respond(conn, req, 200)
        ev.set()

    # ------------------------------------------------ REGISTER
    def _challenge(self, stale=False):
        n = self.net.nonces.new()
        return 'Digest realm="%s", nonce="%s", algorithm=MD5, qop="auth"%s' % (self.cfg.domain, n, ', stale=true' if stale else '')

    async def on_register(self, conn, req):
        cfg = self.cfg
        to = req.header('To', '')
        impu = addr_uri(to)
        number = number_from_uri(impu) or number_from_uri(addr_uri(req.header('From', '')))
        auth = req.header('Authorization')
        ok, user, stale = False, None, False
        if auth:
            ok, user, stale = check_digest(auth, 'REGISTER', cfg.sip_pass, cfg.domain, self.net.nonces)
        if not ok:
            await self.respond(conn, req, 401, 'Unauthorized', headers=[('WWW-Authenticate', self._challenge(stale))])
            return
        contacts = req.all('Contact')
        hdr_exp = req.header('Expires')
        if not number:
            await self.respond(conn, req, 400, 'Bad Request', headers=[('Warning', '399 mock "cannot derive number"')])
            return
        old = self.net.regs.get(number)
        if contacts and contacts[0].strip() == '*':
            self._unregister(number, 'unregistered')
            await self.respond(conn, req, 200, headers=self._reg_headers(conn, number, None, 0))
            return
        if not contacts:   # query
            await self.respond(conn, req, 200, headers=self._reg_headers(conn, number, old.contact_hdr if old else None, old.expires if old else 0))
            return
        contact = contacts[0]
        cp = addr_params(contact)
        exp = int(cp['expires']) if cp.get('expires', '').isdigit() else (int(hdr_exp) if (hdr_exp or '').isdigit() else 3600)
        if exp == 0:
            self._unregister(number, 'unregistered')
            await self.respond(conn, req, 200, headers=self._reg_headers(conn, number, contact, 0))
            return
        if 0 < exp < 60:
            await self.respond(conn, req, 423, 'Interval Too Brief', headers=[('Min-Expires', '60')])
            return
        exp = min(exp, cfg.reg_expires)
        inst = cp.get('+sip.instance')
        reg = Registration(number, impu, addr_uri(contact), contact, conn, exp, req.header('User-Agent', ''),
                           req.call_id, inst)
        reg.private_id = user
        reg.features = contact
        if old and old.reg_sub:
            reg.reg_sub = old.reg_sub
        self.net.regs[number] = reg
        conn.reg = reg
        first = old is None
        self.net.trace.event('SIP: %s %s as %s (expires %ds) on conn #%d' % (
            'registered' if first else 're-registered', number, user, exp, conn.id))
        await self.respond(conn, req, 200, headers=self._reg_headers(conn, number, contact, exp))
        if reg.reg_sub:
            spawn(self.notify_reg(reg, 'active', 'registered' if first else 'refreshed'))

    def _reg_headers(self, conn, number, contact, exp):
        cfg = self.cfg
        h = []
        if contact:
            c = re.sub(r';\s*expires=\d+', '', contact)
            h.append(('Contact', '%s;expires=%d' % (c, exp)))
        h.append(('Service-Route', '<sip:%s:%d;transport=%s;lr>' % (cfg.host, self.port_for(conn), conn.transport)))
        h.append(('P-Associated-URI', '<sip:%s@%s>, <tel:%s>' % (number, cfg.domain, number)))
        h.append(('Supported', 'path, outbound'))
        h.append(('Allow', ALLOW))
        h.append(('Allow-Events', 'conference, reg'))
        h.append(('Date', time.strftime('%a, %d %b %Y %H:%M:%S GMT', time.gmtime())))
        if cfg.keepalive_flow_timer:
            h.append(('Flow-Timer', str(cfg.keepalive_flow_timer)))
        return h

    def _unregister(self, number, why):
        reg = self.net.regs.pop(number, None)
        if reg and reg.reg_sub:
            spawn(self.notify_reg(reg, 'terminated', 'unregistered', terminated=True))
        return reg

    # ------------------------------------------------ reg event package
    async def on_subscribe_reg(self, conn, reg, req):
        exp = int(req.header('Expires', '3600') or 3600)
        d = self.dialogs.get(req.call_id)
        if exp == 0 and d:
            await self.respond(conn, req, 200, headers=[('Expires', '0')])
            spawn(self._notify_dialog(d, reg, 'terminated', 'unregistered', terminated=True, reason='timeout'))
            return
        if not d:
            d = Dialog(self, req.call_id, req.header('To', ''), req.header('From', ''), new_tag(), req.from_tag, 'uas',
                       conn, device=reg.number)
            d.kind = 'regsub'
            d.remote_target = addr_uri(req.header('Contact', '')) or reg.contact_uri
            d.local_contact = '<%s>' % self.my_uri(conn)
            d.state = 'confirmed'
            self.dialogs[req.call_id] = d
            to_tag = d.local_tag
        else:
            to_tag = d.local_tag
        d.remote_cseq = req.cseq[0]
        reg.reg_sub = d
        await self.respond(conn, req, 200, to_tag=to_tag, headers=[('Expires', str(exp)), ('Contact', d.local_contact)],
                           record_route=True)
        await self._notify_dialog(d, reg, 'active', 'registered')

    async def notify_reg(self, reg, state, event, terminated=False):
        d = reg.reg_sub
        if d:
            await self._notify_dialog(d, reg, state, event, terminated=terminated)

    async def _notify_dialog(self, d, reg, state, event, terminated=False, reason='deactivated'):
        conn = d.live_conn()
        if not conn:
            return
        d.extra['reg_version'] = d.extra.get('reg_version', -1) + 1
        xml = ('<?xml version="1.0"?><reginfo xmlns="urn:ietf:params:xml:ns:reginfo" version="%d" state="full">'
               '<registration aor="sip:%s@%s" id="%s" state="%s"><contact id="1" state="%s" event="%s">'
               '<uri>%s</uri></contact></registration></reginfo>') % (
            d.extra['reg_version'], reg.number, self.cfg.domain, rand_hex(3), 'terminated' if terminated else 'active',
            'terminated' if terminated else 'active', event if not terminated else 'deactivated', reg.contact_uri)
        n = d.build_request('NOTIFY', headers=[('Event', 'reg'), (
            'Subscription-State', 'terminated;reason=%s' % reason if terminated else 'active;expires=3600')],
            body=xml.encode(), ctype='application/reginfo+xml')
        try:
            await self.request(conn, n, timeout=10)
        except Exception as e:
            self.net.trace.event('reg NOTIFY failed: %r' % e)
        if terminated:
            self.dialogs.pop(d.call_id, None)
            reg.reg_sub = None

    # ------------------------------------------------ UAC helpers for chat.py
    def device_conn(self, reg):
        c = reg.conn
        return c if c and not c.closed else None
