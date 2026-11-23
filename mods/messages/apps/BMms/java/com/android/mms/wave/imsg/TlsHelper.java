package com.android.mms.wave.imsg;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SNIServerName;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/**
 * TLS to the server using the system's trusted CAs and host name verification, as for HTTPS.
 * TLS 1.3 where available, TLS 1.2 on Android 8.1 (API 27).
 */
public final class TlsHelper {
    private TlsHelper() {
    }

    public static final class PairResult {
        public final String clientId;
        public final String tokenHex;

        PairResult(String clientId, String tokenHex) {
            this.clientId = clientId;
            this.tokenHex = tokenHex;
        }
    }

    /** Opens a verified TLS socket with TCP_NODELAY=true, SO_KEEPALIVE=false and no read timeout. */
    public static SSLSocket connect(String host, int port, int connectTimeoutMs, int handshakeTimeoutMs)
            throws IOException {
        SSLSocket socket = (SSLSocket) SSLSocketFactory.getDefault().createSocket();
        try {
            socket.setTcpNoDelay(true);
            socket.setKeepAlive(false);
            configureProtocols(socket);
            configureSni(socket, host);
            socket.connect(new InetSocketAddress(host, port), connectTimeoutMs);
            socket.setSoTimeout(handshakeTimeoutMs);
            socket.startHandshake();
            if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(host, socket.getSession())) {
                throw new SSLPeerUnverifiedException("Server certificate is not valid for " + host);
            }
            socket.setSoTimeout(0);
            return socket;
        } catch (IOException e) {
            closeQuietly(socket);
            throw e;
        } catch (RuntimeException e) {
            closeQuietly(socket);
            throw e;
        }
    }

    /** Trades a one-time pairing code for this phone's own client id and token. */
    public static PairResult pair(String host, int port, String code, int timeoutMs) throws IOException {
        SSLSocket socket = connect(host, port, timeoutMs, timeoutMs);
        try {
            socket.setSoTimeout(timeoutMs);
            Frame.hello(Frame.ROLE_PAIR, digitsOnly(code), 0L, 0).writeTo(socket.getOutputStream());
            Frame resp = Frame.readFrom(socket.getInputStream());
            if (resp == null) {
                throw new IOException("Server closed the connection");
            }
            if (resp.type == Frame.TYPE_BYE) {
                if (resp.reason == Frame.BYE_AUTH_FAILED) {
                    throw new IOException("Wrong or expired pairing code");
                }
                throw new IOException("Server refused (" + Frame.byeReasonName(resp.reason) + ")");
            }
            if (resp.type != Frame.TYPE_PAIRED || resp.pairedToken().isEmpty()) {
                throw new IOException("Unexpected reply from server: " + resp);
            }
            return new PairResult(resp.pairedClientId(), resp.pairedToken());
        } finally {
            closeQuietly(socket);
        }
    }

    public static String digitsOnly(String s) {
        StringBuilder sb = new StringBuilder();
        if (s != null) {
            for (int i = 0; i < s.length(); i++) {
                char c = s.charAt(i);
                if (c >= '0' && c <= '9') {
                    sb.append(c);
                }
            }
        }
        return sb.toString();
    }

    private static void closeQuietly(SSLSocket socket) {
        try {
            socket.close();
        } catch (IOException ignored) {
        }
    }

    private static void configureProtocols(SSLSocket socket) {
        String[] supported = socket.getSupportedProtocols();
        List<String> enabled = new ArrayList<String>();
        for (String p : supported) {
            if ("TLSv1.3".equals(p) || "TLSv1.2".equals(p)) {
                enabled.add(p);
            }
        }
        if (!enabled.isEmpty()) {
            socket.setEnabledProtocols(enabled.toArray(new String[enabled.size()]));
        }
    }

    private static void configureSni(SSLSocket socket, String host) {
        if (host == null || host.isEmpty() || isIpLiteral(host)) {
            return;
        }
        try {
            SSLParameters params = socket.getSSLParameters();
            params.setServerNames(Collections.<SNIServerName>singletonList(new SNIHostName(host)));
            socket.setSSLParameters(params);
        } catch (Throwable ignored) {
        }
    }

    private static boolean isIpLiteral(String host) {
        if (host.indexOf(':') >= 0) {
            return true;
        }
        for (int i = 0; i < host.length(); i++) {
            char c = host.charAt(i);
            if (!((c >= '0' && c <= '9') || c == '.')) {
                return false;
            }
        }
        return true;
    }
}
