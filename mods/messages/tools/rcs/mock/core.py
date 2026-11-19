"""Config and the shared Net state object."""
import os
import time

from .util import Trace, NonceStore, derive_password, now_iso


class Config:
    def __init__(self, **kw):
        self.host = '127.0.0.1'            # advertised host (what the device is told to connect to)
        self.bind = '0.0.0.0'
        self.domain = 'rcs.mock.test'
        self.conf_domain = None            # default conf.<domain>
        self.acs_port = 8080               # HTTP: ACS + FT content server; 0 disables
        self.acs_tls_port = 8443           # HTTPS: same app; 0 disables
        self.sip_port = 5060
        self.sip_tls_port = 5061
        self.msrp_port = 2855
        self.msrps_port = 2856
        self.control_port = 8099
        self.control_bind = '127.0.0.1'
        self.secret = 'argon-rcs-mock-secret'
        self.reg_expires = 3600            # max accepted REGISTER expires (s)
        self.prov_tls = False              # provision SIPoTLS/MSRPoTLS instead of TCP
        self.ft_scheme = 'http'            # scheme advertised in ftHTTPCSURI / data urls
        self.otp_required = True
        self.otp_style = 'empty'           # empty | html | 511 : reply when an OTP is needed
        self.default_msisdn = '+15551230000'
        self.address_with_port = True      # LBO_P-CSCF_Address Address = host:port
        self.token_validity = 3600
        self.config_validity = 7776000
        self.ft_open_download = False      # allow unauthenticated GET of data urls
        self.unknown_users = 'non-rcs'     # non-rcs | rcs : how unknown numbers behave
        self.cert_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), '.certs')
        self.verbose = 0
        self.keepalive_flow_timer = 0      # Flow-Timer header in REGISTER 200 (0 = none)
        self.max_file_mb = 200
        for k, v in kw.items():
            if not hasattr(self, k):
                raise TypeError('unknown config %s' % k)
            setattr(self, k, v)
        if not self.conf_domain:
            self.conf_domain = 'conf.' + self.domain

    # derived
    @property
    def factory_uri(self):
        return 'sip:Conference-Factory@%s' % self.domain

    @property
    def sip_prov_port(self):
        return self.sip_tls_port if self.prov_tls else self.sip_port

    @property
    def msrp_prov_port(self):
        return self.msrps_port if self.prov_tls else self.msrp_port

    @property
    def ft_base(self):
        port = self.acs_tls_port if self.ft_scheme == 'https' else self.acs_port
        return '%s://%s:%d/ft' % (self.ft_scheme, self.host, port)

    def sip_pass(self, user):
        return derive_password(self.secret, 'sip', user)

    def ft_pass(self, user):
        return derive_password(self.secret, 'ft', user)


class Registration:
    def __init__(self, number, impu, contact_uri, contact_hdr, conn, expires, ua, call_id, instance=None):
        self.number = number
        self.impu = impu
        self.contact_uri = contact_uri
        self.contact_hdr = contact_hdr
        self.conn = conn
        self.expires = expires
        self.registered_at = time.time()
        self.expires_at = time.time() + expires
        self.ua = ua
        self.call_id = call_id
        self.instance = instance
        self.reg_sub = None           # reg-event subscription dialog
        self.features = ''

    def to_dict(self):
        return {'number': self.number, 'impu': self.impu, 'contact': self.contact_hdr, 'ua': self.ua,
                'expires_in': max(0, int(self.expires_at - time.time())),
                'transport': getattr(self.conn, 'transport', None), 'peer': getattr(self.conn, 'peer', None),
                'connected': bool(self.conn and not self.conn.closed), 'call_id': self.call_id,
                'instance': self.instance}


class Net:
    def __init__(self, cfg):
        self.cfg = cfg
        self.trace = Trace(verbose=cfg.verbose)
        self.nonces = NonceStore()
        self.users = {}        # number -> VUser
        self.regs = {}         # number -> Registration
        self.groups = {}       # conversation id -> Group
        self.sessions = {}     # msrp session id -> ChatSession
        self.otps = {}         # key (msisdn) -> dict(otp, ts)
        self.tokens = {}       # token -> dict(msisdn, expires)
        self.acs_log = []      # ACS requests
        self.chaos = []        # failure injection rules
        self.sip = None
        self.msrp = None
        self.chat = None
        self.files = None
        self.started = now_iso()
        self.device_events = []   # misc logs from the device side (OPTIONS answers, etc.)
        self.ssl = None

    # URIs
    def sip_uri(self, number):
        return 'sip:%s@%s' % (number, self.cfg.domain)

    @staticmethod
    def tel_uri(number):
        return 'tel:%s' % number

    # chaos rules: dict(target, method, remaining, action, code, retry_after, delay_ms)
    def take_chaos(self, target, method='*'):
        for r in self.chaos:
            if r['target'] not in (target, '*'):
                continue
            if r.get('method', '*') not in ('*', method):
                continue
            if r.get('remaining', 1) <= 0:
                continue
            r['remaining'] = r.get('remaining', 1) - 1
            r['hits'] = r.get('hits', 0) + 1
            return r
        return None

    def device(self, number=None):
        if number:
            return self.regs.get(number)
        live = [r for r in self.regs.values() if r.expires_at > time.time()]
        return live[0] if len(live) == 1 else (live[-1] if live else None)
