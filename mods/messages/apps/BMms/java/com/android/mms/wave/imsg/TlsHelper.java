package com.android.mms.wave.imsg;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SNIServerName;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/**
 * Shared SSLContext with SHA-256 leaf certificate pinning and TLS session resumption.
 * Supports TLS 1.3 where available and TLS 1.2 on Android 8.1 (API 27).
 */
public final class TlsHelper {
    private final SSLContext sslContext;
    private final SSLSocketFactory socketFactory;

    public static final class ServerCertInfo {
        public final String sha256Hex;
        public final String sha256Colon;
        public final String subject;
        public final String tlsProtocol;

        public ServerCertInfo(String sha256Hex, String sha256Colon, String subject, String tlsProtocol) {
            this.sha256Hex = sha256Hex;
            this.sha256Colon = sha256Colon;
            this.subject = subject;
            this.tlsProtocol = tlsProtocol;
        }
    }

    public TlsHelper(String pinnedSha256Hex) throws GeneralSecurityException {
        final byte[] expectedPin = ClientState.fromHex(pinnedSha256Hex);
        if (expectedPin.length != 32) {
            throw new IllegalArgumentException("Pinned SHA-256 must be 32 bytes (64 hex chars)");
        }

        X509TrustManager pinningTm = new X509TrustManager() {
            @Override
            public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                throw new CertificateException("Client certificates not used");
            }

            @Override
            public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                if (chain == null || chain.length == 0) {
                    throw new CertificateException("Empty server certificate chain");
                }
                try {
                    MessageDigest md = MessageDigest.getInstance("SHA-256");
                    byte[] digest = md.digest(chain[0].getEncoded());
                    if (!MessageDigest.isEqual(expectedPin, digest)) {
                        throw new CertificateException(
                                "Server certificate SHA-256 pin mismatch: got " + ClientState.toHex(digest));
                    }
                } catch (CertificateException ce) {
                    throw ce;
                } catch (Exception e) {
                    throw new CertificateException("Failed to verify server certificate pin", e);
                }
            }

            @Override
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        };

        this.sslContext = SSLContext.getInstance("TLS");
        this.sslContext.init(null, new TrustManager[]{pinningTm}, new SecureRandom());
        this.socketFactory = this.sslContext.getSocketFactory();
    }

    /**
     * Connects over TLS solely to read the server's leaf certificate for Trust-On-First-Use
     * confirmation in the setup wizard. Sends no application data or credentials.
     */
    public static ServerCertInfo fetchServerCertInfo(String host, int port, String sniHost, int timeoutMs)
            throws IOException, GeneralSecurityException {
        final X509Certificate[] captured = new X509Certificate[1];
        X509TrustManager captureTm = new X509TrustManager() {
            @Override
            public void checkClientTrusted(X509Certificate[] chain, String authType) {
            }

            @Override
            public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                if (chain == null || chain.length == 0) {
                    throw new CertificateException("Empty server certificate chain");
                }
                captured[0] = chain[0];
            }

            @Override
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        };
        SSLContext ctx = SSLContext.getInstance("TLS");
        ctx.init(null, new TrustManager[]{captureTm}, new SecureRandom());
        SSLSocket socket = (SSLSocket) ctx.getSocketFactory().createSocket();
        try {
            socket.setTcpNoDelay(true);
            configureProtocols(socket);
            configureSni(socket, sniHost != null && !sniHost.isEmpty() ? sniHost : host);
            socket.connect(new InetSocketAddress(host, port), timeoutMs);
            socket.setSoTimeout(timeoutMs);
            socket.startHandshake();
            if (captured[0] == null) {
                throw new IOException("Server did not present a certificate");
            }
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(captured[0].getEncoded());
            String hex = ClientState.toHex(digest);
            String colon = ClientState.toColonHex(digest);
            String subject = captured[0].getSubjectX500Principal() != null
                    ? captured[0].getSubjectX500Principal().getName()
                    : "";
            String proto = socket.getSession() != null ? socket.getSession().getProtocol() : "TLS";
            return new ServerCertInfo(hex, colon, subject, proto);
        } finally {
            try {
                socket.close();
            } catch (IOException ignored) {
            }
        }
    }

    /**
     * Verifies server connectivity, TLS pin, and client token using ROLE_PROBE (does not disturb
     * main connection state or sequence numbers). Returns null on success, or an error message.
     */
    public static String verifyCredentials(
            String host, int port, String sniHost, String tokenHex, String pinnedSha256Hex, int timeoutMs) {
        SSLSocket socket = null;
        try {
            TlsHelper helper = new TlsHelper(pinnedSha256Hex);
            socket = helper.connect(host, port, sniHost, timeoutMs, timeoutMs);
            socket.setSoTimeout(timeoutMs);
            Frame.hello(Frame.ROLE_PROBE, tokenHex, 0L, 0).writeTo(socket.getOutputStream());
            Frame resp = Frame.readFrom(socket.getInputStream());
            if (resp == null) {
                return "Server closed connection during handshake";
            }
            if (resp.type == Frame.TYPE_BYE) {
                if (resp.reason == Frame.BYE_AUTH_FAILED) {
                    return "Invalid access token";
                }
                if (resp.reason == Frame.BYE_BAD_VERSION) {
                    return "Unsupported server protocol version";
                }
                return "Server rejected connection (" + Frame.byeReasonName(resp.reason) + ")";
            }
            if (resp.type != Frame.TYPE_WELCOME) {
                return "Unexpected response from server: " + resp;
            }
            try {
                Frame.bye(Frame.BYE_NORMAL).writeTo(socket.getOutputStream());
            } catch (IOException ignored) {
            }
            return null;
        } catch (Exception e) {
            String msg = e.getMessage();
            return (msg == null || msg.isEmpty()) ? e.getClass().getSimpleName() : msg;
        } finally {
            if (socket != null) {
                try {
                    socket.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

    /**
     * Opens a pinned TLS socket with TCP_NODELAY=true, SO_KEEPALIVE=false, and SO_TIMEOUT=0 after handshake.
     */
    public SSLSocket connect(String host, int port, String sniHost, int connectTimeoutMs, int handshakeTimeoutMs)
            throws IOException {
        SSLSocket socket = (SSLSocket) socketFactory.createSocket();
        try {
            socket.setTcpNoDelay(true);
            socket.setKeepAlive(false);
            configureProtocols(socket);
            configureSni(socket, sniHost != null && !sniHost.isEmpty() ? sniHost : host);
            socket.connect(new InetSocketAddress(host, port), connectTimeoutMs);
            socket.setSoTimeout(handshakeTimeoutMs);
            socket.startHandshake();
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
