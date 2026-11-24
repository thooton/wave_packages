package com.dictation.xp3;

import java.util.List;

/**
 * Splits live streaming ASR output into strictly append-only {@code settled} text (safe for
 * {@code InputConnection.commitText}) and mutable {@code tentative} text (for
 * {@code InputConnection.setComposingText}).
 *
 * Invariant: {@code settled} is strictly prefix-monotonic across all updates, never rewrites
 * already-committed text, never duplicates words across the PCEC/acoustic frontier, and on
 * {@link #finish(AsrEngine)} ends equal to {@code engine.decodePcec(true)}.
 */
public final class StreamDisplay {

    public static final class Update {
        /** New settled suffix to commit via {@code commitText} (empty if nothing newly settled). */
        public final String commitDelta;
        /** Full tentative tail to display via {@code setComposingText} (empty on finish). */
        public final String tentative;
        /** Cumulative settled text committed so far. */
        public final String settled;

        public Update(String commitDelta, String tentative, String settled) {
            this.commitDelta = commitDelta;
            this.tentative = tentative;
            this.settled = settled;
        }
    }

    private String settled = "";

    public void reset() {
        settled = "";
    }

    public String settled() {
        return settled;
    }

    /** Computes the next incremental update during live streaming (before {@code engine.finish()}). */
    public Update update(AsrEngine engine) {
        PcecDecoder pcec = engine.pcec();
        if (pcec == null) {
            return updateAcousticOnly(engine);
        }

        List<String> pcecWords = PcecDecoder.renderWords(pcec.config(), pcec.slots());
        // Hold back the final rendered PCEC word until another word follows or finish() runs,
        // so trailing punctuation or BPE continuations can never mutate already-settled text.
        int settledCount = Math.max(0, pcecWords.size() - 1);
        String newSettled = settledCount == 0 ? "" : PcecDecoder.joinSpaces(pcecWords.subList(0, settledCount));

        String commitDelta = advanceSettled(newSettled);

        String heldPcecWord = pcecWords.size() > settledCount ? pcecWords.get(pcecWords.size() - 1) : null;
        int frontier = Math.max(0, pcec.consumed() - pcec.lookahead);
        String rawSuffix = buildAcousticSuffix(engine, frontier);
        String suffixClean = AsrEngine.collapseWhitespace(rawSuffix);

        String tentativeCore;
        if (heldPcecWord == null) {
            tentativeCore = suffixClean;
        } else if (suffixClean.length() == 0) {
            tentativeCore = heldPcecWord;
        } else if (!startsWithWhitespace(rawSuffix)) {
            // The PCEC frontier split a word mid-BPE-piece: attach the continuation without a space.
            tentativeCore = heldPcecWord + suffixClean;
        } else {
            tentativeCore = heldPcecWord + " " + suffixClean;
        }

        String tentative = formatTentative(tentativeCore);
        return new Update(commitDelta, tentative, settled);
    }

    /**
     * Finalizes the utterance: assumes {@code engine.finish()} has been called, flushes PCEC tail,
     * emits the remaining settled delta, and clears tentative text.
     */
    public Update finish(AsrEngine engine) {
        String finalText = engine.pcec() != null ? engine.decodePcec(true) : engine.acousticText();
        String commitDelta;
        if (finalText.startsWith(settled)) {
            commitDelta = finalText.substring(settled.length());
            settled = finalText;
        } else {
            // Defensive fallback (should not happen for valid PCEC streams): keep settled monotonic.
            int common = commonPrefixLength(settled, finalText);
            commitDelta = finalText.substring(common);
            settled = settled + commitDelta;
        }
        return new Update(commitDelta, "", settled);
    }

    private Update updateAcousticOnly(AsrEngine engine) {
        String text = engine.acousticText();
        if (text.length() == 0) {
            return new Update("", "", settled);
        }
        int lastSpace = text.lastIndexOf(' ');
        String newSettled = lastSpace > 0 ? text.substring(0, lastSpace) : "";
        String held = lastSpace > 0 ? text.substring(lastSpace + 1) : text;
        String commitDelta = advanceSettled(newSettled);
        return new Update(commitDelta, formatTentative(held), settled);
    }

    private String advanceSettled(String candidate) {
        if (candidate.length() > settled.length() && candidate.startsWith(settled)) {
            String delta = candidate.substring(settled.length());
            settled = candidate;
            return delta;
        }
        return "";
    }

    private String formatTentative(String core) {
        if (core.length() == 0) return "";
        return settled.length() > 0 ? (" " + core) : core;
    }

    private static String buildAcousticSuffix(AsrEngine engine, int fromToken) {
        List<Integer> tokens = engine.acousticTokens();
        if (fromToken >= tokens.size()) return "";
        String[] vocab = engine.metadata().vocab;
        StringBuilder sb = new StringBuilder();
        for (int i = Math.max(0, fromToken); i < tokens.size(); i++) {
            sb.append(vocab[tokens.get(i).intValue()]);
        }
        return sb.toString();
    }

    private static boolean startsWithWhitespace(String s) {
        return s.length() > 0 && Character.isWhitespace(s.charAt(0));
    }

    private static int commonPrefixLength(String a, String b) {
        int lim = Math.min(a.length(), b.length());
        int i = 0;
        while (i < lim && a.charAt(i) == b.charAt(i)) i++;
        return i;
    }
}
