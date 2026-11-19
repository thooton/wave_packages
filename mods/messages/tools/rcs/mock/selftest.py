#!/usr/bin/env python3
"""Self-test: starts the mock on private ports and drives it with a raw-socket scripted client.

    python3 tools/rcs/mock/selftest.py        (or: python3 -m tools.rcs.mock.selftest)
"""
import base64
import hashlib
import json
import os
import queue
import re
import secrets
import socket
import ssl
import subprocess
import sys
import threading
import time
import urllib.error
import urllib.request

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', '..'))
sys.path.insert(0, ROOT)

from tools.rcs.mock.sipmsg import SipMessage, SipFramer, parse_sdp, build_sdp, build_multipart, parse_multipart, addr_uri  # noqa
from tools.rcs.mock.msrp import (MsrpFramer, build_msrp, build_cpim, parse_cpim, build_imdn, parse_imdn,  # noqa
                                 build_ft_xml, parse_ft_xml, build_composing, new_tid, msrp_hostport)
from tools.rcs.mock.util import parse_auth_params, digest_response  # noqa

BASE = int(os.environ.get('MOCK_TEST_BASE', '18000'))
P = dict(acs=BASE + 80, acs_tls=BASE + 43, sip=BASE + 60, sip_tls=BASE + 61, msrp=BASE + 55, msrps=BASE + 56, ctl=BASE + 99)
DOMAIN = 'rcs.mock.test'
DEV = '+15551234567'
V1, V2, V3 = '+15557770001', '+15557770002', '+15557770003'
NONRCS = '+15550009999'

passed = 0
failed = []


def check(cond, what):
    global passed
    if cond:
        passed += 1
        print('  ok   ' + what)
    else:
        failed.append(what)
        print('  FAIL ' + what)


def api(method, path, body=None, timeout=30):
    data = json.dumps(body).encode() if body is not None else None
    req = urllib.request.Request('http://127.0.0.1:%d%s' % (P['ctl'], path), data=data, method=method,
                                 headers={'Content-Type': 'application/json'})
    try:
        with urllib.request.urlopen(req, timeout=timeout) as r:
            return r.status, json.loads(r.read() or b'null')
    except urllib.error.HTTPError as e:
        raw = e.read()
        try:
            return e.code, json.loads(raw)
        except Exception:
            return e.code, raw


def bg(fn, *a):
    q = queue.Queue()
    threading.Thread(target=lambda: q.put(fn(*a)), daemon=True).start()
    return q


def http(method, url, headers=None, body=None, ctx=None):
    req = urllib.request.Request(url, data=body, method=method, headers=headers or {})
    try:
        with urllib.request.urlopen(req, timeout=15, context=ctx) as r:
            return r.status, dict(r.headers), r.read()
    except urllib.error.HTTPError as e:
        return e.code, dict(e.headers), e.read()


# =============================================================== SIP client
class SipClient:
    def __init__(self, port, tls=False):
        s = socket.create_connection(('127.0.0.1', port), timeout=10)
        if tls:
            c = ssl.SSLContext(ssl.PROTOCOL_TLS_CLIENT)
            c.check_hostname = False
            c.verify_mode = ssl.CERT_NONE
            s = c.wrap_socket(s)
        s.settimeout(None)
        self.sock = s
        self.q = queue.Queue()
        self.fr = SipFramer()
        self.pong = threading.Event()
        self.local = s.getsockname()
        self.transport = 'TLS' if tls else 'TCP'
        threading.Thread(target=self._rd, daemon=True).start()
        self.cseq = 0
        self.call_id = secrets.token_hex(6)
        self.tag = secrets.token_hex(4)

    def _rd(self):
        buf = b''
        try:
            while True:
                d = self.sock.recv(65536)
                if not d:
                    break
                if d == b'\r\n':
                    self.pong.set()
                    continue
                for it in self.fr.feed(d):
                    if it is not SipFramer.PING:
                        self.q.put(it)
        except Exception:
            pass
        self.q.put(None)

    def send(self, m):
        self.sock.sendall(m.encode())

    def recv(self, timeout=10, pred=None):
        end = time.time() + timeout
        stash = []
        try:
            while True:
                left = end - time.time()
                if left <= 0:
                    return None
                try:
                    m = self.q.get(timeout=left)
                except queue.Empty:
                    return None
                if m is None:
                    return None
                if pred is None or pred(m):
                    return m
                stash.append(m)
        finally:
            for m in stash:
                self.q.put(m)

    def req(self, method, uri, to, headers=(), body=b'', ctype=None, call_id=None, cseq=None, from_tag=None, to_tag=None,
            frm=None):
        r = SipMessage(method=method, uri=uri)
        r.add('Via', 'SIP/2.0/%s 10.0.0.2:%d;branch=z9hG4bK%s;rport' % (self.transport, self.local[1], secrets.token_hex(5)))
        r.add('Max-Forwards', '70')
        r.add('From', '<sip:%s@%s>;tag=%s' % (DEV, DOMAIN, from_tag or self.tag))
        r.add('To', '<%s>%s' % (to, (';tag=' + to_tag) if to_tag else ''))
        r.add('Call-ID', call_id or secrets.token_hex(8))
        self.cseq += 1
        r.add('CSeq', '%d %s' % (cseq or self.cseq, method))
        r.add('Contact', '<sip:%s@10.0.0.2:%d;transport=tcp>;+sip.instance="<urn:uuid:1234>";reg-id=1;+g.3gpp.icsi-ref="urn%%3Aurn-7%%3A3gpp-service.ims.icsi.oma.cpm.session"' % (DEV, self.local[1]))
        for k, v in headers:
            r.add(k, v)
        if ctype:
            r.add('Content-Type', ctype)
        r.body = body
        return r

    def resp(self, req, code, reason='OK', headers=(), body=b'', ctype=None, to_tag=None):
        r = SipMessage(status=code, reason=reason)
        for v in req.all('Via'):
            r.add('Via', v)
        r.add('From', req.header('From'))
        to = req.header('To')
        if 'tag=' not in to:
            to += ';tag=' + (to_tag or secrets.token_hex(4))
        r.add('To', to)
        r.add('Call-ID', req.call_id)
        r.add('CSeq', req.header('CSeq'))
        for k, v in headers:
            r.add(k, v)
        if ctype:
            r.add('Content-Type', ctype)
        r.body = body
        return r

    def transact(self, r, timeout=10, finals=True):
        self.send(r)
        while True:
            m = self.recv(timeout, lambda m: not m.is_request and m.branch == r.branch)
            if m is None:
                return None
            if m.status >= 200 or not finals:
                return m


