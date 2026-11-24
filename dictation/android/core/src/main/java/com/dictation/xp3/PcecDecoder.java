package com.dictation.xp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/**
 * Faithful port of FUTO asr4all's {@code _Pcec} and {@code render_slots}:
 * token-space second pass for punctuation, capitalization, and error correction.
 */
public final class PcecDecoder {

    public static final String ARENA_GROUP = "pcec";
    public static final int[] PAUSE_THRESHOLDS = {1, 2, 4, 8, 16, 32, 64, 128};

    private static final int CASE_NONE = 0;
    private static final int CASE_CAP = 1;
    private static final int CASE_UPPER = 2;

    private final AsrMetadata.PcecConfig config;
    private final AsrMetadata.PcecRung rung;
    private final AsrModel model;
    private final int hiddenDim;

    public final int commit;
    public final int lookahead;
    public final boolean wantsAcoustic;
    public final boolean wantsKeep;

    private final List<MethodMeta.TensorSpec> cacheSpecs;
    private Tensor[] cache;

    private final List<Integer> ids = new ArrayList<Integer>();
    private final List<Integer> pause = new ArrayList<Integer>();
    private final List<float[]> acoustic = new ArrayList<float[]>();
    private final List<Float> keep = new ArrayList<Float>();
    private final List<Integer> slots = new ArrayList<Integer>();

    private int consumed;
    private OpenToken open;
    private int blanks;
    private int prev;

    private static final class OpenToken {
        final int tokenId;
        final double[] acc;
        int frames;
        final int leadingBlanks;
        float keepMax;

        OpenToken(int tokenId, float[] hidden, int offset, int dim, int leadingBlanks, float keepVal) {
            this.tokenId = tokenId;
            this.acc = new double[dim];
            for (int d = 0; d < dim; d++) {
                this.acc[d] = hidden[offset + d];
            }
            this.frames = 1;
            this.leadingBlanks = leadingBlanks;
            this.keepMax = keepVal;
        }

        void add(float[] hidden, int offset, float keepVal) {
            for (int d = 0; d < acc.length; d++) {
                acc[d] += hidden[offset + d];
            }
            frames++;
            if (keepVal > keepMax) {
                keepMax = keepVal;
            }
        }

        float[] mean() {
            float[] out = new float[acc.length];
            for (int d = 0; d < acc.length; d++) {
                out[d] = (float) (acc[d] / frames);
            }
            return out;
        }
    }

    public PcecDecoder(AsrMetadata.PcecConfig config, AsrMetadata.PcecRung rung, AsrModel model, int hiddenDim) {
        this.config = config;
        this.rung = rung;
        this.model = model;
        this.hiddenDim = hiddenDim;

        MethodMeta sm = model.methodMeta(rung.name);
        MethodMeta fm = model.methodMeta(rung.flush);
        if (sm == null) throw new IllegalStateException("Missing PCEC method metadata: " + rung.name);
        if (fm == null) throw new IllegalStateException("Missing PCEC flush metadata: " + rung.flush);

        this.commit = sm.input(0).dim(1);
        int flushSlots = fm.output(0).dim(1);
        this.lookahead = (flushSlots - 1) / 2 - this.commit;
        int nFeat = sm.numInputs() - rung.cacheTensors;
        this.wantsAcoustic = nFeat >= 3;
        this.wantsKeep = nFeat == 4;

        List<MethodMeta.TensorSpec> specs = new ArrayList<MethodMeta.TensorSpec>(rung.cacheTensors);
        for (int i = sm.numInputs() - rung.cacheTensors; i < sm.numInputs(); i++) {
            specs.add(sm.input(i));
        }
        this.cacheSpecs = Collections.unmodifiableList(specs);
        reset();
    }

    public static int pauseBucket(int blankCount) {
        int bucket = 0;
        for (int i = 0; i < PAUSE_THRESHOLDS.length; i++) {
            if (blankCount >= PAUSE_THRESHOLDS[i]) {
                bucket++;
            }
        }
        return bucket;
    }

    public AsrMetadata.PcecConfig config() {
        return config;
    }

    public AsrMetadata.PcecRung rung() {
        return rung;
    }

    /** (commit, lookahead, settle) in tokens. */
    public int[] lag() {
        return new int[] {commit, lookahead, lookahead + commit - 1};
    }

    public int consumed() {
        return consumed;
    }

    public int pendingIdsCount() {
        return ids.size();
    }

    public boolean hasOpenToken() {
        return open != null;
    }

