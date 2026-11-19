package com.android.mms.ui;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/** Conservative North American street-number + street-name detector. No WebView or geocoder. */
final class WaveStreetAddress {
    private WaveStreetAddress() {}

    private static class Candidate {
        static final Pattern STREET = Pattern.compile(
                "(?i)(?<![\\p{L}\\p{N}_/.:@-])\\d{1,6}[a-z]?\\h+"
                + "(?:[\\p{L}\\d][\\p{L}\\d'’.-]{0,24}\\h+){1,5}?"
                + "(?:street|st|avenue|ave|road|rd|boulevard|blvd|drive|dr|lane|ln|court|ct|"
                + "place|pl|way|terrace|ter|crescent|cres|circle|cir|parkway|pkwy|highway|hwy|trail|trl)"
                + "\\b\\.?(?:\\h+(?:NE|NW|SE|SW)\\b)?(?![\\p{L}\\p{N}_/])");
    }

    /** Skip the regex entirely for ASCII text without a house-number candidate. */
    static Matcher matches(CharSequence text) {
        for (int i = 0, length = text.length(); i < length; i++) {
            char ch = text.charAt(i);
            // Let the platform regex decide which Unicode digits it supports.
            if (ch >= 0x80 || (ch >= '0' && ch <= '9')) return Candidate.STREET.matcher(text);
        }
        return null;
    }
}
