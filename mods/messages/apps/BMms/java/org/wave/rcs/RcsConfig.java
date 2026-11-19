package org.wave.rcs;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.wave.rcs.util.U;
import org.wave.rcs.util.Xml;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * RCS configuration parsed from a GSMA RCC.14/RCC.07 wap-provisioningdoc (ACS or manual XML).
 * Fields keep their defaults when a parameter is absent.
 */
public final class RcsConfig {

    /** Receipt/composing policy (user requirement; defaults per docs/rcs/design.md). */
    public static final class Policy {
        public boolean requestDeliveryReports = false;
        public boolean requestDisplayReports = false;
        public boolean sendDeliveryReports = true;
        public boolean sendDisplayReports = false;
        public boolean sendComposing = false;

        public Policy() {}

        @Override public String toString() {
            return "Policy{reqDelivery=" + requestDeliveryReports + " reqDisplay=" + requestDisplayReports
                    + " sendDelivery=" + sendDeliveryReports + " sendDisplay=" + sendDisplayReports
                    + " sendComposing=" + sendComposing + "}";
        }
    }

    // ---- VERS / TOKEN ----
    public int version = 0;
    /** seconds */
    public long validity = 0;
    public String token;

    // ---- IMS (ap2001) ----
    public List<String> publicUserIdentities = new ArrayList<>();
    public String privateUserIdentity;
    public String homeDomain;
    public String pcscfAddress;
    public int pcscfPort = 0;           // 0 = default for transport
    public String pcscfAddressType;     // FQDN / IPv4 / IPv6
    public String authType = "Digest";  // APPAUTH AuthType: Digest, AKA, EarlyIMS...
    public String realm;
    public String userName;
    public String userPwd;
    public int timerT1 = 500, timerT2 = 4000, timerT4 = 5000;   // ms
    public int regRetryBaseTime = 30, regRetryMaxTime = 1800;   // s
    public boolean keepAliveEnabled = true;
    public int keepAliveInterval = 30;  // s (sipKeepAliveInterval / KeepAliveTimer if present)
    public int registrationExpires = 600000; // s requested (server decides), default 1 week-ish cap
    /** SIP transport: "TLS" or "TCP". */
    public String sipTransport = "TLS";
    /** MSRP over TLS (MSRPoTLS) or plain TCP. */
    public boolean msrpTls = true;
    public String natUrlFmt, intUrlFmt;

    // ---- Services (ap2002 SERVICES) ----
    public boolean chatAuth = true, groupChatAuth = true, ftAuth = true, standaloneMsgAuth = true;
    public boolean presencePrfl = false;

    // ---- Messaging ----
    public long maxSize1to1 = 0, maxSize1toM = 0, maxSizeStandalone = 0; // bytes, 0 = unlimited
    public String confFactoryUri;
    public int maxAdhocGroupSize = 100;
    public boolean autAccept = true, autAcceptGroupChat = true;
    public boolean firstMessageInvite = false;
    public int timerIdle = 180;          // s, 0 = no idle timeout
    public boolean imCapAlwaysOn = true;
    public boolean imSessionStart = false;
    public int chatMessagingTech = 0;    // 0 OMA CPM

    // ---- File transfer ----
    public long maxSizeFileTr = 0;       // bytes, 0 = unlimited
    public long ftWarnSize = 0;
    public String ftHttpCsUri, ftHttpCsUser, ftHttpCsPwd;
    public boolean ftAutAccept = true;

    // ---- Capability discovery ----
    public long capInfoExpiry = 86400;   // s, positive cache
    public long msgCapValidity = 0;      // s, if set overrides capInfoExpiry for messaging caps
    public long nonRcsCapInfoExpiry = 3600; // s, negative cache
    public boolean capDiscoveryViaOptions = true;

    /** Every parm by lowercase name (first occurrence wins), for anything not mapped above. */
    public final Map<String, String> raw = new LinkedHashMap<>();
    /** The provisioning XML this was parsed from (persisted by the engine). */
    public String xml;