    public List<Integer> slots() {
        return Collections.unmodifiableList(slots);
    }

    public void reset() {
        cache = new Tensor[cacheSpecs.size()];
        for (int i = 0; i < cacheSpecs.size(); i++) {
            MethodMeta.TensorSpec spec = cacheSpecs.get(i);
            cache[i] = Tensor.zeros(spec.shape(), spec.dtype);
        }
        ids.clear();
        pause.clear();
        acoustic.clear();
        keep.clear();
        slots.clear();
        consumed = 0;
        open = null;
        blanks = 0;
        prev = -1;
    }

    /**
     * Pools one committed chunk of frames into token-level representations.
     *
     * @param frameIds committed frame argmax IDs of length T
     * @param hiddenFlat flat FP32 array of length T * hiddenDim
     * @param blank acoustic blank token ID
     * @param keepPerFrame optional per-frame keep values (length T), or {@code null} for 0.0
     */
    public void pool(int[] frameIds, float[] hiddenFlat, int blank, float[] keepPerFrame) {
        for (int t = 0; t < frameIds.length; t++) {
            int fid = frameIds[t];
            float kf = keepPerFrame != null ? keepPerFrame[t] : 0.0f;
            int offset = t * hiddenDim;
            if (fid != prev && fid != blank) {
                if (open != null) {
                    emit();
                }
                open = new OpenToken(fid, hiddenFlat, offset, hiddenDim, blanks, kf);
                blanks = 0;
            } else if (open != null) {
                open.add(hiddenFlat, offset, kf);
            }
            prev = fid;
            if (fid == blank) {
                blanks++;
            }
        }
    }

    /** Closes the token still held open, if any. */
    public void flush() {
        if (open != null) {
            emit();
        }
    }

    private void emit() {
        OpenToken tok = open;
        open = null;
        ids.add(Integer.valueOf(tok.tokenId));
        acoustic.add(tok.mean());
        pause.add(Integer.valueOf(pauseBucket(tok.leadingBlanks)));
        keep.add(Float.valueOf(tok.keepMax));
    }

    /** Runs every complete commit block ready in the buffer. */
    public void drain() {
        int k = commit;
        while (ids.size() >= k) {
            model.loadMethod(rung.name, ARENA_GROUP);
            Tensor[] feats = buildFeats(k, k);
            Tensor[] inputs = concat(feats, null, cache);
            Tensor[] outs = model.execute(rung.name, inputs);

            int skip = Math.min(2 * k, Math.max(0, 2 * lookahead - 2 * consumed));
            long[] outSlots = outs[0].longData();
            for (int i = skip; i < 2 * k; i++) {
                slots.add(Integer.valueOf((int) outSlots[i]));
            }

            int nCache = rung.cacheTensors;
            for (int i = 0; i < nCache; i++) {
                cache[i] = outs[outs.length - nCache + i].copy();
            }

            ids.subList(0, k).clear();
            pause.subList(0, k).clear();
            acoustic.subList(0, k).clear();
            keep.subList(0, k).clear();
            consumed += k;
        }
    }

    /** Flushes the partial commit plus lookahead delay line still inside PCEC. */
    public List<Integer> tail() {
        int n = ids.size();
        model.loadMethod(rung.flush, ARENA_GROUP);
        Tensor[] feats = buildFeats(commit, n);
        Tensor[] inputs = concat(feats, Tensor.scalarLong(n), cache);
        Tensor[] outs = model.execute(rung.flush, inputs);

        int valid = 2 * lookahead + 2 * n + 1;
        int skip = Math.max(0, 2 * lookahead - 2 * consumed);
        long[] outSlots = outs[0].longData();
        int end = Math.min(valid, outSlots.length);
        List<Integer> out = new ArrayList<Integer>(Math.max(0, end - skip));
        for (int i = skip; i < end; i++) {
            out.add(Integer.valueOf((int) outSlots[i]));
        }
        return out;
    }

