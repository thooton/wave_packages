package com.teslacharge.xp3.data;

import com.xp3.common.Config;

/**
 * What Charge was set up with (common/ui's Setup): the Tesla refresh token
 * it starts from, and the regional settings every request carries. These
 * used to be constants baked into the build; a setup file sets them now, and
 * the descriptor (assets/wave-setup.json) gives each one's default.
 */
public final class Settings {
    /** The refresh token imported; TokenStore keeps the ones Tesla rotates it to. */
    public final String refreshToken;
    public final String mapsKey;
    public final String geocodeEmail;
    public final String country;
    public final String language;
    public final String currency;
    public final String locale;
    public final String vehicle;
    public final String appVersion;
    public final String userAgent;

    public Settings(Config config) {
        refreshToken = value(config, "refreshToken", "");
        mapsKey = value(config, "mapsKey", "");
        geocodeEmail = value(config, "geocodeEmail", "");
        country = value(config, "country", "US");
        language = value(config, "language", "en");
        currency = value(config, "currency", "USD");
        locale = value(config, "locale", "en_US");
        vehicle = value(config, "vehicle", "NTSLA");
        appVersion = value(config, "appVersion", "4.60.0");
        userAgent = value(config, "userAgent", "TeslaApp/4.60.0/07b1bbdf9/ios/26.0");
    }

    private static String value(Config config, String name, String fallback) {
        String found = config == null ? null : config.get(name);
        return found == null ? fallback : found;
    }
}