    public RcsConfig() {}

    // ---- derived ----

    /** Preferred public identity: the sip: URI with our number if any, else the first. */
    public String preferredImpu() {
        for (String s : publicUserIdentities) if (s.startsWith("sip:")) return s;
        return publicUserIdentities.isEmpty() ? null : publicUserIdentities.get(0);
    }

    public String telImpu() {
        for (String s : publicUserIdentities) if (s.startsWith("tel:")) return s;
        return null;
    }

    public String domain() {
        if (!U.empty(homeDomain)) return homeDomain;
        String impu = preferredImpu();
        if (impu != null && impu.contains("@")) {
            String d = impu.substring(impu.indexOf('@') + 1);
            int sc = d.indexOf(';');
            return sc >= 0 ? d.substring(0, sc) : d;
        }
        return realm;
    }

    public boolean tls() { return "TLS".equalsIgnoreCase(sipTransport); }

    public int pcscfPortOrDefault() { return pcscfPort > 0 ? pcscfPort : (tls() ? 5061 : 5060); }

    public String authUser() {
        if (!U.empty(userName)) return userName;
        if (!U.empty(privateUserIdentity)) return privateUserIdentity;
        return null;
    }

    public long capPositiveTtlMs() {
        long s = msgCapValidity > 0 ? msgCapValidity : (capInfoExpiry > 0 ? capInfoExpiry : 86400);
        return 1000L * Math.max(60, s);
    }
    public long capNegativeTtlMs() { return 1000L * (nonRcsCapInfoExpiry > 0 ? nonRcsCapInfoExpiry : 3600); }

    /** True if enough was provisioned to register. */
    public boolean usable() {
        return !U.empty(pcscfAddress) && !publicUserIdentities.isEmpty();
    }

    public String summary() {
        return "RcsConfig{vers=" + version + " validity=" + validity + " impu=" + preferredImpu()
                + " impi=" + privateUserIdentity + " domain=" + domain() + " pcscf=" + pcscfAddress + ":" + pcscfPortOrDefault()
                + " sip=" + sipTransport + " msrpTls=" + msrpTls + " conf=" + confFactoryUri + " ft=" + ftHttpCsUri
                + " idle=" + timerIdle + " fmi=" + firstMessageInvite + " maxGroup=" + maxAdhocGroupSize
                + " ka=" + keepAliveEnabled + "/" + keepAliveInterval + " retry=" + regRetryBaseTime + "/" + regRetryMaxTime + "}";
    }

    // =============================================================================================
    // Parsing

    /** A characteristic node of the provisioning doc. */
    public static final class Node {
        public final String type;
        public final List<String[]> parms = new ArrayList<>();
        public final List<Node> children = new ArrayList<>();
        Node(String type) { this.type = type; }

        public String parm(String name) {
            for (String[] p : parms) if (p[0].equalsIgnoreCase(name)) return p[1];
            return null;
        }

        public List<String> parms(String name) {
            List<String> out = new ArrayList<>();
            for (String[] p : parms) if (p[0].equalsIgnoreCase(name)) out.add(p[1]);
            return out;
        }

        /** First descendant characteristic (depth-first, including this) with that type. */
        public Node find(String type) {
            if (this.type.equalsIgnoreCase(type)) return this;
            for (Node c : children) { Node r = c.find(type); if (r != null) return r; }
            return null;
        }

        public void findAll(String type, List<Node> out) {
            if (this.type.equalsIgnoreCase(type)) out.add(this);
            for (Node c : children) c.findAll(type, out);
        }

        /** First parm with that name anywhere in this subtree (depth-first). */
        public String deep(String name) {
            String v = parm(name);
            if (v != null) return v;
            for (Node c : children) { v = c.deep(name); if (v != null) return v; }
            return null;
        }

