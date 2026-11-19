"""ACS (RCC.14) provisioning server and provisioning document generator."""
import asyncio
import random
import time
from xml.sax.saxutils import quoteattr

from .httpd import Response
from .util import number_from_uri, norm_number, rand_token, is_ip, now_iso


def parm(name, value):
    return '<parm name=%s value=%s/>' % (quoteattr(str(name)), quoteattr(str(value)))


def char(typ, *children):
    return '<characteristic type=%s>%s</characteristic>' % (quoteattr(typ), ''.join(children))


def build_config(net, msisdn, imsi=None, token=None, minimal=False):
    cfg = net.cfg
    version = getattr(net, 'acs_version', 1)
    parts = [char('VERS', parm('version', version), parm('validity', cfg.config_validity))]
    if token:
        parts.append(char('TOKEN', parm('token', token), parm('validity', cfg.token_validity)))
    if minimal:
        return wrap(parts)
    domain = cfg.domain
    digits = msisdn.lstrip('+')
    impi = '%s@%s' % (imsi if imsi else msisdn, domain)
    sip_user = impi
    pcscf = '%s:%d' % (cfg.host, cfg.sip_prov_port) if cfg.address_with_port else cfg.host
    ims = [parm('AppID', 'ap2001'), parm('Name', 'IMS Settings'),
           parm('Timer_T1', 2000), parm('Timer_T2', 16000), parm('Timer_T4', 17000),
           char('Public_user_identity_List',
                parm('Public_user_identity', 'tel:%s' % msisdn),
                parm('Public_user_identity', 'sip:%s@%s' % (msisdn, domain))),
           char('LBO_P-CSCF_Address', parm('Address', pcscf),
                parm('AddressType', 'IPv4' if is_ip(cfg.host) else 'FQDN')),
           char('APPAUTH', parm('AuthType', 'Digest'), parm('Realm', domain), parm('UserName', sip_user),
                parm('UserPwd', cfg.sip_pass(sip_user))),
           parm('Private_User_Identity', impi),
           parm('Home_network_domain_name', domain),
           parm('Keep_Alive_Enabled', 1),
           parm('Voice_Domain_Preference_E_UTRAN', 1),
           parm('SMS_Over_IP_Networks_Indication', 0),
           parm('RegRetryBaseTime', 30), parm('RegRetryMaxTime', 1800)]
    ft_user = digits
    ft_uri = cfg.ft_base
    rcs = [parm('AppID', 'ap2002'), parm('Name', 'RCS settings'),
           char('SERVICES', parm('ChatAuth', 1), parm('GroupChatAuth', 1), parm('ftAuth', 1),
                parm('standaloneMsgAuth', 1), parm('geolocPushAuth', 0), parm('vsAuth', 0), parm('isAuth', 0),
                parm('rcsIPVoiceCallAuth', 0), parm('rcsIPVideoCallAuth', 0)),
           char('IM', parm('imMsgTech', 1), parm('AutAccept', 1), parm('AutAcceptGroupChat', 1),
                parm('firstMessageInvite', 0), parm('MaxSize1to1', 65536), parm('MaxSize1toM', 65536),
                parm('TimerIdle', 1800), parm('MaxSizeFileTr', 102400), parm('FtWarnSize', 10240),
                parm('ftHTTPCSURI', ft_uri), parm('ftHTTPCSUser', ft_user), parm('ftHTTPCSPwd', cfg.ft_pass(ft_user)),
                parm('ftDefaultMech', 'HTTP'), parm('ftStAndFwEnabled', 1), parm('max_adhoc_group_size', 100),
                parm('conf-fcty-uri', cfg.factory_uri),
                parm('deferred-msg-func-uri', 'sip:Deferred@%s' % domain),
                parm('exploder-uri', 'sip:Exploder@%s' % domain)),
           char('CAPDISCOVERY', parm('pollingPeriod', 0), parm('capInfoExpiry', 3600), parm('defaultDisc', 1),
                parm('capDiscoveryViaPresence', 0)),
           char('OTHER',
                char('transportProto',
                     parm('psSignalling', 'SIPoTLS' if cfg.prov_tls else 'SIPoTCP'),
                     parm('psMedia', 'MSRPoTLS' if cfg.prov_tls else 'MSRP'),
                     parm('psRTMedia', 'RTP'),
                     parm('wifiSignalling', 'SIPoTLS' if cfg.prov_tls else 'SIPoTCP'),
                     parm('wifiMedia', 'MSRPoTLS' if cfg.prov_tls else 'MSRP'),
                     parm('wifiRTMedia', 'RTP'))),
           char('SERVICEPROVIDEREXT',
                char('joyn Messaging', parm('deliveryTimeout', 86400)))]
    parts.append('<characteristic type="APPLICATION">%s</characteristic>' % ''.join(ims))
    parts.append('<characteristic type="APPLICATION">%s</characteristic>' % ''.join(rcs))
    return wrap(parts)