    private Tensor[] buildFeats(int k, int n) {
        long[] idBuf = new long[k];
        Arrays.fill(idBuf, config.padIn);
        long[] pauseBuf = new long[k];
        Arrays.fill(pauseBuf, config.pauseBlackout);
        for (int i = 0; i < n; i++) {
            idBuf[i] = ids.get(i).intValue();
            if (config.realPause) {
                pauseBuf[i] = pause.get(i).intValue();
            }
        }

        int count = 2 + (wantsAcoustic ? 1 : 0) + (wantsKeep ? 1 : 0);
        Tensor[] feats = new Tensor[count];
        int idx = 0;
        feats[idx++] = Tensor.ofLongs(new int[] {1, k}, idBuf);
        feats[idx++] = Tensor.ofLongs(new int[] {1, k}, pauseBuf);

        if (wantsAcoustic) {
            float[] acBuf = new float[k * hiddenDim];
            for (int i = 0; i < n; i++) {
                System.arraycopy(acoustic.get(i), 0, acBuf, i * hiddenDim, hiddenDim);
            }
            feats[idx++] = Tensor.ofFloats(new int[] {1, k, hiddenDim}, acBuf);
        }
        if (wantsKeep) {
            float[] kpBuf = new float[k];
            for (int i = 0; i < n; i++) {
                kpBuf[i] = keep.get(i).floatValue();
            }
            feats[idx++] = Tensor.ofFloats(new int[] {1, k}, kpBuf);
        }
        return feats;
    }

    private static Tensor[] concat(Tensor[] feats, Tensor extra, Tensor[] cache) {
        int len = feats.length + (extra != null ? 1 : 0) + cache.length;
        Tensor[] all = new Tensor[len];
        int pos = 0;
        System.arraycopy(feats, 0, all, pos, feats.length);
        pos += feats.length;
        if (extra != null) {
            all[pos++] = extra;
        }
        System.arraycopy(cache, 0, all, pos, cache.length);
        return all;
    }

    public String render(List<Integer> slotList) {
        return renderSlots(config, slotList);
    }

    public static String renderSlots(AsrMetadata.PcecConfig config, List<Integer> slotList) {
        List<String> words = renderWords(config, slotList);
        return joinSpaces(words);
    }

    private static final class WordBuilder {
        final StringBuilder pieces = new StringBuilder();
        final int cas;
        String punct = "";

        WordBuilder(int cas) {
            this.cas = cas;
        }
    }

    /**
     * Renders lattice slots into individual formatted words (cased and punctuated),
     * matching {@code render_slots} in {@code asr4all_executorch.py}.
     */
    public static List<String> renderWords(AsrMetadata.PcecConfig config, List<Integer> slotList) {
        String[] vocab = config.vocab;
        int blank = config.blankId;
        List<WordBuilder> words = new ArrayList<WordBuilder>();
        int pending = CASE_NONE;
        int prev = -1;

        for (int idx = 0; idx < slotList.size(); idx++) {
            int i = slotList.get(idx).intValue();
            if (i == prev || i == blank) {
                prev = i;
                continue;
            }
            prev = i;
            if (i == config.cap) {
                pending = CASE_CAP;
            } else if (i == config.allcaps) {
                pending = CASE_UPPER;
            } else if (i == config.period) {
                if (!words.isEmpty()) words.get(words.size() - 1).punct = ".";
            } else if (i == config.comma) {
                if (!words.isEmpty()) words.get(words.size() - 1).punct = ",";
            } else if (i == config.question) {
                if (!words.isEmpty()) words.get(words.size() - 1).punct = "?";
            } else if (i >= 0 && i < vocab.length && vocab[i] != null && vocab[i].length() > 0) {
                if (vocab[i].startsWith(" ") || words.isEmpty()) {
                    WordBuilder wb = new WordBuilder(pending);
                    wb.pieces.append(vocab[i]);
                    words.add(wb);
                    pending = CASE_NONE;
                } else {
                    words.get(words.size() - 1).pieces.append(vocab[i]);
                }
            }
        }

        List<String> out = new ArrayList<String>(words.size());
        boolean sentenceStart = true;
        for (int idx = 0; idx < words.size(); idx++) {
            WordBuilder wb = words.get(idx);
            String w = wb.pieces.toString().trim();
            if (w.length() == 0) {
                continue;
            }
            if (wb.cas == CASE_UPPER) {
                w = w.toUpperCase(Locale.ROOT);
            } else if (wb.cas == CASE_CAP || sentenceStart) {
                w = w.substring(0, 1).toUpperCase(Locale.ROOT) + w.substring(1);
            }
            sentenceStart = ".".equals(wb.punct) || "?".equals(wb.punct);
            out.add(w + wb.punct);
        }
        return out;
    }

    static String joinSpaces(List<String> words) {
        if (words.isEmpty()) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < words.size(); i++) {
            if (i > 0) sb.append(' ');
            sb.append(words.get(i));
        }
        return sb.toString();
    }
}
