"""MSRP endpoint (passive listener on plain + TLS ports, active connector)."""
import asyncio
import sys
import traceback

from .msrp import MsrpFramer, MsrpMsg, build_msrp, new_tid, msrp_session_id, msrp_hostport
from .util import rand_hex, spawn, client_ssl_noverify


class MsrpConn:
    _ids = 0

    def __init__(self, server, reader, writer, tls, active=False):
        MsrpConn._ids += 1
        self.id = MsrpConn._ids
        self.server = server
        self.reader = reader
        self.writer = writer
        self.tls = tls
        self.active = active
        pn = writer.get_extra_info('peername')
        self.peer = '%s:%s' % (pn[0], pn[1]) if pn else '?'
        self.framer = MsrpFramer()
        self.pending = {}       # tid -> future
        self.sessions = set()
        self.closed = False

    async def send(self, data, text=None):
        if self.closed:
            raise ConnectionError('MSRP connection closed')
        self.server.net.trace.add('MSRP', '->', '%s#%d' % (self.peer, self.id), text if text is not None else data)
        self.writer.write(data)
        await self.writer.drain()

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


def _view(data):
    """Trace helper: MsrpMsg for a built message."""
    f = MsrpFramer()
    try:
        return f.feed(data)[0].text()
    except Exception:
        return repr(data[:200])


