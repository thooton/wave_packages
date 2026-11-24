package com.dictation.xp3;

import com.xp3.common.Json;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/** Parsed representation of FUTO asr4all's {@code metadata.json}. */
public final class AsrMetadata {

    public static final class PcecRung {
        public final String name;
        public final String flush;
        public final int cacheTensors;

        public PcecRung(String name, String flush, int cacheTensors) {
            this.name = name;
            this.flush = flush;
            this.cacheTensors = cacheTensors;
        }
    }

    public static final class TierEntry {
        public final String name;
        public final PcecRung pcec;

        public TierEntry(String name, PcecRung pcec) {
            this.name = name;
            this.pcec = pcec;
        }
    }

    public static final class PcecConfig {
        public final String[] vocab;
        public final int blankId;
        public final int cap;
        public final int allcaps;
        public final int period;
        public final int comma;
        public final int question;
        public final int padIn;
        public final int pauseBlackout;
        public final boolean realPause;
        public final boolean keepInput;

        public PcecConfig(
            String[] vocab,
            int blankId,
            int cap,
            int allcaps,
            int period,
            int comma,
            int question,
            int padIn,
            int pauseBlackout,
            boolean realPause,
            boolean keepInput
        ) {
            this.vocab = vocab.clone();
            this.blankId = blankId;
            this.cap = cap;
            this.allcaps = allcaps;
            this.period = period;
            this.comma = comma;
            this.question = question;
            this.padIn = padIn;
            this.pauseBlackout = pauseBlackout;
            this.realPause = realPause;
            this.keepInput = keepInput;
        }
    }

    public static final class VadEntry {
        public final String kind;
        public final String method;
        public final double contextS;
        public final double hopS;

        public VadEntry(String kind, String method, double contextS, double hopS) {
            this.kind = kind;
            this.method = method;
            this.contextS = contextS;
            this.hopS = hopS;
        }
    }

    public final int sampleRate;
    public final int samplesPerFrame;
    public final String[] vocab;
    public final int blankId;
    public final String defaultTier;
    public final String encoderFile;
    public final List<TierEntry> tiers;
    public final PcecConfig pcec;
    public final List<VadEntry> vad;

    public AsrMetadata(
        int sampleRate,
        int samplesPerFrame,
        String[] vocab,
        int blankId,
        String defaultTier,
        String encoderFile,
        List<TierEntry> tiers,
        PcecConfig pcec,
        List<VadEntry> vad
    ) {
        this.sampleRate = sampleRate;
        this.samplesPerFrame = samplesPerFrame;
        this.vocab = vocab.clone();
        this.blankId = blankId;
        this.defaultTier = defaultTier;
        this.encoderFile = encoderFile;
        this.tiers = Collections.unmodifiableList(new ArrayList<TierEntry>(tiers));
        this.pcec = pcec;
        this.vad = Collections.unmodifiableList(new ArrayList<VadEntry>(vad));
    }

    public static AsrMetadata parse(String json) {
        Map<String, Object> root = Json.object(Json.parse(json));
        int sampleRate = reqInt(root, "sample_rate");
        int samplesPerFrame = reqInt(root, "samples_per_frame");
        String[] vocab = parseStringArray(Json.array(root.get("vocab")));
        int blankId = reqInt(root, "blank_id");
        String defaultTier = Json.string(root, "default_tier");
        Map<String, Object> files = Json.child(root, "files");
        String encoderFile = files.containsKey("encoder") ? Json.string(files, "encoder") : "asr_encoder.pte";

        List<Object> rawTiers = Json.children(root, "tiers");
        List<TierEntry> tiers = new ArrayList<TierEntry>(rawTiers.size());
        for (int i = 0; i < rawTiers.size(); i++) {
            Map<String, Object> t = Json.object(rawTiers.get(i));
            String name = Json.string(t, "name");
            PcecRung rung = null;
            if (t.get("pcec") instanceof Map) {
                Map<String, Object> rp = Json.object(t.get("pcec"));
                int cacheTensors = rp.get("cache_tensors") instanceof Number
                    ? ((Number) rp.get("cache_tensors")).intValue()
                    : 2;
                rung = new PcecRung(Json.string(rp, "name"), Json.string(rp, "flush"), cacheTensors);
            }
            tiers.add(new TierEntry(name, rung));
        }

        PcecConfig pcec = null;
        if (root.get("pcec") instanceof Map) {
            Map<String, Object> p = Json.object(root.get("pcec"));
            Map<String, Object> ctrl = Json.object(p.get("ctrl"));
            pcec = new PcecConfig(
                parseStringArray(Json.array(p.get("vocab"))),
                reqInt(p, "blank_id"),
                reqInt(ctrl, "cap"),
                reqInt(ctrl, "allcaps"),
                reqInt(ctrl, "period"),
                reqInt(ctrl, "comma"),
                reqInt(ctrl, "question"),
                reqInt(p, "pad_in"),
                reqInt(p, "pause_blackout"),
                Json.flag(p, "real_pause"),
                Json.flag(p, "keep_input")
            );
        }

        List<Object> rawVad = Json.children(root, "vad");
        List<VadEntry> vad = new ArrayList<VadEntry>(rawVad.size());
        for (int i = 0; i < rawVad.size(); i++) {
            Map<String, Object> v = Json.object(rawVad.get(i));
            vad.add(new VadEntry(
                Json.string(v, "kind"),
                Json.string(v, "method"),
                reqDouble(v, "context_s"),
                reqDouble(v, "hop_s")
            ));
        }

        return new AsrMetadata(sampleRate, samplesPerFrame, vocab, blankId, defaultTier, encoderFile, tiers, pcec, vad);
    }

    private static String[] parseStringArray(List<Object> raw) {
        String[] out = new String[raw.size()];
        for (int i = 0; i < raw.size(); i++) {
            out[i] = (String) raw.get(i);
        }
        return out;
    }

    private static int reqInt(Map<String, Object> map, String key) {
        Double n = Json.number(map, key);
        if (n == null) throw new IllegalArgumentException("Missing integer " + key);
        return n.intValue();
    }

    private static double reqDouble(Map<String, Object> map, String key) {
        Double n = Json.number(map, key);
        if (n == null) throw new IllegalArgumentException("Missing number " + key);
        return n.doubleValue();
    }
}