def wrap(parts):
    return ('<?xml version="1.0" encoding="UTF-8"?>\n<wap-provisioningdoc version="1.1">%s</wap-provisioningdoc>\n'
            % ''.join(parts))


def _xml(body, status=200):
    return Response(status, body, 'application/xml; charset=utf-8')


def _otp_needed(net, msisdn):
    style = net.cfg.otp_style
    if style == '511':
        return Response(511, 'Network Authentication Required', 'text/plain')
    if style == 'html':
        return Response(200, '<html><body>OTP sent</body></html>', 'text/html')
    return Response(200, b'', 'text/plain')


async def handle_acs(net, req):
    cfg = net.cfg
    q = {k: v[0] for k, v in req.query.items()}
    if req.method == 'POST' and req.body and 'urlencoded' in req.headers.get('content-type', ''):
        q.update(req.form())
    rec = {'ts': now_iso(), 'method': req.method, 'path': req.target, 'params': q,
           'headers': dict(req.headers), 'peer': req.peer, 'tls': req.tls}
    net.acs_log.append(rec)
    del net.acs_log[:-200]

    rule = net.take_chaos('acs', req.method)
    if rule:
        if rule.get('delay_ms'):
            await asyncio.sleep(rule['delay_ms'] / 1000.0)
        if rule.get('action') == 'drop':
            return None
        rec['result'] = 'chaos %s' % rule.get('code')
        return Response(rule.get('code', 503), 'injected failure', 'text/plain',
                        [('Retry-After', str(rule['retry_after']))] if rule.get('retry_after') else None)

    msisdn = norm_number(q.get('msisdn') or q.get('MSISDN'))
    imsi = q.get('IMSI') or q.get('imsi')
    if not msisdn and imsi:
        msisdn = net.imsi_map.get(imsi) if hasattr(net, 'imsi_map') else None
    if not msisdn:
        msisdn = norm_number(cfg.default_msisdn)
    rec['msisdn'] = msisdn
    if imsi:
        if not hasattr(net, 'imsi_map'):
            net.imsi_map = {}
        net.imsi_map[imsi] = msisdn

    now = time.time()
    token = q.get('token')
    if token:
        t = net.tokens.get(token)
        if t and t['expires'] > now:
            msisdn = t['msisdn']
            newtok = token
            same = str(q.get('vers', '')) == str(getattr(net, 'acs_version', 1))
            rec['result'] = 'token ok' + (' (same version, short doc)' if same else '')
            return _xml(build_config(net, msisdn, imsi, newtok, minimal=same and not q.get('force_full')))
        rec['result'] = 'token invalid'
    otp = q.get('otp') or q.get('OTP')
    if otp:
        # match against pending OTPs (any msisdn if the device did not repeat it)
        ent = net.otps.get(msisdn)
        if not ent or ent['otp'] != otp:
            ent = None
            for m, e in net.otps.items():
                if e['otp'] == otp:
                    msisdn, ent = m, e
        if ent and now - ent['ts'] < 900:
            del net.otps[msisdn]
            tok = rand_token(12)
            net.tokens[tok] = {'msisdn': msisdn, 'expires': now + cfg.token_validity}
            rec['result'] = 'otp ok'
            net.trace.event('ACS: OTP accepted for %s, token issued' % msisdn)
            return _xml(build_config(net, msisdn, imsi, tok))
        rec['result'] = 'otp invalid'
        return Response(403, 'Forbidden', 'text/plain')
    if not cfg.otp_required:
        tok = rand_token(12)
        net.tokens[tok] = {'msisdn': msisdn, 'expires': now + cfg.token_validity}
        rec['result'] = 'no otp required, token issued'
        return _xml(build_config(net, msisdn, imsi, tok))
    code = '%06d' % random.randint(0, 999999)
    net.otps[msisdn] = {'otp': code, 'ts': now}
    rec['result'] = 'otp needed (%s)' % code
    net.trace.event('ACS: OTP for %s is %s (GET /api/otp on the control API)' % (msisdn, code))
    print('ACS: OTP for %s = %s' % (msisdn, code), flush=True)
    return _otp_needed(net, msisdn)


async def handle_config_xml(net, req):
    """Convenience: GET /config.xml?msisdn=+1555... returns the full doc with a fresh token, no OTP."""
    q = {k: v[0] for k, v in req.query.items()}
    msisdn = norm_number(q.get('msisdn')) or norm_number(net.cfg.default_msisdn)
    tok = rand_token(12)
    net.tokens[tok] = {'msisdn': msisdn, 'expires': time.time() + net.cfg.token_validity}
    net.acs_log.append({'ts': now_iso(), 'method': req.method, 'path': req.target, 'params': q,
                        'result': 'config.xml', 'msisdn': msisdn})
    return _xml(build_config(net, msisdn, q.get('imsi'), tok))