class MsrpServer:
    def __init__(self, net):
        self.net = net
        self.cfg = net.cfg
        self.conns = {}
        self.servers = []

    async def start(self, ssl_ctx):
        c = self.cfg
        if c.msrp_port:
            self.servers.append(await asyncio.start_server(
                lambda r, w: self._on_conn(r, w, False), c.bind, c.msrp_port, reuse_address=True))
        if c.msrps_port and ssl_ctx:
            self.servers.append(await asyncio.start_server(
                lambda r, w: self._on_conn(r, w, True), c.bind, c.msrps_port, ssl=ssl_ctx, reuse_address=True))

    async def _on_conn(self, reader, writer, tls):
        conn = MsrpConn(self, reader, writer, tls)
        self.net.trace.event('MSRP%s connection #%d from %s' % ('/TLS' if tls else '', conn.id, conn.peer))
        await self._serve(conn)

    async def _serve(self, conn):
        self.conns[conn.id] = conn
        try:
            while True:
                data = await conn.reader.read(65536)
                if not data:
                    break
                try:
                    msgs = conn.framer.feed(data)
                except Exception as e:
                    self.net.trace.add('MSRP', '<-', conn.peer, 'framing error %r; closing' % e)
                    break
                for m in msgs:
                    self.net.trace.add('MSRP', '<-', '%s#%d' % (conn.peer, conn.id), m.text())
                    try:
                        await self.handle(conn, m)
                    except ConnectionError:
                        raise
                    except Exception:
                        sys.stderr.write('MSRP handler error:\n' + traceback.format_exc())
        except (ConnectionError, asyncio.CancelledError):
            pass
        except Exception:
            sys.stderr.write(traceback.format_exc())
        finally:
            conn.close()
            self.conns.pop(conn.id, None)
            for f in conn.pending.values():
                if not f.done():
                    f.set_exception(ConnectionError('MSRP connection closed'))
            for sid in list(conn.sessions):
                s = self.net.sessions.get(sid)
                if s and s.conn is conn:
                    s.conn = None
                    s.connected.clear()
                    s.msrp_lost = True  # an MSRP session can't outlive its connection (RFC 4975)
            self.net.trace.event('MSRP connection #%d closed' % conn.id)

    # ------------------------------------------------ inbound handling
    async def handle(self, conn, m):
        if m.method is None:       # response
            f = conn.pending.pop(m.tid, None)
            if f and not f.done():
                f.set_result(m)
            return
        if m.method == 'REPORT':
            s = self.session_for(m)
            if s:
                self.bind(conn, s)
                await self.net.chat.on_msrp_report(s, m)
            return
        if m.method != 'SEND':
            await self._respond(conn, m, 501, 'Unknown method')
            return
        s = self.session_for(m)
        if not s:
            await self._respond(conn, m, 481, 'Session does not exist')
            return
        self.bind(conn, s)
        fr = (m.header('Failure-Report') or 'yes').lower()
        if fr == 'yes':
            await self._respond(conn, m, 200, 'OK')
        mid = m.header('Message-ID') or m.tid
        has_content = bool(m.body) or m.header('Content-Type')
        if not has_content:
            return
        br = m.byte_range()
        buf = s.rx.get(mid)
        if buf is None or (br and br[0] == 1):
            buf = s.rx[mid] = {'data': bytearray(), 'ctype': m.header('Content-Type'), 'from': m.from_path}
        buf['data'] += m.body
        if m.flag == '#':
            s.rx.pop(mid, None)
            self.net.trace.event('MSRP: message %s aborted by sender' % mid)
            return
        if m.flag == '+':
            return
        s.rx.pop(mid, None)
        data = bytes(buf['data'])
        if (m.header('Success-Report') or 'no').lower() == 'yes':
            spawn(self.send_report(s, conn, m, mid, len(data)))
        await self.net.chat.on_msrp_message(s, mid, buf['ctype'], data, buf['from'])

    def session_for(self, m):
        tp = m.to_path
        if not tp:
            return None
        sid = msrp_session_id(tp[-1])
        s = self.net.sessions.get(sid)
        return s if s and not s.closed else None

    def bind(self, conn, s):
        if s.conn is not conn:
            s.conn = conn
        conn.sessions.add(s.id)
        s.connected.set()

    async def _respond(self, conn, m, code, reason):
        tp = m.to_path
        hdrs = [('To-Path', ' '.join(m.from_path)), ('From-Path', tp[-1] if tp else '')]
        data = build_msrp(m.tid, '%d %s' % (code, reason), hdrs)
        await conn.send(data, _view(data))

    async def send_report(self, s, conn, m, mid, total):
        hdrs = [('To-Path', ' '.join(m.from_path)), ('From-Path', s.local_path), ('Message-ID', mid),
                ('Byte-Range', '1-%d/%d' % (total, total)), ('Status', '000 200 OK')]
        tid = new_tid()
        data = build_msrp(tid, 'REPORT', hdrs)
        try:
            await conn.send(data, _view(data))
        except ConnectionError:
            pass

    # ------------------------------------------------ outbound
    async def connect_active(self, s):
        """Mock is the active endpoint: connect to the peer's path and bind with an empty SEND."""
        hp = msrp_hostport(s.remote_path[-1]) if s.remote_path else None
        if not hp:
            raise ValueError('no usable remote MSRP path')
        scheme, host, port = hp
        ssl = client_ssl_noverify() if scheme == 'msrps' else None
        reader, writer = await asyncio.wait_for(asyncio.open_connection(host, port, ssl=ssl), 10)
        conn = MsrpConn(self, reader, writer, scheme == 'msrps', active=True)
        self.net.trace.event('MSRP: connected actively to %s:%d for session %s' % (host, port, s.id))
        self.bind(conn, s)
        spawn(self._serve(conn))
        tid = new_tid()
        hdrs = [('To-Path', ' '.join(s.remote_path)), ('From-Path', s.local_path), ('Message-ID', rand_hex(8)),
                ('Byte-Range', '1-0/0')]
        data = build_msrp(tid, 'SEND', hdrs)
        fut = asyncio.get_running_loop().create_future()
        conn.pending[tid] = fut
        await conn.send(data, _view(data))
        try:
            await asyncio.wait_for(fut, 10)
        except Exception:
            pass
        return conn

    async def wait_connected(self, s, timeout=10):
        if s.conn and not s.conn.closed:
            return s.conn
        try:
            await asyncio.wait_for(s.connected.wait(), timeout)
        except asyncio.TimeoutError:
            raise ConnectionError('device did not open the MSRP connection within %ds' % timeout)
        if not s.conn or s.conn.closed:
            raise ConnectionError('MSRP connection lost')
        return s.conn

    async def send_message(self, s, ctype, body, message_id=None, chunk_size=0, success_report=False,
                           failure_report='yes', timeout=10, wait_connect=10):
        """Send one MSRP message (possibly chunked). Returns dict(ok, status, message_id, chunks)."""
        conn = await self.wait_connected(s, wait_connect)
        mid = message_id or rand_hex(8)
        total = len(body)
        size = chunk_size if chunk_size and chunk_size > 0 else max(total, 1)
        chunks = [body[i:i + size] for i in range(0, total, size)] or [b'']
        futs = []
        pos = 1
        for i, ch in enumerate(chunks):
            last = i == len(chunks) - 1
            tid = new_tid()
            hdrs = [('To-Path', ' '.join(s.remote_path)), ('From-Path', s.local_path), ('Message-ID', mid),
                    ('Byte-Range', '%d-%d/%d' % (pos, pos + len(ch) - 1, total)),
                    ('Content-Type', ctype)]
            if success_report:
                hdrs.append(('Success-Report', 'yes'))
            hdrs.append(('Failure-Report', failure_report))
            data = build_msrp(tid, 'SEND', hdrs, ch, '$' if last else '+')
            if failure_report == 'yes':
                f = asyncio.get_running_loop().create_future()
                conn.pending[tid] = f
                futs.append(f)
            await conn.send(data, _view(data))
            pos += len(ch)
        status = 200
        if futs:
            try:
                resps = await asyncio.wait_for(asyncio.gather(*futs), timeout)
                for r in resps:
                    if r.status != 200:
                        status = r.status
                        break
            except asyncio.TimeoutError:
                return {'ok': False, 'status': 408, 'message_id': mid, 'chunks': len(chunks), 'error': 'no MSRP response'}
            except ConnectionError as e:
                return {'ok': False, 'status': 0, 'message_id': mid, 'chunks': len(chunks), 'error': str(e)}
        return {'ok': status == 200, 'status': status, 'message_id': mid, 'chunks': len(chunks)}