        /** First non-null of several names, searched in the subtree. */
        public String deepAny(String... names) {
            for (String n : names) { String v = deep(n); if (v != null) return v; }
            return null;
        }
    }

    public static Node parseTree(String xml) throws Exception {
        Document d = Xml.parse(xml);
        Element root = d.getDocumentElement();
        Node n = new Node(Xml.localName(root));
        fill(n, root);
        return n;
    }

    private static void fill(Node n, Element e) {
        for (Element c : Xml.children(e, null)) {
            String ln = Xml.localName(c);
            if (ln.equalsIgnoreCase("parm")) {
                String name = c.getAttribute("name");
                String value = c.hasAttribute("value") ? c.getAttribute("value") : c.getTextContent();
                n.parms.add(new String[]{name, value == null ? "" : value.trim()});
            } else if (ln.equalsIgnoreCase("characteristic")) {
                Node ch = new Node(c.getAttribute("type"));
                fill(ch, c);
                n.children.add(ch);
            }
        }
    }

    /** Parses a wap-provisioningdoc. Throws if it isn't XML. */
    public static RcsConfig parse(String xml) throws Exception {
        Node root = parseTree(xml);
        RcsConfig c = new RcsConfig();
        c.xml = xml;
        collectRaw(root, c.raw);

        Node vers = root.find("VERS");
        if (vers != null) {
            c.version = U.parseInt(vers.parm("version"), 0);
            c.validity = U.parseLong(vers.parm("validity"), 0);
        }
        Node tok = root.find("TOKEN");
        if (tok != null) c.token = tok.parm("token");

        // APPLICATION characteristics by AppID
        List<Node> apps = new ArrayList<>();
        root.findAll("APPLICATION", apps);
        Node ims = null, rcs = null;
        for (Node a : apps) {
            String id = a.parm("AppID");
            if ("ap2001".equalsIgnoreCase(id)) ims = a;
            else if ("ap2002".equalsIgnoreCase(id)) rcs = a;
        }
        if (ims == null) ims = root;
        if (rcs == null) rcs = root;

        // ---- IMS ----
        Node pui = ims.find("Public_User_Identity_List");
        if (pui != null) for (String s : collectParms(pui, "Public_User_Identity")) addImpu(c, s);
        if (c.publicUserIdentities.isEmpty()) for (String s : collectParms(root, "Public_User_Identity")) addImpu(c, s);
        c.privateUserIdentity = ims.deepAny("Private_User_Identity");
        c.homeDomain = ims.deepAny("Home_network_domain_name", "home_network_domain_name");
        Node lbo = ims.find("LBO_P-CSCF_Address");
        if (lbo == null) lbo = root.find("LBO_P-CSCF_Address");
        if (lbo != null) {
            String addr = lbo.parm("Address");
            c.pcscfAddressType = lbo.parm("AddressType");
            setPcscf(c, addr);
        }
        if (c.pcscfAddress == null) setPcscf(c, ims.deepAny("P-CSCF_Address", "pcscf_address"));
        String port = ims.deepAny("P-CSCF_Port", "pcscfPort", "sipPort");
        if (port != null) c.pcscfPort = U.parseInt(port, c.pcscfPort);

        Node auth = ims.find("APPAUTH");
        if (auth == null) auth = root.find("APPAUTH");
        if (auth != null) {
            if (auth.parm("AuthType") != null) c.authType = auth.parm("AuthType");
            c.realm = auth.parm("Realm");
            c.userName = auth.parm("UserName");
            c.userPwd = auth.parm("UserPwd");
        }
        c.timerT1 = U.parseInt(ims.deepAny("Timer_T1"), c.timerT1);
        c.timerT2 = U.parseInt(ims.deepAny("Timer_T2"), c.timerT2);
        c.timerT4 = U.parseInt(ims.deepAny("Timer_T4"), c.timerT4);
        c.regRetryBaseTime = U.parseInt(root.deepAny("RegRetryBaseTime"), c.regRetryBaseTime);
        c.regRetryMaxTime = U.parseInt(root.deepAny("RegRetryMaxTime"), c.regRetryMaxTime);
        c.keepAliveEnabled = U.parseBool(ims.deepAny("Keep_Alive_Enabled", "KeepAliveEnabled"), c.keepAliveEnabled);
        c.keepAliveInterval = U.parseInt(root.deepAny("sipKeepAliveInterval", "KeepAliveInterval", "KeepAliveTimer",
                "keepAliveTimer", "SIPKeepAliveTimer"), c.keepAliveInterval);
        c.registrationExpires = U.parseInt(root.deepAny("RegExpires", "RegistrationExpires", "regExpires"), 600000);
        c.natUrlFmt = root.deepAny("NatUrlFmt");
        c.intUrlFmt = root.deepAny("IntUrlFmt");

        Node tp = root.find("transportProto");
        if (tp != null) {
            String sig = tp.parm("psSignalling");
            if (sig == null) sig = tp.parm("wifiSignalling");
            if (sig != null) c.sipTransport = sig.toUpperCase(Locale.ROOT).contains("TLS") ? "TLS" : "TCP";
            String media = tp.parm("psMedia");
            if (media == null) media = tp.parm("wifiMedia");
            if (media != null) c.msrpTls = media.toUpperCase(Locale.ROOT).contains("TLS");
        }
        String explicitTransport = root.deepAny("sipTransport", "SIPTransport");
        if (explicitTransport != null) c.sipTransport = explicitTransport.toUpperCase(Locale.ROOT).contains("TLS") ? "TLS" : "TCP";
        // P-CSCF address may carry a transport hint "host:port;transport=tcp"
        String lboRaw = lbo != null ? lbo.parm("Address") : null;
        if (lboRaw != null && lboRaw.toLowerCase(Locale.ROOT).contains("transport=tcp") && tp == null) c.sipTransport = "TCP";

        // ---- RCS services ----
        Node svc = rcs.find("SERVICES");
        if (svc != null) {
            c.chatAuth = U.parseBool(svc.parm("ChatAuth"), c.chatAuth);
            c.groupChatAuth = U.parseBool(svc.parm("GroupChatAuth"), c.groupChatAuth);
            c.ftAuth = U.parseBool(svc.parm("ftAuth"), c.ftAuth);
            c.standaloneMsgAuth = U.parseBool(svc.parm("standaloneMsgAuth"), c.standaloneMsgAuth);
            c.presencePrfl = U.parseBool(svc.parm("presencePrfl"), c.presencePrfl);
        }
        // Messaging: UP layout MESSAGING/{Chat,FileTransfer,StandaloneMsg}, RCS 5 layout IM
        c.maxSize1to1 = U.parseLong(rcs.deepAny("MaxSize1to1", "MaxSize"), 0);
        c.maxSize1toM = U.parseLong(rcs.deepAny("MaxSize1toM", "MaxSize1to1", "MaxSize"), 0);
        Node sa = rcs.find("StandaloneMsg");
        c.maxSizeStandalone = U.parseLong(sa != null ? sa.deepAny("MaxSizeStandalone", "MaxSize") : rcs.deepAny("MaxSizeStandalone"), 0);
        c.confFactoryUri = rcs.deepAny("conf-fcty-uri", "conf-fcty-URI", "ConfFctyUri");
        c.maxAdhocGroupSize = U.parseInt(rcs.deepAny("max_adhoc_group_size", "MaxAdhocGroupSize", "max_adhoc_group_size1toM"), c.maxAdhocGroupSize);
        c.autAccept = U.parseBool(rcs.deepAny("AutAccept"), c.autAccept);
        c.autAcceptGroupChat = U.parseBool(rcs.deepAny("AutAcceptGroupChat"), c.autAcceptGroupChat);
        c.firstMessageInvite = U.parseBool(rcs.deepAny("firstMessageInvite", "FirstMessageInvite"), c.firstMessageInvite);
        c.timerIdle = U.parseInt(rcs.deepAny("TimerIdle"), c.timerIdle);
        c.imCapAlwaysOn = U.parseBool(rcs.deepAny("imCapAlwaysON", "imCapAlwaysOn"), c.imCapAlwaysOn);
        c.imSessionStart = U.parseBool(rcs.deepAny("imSessionStart"), c.imSessionStart);
        c.chatMessagingTech = U.parseInt(rcs.deepAny("chatMessagingTechnology"), 0);

        c.maxSizeFileTr = U.parseLong(rcs.deepAny("MaxSizeFileTr", "MaxSizeFileTrIncoming"), 0);
        c.ftWarnSize = U.parseLong(rcs.deepAny("ftWarnSize"), 0);
        c.ftHttpCsUri = rcs.deepAny("ftHTTPCSURI");
        c.ftHttpCsUser = rcs.deepAny("ftHTTPCSUser");
        c.ftHttpCsPwd = rcs.deepAny("ftHTTPCSPwd");
        c.ftAutAccept = U.parseBool(rcs.deepAny("ftAutAccept"), c.ftAutAccept);

        c.capInfoExpiry = U.parseLong(root.deepAny("capInfoExpiry"), c.capInfoExpiry);
        c.msgCapValidity = U.parseLong(root.deepAny("msgCapValidity"), c.msgCapValidity);
        c.nonRcsCapInfoExpiry = U.parseLong(root.deepAny("nonRCScapInfoExpiry", "nonRcsCapInfoExpiry"), c.nonRcsCapInfoExpiry);
        c.capDiscoveryViaOptions = U.parseInt(root.deepAny("defaultDisc"), 0) != 1;

        // fall back: realm/domain from identities
        if (U.empty(c.homeDomain)) c.homeDomain = c.domain();
        if (U.empty(c.realm)) c.realm = c.homeDomain;
        return c;
    }

