"""Virtual users, chat sessions, groups, conference focus, FT/IMDN/composing handling."""
import asyncio
import base64
import hashlib
import json
import time
import uuid
import xml.etree.ElementTree as ET

from .msrp import (build_cpim, parse_cpim, build_imdn, parse_imdn, build_composing, parse_composing,
                   parse_ft_xml, build_conf_info, build_ft_xml, msrp_session_id, uri_of)
from .sipmsg import (SipMessage, addr_uri, addr_param, new_tag, new_branch, new_callid, uri_parts, parse_sdp,
                     build_sdp, parse_multipart, build_multipart)
from .sipserver import Dialog, strip_tag, ALLOW
from .util import now_iso, rand_hex, spawn, number_from_uri, norm_number, iso_in

ICSI_SESSION = 'urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session'
ICSI_MSG = 'urn:urn-7:3gpp-service.ims.icsi.oma.cpm.msg'
ICSI_FT = 'urn:urn-7:3gpp-service.ims.icsi.oma.cpm.filetransfer'
IARI_FTHTTP = 'urn:urn-7:3gpp-application.ims.iari.rcs.fthttp'
IARI_FTTHUMB = 'urn:urn-7:3gpp-application.ims.iari.rcs.ftthumb'
IARI_GEO = 'urn:urn-7:3gpp-application.ims.iari.rcs.geopush'
IARI_FTSF = 'urn:urn-7:3gpp-application.ims.iari.rcs.ftstandfw'
FEATURE_MAP = {'chat': ('icsi', ICSI_SESSION), 'standalone': ('icsi', ICSI_MSG), 'ft_msrp': ('icsi', ICSI_FT),
               'ft_http': ('iari', IARI_FTHTTP), 'ft_thumb': ('iari', IARI_FTTHUMB), 'geopush': ('iari', IARI_GEO),
               'ft_sf': ('iari', IARI_FTSF)}
DEFAULT_FEATURES = ['chat', 'standalone', 'ft_http', 'ft_thumb']
ACCEPT_TYPES = ['message/cpim']
ACCEPT_WRAPPED = ['text/plain', 'message/imdn+xml', 'application/im-iscomposing+xml',
                  'application/vnd.gsma.rcs-ft-http+xml', 'application/vnd.gsma.rcspushlocation+xml']
FT_CT = 'application/vnd.gsma.rcs-ft-http+xml'


class ApiError(Exception):
    def __init__(self, code, msg):
        Exception.__init__(self, msg)
        self.code = code
        self.msg = msg


def features_tags(features):
    icsi, iari = [], []
    for f in features:
        kind, val = FEATURE_MAP.get(f, (None, None))
        if not kind:
            if 'icsi' in f:
                kind, val = 'icsi', f
            elif 'iari' in f:
                kind, val = 'iari', f
            else:
                continue
        (icsi if kind == 'icsi' else iari).append(val.replace(':', '%3A'))
    out = ''
    if icsi:
        out += ';+g.3gpp.icsi-ref="%s"' % ','.join(icsi)
    if iari:
        out += ';+g.3gpp.iari-ref="%s"' % ','.join(iari)
    return out


class VUser:
    FIELDS = ('name', 'rcs', 'online', 'auto_delivery_imdn', 'auto_display_imdn', 'auto_composing', 'auto_reply',
              'features', 'offline_response', 'invite_response', 'answer_delay_ms', 'imdn_delay_ms',
              'request_dispositions', 'options_response')
    _eid = 0

    def __init__(self, number, **kw):
        self.number = number
        self.name = None
        self.rcs = True
        self.online = True
        self.auto_delivery_imdn = False
        self.auto_display_imdn = False
        self.auto_composing = False
        self.auto_reply = None
        self.features = list(DEFAULT_FEATURES)
        self.offline_response = None       # int: SIP code for INVITE/MESSAGE when offline (default: accept)
        self.invite_response = None        # int: always answer INVITEs with this code
        self.options_response = None       # int: always answer OPTIONS with this code
        self.answer_delay_ms = 0
        self.imdn_delay_ms = 50
        self.request_dispositions = ['positive-delivery', 'display']
        self.received = []                 # events from the device
        self.sent = []                     # what this user sent to the device
        self.update(kw)

    def update(self, d):
        for k, v in d.items():
            if k in self.FIELDS:
                setattr(self, k, v)
        return self

    def record(self, kind, **kw):
        VUser._eid += 1
        e = {'id': VUser._eid, 'ts': now_iso(), 'kind': kind}
        e.update(kw)
        self.received.append(e)
        del self.received[:-2000]
        return e

    def to_dict(self, full=False):
        d = {'number': self.number}
        for k in self.FIELDS:
            d[k] = getattr(self, k)
        d['received_count'] = len(self.received)
        d['sent_count'] = len(self.sent)
        return d


class ChatSession:
    def __init__(self, net, kind, device, dialog, peer=None, group=None, tls=False):
        self.net = net
        self.id = rand_hex(8)
        self.kind = kind                    # '1to1' | 'group'
        self.device = device
        self.dialog = dialog
        self.peer = peer
        self.group = group
        self.tls = tls
        cfg = net.cfg
        port = cfg.msrps_port if tls else cfg.msrp_port
        self.local_path = 'msrp%s://%s:%d/%s;tcp' % ('s' if tls else '', cfg.host, port, self.id)
        self.remote_path = []
        self.local_setup = None
        self.remote_setup = None
        self.conn = None
        self.connected = asyncio.Event()
        self.rx = {}
        self.closed = False
        self.created = time.time()
        self.role = dialog.role
        self.conversation_id = None
        self.contribution_id = None
        self.remote_accept_types = []
        self.remote_accept_wrapped = []
        net.sessions[self.id] = self

    def close(self):
        self.closed = True
        if self.conn and not self.conn.closed:
            self.conn.sessions.discard(self.id)
        self.net.sessions.pop(self.id, None)

    def alive(self):
        if getattr(self, 'msrp_lost', False):
            return False
        return (not self.closed) and self.dialog.state == 'confirmed' and self.dialog.live_conn() is not None

    def to_dict(self):
        return {'id': self.id, 'kind': self.kind, 'device': self.device, 'peer': self.peer,
                'group': self.group.id if self.group else None, 'call_id': self.dialog.call_id,
                'dialog_state': self.dialog.state, 'role': self.role, 'local_path': self.local_path,
                'remote_path': self.remote_path, 'local_setup': self.local_setup, 'remote_setup': self.remote_setup,
                'msrp_connected': bool(self.conn and not self.conn.closed), 'conversation_id': self.conversation_id,
                'contribution_id': self.contribution_id, 'closed': self.closed,
                'remote_accept_types': self.remote_accept_types, 'remote_accept_wrapped': self.remote_accept_wrapped}