# =============================================================== MSRP client
class MsrpClient:
    def __init__(self, host, port, tls=False):
        s = socket.create_connection((host, port), timeout=10)
        if tls:
            c = ssl.SSLContext(ssl.PROTOCOL_TLS_CLIENT)
            c.check_hostname = False
            c.verify_mode = ssl.CERT_NONE
            s = c.wrap_socket(s)
        s.settimeout(None)
        self.sock = s
        self.q = queue.Queue()
        self.fr = MsrpFramer()
        threading.Thread(target=self._rd, daemon=True).start()

    def _rd(self):
        try:
            while True:
                d = self.sock.recv(65536)
                if not d:
                    break
                for m in self.fr.feed(d):
                    self.q.put(m)
        except Exception:
            pass
        self.q.put(None)

    def recv(self, timeout=10, pred=None):
        end = time.time() + timeout
        stash = []
        try:
            while True:
                left = end - time.time()
                if left <= 0:
                    return None
                try:
                    m = self.q.get(timeout=left)
                except queue.Empty:
                    return None
                if m is None:
                    return None
                if pred is None or pred(m):
                    return m
                stash.append(m)
        finally:
            for m in stash:
                self.q.put(m)

    def send(self, to_path, from_path, ctype=None, body=b'', mid=None, extra=(), chunk=0):
        mid = mid or secrets.token_hex(6)
        tids = []
        chunks = [body[i:i + chunk] for i in range(0, len(body), chunk)] if (chunk and body) else [body]
        pos = 1
        for i, c in enumerate(chunks):
            tid = new_tid()
            hdrs = [('To-Path', to_path), ('From-Path', from_path), ('Message-ID', mid),
                    ('Byte-Range', '%d-%d/%d' % (pos, pos + len(c) - 1 if c else 0, len(body)))]
            if ctype and c:
                hdrs.append(('Content-Type', ctype))
            hdrs += list(extra)
            self.sock.sendall(build_msrp(tid, 'SEND', hdrs, c or None, '$' if i == len(chunks) - 1 else '+'))
            tids.append(tid)
            pos += len(c)
        res = []
        for tid in tids:
            m = self.recv(10, lambda m: m.method is None and m.tid == tid)
            res.append(m.status if m else None)
        return res

    def reply_ok(self, m):
        self.sock.sendall(build_msrp(m.tid, '200 OK', [('To-Path', ' '.join(m.from_path)), ('From-Path', m.to_path[-1])]))


def digest_hdr(user, pw, realm, method, uri, nonce, opaque=None):
    cn = secrets.token_hex(4)
    nc = '00000001'
    r = digest_response(user, realm, pw, method, uri, nonce, nc, cn, 'auth')
    s = 'Digest username="%s", realm="%s", nonce="%s", uri="%s", response="%s", algorithm=MD5, qop=auth, nc=%s, cnonce="%s"' % (
        user, realm, nonce, uri, r, nc, cn)
    if opaque:
        s += ', opaque="%s"' % opaque
    return s


# =============================================================== tests
def parse_prov(xml):
    import xml.etree.ElementTree as ET
    root = ET.fromstring(xml)
    flat = {}

    def walk(e, path):
        for c in e:
            if c.tag == 'characteristic':
                walk(c, path + [c.get('type')])
            elif c.tag == 'parm':
                flat.setdefault('/'.join(path) + '/' + c.get('name'), []).append(c.get('value'))
    walk(root, [])
    return flat