    private static void addImpu(RcsConfig c, String s) {
        if (s == null) return;
        s = s.trim();
        if (s.startsWith("<") && s.endsWith(">")) s = s.substring(1, s.length() - 1);
        if (!s.isEmpty() && !c.publicUserIdentities.contains(s)) c.publicUserIdentities.add(s);
    }

    private static void setPcscf(RcsConfig c, String addr) {
        if (U.empty(addr)) return;
        addr = addr.trim();
        int sc = addr.indexOf(';');
        if (sc >= 0) addr = addr.substring(0, sc);
        if (addr.startsWith("sip:") || addr.startsWith("sips:")) addr = addr.substring(addr.indexOf(':') + 1);
        // [v6]:port | host:port | host
        if (addr.startsWith("[")) {
            int rb = addr.indexOf(']');
            c.pcscfAddress = addr.substring(1, rb);
            if (rb + 1 < addr.length() && addr.charAt(rb + 1) == ':') c.pcscfPort = U.parseInt(addr.substring(rb + 2), 0);
        } else {
            int colon = addr.lastIndexOf(':');
            if (colon > 0 && addr.indexOf(':') == colon) {
                c.pcscfAddress = addr.substring(0, colon);
                c.pcscfPort = U.parseInt(addr.substring(colon + 1), 0);
            } else c.pcscfAddress = addr;
        }
    }

    private static List<String> collectParms(Node n, String name) {
        List<String> out = new ArrayList<>(n.parms(name));
        for (Node c : n.children) out.addAll(collectParms(c, name));
        return out;
    }

    private static void collectRaw(Node n, Map<String, String> raw) {
        for (String[] p : n.parms) {
            String k = p[0].toLowerCase(Locale.ROOT);
            if (!raw.containsKey(k)) raw.put(k, p[1]);
        }
        for (Node c : n.children) collectRaw(c, raw);
    }
}