class Group:
    def __init__(self, net, gid, focus_user, subject, creator, contribution_id=None):
        self.net = net
        self.id = gid                       # Conversation-ID
        self.focus_user = focus_user
        self.focus_uri = 'sip:%s@%s' % (focus_user, net.cfg.conf_domain)
        self.subject = subject
        self.creator = creator
        self.contribution_id = contribution_id or rand_hex(16)
        self.participants = {}              # number -> dict(status, method)
        self.sessions = {}                  # device number -> ChatSession
        self.subs = {}                      # device number -> Dialog (conference subscription)
        self.version = 0
        self.created = now_iso()
        self.messages = []                  # log of every message in the group (device or virtual)
        self.device_status = {}             # device -> 'invited'|'joined'|'declined'|'left'

    def to_dict(self):
        return {'id': self.id, 'focus_uri': self.focus_uri, 'subject': self.subject, 'creator': self.creator,
                'contribution_id': self.contribution_id, 'participants': self.participants,
                'sessions': {d: s.id for d, s in self.sessions.items() if not s.closed},
                'subscribed': list(self.subs.keys()), 'version': self.version, 'created': self.created,
                'device_status': self.device_status, 'message_count': len(self.messages)}


class Chat:
    def __init__(self, net):
        self.net = net
        self.cfg = net.cfg
        self.sip = None
        self.focus_map = {}       # focus user -> Group
        self._pend_tags = {}
        self._locks = {}
        net.chat = self

    # ================================================================= users
    def ensure_user(self, number, **kw):
        v = self.net.users.get(number)
        if not v:
            v = VUser(number, **kw)
            self.net.users[number] = v
        elif kw:
            v.update(kw)
        return v

    def user_for(self, number):
        """Lookup honoring the unknown-number policy."""
        if not number:
            return None
        v = self.net.users.get(number)
        if v is None and self.cfg.unknown_users == 'rcs':
            v = self.ensure_user(number)
        return v

    def v_contact(self, v, conn):
        return '<%s>%s' % (self.sip.my_uri(conn, v.number), features_tags(v.features))

    def v_uri(self, v):
        return self.net.sip_uri(v.number)

    def sdp_for(self, s, sess_ver=None):
        cfg = self.cfg
        port = cfg.msrps_port if s.tls else cfg.msrp_port
        proto = 'TCP/TLS/MSRP' if s.tls else 'TCP/MSRP'
        from .util import local_ip_for
        return build_sdp(local_ip_for(cfg.host), port, proto, s.local_path, s.local_setup, ACCEPT_TYPES,
                         ACCEPT_WRAPPED, sess_id=int(s.id[:7], 16), version=sess_ver)

    @staticmethod
    def _timer_headers(req):
        se = req.header('Session-Expires')
        if not se:
            return []
        val = se.split(';')[0].strip()
        ref = addr_param('x<x>;' + se.split(';', 1)[1], 'refresher') if ';' in se else None
        return [('Session-Expires', '%s;refresher=%s' % (val, ref or 'uac')), ('Require', 'timer')]

    # ================================================================= OPTIONS
    async def on_options(self, conn, reg, req):
        sip = self.sip
        reg.options_seen = {'ts': now_iso(), 'contact': req.header('Contact'), 'accept_contact': req.header('Accept-Contact')}
        tgt = number_from_uri(req.uri)
        v = self.user_for(tgt)
        if v is not None and v.options_response:
            await sip.respond(conn, req, v.options_response)
            return
        if v is None or not v.rcs:
            await sip.respond(conn, req, 404, 'Not Found')
            return
        v.record('options', **{'from': reg.number, 'contact': req.header('Contact'),
                               'accept_contact': req.header('Accept-Contact'),
                               'body': req.body.decode('utf-8', 'replace')})
        if not v.online:
            await sip.respond(conn, req, 480, 'Temporarily Unavailable')
            return
        await sip.respond(conn, req, 200, headers=[
            ('Contact', self.v_contact(v, conn)), ('Allow', ALLOW), ('Accept', 'application/sdp'),
            ('Supported', 'timer'), ('P-Asserted-Identity', '<%s>' % self.v_uri(v))])

    # ================================================================= MESSAGE (pager mode)
    async def on_message(self, conn, reg, req):
        sip = self.sip
        u = uri_parts(req.uri)
        g = None
        if u[2].lower().startswith('conf.') or u[2] == self.cfg.conf_domain:
            g = self.focus_map.get(u[1])
            if not g:
                await sip.respond(conn, req, 404, 'Not Found')
                return
            targets = [self.net.users[n] for n in g.participants if n in self.net.users and n != reg.number
                       and self.net.users[n].rcs]
        else:
            v = self.user_for(number_from_uri(req.uri))
            if v is None or not v.rcs:
                await sip.respond(conn, req, 404, 'Not Found')
                return
            if not v.online and v.offline_response:
                await sip.respond(conn, req, v.offline_response)
                return
            targets = [v]
        await sip.respond(conn, req, 202 if (len(targets) == 1 and not targets[0].online) else 200)
        await self.process_content(reg.number, targets, req.ctype, req.body, 'sip-message', None, g,
                                   sip_headers=self._hdrs(req))

    @staticmethod
    def _hdrs(req):
        keep = ('Contribution-ID', 'Conversation-ID', 'P-Preferred-Service', 'P-Asserted-Service', 'Accept-Contact',
                'Subject', 'InReplyTo-Contribution-ID', 'Content-Type', 'Referred-By', 'Require', 'Supported',
                'Session-Expires', 'User-Agent')
        return {k: req.header(k) for k in keep if req.header(k) is not None}

    # ================================================================= INVITE
    async def on_invite(self, conn, reg, req):
        sip = self.sip
        d = sip.dialogs.get(req.call_id)
        if req.to_tag:
            if not d:
                await sip.respond(conn, req, 481, 'Call/Transaction Does Not Exist')
                return
            return await self.on_reinvite(conn, reg, req, d)
        scheme, user, host, port, params = uri_parts(req.uri)
        hl = host.lower()
        if hl == self.cfg.conf_domain.lower() or hl.startswith('conf.'):
            g = self.focus_map.get(user)
            if not g:
                await sip.respond(conn, req, 404, 'Not Found', headers=[('Warning', '399 mock "unknown conference"')])
                return
            return await self.invite_group(conn, reg, req, g, rejoin=True)
        if user.lower() in ('conference-factory', 'conference', 'conf-factory') or \
                req.has_option('Require', 'recipient-list-invite'):
            return await self.invite_group(conn, reg, req, None)
        return await self.invite_1to1(conn, reg, req)

    def _parse_offer(self, req):
        sdpbody = req.body
        if req.ctype.startswith('multipart/'):
            for hd, data in parse_multipart(req.header('Content-Type'), req.body):
                if hd.get('content-type', '').lower().startswith('application/sdp'):
                    sdpbody = data
                    break
        offer = parse_sdp(sdpbody.decode('utf-8', 'replace')) if sdpbody else None
        return offer

    @staticmethod
    def _answer_setup(offer):
        s = (offer or {}).get('setup')
        return 'active' if s == 'passive' else 'passive'

    async def _prepare_session(self, conn, reg, req, offer, kind, dialog, peer=None, group=None):
        tls = offer['proto'].upper().startswith('TCP/TLS')
        s = ChatSession(self.net, kind, reg.number, dialog, peer=peer, group=group, tls=tls)
        s.remote_path = offer['path']
        s.remote_setup = offer['setup']
        s.local_setup = self._answer_setup(offer)
        s.remote_accept_types = offer['accept_types']
        s.remote_accept_wrapped = offer['accept_wrapped']
        s.conversation_id = req.header('Conversation-ID')
        s.contribution_id = req.header('Contribution-ID')
        dialog.session = s
        return s

    async def invite_1to1(self, conn, reg, req):
        sip = self.sip
        v = self.user_for(number_from_uri(req.uri))
        if v is None or not v.rcs:
            await sip.respond(conn, req, 404, 'Not Found')
            return
        if v.invite_response and v.invite_response >= 300:
            await sip.respond(conn, req, v.invite_response)
            return
        if not v.online and v.offline_response:
            await sip.respond(conn, req, v.offline_response)
            return
        offer = self._offer_or_none(req)
        if not offer or not offer['has_message']:
            await sip.respond(conn, req, 488, 'Not Acceptable Here', headers=[('Warning', '304 mock "m=message required"')])
            return
        await sip.respond(conn, req, 100)
        ev = asyncio.Event()
        sip.pending_invites[req.call_id] = ev
        try:
            if v.answer_delay_ms:
                await sip.respond(conn, req, 180, to_tag=self._tag_for(req))
                try:
                    await asyncio.wait_for(ev.wait(), v.answer_delay_ms / 1000.0)
                except asyncio.TimeoutError:
                    pass
            if ev.is_set():
                self._pend_tags.pop(req.call_id, None)
                await sip.respond(conn, req, 487, 'Request Terminated', to_tag=self._tag_for(req))
                return
        finally:
            sip.pending_invites.pop(req.call_id, None)
        d = self._uas_dialog(conn, reg, req, 'chat', self.v_contact(v, conn))
        d.vuser = v.number
        s = await self._prepare_session(conn, reg, req, offer, '1to1', d, peer=v.number)
        v.record('invite', **{'from': reg.number, 'session': s.id, 'headers': self._hdrs(req),
                              'sdp': {k: offer[k] for k in ('proto', 'path', 'setup', 'accept_types', 'accept_wrapped')}})
        hdrs = [('Contact', self.v_contact(v, conn)), ('Allow', ALLOW), ('Supported', 'timer'),
                ('P-Asserted-Identity', '<%s>' % self.v_uri(v))] + self._timer_headers(req)
        await sip.respond(conn, req, 200, to_tag=d.local_tag, headers=hdrs, body=self.sdp_for(s),
                          ctype='application/sdp', record_route=True)
        d.state = 'confirmed'
        if s.local_setup == 'active':
            spawn(self._connect_active_safe(s))

    def _tag_for(self, req):
        # stable to-tag across provisional/final responses of one INVITE
        d = self.sip.dialogs.get(req.call_id)
        if d:
            return d.local_tag
        return self._pend_tags.setdefault(req.call_id, new_tag())

    def _uas_dialog(self, conn, reg, req, kind, contact):
        tag = self._pend_tags.pop(req.call_id, None) or new_tag()
        d = Dialog(self.sip, req.call_id, req.header('To', ''), req.header('From', ''), tag, req.from_tag, 'uas',
                   conn, reg.number)
        d.kind = kind
        d.remote_target = addr_uri(req.header('Contact', '')) or reg.contact_uri
        d.remote_cseq = req.cseq[0]
        d.local_contact = contact
        self.sip.dialogs[req.call_id] = d
        return d

    def _offer_or_none(self, req):
        try:
            return self._parse_offer(req)
        except Exception:
            return None

    async def _connect_active_safe(self, s):
        try:
            await self.net.msrp.connect_active(s)
        except Exception as e:
            self.net.trace.event('MSRP active connect failed for session %s: %r' % (s.id, e))

    async def on_reinvite(self, conn, reg, req, d):
        s = d.session
        d.remote_cseq = req.cseq[0]
        offer = self._offer_or_none(req)
        if s and offer and offer['has_message']:
            if offer['path']:
                s.remote_path = offer['path']
            s.remote_accept_types = offer['accept_types'] or s.remote_accept_types
        hdrs = [('Contact', d.local_contact or ''), ('Allow', ALLOW)] + self._timer_headers(req)
        if s and offer:
            await self.sip.respond(conn, req, 200, to_tag=d.local_tag, headers=hdrs, body=self.sdp_for(s, int(time.time())),
                                   ctype='application/sdp', record_route=True)
        else:
            await self.sip.respond(conn, req, 200, to_tag=d.local_tag, headers=hdrs, record_route=True)

    async def on_update(self, conn, reg, req):
        d = self.sip.dialogs.get(req.call_id)
        if not d:
            await self.sip.respond(conn, req, 481, 'Call/Transaction Does Not Exist')
            return
        await self.on_reinvite(conn, reg, req, d)

    # ------------------------------------------------------------- group INVITE from the device
    async def invite_group(self, conn, reg, req, g, rejoin=False):
        sip = self.sip
        offer = self._offer_or_none(req)
        if not offer or not offer['has_message']:
            await sip.respond(conn, req, 488, 'Not Acceptable Here', headers=[('Warning', '304 mock "m=message required"')])
            return
        subject = req.header('Subject')
        conv = req.header('Conversation-ID')
        numbers = []
        if req.ctype.startswith('multipart/'):
            for hd, data in parse_multipart(req.header('Content-Type'), req.body):
                if 'resource-lists' in hd.get('content-type', ''):
                    numbers = self._resource_list_numbers(data)
        if g is None and conv and conv in self.net.groups:
            g = self.net.groups[conv]     # same Conversation-ID through the factory: resume
            rejoin = True
        await sip.respond(conn, req, 100)
        created = False
        if g is None:
            created = True
            g = self.new_group(conv or str(uuid.uuid4()), subject, reg.number, req.header('Contribution-ID'))
            g.participants[reg.number] = {'status': 'connected'}
            for n in numbers:
                self.add_participant(g, n)
        else:
            if subject and not rejoin:
                g.subject = subject
            g.participants.setdefault(reg.number, {})['status'] = 'connected'
        g.device_status[reg.number] = 'joined'
        contact = '<%s;isfocus>%s' % (g.focus_uri, features_tags(['chat']))
        d = self._uas_dialog(conn, reg, req, 'chat', contact)
        d.group = g.id
        old = g.sessions.get(reg.number)
        if old and not old.closed:
            old.close()
        s = await self._prepare_session(conn, reg, req, offer, 'group', d, group=g)
        g.sessions[reg.number] = s
        s.conversation_id = g.id
        s.contribution_id = g.contribution_id
        hdrs = [('Contact', contact), ('Allow', ALLOW), ('Supported', 'timer')] + self._timer_headers(req)
        await sip.respond(conn, req, 200, to_tag=d.local_tag, headers=hdrs, body=self.sdp_for(s),
                          ctype='application/sdp', record_route=True)
        d.state = 'confirmed'
        for n in g.participants:
            v = self.net.users.get(n)
            if v and n != reg.number:
                v.record('group_invite' if created else 'group_rejoin', **{'from': reg.number, 'group': g.id,
                         'subject': g.subject, 'participants': sorted(g.participants)})
        self.net.trace.event('GROUP %s %s by %s, focus %s, participants %s' % (
            g.id, 'created' if created else 'rejoined', reg.number, g.focus_uri, sorted(g.participants)))
        if s.local_setup == 'active':
            spawn(self._connect_active_safe(s))
        if created:
            await self.notify_group(g)

    @staticmethod
    def _resource_list_numbers(data):
        out = []
        try:
            root = ET.fromstring(data)
        except ET.ParseError:
            return out
        for e in root.iter():
            if e.tag.rsplit('}', 1)[-1] == 'entry' and e.get('uri'):
                n = number_from_uri(e.get('uri'))
                if n:
                    out.append(n)
        return out

    def new_group(self, gid, subject, creator, contribution_id=None):
        user = 'chat-' + rand_hex(5)
        g = Group(self.net, gid, user, subject or '', creator, contribution_id)
        self.net.groups[gid] = g
        self.focus_map[user] = g
        return g

    def add_participant(self, g, number):
        v = self.net.users.get(number)
        if v is None and self.cfg.unknown_users == 'rcs':
            v = self.ensure_user(number)
        if number in self.net.regs:
            g.participants[number] = {'status': 'connected'}
        elif v is not None and v.rcs:
            g.participants[number] = {'status': 'connected'}
        else:
            g.participants[number] = {'status': 'disconnected', 'method': 'failed'}

    # ================================================================= SUBSCRIBE (conference)
    async def on_subscribe(self, conn, reg, req):
        sip = self.sip
        ev = (req.header('Event') or '').split(';')[0].strip().lower()
        if ev != 'conference':
            await sip.respond(conn, req, 489, 'Bad Event', headers=[('Allow-Events', 'conference, reg')])
            return
        d = sip.dialogs.get(req.call_id)
        g = None
        if d and d.group:
            g = self.net.groups.get(d.group)
        if g is None:
            u = uri_parts(req.uri)
            g = self.focus_map.get(u[1])
        if g is None:
            await sip.respond(conn, req, 404, 'Not Found')
            return
        exp = int(req.header('Expires', '3600') or 3600)
        if d is None:
            d = Dialog(sip, req.call_id, req.header('To', ''), req.header('From', ''), new_tag(), req.from_tag, 'uas',
                       conn, reg.number)
            d.kind = 'confsub'
            d.group = g.id
            d.remote_target = addr_uri(req.header('Contact', '')) or reg.contact_uri
            d.local_contact = '<%s;isfocus>' % g.focus_uri
            d.state = 'confirmed'
            sip.dialogs[req.call_id] = d
        d.remote_cseq = req.cseq[0]
        await sip.respond(conn, req, 200, to_tag=d.local_tag, headers=[
            ('Expires', str(exp)), ('Contact', d.local_contact or '<%s;isfocus>' % g.focus_uri)], record_route=True)
        if exp == 0:
            g.subs.pop(reg.number, None)
            await self._send_conf_notify(g, d, terminated=True)
            return
        d.extra['sub_expires'] = time.time() + exp
        g.subs[reg.number] = d
        await self._send_conf_notify(g, d)

    def conf_users(self, g, extra=()):
        users = []
        for n, st in g.participants.items():
            users.append({'uri': self.net.sip_uri(n), 'status': st.get('status', 'connected'),
                          'method': st.get('method'), 'roles': ['participant']})
        users.extend(extra)
        return users

    async def _send_conf_notify(self, g, d, terminated=False, extra=()):
        conn = d.live_conn()
        if not conn:
            return
        xml = build_conf_info(g.focus_uri, g.version, 'full', g.subject, self.conf_users(g, extra))
        exp = max(0, int(d.extra.get('sub_expires', time.time() + 3600) - time.time()))
        st = 'terminated;reason=timeout' if terminated else 'active;expires=%d' % exp
        n = d.build_request('NOTIFY', headers=[('Event', 'conference'), ('Subscription-State', st)], body=xml,
                            ctype='application/conference-info+xml')
        try:
            r = await self.sip.request(conn, n, timeout=10)
            if r.status == 481:
                g.subs.pop(d.device, None)
        except Exception as e:
            self.net.trace.event('conference NOTIFY failed: %r' % e)

    async def notify_group(self, g, departed=()):
        g.version += 1
        extra = [{'uri': self.net.sip_uri(n), 'status': 'disconnected', 'method': m, 'roles': ['participant']}
                 for n, m in departed]
        for dev, d in list(g.subs.items()):
            await self._send_conf_notify(g, d, extra=extra)

    # ================================================================= REFER (add/remove participants)
    async def on_refer(self, conn, reg, req):
        sip = self.sip
        u = uri_parts(req.uri)
        d = sip.dialogs.get(req.call_id)
        g = self.net.groups.get(d.group) if d and d.group else self.focus_map.get(u[1])
        if g is None:
            await sip.respond(conn, req, 404, 'Not Found')
            return
        rt = req.header('Refer-To', '')
        target = addr_uri(rt)
        adds, removes = [], []
        if target.lower().startswith('cid:') and req.body:
            for hd, data in parse_multipart(req.header('Content-Type'), req.body) or [({}, req.body)]:
                adds += self._resource_list_numbers(data)
        else:
            n = number_from_uri(target)
            method = uri_parts(target)[4].get('method', 'INVITE').upper()
            if n:
                (removes if method == 'BYE' else adds).append(n)
        await sip.respond(conn, req, 202, 'Accepted', headers=[('Contact', '<%s;isfocus>' % g.focus_uri)])
        departed = []
        for n in adds:
            self.add_participant(g, n)
            v = self.net.users.get(n)
            if v:
                v.record('group_invite', **{'from': reg.number, 'group': g.id, 'subject': g.subject,
                                            'participants': sorted(g.participants), 'via': 'REFER'})
        for n in removes:
            if n in g.participants:
                g.participants.pop(n)
                departed.append((n, 'booted'))
        await self.notify_group(g, departed)

    # ================================================================= BYE
    async def on_bye(self, conn, reg, req):
        sip = self.sip
        d = sip.dialogs.get(req.call_id)
        if not d:
            await sip.respond(conn, req, 481, 'Call/Transaction Does Not Exist')
            return
        await sip.respond(conn, req, 200)
        self._end_dialog(d, 'bye from device')

    def _end_dialog(self, d, why):
        d.state = 'terminated'
        self.sip.dialogs.pop(d.call_id, None)
        s = d.session
        if s:
            s.close()
            if s.group:
                g = s.group
                if g.sessions.get(s.device) is s:
                    g.sessions.pop(s.device, None)
                g.subs.pop(s.device, None)
        if d.group and d.kind == 'confsub':
            g = self.net.groups.get(d.group)
            if g:
                g.subs.pop(d.device, None)
        self.net.trace.event('dialog %s ended (%s)' % (d.call_id, why))

    # ================================================================= incoming content (device -> virtual users)
    async def on_msrp_report(self, s, m):
        pass

    async def on_msrp_message(self, s, mid, ctype, data, from_path):
        ct = (ctype or '').split(';')[0].strip().lower()
        g = s.group
        if g:
            targets = [self.net.users[n] for n in g.participants if n in self.net.users and n != s.device
                       and self.net.users[n].rcs]
        else:
            v = self.net.users.get(s.peer)
            targets = [v] if v else []
        await self.process_content(s.device, targets, ct, data, 'msrp', s, g, msrp_message_id=mid,
                                   sip_headers={'Contribution-ID': s.contribution_id, 'Conversation-ID': s.conversation_id})

    async def process_content(self, device, targets, ctype, body, via, session, group, msrp_message_id=None,
                              sip_headers=None):
        cp = None
        inner_type, inner = ctype, body
        base = {'from': device, 'via': via, 'group': group.id if group else None,
                'session': session.id if session else None, 'msrp_message_id': msrp_message_id,
                'sip_headers': sip_headers or {}}
        if ctype == 'message/cpim':
            try:
                cp = parse_cpim(body)
                inner_type, inner = cp.inner_type, cp.body
                base['cpim'] = {'headers': cp.headers, 'content_type': cp.ctype}
                base['message_id'] = cp.message_id
                base['dispositions'] = cp.dispositions
                base['disposition_requested'] = bool(cp.dispositions)
                base['cpim_from'] = uri_of(cp.get('From') or '')
                base['cpim_to'] = uri_of(cp.get('To') or '')
            except Exception as e:
                base['cpim_error'] = repr(e)
        base['content_type'] = inner_type
        events = []
        info = None
        try:
            if inner_type == 'message/imdn+xml':
                kind, info = 'imdn', {'imdn': parse_imdn(inner)}
            elif inner_type == 'application/im-iscomposing+xml':
                kind, info = 'composing', {'composing': parse_composing(inner)}
            elif inner_type == 'text/plain' or inner_type.startswith('text/'):
                kind, info = 'text', {'text': inner.decode('utf-8', 'replace')}
            elif inner_type == FT_CT:
                kind = 'file'
                info = await self._receive_file(inner, device)
            else:
                kind, info = 'other', {'body_b64': base64.b64encode(inner).decode(), 'size': len(inner)}
        except Exception as e:
            kind, info = 'error', {'error': repr(e), 'body': inner.decode('utf-8', 'replace')[:2000]}
        if group:
            group.messages.append(dict(base, kind=kind, **info))
            del group.messages[:-1000]
        for v in targets:
            ev = v.record(kind, **dict(base, **info))
            if kind in ('text', 'file') and cp is not None:
                spawn(self._auto_responses(v, device, ev, cp, session, group, via == 'sip-message'))
            elif kind in ('text', 'file') and v.auto_reply:
                spawn(self._auto_responses(v, device, ev, None, session, group, via == 'sip-message'))

    async def _receive_file(self, xml, device):
        ft = parse_ft_xml(xml)
        f = ft['file'] or {}
        out = {'file': {'name': f.get('file_name'), 'type': f.get('content_type'), 'size': f.get('size'),
                        'url': f.get('url'), 'until': f.get('until'), 'downloaded': False},
               'thumbnail': ft['thumbnail']}
        hit = self.net.files.by_url(f.get('url'))
        if hit and hit[0]:
            rec = hit[0]
            rec['downloads'] += 1
            out['file'].update({'downloaded': True, 'sha256': rec['sha256'], 'actual_size': rec['size'],
                                'file_id': rec['id'], 'uploader': rec.get('uploader')})
        elif f.get('url'):
            out['file']['error'] = 'url is not on this mock content server (not fetched)'
        return out

    async def _auto_responses(self, v, device, ev, cp, session, group, pager):
        try:
            await asyncio.sleep(v.imdn_delay_ms / 1000.0)
            if not pager and not (session and session.alive()):
                pager = True      # session already closed: notifications go as SIP MESSAGE, like a real UA
            mid = cp.message_id if cp else None
            if v.auto_composing:
                await self.send_from_user(v, device, 'application/im-iscomposing+xml', build_composing('active'),
                                          session=session, group=group, pager=pager, cpim_wrap=True)
            if mid and v.auto_delivery_imdn:
                await self.send_imdn(v, device, mid, 'delivered', session, group, pager)
            if mid and v.auto_display_imdn:
                await self.send_imdn(v, device, mid, 'displayed', session, group, pager)
            if v.auto_composing:
                await asyncio.sleep(0.3)
                await self.send_from_user(v, device, 'application/im-iscomposing+xml', build_composing('idle'),
                                          session=session, group=group, pager=pager, cpim_wrap=True)
            if v.auto_reply:
                await self.send_from_user(v, device, 'text/plain', v.auto_reply.encode(), session=session,
                                          group=group, pager=pager)
        except Exception as e:
            self.net.trace.event('auto response for %s failed: %r' % (v.number, e))

    async def send_imdn(self, v, device, message_id, status, session=None, group=None, pager=False):
        body = build_imdn(message_id, self.v_uri(v), status)
        return await self.send_from_user(v, device, 'message/imdn+xml', body, session=session, group=group,
                                         pager=pager, disposition_hdr='notification', imdn_noid=True)

    # ================================================================= virtual user -> device
    def _out_request(self, reg, method, from_uri, to_uri, headers=(), body=b'', ctype=None):
        conn = self.sip.device_conn(reg)
        if not conn:
            raise ApiError(409, 'device %s has no live SIP connection' % reg.number)
        r = SipMessage(method=method, uri=reg.contact_uri)
        r.add('Via', 'SIP/2.0/%s %s:%d;branch=%s' % (conn.transport.upper(), self.cfg.host, self.sip.port_for(conn), new_branch()))
        r.add('Max-Forwards', '70')
        r.add('From', '<%s>;tag=%s' % (from_uri, new_tag()))
        r.add('To', '<%s>' % to_uri)
        r.add('Call-ID', new_callid(self.cfg.host))
        r.add('CSeq', '1 %s' % method)
        for k, v in headers:
            r.add(k, v)
        if ctype:
            r.add('Content-Type', ctype)
        r.add('User-Agent', 'RCS-Mock/1.0')
        r.body = body
        return conn, r

    def _wrap(self, v, device, group, inner_type, inner, message_id=None, dispositions=None, disposition_hdr=None,
              imdn_noid=False):
        to = group.focus_uri if group else self.net.sip_uri(device)
        mid = message_id
        if mid is None and not imdn_noid:
            mid = rand_hex(10)
        if imdn_noid and inner_type == 'message/imdn+xml':
            mid = rand_hex(10)
        return mid, build_cpim(self.v_uri(v), to, inner_type, inner, message_id=mid, dispositions=dispositions,
                               disposition_hdr=disposition_hdr)

    async def send_from_user(self, v, device, inner_type, inner, *, session=None, group=None, pager=False,
                             message_id=None, dispositions=None, disposition_hdr=None, chunk_size=0, cpim_wrap=True,
                             imdn_noid=False, success_report=False, failure_report='yes', raw=False):
        """Send content from virtual user v to the device. Returns result dict."""
        reg = self.net.regs.get(device)
        if reg is None:
            raise ApiError(409, 'device %s is not registered' % device)
        if raw:
            mid, cpim, ct = message_id, inner, inner_type
        else:
            mid, cpim = self._wrap(v, device, group, inner_type, inner, message_id, dispositions, disposition_hdr, imdn_noid)
            ct = 'message/cpim'
        t0 = time.time()
        if pager:
            res = await self._send_pager(v, reg, ct, cpim)
        else:
            if session is None or not session.alive():
                session = await (self.ensure_group_session(group, reg) if group else self.ensure_1to1_session(v, reg))
            res = await self.net.msrp.send_message(session, ct, cpim, chunk_size=chunk_size,
                                                   success_report=success_report, failure_report=failure_report)
            res['session'] = session.id
        res.update({'message_id': mid, 'via': 'sip-message' if pager else 'msrp', 'content_type': inner_type,
                    'elapsed_ms': int((time.time() - t0) * 1000)})
        v.sent.append(dict(res, ts=now_iso(), to=device, group=group.id if group else None,
                           text=inner.decode('utf-8', 'replace') if inner_type == 'text/plain' else None,
                           dispositions=dispositions))
        del v.sent[:-1000]
        return res

    async def _send_pager(self, v, reg, ct, body):
        conn, r = self._out_request(reg, 'MESSAGE', self.v_uri(v), self.net.sip_uri(reg.number), headers=[
            ('P-Asserted-Identity', '<%s>' % self.v_uri(v)),
            ('P-Asserted-Service', 'urn:urn-7:3gpp-service.ims.icsi.oma.cpm.msg'),
            ('Accept-Contact', '*;+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"'),
            ('Contribution-ID', rand_hex(16)), ('Conversation-ID', rand_hex(16))], body=body, ctype=ct)
        try:
            resp = await self.sip.request(conn, r, timeout=15)
        except asyncio.TimeoutError:
            return {'ok': False, 'status': 408, 'error': 'timeout'}
        return {'ok': 200 <= resp.status < 300, 'status': resp.status}

    # ------------------------------------------------------------- session setup (network originated)
    async def ensure_1to1_session(self, v, reg):
        for s in list(self.net.sessions.values()):
            if s.kind == '1to1' and s.device == reg.number and s.peer == v.number and s.alive():
                return s
        key = ('1to1', v.number, reg.number)
        lock = self._locks.setdefault(key, asyncio.Lock())
        async with lock:
            for s in list(self.net.sessions.values()):
                if s.kind == '1to1' and s.device == reg.number and s.peer == v.number and s.alive():
                    return s
            return await self._invite_device(reg, v=v)

    async def ensure_group_session(self, g, reg):
        s = g.sessions.get(reg.number)
        if s and s.alive():
            return s
        key = ('group', g.id, reg.number)
        lock = self._locks.setdefault(key, asyncio.Lock())
        async with lock:
            s = g.sessions.get(reg.number)
            if s and s.alive():
                return s
            return await self._invite_device(reg, group=g)

    async def _invite_device(self, reg, v=None, group=None):
        """Network-originated INVITE to the device (1:1 from v, or from a group focus)."""
        sip = self.sip
        conn = sip.device_conn(reg)
        if not conn:
            raise ApiError(409, 'device %s has no live SIP connection' % reg.number)
        cfg = self.cfg
        host = cfg.host
        if group:
            from_hdr = '<%s>' % group.focus_uri
            contact = '<%s;isfocus>%s' % (group.focus_uri, features_tags(['chat']))
            conv, contrib = group.id, group.contribution_id
        else:
            from_hdr = '<%s>' % self.v_uri(v)
            contact = self.v_contact(v, conn)
            conv, contrib = str(uuid.uuid4()), rand_hex(16)
        d = Dialog(sip, new_callid(host), from_hdr, '<%s>' % self.net.sip_uri(reg.number), new_tag(), None, 'uac', conn,
                   reg.number)
        d.remote_target = reg.contact_uri
        d.local_contact = contact
        d.kind = 'chat'
        d.vuser = v.number if v else None
        d.group = group.id if group else None
        tls = cfg.prov_tls
        s = ChatSession(self.net, 'group' if group else '1to1', reg.number, d, peer=v.number if v else None, group=group, tls=tls)
        s.local_setup = 'actpass'
        s.conversation_id, s.contribution_id = conv, contrib
        d.session = s
        hdrs = [('Record-Route', '<sip:%s:%d;transport=%s;lr>' % (host, sip.port_for(conn), conn.transport)),
                ('Accept-Contact', '*;+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session";require;explicit'),
                ('P-Asserted-Identity', from_hdr), ('P-Asserted-Service', 'urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session'),
                ('Allow', ALLOW), ('Supported', 'timer'),
                ('Contribution-ID', contrib), ('Conversation-ID', conv)]
        sdp = self.sdp_for(s)
        if group:
            hdrs.append(('Subject', group.subject))
            hdrs.append(('Referred-By', '<%s>' % self.net.sip_uri(group.creator)))
            rl = '<?xml version="1.0" encoding="UTF-8"?><resource-lists xmlns="urn:ietf:params:xml:ns:resource-lists"><list>%s</list></resource-lists>' % ''.join(
                '<entry uri="%s"/>' % self.net.sip_uri(n) for n in group.participants if n != reg.number)
            ct, body = build_multipart([('application/sdp', sdp), ('application/resource-lists+xml', rl.encode(),
                                                                    ['Content-Disposition: recipient-list'])])
        else:
            ct, body = 'application/sdp', sdp
        req = d.build_request('INVITE', headers=hdrs, body=body, ctype=ct, cseq=1)
        sip.dialogs[d.call_id] = d
        if group:
            group.device_status[reg.number] = 'invited'
        try:
            resp = await sip.request(conn, req, timeout=30)
        except asyncio.TimeoutError:
            self._abort_session(d, s)
            raise ApiError(504, 'device did not answer the INVITE')
        if resp.status != 200:
            ack = d.build_request('ACK', cseq=1, branch=req.branch)
            ack.set('To', resp.header('To'))
            try:
                await conn.send(ack)
            except Exception:
                pass
            self._abort_session(d, s)
            if group:
                group.device_status[reg.number] = 'declined'
            raise ApiError(resp.status if resp.status >= 400 else 502, 'device answered INVITE with %d %s' % (resp.status, resp.reason))
        d.remote_tag = resp.to_tag
        d.remote_target = addr_uri(resp.header('Contact', '')) or reg.contact_uri
        d.state = 'confirmed'
        ack = d.build_request('ACK', cseq=1)
        await conn.send(ack)
        ans = None
        try:
            body_ = resp.body
            if resp.ctype.startswith('multipart/'):
                for hd, data in parse_multipart(resp.header('Content-Type'), resp.body):
                    if hd.get('content-type', '').startswith('application/sdp'):
                        body_ = data
            ans = parse_sdp(body_.decode('utf-8', 'replace'))
        except Exception:
            pass
        if not ans or not ans['has_message']:
            self.net.trace.event('device answer INVITE without usable SDP; sending BYE')
            await self.bye_dialog(d)
            raise ApiError(502, 'device 200 OK had no m=message SDP')
        s.remote_path = ans['path']
        s.remote_setup = ans['setup']
        s.remote_accept_types, s.remote_accept_wrapped = ans['accept_types'], ans['accept_wrapped']
        if group:
            group.sessions[reg.number] = s
            group.device_status[reg.number] = 'joined'
            group.participants.setdefault(reg.number, {})['status'] = 'connected'
        if ans['setup'] == 'passive':
            await self.net.msrp.connect_active(s)
        return s

    def _abort_session(self, d, s):
        d.state = 'terminated'
        self.sip.dialogs.pop(d.call_id, None)
        s.close()

    async def bye_dialog(self, d):
        conn = d.live_conn()
        if conn and d.state == 'confirmed':
            try:
                await self.sip.request(conn, d.build_request('BYE'), timeout=5)
            except Exception:
                pass
        self._end_dialog(d, 'BYE sent by mock')

    # ================================================================= API operations
    def _device(self, number=None):
        reg = self.net.device(number)
        if not reg:
            raise ApiError(409, 'no registered device' + (' for %s' % number if number else ''))
        return reg

    def _user(self, number, create=False):
        n = norm_number(number)
        v = self.net.users.get(n)
        if not v:
            if create:
                return self.ensure_user(n)
            raise ApiError(404, 'no such virtual user %s' % number)
        return v

    async def api_send(self, number, d):
        v = self._user(number)
        reg = self._device(norm_number(d.get('to')) if d.get('to') else None)
        pager = (d.get('mode') or 'session') == 'pager'
        disp = d.get('dispositions', v.request_dispositions)
        if disp is False or disp == 'none':
            disp = []
        kw = dict(pager=pager, dispositions=disp or None, message_id=d.get('message_id'),
                  chunk_size=int(d.get('chunk_size') or 0), success_report=bool(d.get('success_report')),
                  failure_report=d.get('failure_report', 'yes'))
        if d.get('composing'):
            return await self.send_from_user(v, reg.number, 'application/im-iscomposing+xml',
                                             build_composing(d['composing']), pager=pager, message_id=None)
        if d.get('imdn'):
            im = d['imdn']
            return await self.send_imdn(v, reg.number, im['message_id'], im.get('status', 'delivered'), None, None, pager)
        if d.get('file'):
            f = d['file']
            data = self._file_data(f)
            rec = self.net.files.put(f.get('name') or 'file.bin', f.get('type') or 'application/octet-stream', data,
                                     self._thumb(f), uploader=v.number)
            xml = self.net.files.file_info_xml(rec)
            res = await self.send_from_user(v, reg.number, FT_CT, xml, **kw)
            res['file'] = self.net.files.summary(rec)
            return res
        if d.get('content_type') and d.get('body_b64') is not None:
            return await self.send_from_user(v, reg.number, d['content_type'], base64.b64decode(d['body_b64']), **kw)
        if 'text' not in d:
            raise ApiError(400, 'need one of text, file, composing, imdn, content_type+body_b64')
        return await self.send_from_user(v, reg.number, 'text/plain', d['text'].encode('utf-8'), **kw)

    @staticmethod
    def _file_data(f):
        if f.get('content_b64') is not None:
            return base64.b64decode(f['content_b64'])
        if f.get('path'):
            with open(f['path'], 'rb') as fh:
                return fh.read()
        if f.get('size') is not None:
            return (bytes(range(256)) * (int(f['size']) // 256 + 1))[:int(f['size'])]
        raise ApiError(400, 'file needs content_b64, path or size')

    @staticmethod
    def _thumb(f):
        if f.get('thumbnail_b64'):
            return base64.b64decode(f['thumbnail_b64']), f.get('thumbnail_type') or 'image/jpeg'
        return None

    async def api_options_to_device(self, number, d):
        v = self._user(number)
        reg = self._device(norm_number(d.get('to')) if d.get('to') else None)
        conn, r = self._out_request(reg, 'OPTIONS', self.v_uri(v), self.net.sip_uri(reg.number), headers=[
            ('Contact', self.v_contact(v, self.sip.device_conn(reg))),
            ('Accept-Contact', '*;+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"'),
            ('Allow', ALLOW), ('Accept', 'application/sdp')])
        try:
            resp = await self.sip.request(conn, r, timeout=10)
        except asyncio.TimeoutError:
            v.record('options_response', **{'from': reg.number, 'status': 408})
            return {'ok': False, 'status': 408}
        ev = v.record('options_response', **{'from': reg.number, 'status': resp.status, 'reason': resp.reason,
                                              'contact': resp.header('Contact'), 'allow': resp.header('Allow'),
                                              'body': resp.body.decode('utf-8', 'replace')})
        return {'ok': resp.status == 200, 'status': resp.status, 'contact': resp.header('Contact'), 'event': ev['id']}

    # ------------------------------------------------------------- groups API
    async def api_group_create(self, d):
        creator = norm_number(d.get('creator'))
        parts = [norm_number(x) for x in d.get('participants', [])]
        if not creator or not parts:
            raise ApiError(400, 'creator and participants required')
        dev_n = norm_number(d.get('device')) if d.get('device') else None
        reg = self.net.device(dev_n)
        dev_num = reg.number if reg else dev_n
        g = self.new_group(d.get('id') or str(uuid.uuid4()), d.get('subject', ''), creator)
        g.participants[creator] = {'status': 'connected'}
        self.ensure_user(creator)
        for n in parts:
            if n in self.net.regs or n == dev_num:
                g.participants[n] = {'status': 'connected'}
            else:
                self.ensure_user(n)
                g.participants[n] = {'status': 'connected'}
        res = g.to_dict()
        if d.get('invite_device', True):
            if not reg:
                raise ApiError(409, 'no registered device to invite (group %s created)' % g.id)
            if reg.number not in g.participants:
                g.participants[reg.number] = {'status': 'connected'}
            s = await self._invite_device(reg, group=g)
            res = g.to_dict()
            res['session'] = s.id
        return res

    def _group(self, gid):
        g = self.net.groups.get(gid)
        if not g:
            for x in self.net.groups.values():
                if x.focus_user == gid or x.focus_uri == gid:
                    return x
            raise ApiError(404, 'no such group %s' % gid)
        return g

    async def api_group_post(self, gid, d):
        g = self._group(gid)
        sender = norm_number(d.get('from'))
        if sender not in g.participants:
            raise ApiError(400, '%s is not a participant' % sender)
        v = self._user(sender, create=True)
        reg = self._device(norm_number(d.get('to')) if d.get('to') else None)
        disp = d.get('dispositions', v.request_dispositions) or None
        kw = dict(group=g, dispositions=disp, message_id=d.get('message_id'), chunk_size=int(d.get('chunk_size') or 0))
        if d.get('composing'):
            res = await self.send_from_user(v, reg.number, 'application/im-iscomposing+xml', build_composing(d['composing']), group=g)
        elif d.get('file'):
            f = d['file']
            rec = self.net.files.put(f.get('name') or 'file.bin', f.get('type') or 'application/octet-stream',
                                     self._file_data(f), self._thumb(f), uploader=v.number)
            res = await self.send_from_user(v, reg.number, FT_CT, self.net.files.file_info_xml(rec), **kw)
            res['file'] = self.net.files.summary(rec)
        else:
            res = await self.send_from_user(v, reg.number, 'text/plain', d['text'].encode('utf-8'), **kw)
        g.messages.append({'kind': 'sent', 'from': sender, 'result': res, 'ts': now_iso(), 'text': d.get('text')})
        return res

    async def api_group_participants(self, gid, d):
        g = self._group(gid)
        departed = []
        for n in d.get('add', []):
            n = norm_number(n)
            if n not in self.net.regs:
                self.ensure_user(n)
            g.participants[n] = {'status': 'connected'}
        for n in d.get('remove', []):
            n = norm_number(n)
            if n in g.participants:
                g.participants.pop(n)
                departed.append((n, d.get('method', 'booted')))
        await self.notify_group(g, departed)
        for n, _ in departed:
            if n in self.net.regs:
                s = g.sessions.get(n)
                if s and s.alive():
                    await self.bye_dialog(s.dialog)
        return g.to_dict()

    async def api_group_subject(self, gid, d):
        g = self._group(gid)
        g.subject = d.get('subject', '')
        await self.notify_group(g)
        return g.to_dict()

    async def api_group_bye(self, gid, d):
        g = self._group(gid)
        for n, s in list(g.sessions.items()):
            if s.alive():
                await self.bye_dialog(s.dialog)
        return g.to_dict()

    async def api_session_bye(self, sid):
        s = self.net.sessions.get(sid)
        if not s:
            raise ApiError(404, 'no such session')
        await self.bye_dialog(s.dialog)
        return {'ok': True}
