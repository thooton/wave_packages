package com.teslacharge.xp3.data;
public final class Settings {
    public final String refreshToken, language = "en", appVersion = "1", userAgent = "ua";
    public Settings(String refreshToken) { this.refreshToken = refreshToken; }
}
