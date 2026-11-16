package org.argon.rcs.prov;

import org.argon.rcs.RcsPlatform;
import org.argon.rcs.util.Log;

/**
 * Pluggable provisioning method (RCC.14 ACS, manual XML, future TS.43 / Jibe token ...).
 * {@link #provision} runs on an I/O thread and may block (HTTP, waiting for an OTP SMS).
 */
public interface Provisioner {

    final class Request {
        public RcsPlatform platform;
        public Log log;
        /** Version of the config we hold (0 if none), and our token (may be null). */
        public int currentVersion;
        public String token;
        /** Set by the engine to abort (stop()). */
        public volatile boolean cancelled;
    }

    final class Result {
        public enum Kind {
            /** xml holds a wap-provisioningdoc (may be a short VERS/TOKEN-only doc if unchanged). */
            CONFIG,
            /** RCS disabled by the network (vers 0/-1/-2/-3, 403...). See resetConfig / retryAfterMs. */
            DISABLED,
            /** Try again later (503 Retry-After, network down). retryAfterMs >= 0. */
            RETRY,
            /** Failed (bad response, OTP timeout/rejected...). The engine retries with backoff. */
            ERROR
        }
        public Kind kind;
        public String xml;
        public String detail;
        public int code;
        public long retryAfterMs = -1;
        /** For DISABLED: drop the stored config (vers 0 / -1). */
        public boolean resetConfig;
        /** For DISABLED: don't retry automatically (vers -1 / -2 / -3, forbidden). */
        public boolean permanent;

        public static Result config(String xml) { Result r = new Result(); r.kind = Kind.CONFIG; r.xml = xml; r.detail = "ok"; return r; }
        public static Result error(int code, String detail) { Result r = new Result(); r.kind = Kind.ERROR; r.code = code; r.detail = detail; return r; }
        public static Result retry(long ms, String detail) { Result r = new Result(); r.kind = Kind.RETRY; r.retryAfterMs = ms; r.detail = detail; return r; }
        public static Result disabled(String detail, boolean reset, boolean permanent) {
            Result r = new Result(); r.kind = Kind.DISABLED; r.detail = detail; r.resetConfig = reset; r.permanent = permanent; return r;
        }

        @Override public String toString() { return kind + "(" + code + " " + detail + (retryAfterMs >= 0 ? " retry " + retryAfterMs + "ms" : "") + ")"; }
    }

    String name();

    Result provision(Request req);
}
