"""Control API (JSON over HTTP, bound to 127.0.0.1 by default)."""
import asyncio
import base64
import json
import re
import time
import traceback
import sys

from .chat import ApiError, VUser
from .httpd import Response
from .util import norm_number, rand_token, now_iso, spawn


def _num(s):
    n = norm_number(s.replace('%2B', '+').replace(' ', '+') if s else s)
    if not n:
        raise ApiError(400, 'bad number %r' % s)
    return n


class Control:
    def __init__(self, net):
        self.net = net
        self.chat = net.chat
        self.routes = []
        R = self.route
        R('GET', r'/', self.index)
        R('GET', r'/api/state', self.state)
        R('POST', r'/api/reset', self.reset)
        R('GET', r'/api/otp', self.get_otp)
        R('POST', r'/api/otp', self.set_otp)
        R('GET', r'/api/users', self.users_list)
        R('POST', r'/api/users', self.users_create)
        R('GET', r'/api/users/([^/]+)', self.user_get)
        R('PUT', r'/api/users/([^/]+)', self.user_put)
        R('PATCH', r'/api/users/([^/]+)', self.user_put)
        R('DELETE', r'/api/users/([^/]+)', self.user_delete)
        R('GET', r'/api/users/([^/]+)/received', self.user_received)
        R('DELETE', r'/api/users/([^/]+)/received', self.user_clear)
        R('GET', r'/api/users/([^/]+)/sent', self.user_sent)
        R('POST', r'/api/users/([^/]+)/send', self.user_send)
        R('POST', r'/api/users/([^/]+)/options', self.user_options)
        R('GET', r'/api/groups', self.groups_list)
        R('POST', r'/api/groups', self.groups_create)
        R('GET', r'/api/groups/([^/]+)', self.group_get)
        R('GET', r'/api/groups/([^/]+)/messages', self.group_messages)
        R('POST', r'/api/groups/([^/]+)/message', self.group_post)
        R('POST', r'/api/groups/([^/]+)/participants', self.group_participants)
        R('POST', r'/api/groups/([^/]+)/subject', self.group_subject)
        R('POST', r'/api/groups/([^/]+)/bye', self.group_bye)
        R('GET', r'/api/sessions', self.sessions_list)
        R('POST', r'/api/sessions/([^/]+)/bye', self.session_bye)
        R('GET', r'/api/registrations', self.regs_list)
        R('GET', r'/api/trace', self.trace)
        R('DELETE', r'/api/trace', self.trace_clear)
        R('GET', r'/api/acs/requests', self.acs_requests)
        R('POST', r'/api/acs/bump', self.acs_bump)
        R('POST', r'/api/events/deregister', self.ev_deregister)
        R('POST', r'/api/events/drop-connection', self.ev_drop)
        R('POST', r'/api/events/fail-next', self.ev_fail)
        R('GET', r'/api/events/chaos', self.chaos_list)
        R('DELETE', r'/api/events/chaos', self.chaos_clear)
        R('GET', r'/api/files', self.files_list)
        R('GET', r'/api/files/([0-9a-f]+)/content', self.file_content)
        R('GET', r'/cert.pem', self.cert)

    def route(self, method, pattern, fn):
        self.routes.append((method, re.compile('^' + pattern + '/?$'), fn))

    async def handle(self, req):
        try:
            allowed = []
            for method, rx, fn in self.routes:
                m = rx.match(req.path)
                if not m:
                    continue
                allowed.append(method)
                if method != req.method:
                    continue
                try:
                    body = req.json() if req.body else {}
                except ValueError:
                    raise ApiError(400, 'invalid JSON body')
                return await fn(req, body, *[x for x in m.groups()])
            if allowed:
                return Response.json({'error': 'method not allowed', 'allowed': allowed}, 405)
            return Response.json({'error': 'not found'}, 404)
        except ApiError as e:
            return Response.json({'error': e.msg}, e.code)
        except Exception as e:
            sys.stderr.write(traceback.format_exc())
            return Response.json({'error': repr(e)}, 500)

    # ----------------------------------------------------------------- general
    async def index(self, req, b):
        return Response.json({'routes': sorted(set('%s %s' % (m, rx.pattern.strip('^$/?')) for m, rx, _ in self.routes))})

    async def state(self, req, b):
        n = self.net
        return Response.json({
            'started': n.started, 'domain': n.cfg.domain, 'host': n.cfg.host,
            'ports': {'acs_http': n.cfg.acs_port, 'acs_https': n.cfg.acs_tls_port, 'sip_tcp': n.cfg.sip_port,
                      'sip_tls': n.cfg.sip_tls_port, 'msrp': n.cfg.msrp_port, 'msrps': n.cfg.msrps_port,
                      'control': n.cfg.control_port},
            'registrations': [r.to_dict() for r in n.regs.values()],
            'sip_connections': [{'id': c.id, 'peer': c.peer, 'transport': c.transport, 'registered': c.reg.number if c.reg else None,
                                 'pings': c.pings} for c in n.sip.conns.values()],
            'users': len(n.users), 'groups': len(n.groups), 'sessions': len([s for s in n.sessions.values() if not s.closed]),
            'files': len(n.files.files), 'pending_otps': {k: v['otp'] for k, v in n.otps.items()},
            'ftHTTPCSURI': n.cfg.ft_base, 'factory_uri': n.cfg.factory_uri})

    async def reset(self, req, b):
        n = self.net
        n.users.clear()
        n.groups.clear()
        self.chat.focus_map.clear()
        for s in list(n.sessions.values()):
            s.close()
        n.chaos.clear()
        n.files.files.clear()
        n.files.by_tid.clear()
        n.acs_log.clear()
        return Response.json({'ok': True})

    # ----------------------------------------------------------------- OTP
    async def get_otp(self, req, b):
        n = self.net
        m = req.q('msisdn')
        if m:
            m = _num(m)
            e = n.otps.get(m)
            if not e:
                return Response.json({'msisdn': m, 'otp': None}, 404)
            return Response.json({'msisdn': m, 'otp': e['otp'], 'age_s': int(time.time() - e['ts'])})
        return Response.json({'pending': {k: {'otp': v['otp'], 'age_s': int(time.time() - v['ts'])} for k, v in n.otps.items()}})

    async def set_otp(self, req, b):
        m = _num(b.get('msisdn', ''))
        self.net.otps[m] = {'otp': str(b.get('otp') or '%06d' % (int(time.time() * 1000) % 1000000)), 'ts': time.time()}
        return Response.json({'msisdn': m, 'otp': self.net.otps[m]['otp']})

    # ----------------------------------------------------------------- users
    async def users_list(self, req, b):
        return Response.json([v.to_dict() for v in self.net.users.values()])

    async def users_create(self, req, b):
        n = _num(b.get('number', ''))
        fields = {k: v for k, v in b.items() if k in VUser.FIELDS}
        v = self.chat.ensure_user(n, **fields)
        return Response.json(v.to_dict(), 201)

    async def user_get(self, req, b, n):
        return Response.json(self.chat._user(_num(n)).to_dict())

    async def user_put(self, req, b, n):
        v = self.chat._user(_num(n), create=True)
        v.update(b)
        return Response.json(v.to_dict())

    async def user_delete(self, req, b, n):
        self.net.users.pop(_num(n), None)
        return Response.json({'ok': True})

    async def user_received(self, req, b, n):
        v = self.chat._user(_num(n))
        kind = req.q('kind')
        since = int(req.q('since', 0))
        out = [e for e in v.received if e['id'] > since and (not kind or e['kind'] in kind.split(','))]
        if req.q('clear'):
            v.received.clear()
        return Response.json(out)

    async def user_clear(self, req, b, n):
        v = self.chat._user(_num(n))
        v.received.clear()
        v.sent.clear()
        return Response.json({'ok': True})

    async def user_sent(self, req, b, n):
        return Response.json(self.chat._user(_num(n)).sent)

    async def user_send(self, req, b, n):
        res = await self.chat.api_send(_num(n), b)
        return Response.json(res, 200 if res.get('ok') else 502)

    async def user_options(self, req, b, n):
        return Response.json(await self.chat.api_options_to_device(_num(n), b))

    # ----------------------------------------------------------------- groups
    async def groups_list(self, req, b):
        return Response.json([g.to_dict() for g in self.net.groups.values()])

    async def groups_create(self, req, b):
        return Response.json(await self.chat.api_group_create(b), 201)

    async def group_get(self, req, b, gid):
        return Response.json(self.chat._group(gid).to_dict())

    async def group_messages(self, req, b, gid):
        return Response.json(self.chat._group(gid).messages)

    async def group_post(self, req, b, gid):
        res = await self.chat.api_group_post(gid, b)
        return Response.json(res, 200 if res.get('ok') else 502)

    async def group_participants(self, req, b, gid):
        return Response.json(await self.chat.api_group_participants(gid, b))

    async def group_subject(self, req, b, gid):
        return Response.json(await self.chat.api_group_subject(gid, b))

    async def group_bye(self, req, b, gid):
        return Response.json(await self.chat.api_group_bye(gid, b))

    # ----------------------------------------------------------------- sessions / regs / trace
    async def sessions_list(self, req, b):
        return Response.json([s.to_dict() for s in self.net.sessions.values()])

    async def session_bye(self, req, b, sid):
        return Response.json(await self.chat.api_session_bye(sid))

    async def regs_list(self, req, b):
        out = []
        for r in self.net.regs.values():
            d = r.to_dict()
            d['private_id'] = getattr(r, 'private_id', None)
            d['options_seen'] = getattr(r, 'options_seen', None)
            out.append(d)
        return Response.json(out)

    async def trace(self, req, b):
        t = self.net.trace.tail(int(req.q('limit', 200)), req.q('proto'), req.q('contains'), int(req.q('since', 0)))
        if req.q('format') == 'text':
            return Response(200, '\n'.join('#%d %s %s %s %s\n%s\n' % (e['n'], e['ts'], e['proto'], e['dir'], e['peer'], e['text'])
                                           for e in t), 'text/plain; charset=utf-8')
        return Response.json(t)

    async def trace_clear(self, req, b):
        self.net.trace.buf.clear()
        return Response.json({'ok': True})

    async def acs_requests(self, req, b):
        return Response.json(self.net.acs_log)

    async def acs_bump(self, req, b):
        self.net.acs_version = getattr(self.net, 'acs_version', 1) + 1
        return Response.json({'version': self.net.acs_version})

    # ----------------------------------------------------------------- events
    async def ev_deregister(self, req, b):
        n = self.net
        reg = n.device(norm_number(b['msisdn']) if b.get('msisdn') else None)
        if not reg:
            raise ApiError(409, 'no registered device')
        n.sip._unregister(reg.number, 'network deregistration')
        n.trace.event('EVENT: network deregistered %s' % reg.number)
        if b.get('drop_connection') and reg.conn:
            await asyncio.sleep(0.2)
            reg.conn.close(abort=True)
        return Response.json({'ok': True, 'number': reg.number})

    async def ev_drop(self, req, b):
        n = self.net
        which = b.get('which', 'sip')
        dropped = []
        if which in ('sip', 'all'):
            for c in list(n.sip.conns.values()):
                if b.get('msisdn') and not (c.reg and c.reg.number == norm_number(b['msisdn'])):
                    continue
                c.close(abort=True)
                dropped.append('sip#%d' % c.id)
        if which in ('msrp', 'all'):
            for c in list(n.msrp.conns.values()):
                c.close(abort=True)
                dropped.append('msrp#%d' % c.id)
        n.trace.event('EVENT: dropped connections %s' % dropped)
        return Response.json({'ok': True, 'dropped': dropped})

    async def ev_fail(self, req, b):
        rule = {'target': b.get('target', 'sip'), 'method': (b.get('method') or '*').upper(),
                'remaining': int(b.get('count', 1)), 'code': int(b.get('code', 503)),
                'action': b.get('action', 'respond'), 'retry_after': b.get('retry_after'),
                'delay_ms': int(b.get('delay_ms', 0))}
        self.net.chaos.append(rule)
        return Response.json(rule, 201)

    async def chaos_list(self, req, b):
        return Response.json(self.net.chaos)

    async def chaos_clear(self, req, b):
        self.net.chaos.clear()
        return Response.json({'ok': True})

    # ----------------------------------------------------------------- files
    async def files_list(self, req, b):
        fs = self.net.files
        return Response.json([fs.summary(r) for r in fs.files.values()])

    async def file_content(self, req, b, fid):
        r = self.net.files.files.get(fid)
        if not r:
            raise ApiError(404, 'no such file')
        return Response(200, r['data'], r['type'])

    async def cert(self, req, b):
        import os
        p = os.path.join(self.net.cfg.cert_dir, 'cert.pem')
        if not os.path.exists(p):
            raise ApiError(404, 'no cert')
        return Response(200, open(p, 'rb').read(), 'application/x-pem-file')
