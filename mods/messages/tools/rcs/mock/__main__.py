"""Entry point: python3 -m tools.rcs.mock [flags]"""
import argparse
import asyncio
import os
import signal
import sys

from .core import Config, Net
from .util import ensure_cert, server_ssl, spawn
from .httpd import HttpServer, Response
from .acs import handle_acs, handle_config_xml
from .ft import FileStore, handle_ft
from .sipserver import SipServer
from .msrpserver import MsrpServer
from .chat import Chat
from .control import Control


def parse_args(argv=None):
    ap = argparse.ArgumentParser(prog='python3 -m tools.rcs.mock', description='Mock RCS network (ACS, SIP, MSRP, FT-HTTP, virtual users)')
    c = Config()
    ap.add_argument('--host', default=c.host, help='advertised host the device is told to use (default %(default)s)')
    ap.add_argument('--bind', default=c.bind, help='address to listen on (default %(default)s)')
    ap.add_argument('--domain', default=c.domain, help='IMS home domain (default %(default)s)')
    ap.add_argument('--conf-domain', default=None, help='conference focus domain (default conf.<domain>)')
    ap.add_argument('--acs-port', type=int, default=c.acs_port, help='HTTP port for ACS + FT content server (0=off)')
    ap.add_argument('--acs-tls-port', type=int, default=c.acs_tls_port, help='HTTPS port, same app (0=off)')
    ap.add_argument('--sip-port', type=int, default=c.sip_port)
    ap.add_argument('--sip-tls-port', type=int, default=c.sip_tls_port)
    ap.add_argument('--msrp-port', type=int, default=c.msrp_port)
    ap.add_argument('--msrps-port', type=int, default=c.msrps_port)
    ap.add_argument('--control-port', type=int, default=c.control_port)
    ap.add_argument('--control-bind', default=c.control_bind)
    ap.add_argument('--secret', default=c.secret, help='seed for derived SIP/FT passwords')
    ap.add_argument('--reg-expires', type=int, default=c.reg_expires, help='max REGISTER expiry granted (s)')
    ap.add_argument('--tls', action='store_true', help='provision SIPoTLS + MSRPoTLS (and P-CSCF port 5061)')
    ap.add_argument('--ft-https', action='store_true', help='advertise https for the FT content server')
    ap.add_argument('--no-otp', action='store_true', help='skip the OTP step: first ACS request gets the config')
    ap.add_argument('--otp-style', choices=['empty', 'html', '511'], default=c.otp_style)
    ap.add_argument('--default-msisdn', default=c.default_msisdn, help='msisdn used when the ACS request carries none')
    ap.add_argument('--address-without-port', action='store_true', help='P-CSCF Address without :port')
    ap.add_argument('--ft-open-download', action='store_true', help='no auth on FT downloads')
    ap.add_argument('--unknown-users', choices=['non-rcs', 'rcs'], default=c.unknown_users,
                    help='how unknown numbers behave (rcs = auto-create RCS capable user)')
    ap.add_argument('--flow-timer', type=int, default=0, help='Flow-Timer header seconds in REGISTER 200 (0=none)')
    ap.add_argument('--cert-dir', default=c.cert_dir)
    ap.add_argument('-v', '--verbose', action='count', default=0, help='-v: one line per message to stderr, -vv: full')
    return ap.parse_args(argv)


def config_from_args(a):
    return Config(host=a.host, bind=a.bind, domain=a.domain, conf_domain=a.conf_domain, acs_port=a.acs_port,
                  acs_tls_port=a.acs_tls_port, sip_port=a.sip_port, sip_tls_port=a.sip_tls_port,
                  msrp_port=a.msrp_port, msrps_port=a.msrps_port, control_port=a.control_port,
                  control_bind=a.control_bind, secret=a.secret, reg_expires=a.reg_expires, prov_tls=a.tls,
                  ft_scheme='https' if a.ft_https else 'http', otp_required=not a.no_otp, otp_style=a.otp_style,
                  default_msisdn=a.default_msisdn, address_with_port=not a.address_without_port,
                  ft_open_download=a.ft_open_download, unknown_users=a.unknown_users,
                  keepalive_flow_timer=a.flow_timer, cert_dir=a.cert_dir, verbose=a.verbose)


async def run(cfg, ready=None):
    net = Net(cfg)
    net.acs_version = 1
    net.imsi_map = {}
    cert = ensure_cert(cfg.cert_dir, [cfg.host, cfg.domain, cfg.conf_domain])
    sctx = server_ssl(cert) if cert else None
    if not cert:
        print('openssl not available: TLS listeners disabled', file=sys.stderr)
    net.files = FileStore(net)
    net.sip = SipServer(net)
    net.msrp = MsrpServer(net)
    chat = Chat(net)
    chat.sip = net.sip
    net.sip.handlers = chat

    async def web(req):
        p = req.path
        if p == '/ft' or p.startswith('/ft/'):
            return await handle_ft(net, req)
        if p == '/config.xml':
            return await handle_config_xml(net, req)
        if p == '/cert.pem':
            return await ctl.cert(req, {})
        return await handle_acs(net, req)

    ctl = Control(net)
    web_srv = HttpServer(web, 'HTTP', net.trace)
    ctl_srv = HttpServer(ctl.handle, 'CTRL', net.trace)
    started = []
    if cfg.acs_port:
        await web_srv.start(cfg.bind, cfg.acs_port)
        started.append('ACS/FT http   %s:%d' % (cfg.bind, cfg.acs_port))
    if cfg.acs_tls_port and sctx:
        await web_srv.start(cfg.bind, cfg.acs_tls_port, ssl=sctx)
        started.append('ACS/FT https  %s:%d' % (cfg.bind, cfg.acs_tls_port))
    await net.sip.start(sctx)
    started.append('SIP tcp       %s:%d' % (cfg.bind, cfg.sip_port))
    if sctx:
        started.append('SIP tls       %s:%d' % (cfg.bind, cfg.sip_tls_port))
    await net.msrp.start(sctx)
    started.append('MSRP          %s:%d' % (cfg.bind, cfg.msrp_port))
    if sctx:
        started.append('MSRP tls      %s:%d' % (cfg.bind, cfg.msrps_port))
    await ctl_srv.start(cfg.control_bind, cfg.control_port)
    started.append('control API   %s:%d' % (cfg.control_bind, cfg.control_port))
    print('RCS mock network up (domain %s, advertised host %s)' % (cfg.domain, cfg.host))
    for s in started:
        print('  ' + s)
    print('  ACS URL: http://%s:%d/  (config without OTP: /config.xml?msisdn=+15551234567)' % (cfg.host, cfg.acs_port))
    if cert:
        print('  TLS cert: %s' % cert[0])
    sys.stdout.flush()
    if ready:
        ready.set()
    net.main_loop_started = True
    await asyncio.Event().wait()


def main(argv=None):
    a = parse_args(argv)
    cfg = config_from_args(a)
    try:
        asyncio.run(run(cfg))
    except KeyboardInterrupt:
        pass


if __name__ == '__main__':
    main()
