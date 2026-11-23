package com.android.mms.wave.imsg;

/**
 * Provides a stable network key (carrier/wifi + IP type) so learned NAT intervals
 * are tracked per network and probes re-run when the network changes.
 */
public interface NetworkInfoProvider {
    String getNetworkKey();

    boolean isNetworkAvailable();

    final class StaticProvider implements NetworkInfoProvider {
        private final String key;

        public StaticProvider(String key) {
            this.key = key;
        }

        @Override
        public String getNetworkKey() {
            return key;
        }

        @Override
        public boolean isNetworkAvailable() {
            return true;
        }
    }
}