def main():
    env = dict(os.environ, PYTHONUNBUFFERED='1')
    proc = subprocess.Popen([sys.executable, '-m', 'tools.rcs.mock', '--acs-port', str(P['acs']), '--acs-tls-port', str(P['acs_tls']),
                             '--sip-port', str(P['sip']), '--sip-tls-port', str(P['sip_tls']), '--msrp-port', str(P['msrp']),
                             '--msrps-port', str(P['msrps']), '--control-port', str(P['ctl']),
                             '--cert-dir', os.path.join(ROOT, 'tools/rcs/mock/.certs')] + sys.argv[1:],
                            cwd=ROOT, env=env, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = []
    threading.Thread(target=lambda: [out.append(l.decode(errors='replace')) for l in proc.stdout], daemon=True).start()
    try:
        for _ in range(60):
            try:
                if api('GET', '/api/state', timeout=1)[0] == 200:
                    break
            except Exception:
                time.sleep(0.2)
        else:
            print('mock did not start:\n' + ''.join(out))
            return 2
        run_tests()
    except Exception:
        import traceback
        traceback.print_exc()
        failed.append('exception')
    finally:
        proc.terminate()
        try:
            proc.wait(5)
        except Exception:
            proc.kill()
    if failed:
        print('\nlog tail:\n' + ''.join(out[-40:]))
        print('\nFAILED %d: %s (passed %d)' % (len(failed), failed, passed))
        return 1
    print('\nALL PASSED (%d checks)' % passed)
    return 0


def run_tests():
    acs = 'http://127.0.0.1:%d/' % P['acs']
    print('== ACS')
    st, h, b = http('GET', acs + '?vers=0&IMSI=001010123456789&msisdn=%s&rcs_version=6.0&rcs_profile=joyn_blackbird&client_vendor=ARGN&client_version=1.0&terminal_vendor=Sonim&terminal_model=XP3800&SMS_port=37273' % urllib.request.quote(DEV))
    check(st == 200 and not b.strip(), 'first ACS GET (no token/otp) -> 200 empty body (OTP requested)')
    st, o = api('GET', '/api/otp?msisdn=' + urllib.request.quote(DEV))
    check(st == 200 and re.fullmatch(r'\d{6}', o['otp']), 'OTP retrievable via control API')
    st, h, b = http('GET', acs + '?vers=0&IMSI=001010123456789&msisdn=%s&otp=000000' % urllib.request.quote(DEV))
    check(st == 403, 'wrong OTP -> 403')
    st, h, b = http('GET', acs + '?vers=0&IMSI=001010123456789&msisdn=%s&otp=%s' % (urllib.request.quote(DEV), o['otp']))
    check(st == 200 and b'wap-provisioningdoc' in b, 'GET with OTP -> provisioning doc')
    prov = parse_prov(b)
    token = prov['VERS/../TOKEN/token'.replace('VERS/../', '')][0] if 'TOKEN/token' in prov else None
    check(token is not None, 'doc has TOKEN')
    pcscf = prov['APPLICATION/LBO_P-CSCF_Address/Address'][0]
    user = prov['APPLICATION/APPAUTH/UserName'][0]
    pwd = prov['APPLICATION/APPAUTH/UserPwd'][0]
    realm = prov['APPLICATION/APPAUTH/Realm'][0]
    ftu, ftp, fturi = prov['APPLICATION/IM/ftHTTPCSUser'][0], prov['APPLICATION/IM/ftHTTPCSPwd'][0], prov['APPLICATION/IM/ftHTTPCSURI'][0]
    check(pcscf.endswith(':%d' % P['sip']), 'P-CSCF address %s points at mock' % pcscf)
    check(prov['APPLICATION/Public_user_identity_List/Public_user_identity'] == ['tel:' + DEV, 'sip:%s@%s' % (DEV, DOMAIN)], 'public identities')
    check(fturi.endswith('/ft') and str(P['acs']) in fturi, 'ftHTTPCSURI %s' % fturi)
    check(prov['APPLICATION/IM/conf-fcty-uri'][0] == 'sip:Conference-Factory@' + DOMAIN, 'conf-fcty-uri')
    st, h, b = http('GET', acs + '?vers=1&token=%s&msisdn=%s' % (token, urllib.request.quote(DEV)))
    check(st == 200 and b'ap2001' not in b and b'validity' in b, 'GET with token + same vers -> short doc (no apps)')
    st, h, b = http('GET', acs + '?vers=0&token=%s' % token)
    check(b'ap2001' in b, 'GET with token + old vers -> full doc')
    st, h, b = http('GET', 'http://127.0.0.1:%d/config.xml?msisdn=%s' % (P['acs'], urllib.request.quote(DEV)))
    check(st == 200 and b'ap2002' in b, '/config.xml convenience')
    ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_CLIENT)
    ctx.check_hostname = False
    ctx.verify_mode = ssl.CERT_NONE
    st, h, b = http('GET', 'https://127.0.0.1:%d/config.xml?msisdn=%s' % (P['acs_tls'], urllib.request.quote(DEV)), ctx=ctx)
    check(st == 200 and b'ap2002' in b, 'ACS over https')

    print('== virtual users')
    for n, kw in ((V1, {'auto_delivery_imdn': True}), (V2, {}), (V3, {}), (NONRCS, {'rcs': False})):
        api('POST', '/api/users', dict(number=n, **kw))

    print('== SIP REGISTER')
    sip = SipClient(P['sip'])
    uri = 'sip:' + DOMAIN
    reg = sip.req('REGISTER', uri, 'sip:%s@%s' % (DEV, DOMAIN), headers=[('Expires', '600'), ('Supported', 'path, outbound')])
    r = sip.transact(reg)
    check(r and r.status == 401, 'REGISTER without auth -> 401')
    sc, params = parse_auth_params(r.header('WWW-Authenticate'))
    check(params.get('qop') == 'auth' and params.get('algorithm', '').upper() == 'MD5', 'challenge MD5 qop=auth')
    reg2 = sip.req('REGISTER', uri, 'sip:%s@%s' % (DEV, DOMAIN), headers=[('Expires', '600'),
                   ('Authorization', digest_hdr(user, 'wrong', realm, 'REGISTER', uri, params['nonce']))], call_id=reg.call_id)
    r = sip.transact(reg2)
    check(r and r.status == 401, 'REGISTER with wrong password -> 401')
    sc, params = parse_auth_params(r.header('WWW-Authenticate'))
    reg3 = sip.req('REGISTER', uri, 'sip:%s@%s' % (DEV, DOMAIN), headers=[('Expires', '600'),
                   ('Authorization', digest_hdr(user, pwd, realm, 'REGISTER', uri, params['nonce']))], call_id=reg.call_id)
    r = sip.transact(reg3)
    check(r and r.status == 200, 'REGISTER with digest -> 200')
    check('expires=600' in r.header('Contact', ''), 'Contact expires echoed')
    check(r.header('Service-Route') and 'lr' in r.header('Service-Route'), 'Service-Route present')
    check('tel:' + DEV in r.header('P-Associated-URI', ''), 'P-Associated-URI present')
    sip.sock.sendall(b'\r\n\r\n')
    check(sip.pong.wait(3), 'CRLFCRLF ping -> CRLF pong')
    st, regs = api('GET', '/api/registrations')
    check(len(regs) == 1 and regs[0]['number'] == DEV, 'registration listed')

    print('== OPTIONS')
    r = sip.transact(sip.req('OPTIONS', 'sip:%s@%s' % (V1, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN), headers=[('Accept-Contact', '*;+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"')]))
    check(r and r.status == 200 and 'icsi.oma.cpm.session' in r.header('Contact', '') and 'iari.rcs.fthttp' in r.header('Contact', ''), 'OPTIONS to RCS user -> 200 with feature tags')
    r = sip.transact(sip.req('OPTIONS', 'tel:' + NONRCS, 'tel:' + NONRCS))
    check(r and r.status == 404, 'OPTIONS to non-RCS user -> 404')
    r = sip.transact(sip.req('OPTIONS', 'tel:+15550001234', 'tel:+15550001234'))
    check(r and r.status == 404, 'OPTIONS to unknown number -> 404')
    st, rc = api('GET', '/api/users/%s/received?kind=options' % V1)
    check(len(rc) == 1 and rc[0]['from'] == DEV, 'virtual user recorded the device OPTIONS')
    # network-side OPTIONS to device
    q = bg(api, 'POST', '/api/users/%s/options' % V1, {'to': DEV})
    m = sip.recv(5, lambda m: m.is_request and m.method == 'OPTIONS')
    check(m is not None, 'network sent OPTIONS to the device over its connection')
    sip.send(sip.resp(m, 200, headers=[('Contact', '<sip:%s@10.0.0.2>;+g.3gpp.icsi-ref="urn%%3Aurn-7%%3A3gpp-service.ims.icsi.oma.cpm.session"' % DEV)]))
    st, res = q.get(timeout=10)
    check(st == 200 and res['status'] == 200, 'device OPTIONS answer recorded: %s' % res)

    print('== 1:1 chat, device-originated')
    devpath = 'msrp://10.0.0.2:%d/devsess1;tcp' % (sip.local[1])
    sdp = build_sdp('10.0.0.2', sip.local[1], 'TCP/MSRP', devpath, 'active', ['message/cpim'], ['text/plain', 'message/imdn+xml', 'application/im-iscomposing+xml', 'application/vnd.gsma.rcs-ft-http+xml'])
    conv, contrib = secrets.token_hex(8), secrets.token_hex(8)
    inv = sip.req('INVITE', 'sip:%s@%s' % (V1, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN), headers=[
        ('Contribution-ID', contrib), ('Conversation-ID', conv), ('P-Preferred-Service', 'urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session'),
        ('Accept-Contact', '*;+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"'), ('Session-Expires', '1800;refresher=uac'),
        ('Supported', 'timer')], body=sdp, ctype='application/sdp')
    r = sip.transact(inv, finals=True)
    check(r and r.status == 200, 'INVITE -> 200')
    ans = parse_sdp(r.body.decode())
    check(ans['setup'] == 'passive' and ans['path'] and ans['port'] == P['msrp'], 'answer SDP passive, MSRP path on mock port: %s' % ans['path'])
    check('message/cpim' in ans['accept_types'], 'answer accept-types has message/cpim')
    check(r.header('Contact') and 'isfocus' not in r.header('Contact'), 'Contact of virtual user')
    check(r.header('Record-Route') is not None and 'timer' in r.header('Require', ''), 'Record-Route and Require: timer')
    to_tag = r.to_tag
    ack = sip.req('ACK', addr_uri(r.header('Contact')), 'sip:%s@%s' % (V1, DOMAIN), call_id=inv.call_id, cseq=1, to_tag=to_tag)
    sip.send(ack)
    mpath = ans['path'][0]
    hp = msrp_hostport(mpath)
    ms = MsrpClient('127.0.0.1', hp[2])
    check(ms.send(mpath, devpath) == [200], 'empty SEND binds the MSRP session (200 OK)')
    mid = 'dev-msg-1'
    cp = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN), 'text/plain; charset=utf-8', b'hello virtual', message_id=mid, dispositions=['positive-delivery', 'display'])
    check(ms.send(mpath, devpath, 'message/cpim', cp, extra=[('Failure-Report', 'yes'), ('Success-Report', 'no')]) == [200], 'CPIM text SEND -> 200 OK')
    # auto IMDN from V1 (auto_delivery_imdn)
    m = ms.recv(5, lambda m: m.method == 'SEND')
    check(m is not None, 'virtual user auto-sent IMDN over MSRP')
    if m:
        ms.reply_ok(m)
        c = parse_cpim(m.body)
        im = parse_imdn(c.body)
        check(c.inner_type == 'message/imdn+xml' and im['message_id'] == mid and im['status'] == 'delivered', 'IMDN delivered for %s' % mid)
    st, rc = api('GET', '/api/users/%s/received?kind=text' % V1)
    check(len(rc) == 1 and rc[0]['text'] == 'hello virtual' and rc[0]['disposition_requested'] is True and rc[0]['dispositions'] == ['positive-delivery', 'display'] and rc[0]['from'] == DEV, 'virtual user recorded text with disposition request')
    api('PUT', '/api/users/%s' % V1, {'auto_delivery_imdn': False})
    # chunked big message
    big = ('x' * 5000)
    cp = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN), 'text/plain', big.encode(), message_id='big1')
    check(ms.send(mpath, devpath, 'message/cpim', cp, chunk=1000) == [200] * (len(cp) // 1000 + 1), 'chunked CPIM message reassembled')
    st, rc = api('GET', '/api/users/%s/received?kind=text' % V1)
    check(len(rc) == 2 and rc[1]['text'] == big, 'chunked text content intact')
    # no notifications requested
    cp = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN), 'text/plain', b'quiet', message_id='q1')
    ms.send(mpath, devpath, 'message/cpim', cp)
    st, rc = api('GET', '/api/users/%s/received?kind=text' % V1)
    check(rc[-1]['text'] == 'quiet' and rc[-1]['disposition_requested'] is False, 'message without Disposition-Notification recorded as such')
    # device IMDN (displayed) and composing to V2? send to V1
    ims = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN), 'message/imdn+xml', build_imdn('abc', 'sip:%s@%s' % (DEV, DOMAIN), 'displayed'), message_id='i1', disposition_hdr='notification')
    ms.send(mpath, devpath, 'message/cpim', ims)
    cmp_ = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN), 'application/im-iscomposing+xml', build_composing('active'))
    ms.send(mpath, devpath, 'message/cpim', cmp_)
    st, rc = api('GET', '/api/users/%s/received?kind=imdn,composing' % V1)
    check([e['kind'] for e in rc] == ['imdn', 'composing'] and rc[0]['imdn']['status'] == 'displayed', 'IMDN + isComposing recorded')

    print('== 1:1 chat, virtual user -> device (same session)')
    q = bg(api, 'POST', '/api/users/%s/send' % V1, {'to': DEV, 'text': 'hi device', 'dispositions': ['positive-delivery', 'display']})
    m = ms.recv(5, lambda m: m.method == 'SEND')
    check(m is not None and m.to_path == [devpath] and m.from_path == [mpath], 'MSRP SEND to device with proper paths')
    ms.reply_ok(m)
    c = parse_cpim(m.body)
    check(c.inner_type == 'text/plain' and c.body == b'hi device' and c.dispositions == ['positive-delivery', 'display'] and c.message_id, 'CPIM from virtual user requests delivery+display, id %s' % c.message_id)
    check('sip:%s@%s' % (V1, DOMAIN) in c.get('From') and DEV in c.get('To'), 'CPIM From/To')
    st, res = q.get(timeout=10)
    check(st == 200 and res['ok'], 'API reports MSRP 200 from device')
    # device sends IMDN delivered for it
    ims = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN), 'message/imdn+xml', build_imdn(c.message_id, 'sip:%s@%s' % (DEV, DOMAIN), 'delivered'), message_id='i2')
    ms.send(mpath, devpath, 'message/cpim', ims)
    # BYE
    bye = sip.req('BYE', addr_uri(r.header('Contact')), 'sip:%s@%s' % (V1, DOMAIN), call_id=inv.call_id, to_tag=to_tag)
    rb = sip.transact(bye)
    check(rb and rb.status == 200, 'BYE -> 200')

    print('== 1:1 chat, virtual user originated (network INVITE)')
    q = bg(api, 'POST', '/api/users/%s/send' % V2, {'to': DEV, 'text': 'cold call'})
    m = sip.recv(10, lambda m: m.is_request and m.method == 'INVITE')
    check(m is not None, 'network INVITE arrives on the device connection')
    off = parse_sdp(m.body.decode())
    check(off['setup'] == 'actpass' and 'sip:%s@%s' % (V2, DOMAIN) in m.header('P-Asserted-Identity', '') and m.header('Contribution-ID') and m.header('Conversation-ID'), 'INVITE: actpass, PAI, Contribution-ID, Conversation-ID %r %r %r' % (off['setup'], m.header('P-Asserted-Identity'), m.header('Conversation-ID')))
    devpath2 = 'msrp://10.0.0.2:%d/devsess2;tcp' % sip.local[1]
    sdp = build_sdp('10.0.0.2', sip.local[1], 'TCP/MSRP', devpath2, 'active', ['message/cpim'], ['text/plain'])
    sip.send(sip.resp(m, 200, headers=[('Contact', '<sip:%s@10.0.0.2:%d;transport=tcp>' % (DEV, sip.local[1]))], body=sdp, ctype='application/sdp'))
    a = sip.recv(5, lambda x: x.is_request and x.method == 'ACK')
    check(a is not None, 'mock ACKed the 200')
    ms2 = MsrpClient('127.0.0.1', msrp_hostport(off['path'][0])[2])
    ms2.send(off['path'][0], devpath2)
    g_ = ms2.recv(8, lambda x: x.method == 'SEND' and x.body)
    check(g_ is not None, 'message delivered over the new MSRP session')
    if g_:
        ms2.reply_ok(g_)
        check(parse_cpim(g_.body).body == b'cold call', 'content ok %r' % g_.body)
    st, res = q.get(timeout=10)
    check(st == 200 and res['ok'], 'send API ok')
    st, sess = api('GET', '/api/sessions')
    sid2 = [s for s in sess if s['peer'] == V2 and not s['closed']][0]['id']
    q = bg(api, 'POST', '/api/sessions/%s/bye' % sid2)
    bm = sip.recv(5, lambda x: x.is_request and x.method == 'BYE')
    check(bm is not None, 'mock-originated BYE')
    sip.send(sip.resp(bm, 200))
    q.get(timeout=5)

    print('== pager mode (SIP MESSAGE)')
    cp = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V3, DOMAIN), 'text/plain', b'pager hello', message_id='pm1', dispositions=['positive-delivery'])
    r = sip.transact(sip.req('MESSAGE', 'sip:%s@%s' % (V3, DOMAIN), 'sip:%s@%s' % (V3, DOMAIN), body=cp, ctype='message/cpim'))
    check(r and r.status in (200, 202), 'MESSAGE to virtual user -> %s' % (r.status if r else None))
    st, rc = api('GET', '/api/users/%s/received?kind=text' % V3)
    check(len(rc) == 1 and rc[0]['text'] == 'pager hello' and rc[0]['via'] == 'sip-message', 'pager message recorded')
    r = sip.transact(sip.req('MESSAGE', 'tel:' + NONRCS, 'tel:' + NONRCS, body=cp, ctype='message/cpim'))
    check(r and r.status == 404, 'MESSAGE to non-RCS -> 404')
    q = bg(api, 'POST', '/api/users/%s/send' % V3, {'to': DEV, 'text': 'pager back', 'mode': 'pager'})
    m = sip.recv(5, lambda x: x.is_request and x.method == 'MESSAGE')
    check(m is not None and m.ctype == 'message/cpim' and parse_cpim(m.body).body == b'pager back', 'network MESSAGE to device')
    sip.send(sip.resp(m, 200))
    st, res = q.get(timeout=5)
    check(st == 200 and res['ok'], 'pager send ok')

    print('== group chat, device-originated')
    gconv = secrets.token_hex(8)
    gpath = 'msrp://10.0.0.2:%d/devgrp1;tcp' % sip.local[1]
    sdp = build_sdp('10.0.0.2', sip.local[1], 'TCP/MSRP', gpath, 'active', ['message/cpim'], ['text/plain', 'message/imdn+xml'])
    rl = ('<?xml version="1.0" encoding="UTF-8"?><resource-lists xmlns="urn:ietf:params:xml:ns:resource-lists"><list>'
          '<entry uri="tel:%s"/><entry uri="tel:%s"/><entry uri="tel:%s"/></list></resource-lists>') % (V1, V2, NONRCS)
    ct, body = build_multipart([('application/sdp', sdp), ('application/resource-lists+xml', rl.encode(), ['Content-Disposition: recipient-list'])])
    inv = sip.req('INVITE', 'sip:Conference-Factory@' + DOMAIN, 'sip:Conference-Factory@' + DOMAIN, headers=[
        ('Require', 'recipient-list-invite'), ('Subject', 'Test group'), ('Contribution-ID', secrets.token_hex(8)), ('Conversation-ID', gconv),
        ('P-Preferred-Service', 'urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session'), ('Accept-Contact', '*;+g.3gpp.icsi-ref="urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"')],
        body=body, ctype=ct)
    r = sip.transact(inv)
    check(r and r.status == 200, 'group INVITE to factory -> 200')
    focus = addr_uri(r.header('Contact'))
    check('isfocus' in r.header('Contact') and '@conf.' + DOMAIN in focus, 'Contact is the focus: %s' % r.header('Contact'))
    gans = parse_sdp(r.body.decode())
    check(gans['path'] and gans['setup'] == 'passive', 'group SDP answer')
    gto = r.to_tag
    sip.send(sip.req('ACK', focus, 'sip:Conference-Factory@' + DOMAIN, call_id=inv.call_id, cseq=1, to_tag=gto))
    gms = MsrpClient('127.0.0.1', msrp_hostport(gans['path'][0])[2])
    gms.send(gans['path'][0], gpath)
    focus_uri = focus.split(';')[0]
    # SUBSCRIBE
    sub = sip.req('SUBSCRIBE', focus, focus_uri, headers=[('Event', 'conference'), ('Expires', '3600'), ('Accept', 'application/conference-info+xml')])
    r = sip.transact(sub)
    check(r and r.status == 200, 'SUBSCRIBE conference -> 200')
    n = sip.recv(5, lambda x: x.is_request and x.method == 'NOTIFY')
    check(n is not None and n.ctype == 'application/conference-info+xml', 'NOTIFY with conference-info')
    if n:
        sip.send(sip.resp(n, 200))
        body = n.body.decode()
        check(('sip:%s@%s' % (V1, DOMAIN)) in body and ('sip:%s@%s' % (DEV, DOMAIN)) in body and '<subject>Test group</subject>' in body, 'conference-info lists participants + subject')
        check(body.count('connected') >= 3 and 'disconnected' in body, 'non-RCS participant is disconnected')
    st, groups = api('GET', '/api/groups')
    gid = groups[0]['id']
    check(gid == gconv and groups[0]['focus_uri'] == focus_uri, 'group registered with Conversation-ID')
    api('PUT', '/api/users/%s' % V1, {'auto_delivery_imdn': True})
    cp = build_cpim('sip:%s@%s' % (DEV, DOMAIN), focus_uri, 'text/plain', b'group hello', message_id='g1', dispositions=['positive-delivery'])
    check(gms.send(gans['path'][0], gpath, 'message/cpim', cp) == [200], 'group message SEND 200')
    time.sleep(0.2)
    st, rc1 = api('GET', '/api/users/%s/received?kind=text' % V1)
    st, rc2 = api('GET', '/api/users/%s/received?kind=text' % V2)
    check(rc1[-1]['text'] == 'group hello' and rc1[-1]['group'] == gid and rc2[-1]['text'] == 'group hello', 'relayed to every virtual participant')
    m = gms.recv(3, lambda x: x.method == 'SEND')   # V1 has auto delivery imdn
    check(m is not None and parse_cpim(m.body).inner_type == 'message/imdn+xml', 'auto IMDN in group from V1')
    if m:
        gms.reply_ok(m)
    q = bg(api, 'POST', '/api/groups/%s/message' % gid, {'from': V2, 'text': 'group from v2'})
    m = gms.recv(5, lambda x: x.method == 'SEND')
    check(m is not None, 'group message from virtual participant arrives')
    if m:
        gms.reply_ok(m)
        c = parse_cpim(m.body)
        check(V2 in c.get('From') and c.get('To') == '<%s>' % focus_uri and c.body == b'group from v2', 'CPIM From=participant, To=group')
    st, res = q.get(timeout=5)
    check(st == 200, 'group post API ok')
    q = bg(api, 'POST', '/api/groups/%s/participants' % gid, {'add': [V3]})
    n = sip.recv(5, lambda x: x.is_request and x.method == 'NOTIFY')
    check(n is not None and ('sip:%s@%s' % (V3, DOMAIN)) in n.body.decode(), 'NOTIFY after participant added')
    if n:
        sip.send(sip.resp(n, 200))
    q.get(timeout=5)
    q = bg(api, 'POST', '/api/groups/%s/participants' % gid, {'remove': [V3]})
    n = sip.recv(5, lambda x: x.is_request and x.method == 'NOTIFY')
    check(n is not None and 'disconnected' in n.body.decode(), 'NOTIFY after participant removed')
    if n:
        sip.send(sip.resp(n, 200))
    q.get(timeout=5)
    # BYE + rejoin
    r = sip.transact(sip.req('BYE', focus, focus_uri, call_id=inv.call_id, to_tag=gto))
    check(r and r.status == 200, 'group BYE -> 200')
    gpath2 = 'msrp://10.0.0.2:%d/devgrp2;tcp' % sip.local[1]
    sdp = build_sdp('10.0.0.2', sip.local[1], 'TCP/MSRP', gpath2, 'active', ['message/cpim'], ['text/plain'])
    inv2 = sip.req('INVITE', focus, focus_uri, headers=[('Conversation-ID', gconv), ('Contribution-ID', secrets.token_hex(8))], body=sdp, ctype='application/sdp')
    r = sip.transact(inv2)
    check(r and r.status == 200 and len(api('GET', '/api/groups')[1]) == 1, 'rejoin existing focus with same Conversation-ID resumes group')
    sip.send(sip.req('ACK', focus, focus_uri, call_id=inv2.call_id, cseq=1, to_tag=r.to_tag))
    sip.transact(sip.req('BYE', focus, focus_uri, call_id=inv2.call_id, to_tag=r.to_tag))

    print('== group chat, virtual-user originated')
    q = bg(api, 'POST', '/api/groups', {'creator': V2, 'participants': [DEV, V1, V3], 'subject': 'From V2'})
    m = sip.recv(10, lambda x: x.is_request and x.method == 'INVITE')
    check(m is not None, 'focus INVITE to device')
    if m:
        check('isfocus' in m.header('Contact', '') and m.header('Subject') == 'From V2' and m.header('Conversation-ID'), 'INVITE: isfocus, Subject, Conversation-ID')
        parts = parse_multipart(m.header('Content-Type'), m.body)
        types = [h.get('content-type') for h, _ in parts]
        check('application/sdp' in types and 'application/resource-lists+xml' in types, 'multipart SDP + resource-lists')
        off = parse_sdp([d for h, d in parts if h.get('content-type') == 'application/sdp'][0].decode())
        gp = 'msrp://10.0.0.2:%d/devgrp3;tcp' % sip.local[1]
        sdp = build_sdp('10.0.0.2', sip.local[1], 'TCP/MSRP', gp, 'active', ['message/cpim'], ['text/plain'])
        sip.send(sip.resp(m, 200, headers=[('Contact', '<sip:%s@10.0.0.2:%d;transport=tcp>' % (DEV, sip.local[1]))], body=sdp, ctype='application/sdp'))
        sip.recv(5, lambda x: x.is_request and x.method == 'ACK')
        st, res = q.get(timeout=10)
        check(st == 201, 'group create API returned (%s)' % st)
        gm = MsrpClient('127.0.0.1', msrp_hostport(off['path'][0])[2])
        gm.send(off['path'][0], gp)
        q = bg(api, 'POST', '/api/groups/%s/message' % res['id'], {'from': V3, 'text': 'welcome'})
        x = gm.recv(5, lambda x: x.method == 'SEND' and x.body)
        check(x is not None and parse_cpim(x.body).body == b'welcome', 'message into the invited group')
        if x:
            gm.reply_ok(x)
        q.get(timeout=5)

    print('== file transfer over HTTP')
    fturl = fturi
    st, h, b = http('POST', fturl, {'Content-Length': '0'}, b'')
    check(st == 401 and 'Digest' in h.get('WWW-Authenticate', ''), 'empty POST -> 401 Digest challenge')
    sc, fp = parse_auth_params(h['WWW-Authenticate'])
    data = os.urandom(70000)
    bnd = 'bnd' + secrets.token_hex(4)
    thumb = b'\xff\xd8thumb\xff\xd9'
    mp = b''
    mp += ('--%s\r\nContent-Disposition: form-data; name="tid"\r\n\r\ntid-%s\r\n' % (bnd, bnd)).encode()
    mp += ('--%s\r\nContent-Disposition: form-data; name="File"; filename="pic.bin"\r\nContent-Type: application/octet-stream\r\n\r\n' % bnd).encode() + data + b'\r\n'
    mp += ('--%s\r\nContent-Disposition: form-data; name="Thumbnail"; filename="t.jpg"\r\nContent-Type: image/jpeg\r\n\r\n' % bnd).encode() + thumb + b'\r\n'
    mp += ('--%s--\r\n' % bnd).encode()
    path = '/' + fturl.split('/', 3)[3]
    auth = digest_hdr(ftu, ftp, fp['realm'], 'POST', path, fp['nonce'], fp.get('opaque'))
    st, h, b = http('POST', fturl, {'Authorization': auth, 'Content-Type': 'multipart/form-data; boundary=' + bnd}, mp)
    check(st == 200 and 'rcs-ft-http+xml' in h.get('Content-Type', ''), 'upload -> 200 ft-http+xml')
    ft = parse_ft_xml(b)
    check(ft['file']['size'] == len(data) and ft['file']['file_name'] == 'pic.bin' and ft['file']['url'] and ft['thumbnail'], 'file-info: size/name/url/thumbnail')
    dl = ft['file']['url']
    st, h, b = http('GET', dl)
    check(st == 401, 'download without auth -> 401')
    sc, fp = parse_auth_params(h['WWW-Authenticate'])
    st, h, b = http('GET', dl, {'Authorization': digest_hdr(ftu, ftp, fp['realm'], 'GET', '/' + dl.split('/', 3)[3], fp['nonce'])})
    check(st == 200 and hashlib.sha256(b).digest() == hashlib.sha256(data).digest(), 'download returns identical bytes')
    st, h, b = http('GET', dl, {'Authorization': digest_hdr(ftu, ftp, fp['realm'], 'GET', '/' + dl.split('/', 3)[3], fp['nonce']), 'Range': 'bytes=10-19'})
    check(st == 206 and b == data[10:20], 'Range download')
    # device sends file message to V3 over a session (new 1:1 session to V3)
    sdp = build_sdp('10.0.0.2', sip.local[1], 'TCP/MSRP', 'msrp://10.0.0.2:%d/devft;tcp' % sip.local[1], 'active', ['message/cpim'], ['application/vnd.gsma.rcs-ft-http+xml'])
    inv3 = sip.req('INVITE', 'sip:%s@%s' % (V3, DOMAIN), 'sip:%s@%s' % (V3, DOMAIN), body=sdp, ctype='application/sdp')
    r = sip.transact(inv3)
    ft_r = r
    a3 = parse_sdp(r.body.decode())
    sip.send(sip.req('ACK', addr_uri(r.header('Contact')), 'sip:%s@%s' % (V3, DOMAIN), call_id=inv3.call_id, cseq=1, to_tag=r.to_tag))
    m3 = MsrpClient('127.0.0.1', msrp_hostport(a3['path'][0])[2])
    m3.send(a3['path'][0], 'msrp://10.0.0.2:%d/devft;tcp' % sip.local[1])
    cp = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V3, DOMAIN), 'application/vnd.gsma.rcs-ft-http+xml', build_ft_xml('pic.bin', len(data), 'application/octet-stream', dl, '2030-01-01T00:00:00Z'), message_id='ft1')
    m3.send(a3['path'][0], 'msrp://10.0.0.2:%d/devft;tcp' % sip.local[1], 'message/cpim', cp)
    st, rc = api('GET', '/api/users/%s/received?kind=file' % V3)
    check(len(rc) == 1 and rc[0]['file']['downloaded'] and rc[0]['file']['sha256'] == hashlib.sha256(data).hexdigest(), 'virtual user downloaded device file (sha256 recorded)')
    # virtual user sends file to the device
    payload = os.urandom(3000)
    q = bg(api, 'POST', '/api/users/%s/send' % V3, {'to': DEV, 'file': {'name': 'v3.png', 'type': 'image/png', 'content_b64': base64.b64encode(payload).decode()}})
    x = m3.recv(8, lambda x: x.method == 'SEND' and x.body)
    check(x is not None, 'file-info message arrives over MSRP')
    if x:
        m3.reply_ok(x)
        c = parse_cpim(x.body)
        info = parse_ft_xml(c.body)
        check(c.inner_type == 'application/vnd.gsma.rcs-ft-http+xml' and info['file']['file_name'] == 'v3.png', 'file-info xml')
        u = info['file']['url']
        st, h, b = http('GET', u)
        sc, fp = parse_auth_params(h['WWW-Authenticate'])
        st, h, b = http('GET', u, {'Authorization': digest_hdr(ftu, ftp, fp['realm'], 'GET', '/' + u.split('/', 3)[3], fp['nonce'])})
        check(st == 200 and b == payload, 'device downloads virtual user file')
    q.get(timeout=5)


    print('== MSRP over TLS, mock as active endpoint, CANCEL, garbage')
    sip.transact(sip.req('BYE', addr_uri(ft_r.header('Contact')), 'sip:%s@%s' % (V3, DOMAIN), call_id=inv3.call_id, to_tag=ft_r.to_tag))
    # MSRPoTLS: device offers TCP/TLS/MSRP, active
    tpath = 'msrps://10.0.0.2:%d/devtls;tcp' % sip.local[1]
    sdp = build_sdp('10.0.0.2', sip.local[1], 'TCP/TLS/MSRP', tpath, 'active', ['message/cpim'], ['text/plain'])
    invt = sip.req('INVITE', 'sip:%s@%s' % (V3, DOMAIN), 'sip:%s@%s' % (V3, DOMAIN), body=sdp, ctype='application/sdp')
    r = sip.transact(invt)
    at = parse_sdp(r.body.decode())
    check(r.status == 200 and at['proto'] == 'TCP/TLS/MSRP' and at['path'][0].startswith('msrps://') and at['port'] == P['msrps'], 'TLS offer -> msrps answer on the TLS port')
    sip.send(sip.req('ACK', addr_uri(r.header('Contact')), 'sip:%s@%s' % (V3, DOMAIN), call_id=invt.call_id, cseq=1, to_tag=r.to_tag))
    mt = MsrpClient('127.0.0.1', P['msrps'], tls=True)
    check(mt.send(at['path'][0], tpath) == [200], 'MSRPoTLS bind')
    cp = build_cpim('sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (V3, DOMAIN), 'text/plain', b'over tls', message_id='tls1')
    check(mt.send(at['path'][0], tpath, 'message/cpim', cp) == [200], 'MSRPoTLS message')
    sip.transact(sip.req('BYE', addr_uri(r.header('Contact')), 'sip:%s@%s' % (V3, DOMAIN), call_id=invt.call_id, to_tag=r.to_tag))
    # device passive: the mock connects out
    lsock = socket.socket()
    lsock.bind(('127.0.0.1', 0))
    lsock.listen(1)
    lport = lsock.getsockname()[1]
    ppath = 'msrp://127.0.0.1:%d/devpassive;tcp' % lport
    sdp = build_sdp('127.0.0.1', lport, 'TCP/MSRP', ppath, 'passive', ['message/cpim'], ['text/plain'])
    invp = sip.req('INVITE', 'sip:%s@%s' % (V3, DOMAIN), 'sip:%s@%s' % (V3, DOMAIN), body=sdp, ctype='application/sdp')
    r = sip.transact(invp)
    check(r.status == 200 and parse_sdp(r.body.decode())['setup'] == 'active', 'device passive -> mock answers a=setup:active')
    sip.send(sip.req('ACK', addr_uri(r.header('Contact')), 'sip:%s@%s' % (V3, DOMAIN), call_id=invp.call_id, cseq=1, to_tag=r.to_tag))
    lsock.settimeout(5)
    cs, _ = lsock.accept()
    cs.settimeout(5)
    fr = MsrpFramer()
    got = []
    while not got:
        got = fr.feed(cs.recv(4096))
    check(got[0].method == 'SEND' and got[0].to_path == [ppath], 'mock connected to device path and bound with empty SEND')
    cs.sendall(build_msrp(got[0].tid, '200 OK', [('To-Path', ' '.join(got[0].from_path)), ('From-Path', ppath)]))
    q = bg(api, 'POST', '/api/users/%s/send' % V3, {'to': DEV, 'text': 'on active conn'})
    got = []
    while not got:
        got = fr.feed(cs.recv(4096))
    check(parse_cpim(got[0].body).body == b'on active conn', 'message delivered over mock-initiated MSRP connection')
    cs.sendall(build_msrp(got[0].tid, '200 OK', [('To-Path', ' '.join(got[0].from_path)), ('From-Path', ppath)]))
    q.get(timeout=5)
    cs.close()
    lsock.close()
    sip.transact(sip.req('BYE', addr_uri(r.header('Contact')), 'sip:%s@%s' % (V3, DOMAIN), call_id=invp.call_id, to_tag=r.to_tag))
    # CANCEL of a slow answer
    api('PUT', '/api/users/%s' % V3, {'answer_delay_ms': 3000})
    sdp = build_sdp('10.0.0.2', sip.local[1], 'TCP/MSRP', devpath, 'active', ['message/cpim'], ['text/plain'])
    invc = sip.req('INVITE', 'sip:%s@%s' % (V3, DOMAIN), 'sip:%s@%s' % (V3, DOMAIN), body=sdp, ctype='application/sdp')
    sip.send(invc)
    p1 = sip.recv(3, lambda x: not x.is_request and x.branch == invc.branch)
    check(p1 is not None and p1.status == 100, '100 Trying')
    p2 = sip.recv(3, lambda x: not x.is_request and x.branch == invc.branch)
    check(p2 is not None and p2.status == 180, '180 Ringing for delayed answer')
    cancel = sip.req('CANCEL', invc.uri, 'sip:%s@%s' % (V3, DOMAIN), call_id=invc.call_id, cseq=invc.cseq[0])
    cancel.set('Via', invc.header('Via'))
    sip.send(cancel)
    rc_ = sip.recv(3, lambda x: not x.is_request and x.cseq[1] == 'CANCEL')
    r487 = sip.recv(3, lambda x: not x.is_request and x.cseq[1] == 'INVITE')
    check(rc_ is not None and rc_.status == 200 and r487 is not None and r487.status == 487, 'CANCEL -> 200, INVITE -> 487')
    api('PUT', '/api/users/%s' % V3, {'answer_delay_ms': 0})
    # a misbehaving client must not hurt anything
    for port in (P['sip'], P['msrp'], P['acs']):
        g = socket.create_connection(('127.0.0.1', port), timeout=3)
        g.sendall(b'\x00\xffGARBAGE\r\n\r\nMSRP x\r\n-------\r\n')
        time.sleep(0.1)
        g.close()
    r = sip.transact(sip.req('OPTIONS', 'sip:%s@%s' % (V1, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN)))
    check(r and r.status == 200, 'mock still serving after garbage on every port')

    print('== network events / resilience')
    api('POST', '/api/events/fail-next', {'target': 'sip', 'method': 'OPTIONS', 'count': 1, 'code': 503, 'retry_after': 5})
    r = sip.transact(sip.req('OPTIONS', 'sip:%s@%s' % (V1, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN)))
    check(r and r.status == 503 and r.header('Retry-After') == '5', 'fail-next -> 503 with Retry-After')
    r = sip.transact(sip.req('OPTIONS', 'sip:%s@%s' % (V1, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN)))
    check(r and r.status == 200, 'recovers after one failure')
    api('PUT', '/api/users/%s' % V2, {'online': False, 'offline_response': 480})
    r = sip.transact(sip.req('OPTIONS', 'sip:%s@%s' % (V2, DOMAIN), 'sip:%s@%s' % (V2, DOMAIN)))
    check(r and r.status == 480, 'offline user -> 480 on OPTIONS')
    api('PUT', '/api/users/%s' % V2, {'rcs': False})
    r = sip.transact(sip.req('OPTIONS', 'sip:%s@%s' % (V2, DOMAIN), 'sip:%s@%s' % (V2, DOMAIN)))
    check(r and r.status == 404, 'user turned non-RCS -> 404')
    # reg event + deregister
    sub = sip.req('SUBSCRIBE', 'sip:%s@%s' % (DEV, DOMAIN), 'sip:%s@%s' % (DEV, DOMAIN), headers=[('Event', 'reg'), ('Expires', '600')])
    r = sip.transact(sub)
    n = sip.recv(5, lambda x: x.is_request and x.method == 'NOTIFY')
    check(r and r.status == 200 and n is not None and n.ctype == 'application/reginfo+xml', 'reg event SUBSCRIBE + NOTIFY')
    if n:
        sip.send(sip.resp(n, 200))
    api('POST', '/api/events/deregister', {})
    n = sip.recv(5, lambda x: x.is_request and x.method == 'NOTIFY')
    check(n is not None and 'terminated' in n.header('Subscription-State', ''), 'deregistration NOTIFY')
    if n:
        sip.send(sip.resp(n, 200))
    r = sip.transact(sip.req('OPTIONS', 'sip:%s@%s' % (V1, DOMAIN), 'sip:%s@%s' % (V1, DOMAIN)))
    check(r and r.status == 403, 'after deregister requests get 403')
    # re-register on a new TLS connection
    sip2 = SipClient(P['sip_tls'], tls=True)
    reg = sip2.req('REGISTER', uri, 'sip:%s@%s' % (DEV, DOMAIN), headers=[('Expires', '600')])
    r = sip2.transact(reg)
    sc, params = parse_auth_params(r.header('WWW-Authenticate'))
    reg2 = sip2.req('REGISTER', uri, 'sip:%s@%s' % (DEV, DOMAIN), headers=[('Expires', '600'), ('Authorization', digest_hdr(user, pwd, realm, 'REGISTER', uri, params['nonce']))], call_id=reg.call_id)
    r = sip2.transact(reg2)
    check(r and r.status == 200 and 'transport=tls' in r.header('Service-Route'), 'REGISTER over SIP/TLS')
    r = sip2.transact(sip2.req('REGISTER', uri, 'sip:%s@%s' % (DEV, DOMAIN), headers=[('Expires', '0'), ('Authorization', digest_hdr(user, pwd, realm, 'REGISTER', uri, params['nonce']))], call_id=reg.call_id))
    check(r and r.status == 200 and 'expires=0' in r.header('Contact'), 'un-REGISTER (expires=0)')
    st, regs = api('GET', '/api/registrations')
    check(regs == [], 'no registrations left')
    st, tr = api('GET', '/api/trace?limit=50')
    check(st == 200 and len(tr) > 10, 'trace available')


if __name__ == '__main__':
    sys.exit(main())
