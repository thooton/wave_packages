package com.dictation.xp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Streaming and offline ASR driver matching {@code Engine} in {@code asr4all_executorch.py}.
 *
 * Derives tier geometry directly from {@link AsrModel#methodMeta(String)}, keeps only the active
 * tier's methods loaded, compacts consumed PCM to bound memory over long sessions, and shares
 * the {@code "pcec"} planned arena group between PCEC step and flush methods.
 */
public final class AsrEngine {

    private static final int T_PCM = 0;
    private static final int T_LOGITS = 0;
    private static final int T_FILTER = 1;
    private static final int T_ATTN = 2;
    private static final int T_HIDDEN = 3;

    private static final int PCM_COMPACT_THRESHOLD = 65536;

    public static final class TierInfo {
        public final String name;
        public final AsrMetadata.PcecRung pcec;
        public final int window;
        public final int commit;
        public final int lookahead;
        public final int nOut;
        public final int hiddenDim;

        TierInfo(String name, AsrMetadata.PcecRung pcec, int window, int commit, int lookahead, int nOut, int hiddenDim) {
            this.name = name;
            this.pcec = pcec;
            this.window = window;
            this.commit = commit;
            this.lookahead = lookahead;
            this.nOut = nOut;
            this.hiddenDim = hiddenDim;
        }
    }

    public static final class VadInfo {
        public final String name;
        public final int samples;
        public final double hopS;
        public final double contextS;

        VadInfo(String name, int samples, double hopS, double contextS) {
            this.name = name;
            this.samples = samples;
            this.hopS = hopS;
            this.contextS = contextS;
        }
    }

    private final AsrMetadata meta;
    private final AsrModel model;
    private final boolean useFeedback;
    private final int spf;
    private final List<TierInfo> tiers;
    private final VadInfo vad;
    private final Set<String> loadedMethods = new HashSet<String>();

    private int tierIdx;
    private PcecDecoder pcec;

    // Kept in Java only for runtimes without feedback; otherwise these stay null.
    private Tensor filterCache;
    private Tensor attnCache;

    // Sliding PCM buffer: pcm[0..pcmLen) holds samples starting at sample index pcmBaseSample.
    private float[] pcm = new float[0];
    private int pcmLen = 0;
    private long pcmBaseSample = 0;
    private long nextFrame = 0;

    // Collapsed non-blank acoustic token IDs (1:1 with tokens fed into PCEC).
    private final List<Integer> acousticTokens = new ArrayList<Integer>();
    private int lastAcousticFrameId = -1;

    public AsrEngine(AsrMetadata meta, AsrModel model) {
        this(meta, model, "vad_dft");
    }

    public AsrEngine(AsrMetadata meta, AsrModel model, String preferredVadMethod) {
        this.meta = meta;
        this.model = model;
        this.useFeedback = model.supportsFeedback();
        this.spf = meta.samplesPerFrame;
        this.vad = discoverVad(preferredVadMethod);

        List<TierInfo> discovered = new ArrayList<TierInfo>();
        for (int i = 0; i < meta.tiers.size(); i++) {
            AsrMetadata.TierEntry entry = meta.tiers.get(i);
            MethodMeta mm = model.methodMeta(entry.name);
            if (mm == null) {
                continue;
            }
            int window = mm.input(T_PCM).dim(-1);
            int commit = mm.output(T_LOGITS).dim(1);
            int nOut = mm.numOutputs();
            int dim = nOut > T_HIDDEN ? mm.output(T_HIDDEN).dim(-1) : 0;
            discovered.add(new TierInfo(
                entry.name,
                entry.pcec,
                window,
                commit,
                window / spf - commit,
                nOut,
                dim
            ));
        }
        if (discovered.isEmpty()) {
            throw new IllegalStateException("No streaming tier methods available in model");
        }
        Collections.sort(discovered, new Comparator<TierInfo>() {
            @Override
            public int compare(TierInfo a, TierInfo b) {
                return Integer.compare(a.lookahead + a.commit, b.lookahead + b.commit);
            }
        });
        this.tiers = Collections.unmodifiableList(discovered);

        int defaultIdx = 0;
        for (int i = 0; i < tiers.size(); i++) {
            if (tiers.get(i).name.equals(meta.defaultTier)) {
                defaultIdx = i;
                break;
            }
        }
        setTier(defaultIdx);
    }

    private VadInfo discoverVad(String preferredMethod) {
        List<AsrMetadata.VadEntry> wake = new ArrayList<AsrMetadata.VadEntry>();
        for (int i = 0; i < meta.vad.size(); i++) {
            AsrMetadata.VadEntry v = meta.vad.get(i);
            if ("wake".equals(v.kind) && model.methodMeta(v.method) != null) {
                wake.add(v);
            }
        }
        if (wake.isEmpty()) return null;

        AsrMetadata.VadEntry chosen = wake.get(0);
        if (preferredMethod != null) {
            for (int i = 0; i < wake.size(); i++) {
                if (preferredMethod.equals(wake.get(i).method)) {
                    chosen = wake.get(i);
                    break;
                }
            }
        }
        MethodMeta vm = model.methodMeta(chosen.method);
        int samples = vm.input(0).dim(-1);
        return new VadInfo(chosen.method, samples, chosen.hopS, chosen.contextS);
    }

    public AsrMetadata metadata() {
        return meta;
    }

    public List<TierInfo> tiers() {
        return tiers;
    }

    public TierInfo currentTier() {
        return tiers.get(tierIdx);
    }

    public VadInfo vadInfo() {
        return vad;
    }

    public PcecDecoder pcec() {
        return pcec;
    }

    public int[] pcecLag() {
        return pcec != null ? pcec.lag() : null;
    }

    public List<Integer> acousticTokens() {
        return Collections.unmodifiableList(acousticTokens);
    }

    public void setTier(String nameOrIndex) {
        for (int i = 0; i < tiers.size(); i++) {
            if (tiers.get(i).name.equals(nameOrIndex)) {
                setTier(i);
                return;
            }
        }
        try {
            int parsed = Integer.parseInt(nameOrIndex);
            setTier(parsed);
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unknown tier: " + nameOrIndex);
        }
    }

    public void setTier(int index) {
        if (index < 0 || index >= tiers.size()) {
            throw new IndexOutOfBoundsException("Tier index " + index + " out of 0.." + (tiers.size() - 1));
        }
        this.tierIdx = index;
        TierInfo t = tiers.get(index);
        keepOnlyMethodsOf(t);

        if (meta.pcec != null && t.pcec != null
                && model.methodMeta(t.pcec.name) != null
                && model.methodMeta(t.pcec.flush) != null) {
            this.pcec = new PcecDecoder(meta.pcec, t.pcec, model, t.hiddenDim);
        } else {
            this.pcec = null;
        }
        reset();
    }

    /** Pre-loads the active tier's encoder, PCEC (shared arena), and optional VAD methods. */
    public void preloadActiveMethods() {
        TierInfo t = tiers.get(tierIdx);
        ensureLoaded(t.name, null);
        if (pcec != null) {
            ensureLoaded(t.pcec.name, PcecDecoder.ARENA_GROUP);
            ensureLoaded(t.pcec.flush, PcecDecoder.ARENA_GROUP);
        }
        if (vad != null) {
            ensureLoaded(vad.name, null);
        }
    }

    /** Unloads all currently loaded methods from the underlying model to free RAM when idle. */
    public void unloadAll() {
        for (String name : new ArrayList<String>(loadedMethods)) {
            model.unloadMethod(name);
        }
        loadedMethods.clear();
    }

    private void keepOnlyMethodsOf(TierInfo tier) {
        Set<String> keep = new HashSet<String>();
        keep.add(tier.name);
        if (tier.pcec != null) {
            keep.add(tier.pcec.name);
            keep.add(tier.pcec.flush);
        }
        if (vad != null) {
            keep.add(vad.name);
        }
        for (String loaded : new ArrayList<String>(loadedMethods)) {
            if (!keep.contains(loaded)) {
                model.unloadMethod(loaded);
                loadedMethods.remove(loaded);
            }
        }
    }

    private void ensureLoaded(String methodName, String arenaGroup) {
        if (!loadedMethods.contains(methodName)) {
            model.loadMethod(methodName, arenaGroup);
            if (useFeedback && currentTier().name.equals(methodName)) {
                model.setFeedback(methodName, new int[] {T_FILTER, T_ATTN}, new int[] {T_FILTER, T_ATTN});
                model.resetFeedback(methodName);
            }
            loadedMethods.add(methodName);
        }
    }

    /** Resets streaming state for a new utterance. */
    public void reset() {
        TierInfo t = tiers.get(tierIdx);
        if (useFeedback) {
            // Unloaded tiers will register and reset their buffers the next time they load.
            if (loadedMethods.contains(t.name)) {
                model.resetFeedback(t.name);
            }
        } else {
            MethodMeta mm = model.methodMeta(t.name);
            filterCache = Tensor.zeros(mm.input(T_FILTER).shape(), mm.input(T_FILTER).dtype);
            attnCache = Tensor.zeros(mm.input(T_ATTN).shape(), mm.input(T_ATTN).dtype);
        }
        pcmLen = 0;
        pcmBaseSample = 0;
        nextFrame = 0;
        acousticTokens.clear();
        lastAcousticFrameId = -1;
        if (pcec != null) {
            pcec.reset();
        }
    }

    /** Feeds audio samples, runs all ready streaming windows, and returns acoustic transcript so far. */
    public String decodeStream(float[] chunk) {
        return decodeStream(chunk, 0, chunk.length);
    }

    public String decodeStream(float[] chunk, int offset, int length) {
        if (length > 0) {
            appendPcm(chunk, offset, length);
        }
        TierInfo t = tiers.get(tierIdx);
        int windowFrames = t.window / spf;
        long totalSamples = pcmBaseSample + pcmLen;
        while ((nextFrame + windowFrames) * spf <= totalSamples) {
            step(t);
        }
        return acousticText();
    }

    /** Flushes remaining tail audio (zero-padded) and closes PCEC. */
    public String finish() {
        TierInfo t = tiers.get(tierIdx);
        long totalSamples = pcmBaseSample + pcmLen;
        while (nextFrame * spf < totalSamples) {
            step(t);
        }
        if (pcec != null) {
            pcec.flush();
            if (pcec.pendingIdsCount() >= pcec.commit) {
                loadedMethods.add(t.pcec.name);
            }
            pcec.drain();
        }
        return acousticText();
    }

    /** Returns punctuated and cased text; pass {@code decodeTail=true} at endpoint. */
    public String decodePcec(boolean decodeTail) {
        if (pcec == null) {
            return acousticText();
        }
        List<Integer> allSlots = new ArrayList<Integer>(pcec.slots());
        if (decodeTail) {
            loadedMethods.add(pcec.rung().flush);
            allSlots.addAll(pcec.tail());
        }
        return pcec.render(allSlots);
    }

    /** Runs the full streaming loop over one clip from start to finish. */
    public String decodeOffline(float[] clip, boolean applyPcec) {
        reset();
        decodeStream(clip);
        finish();
        return (applyPcec && pcec != null) ? decodePcec(true) : acousticText();
    }

    /** Runs wake VAD on a fixed-length window of {@code vadInfo().samples} float32 samples. */
    public float[] detectSpeech(float[] pcmWindow) {
        if (vad == null) return null;
        if (pcmWindow.length != vad.samples) {
            throw new IllegalArgumentException(
                "VAD expects " + vad.samples + " samples, got " + pcmWindow.length);
        }
        ensureLoaded(vad.name, null);
        Tensor[] outs = model.execute(vad.name, new Tensor[] {
            Tensor.ofFloats(new int[] {1, vad.samples}, pcmWindow)
        });
        return outs[0].floatData().clone();
    }

    private void step(TierInfo t) {
        long startSample = nextFrame * spf;
        long totalSamples = pcmBaseSample + pcmLen;
        float[] win = new float[t.window];
        long hi = Math.min(totalSamples, startSample + t.window);
        if (hi > startSample) {
            int copyLen = (int) (hi - startSample);
            int srcPos = (int) (startSample - pcmBaseSample);
            System.arraycopy(pcm, srcPos, win, 0, copyLen);
        }

        ensureLoaded(t.name, null);
        Tensor[] outs = model.execute(t.name, new Tensor[] {
            Tensor.ofFloats(new int[] {1, t.window}, win),
            filterCache,
            attnCache
        });
        if (!useFeedback) {
            // Outputs are fresh arrays owned by us (the runtime deep-copies them out of the
            // arena) and the caches are never mutated, so keep them without another 5.3 MB copy.
            filterCache = outs[T_FILTER];
            attnCache = outs[T_ATTN];
        }

        int valid = (int) Math.min(t.commit, totalSamples / spf - nextFrame);
        if (valid < 0) valid = 0;

        int[] frameIds = new int[valid];
        if (valid > 0) {
            float[] logits = outs[T_LOGITS].floatData();
            int vocabDim = outs[T_LOGITS].dim(2);
            for (int f = 0; f < valid; f++) {
                int base = f * vocabDim;
                int bestIdx = 0;
                float bestVal = logits[base];
                for (int v = 1; v < vocabDim; v++) {
                    float val = logits[base + v];
                    if (val > bestVal) {
                        bestVal = val;
                        bestIdx = v;
                    }
                }
                frameIds[f] = bestIdx;
            }
        }

        float[] hiddenSlice = null;
        if (pcec != null && t.nOut > T_HIDDEN && valid > 0) {
            float[] allHidden = outs[T_HIDDEN].floatData();
            int sliceLen = valid * t.hiddenDim;
            hiddenSlice = new float[sliceLen];
            System.arraycopy(allHidden, 0, hiddenSlice, 0, sliceLen);
        }

        commitFrames(frameIds, hiddenSlice);
        nextFrame += t.commit;
        maybeCompactPcm();
    }

    private void commitFrames(int[] frameIds, float[] hiddenSlice) {
        for (int i = 0; i < frameIds.length; i++) {
            int fid = frameIds[i];
            if (fid != lastAcousticFrameId && fid != meta.blankId && fid >= 0 && fid < meta.vocab.length) {
                acousticTokens.add(Integer.valueOf(fid));
            }
            lastAcousticFrameId = fid;
        }
        if (pcec != null && hiddenSlice != null && frameIds.length > 0) {
            pcec.pool(frameIds, hiddenSlice, meta.blankId, null);
            if (pcec.pendingIdsCount() >= pcec.commit) {
                loadedMethods.add(pcec.rung().name);
            }
            pcec.drain();
        }
    }

    private void appendPcm(float[] chunk, int offset, int length) {
        int needed = pcmLen + length;
        if (pcm.length < needed) {
            int cap = Math.max(needed, pcm.length == 0 ? 32768 : pcm.length * 2);
            pcm = Arrays.copyOf(pcm, cap);
        }
        System.arraycopy(chunk, offset, pcm, pcmLen, length);
        pcmLen += length;
    }

    private void maybeCompactPcm() {
        long neededFrom = nextFrame * spf;
        long drop = neededFrom - pcmBaseSample;
        if (drop >= PCM_COMPACT_THRESHOLD) {
            int dropInt = (int) Math.min(drop, pcmLen);
            int remaining = pcmLen - dropInt;
            if (remaining > 0) {
                System.arraycopy(pcm, dropInt, pcm, 0, remaining);
            }
            pcmLen = remaining;
            pcmBaseSample += dropInt;
        }
    }

    /** CTC-collapsed lowercase acoustic transcript so far. */
    public String acousticText() {
        if (acousticTokens.isEmpty()) return "";
        StringBuilder raw = new StringBuilder();
        for (int i = 0; i < acousticTokens.size(); i++) {
            raw.append(meta.vocab[acousticTokens.get(i).intValue()]);
        }
        return collapseWhitespace(raw.toString());
    }

    static String collapseWhitespace(String s) {
        StringBuilder out = new StringBuilder(s.length());
        boolean inSpace = true;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (Character.isWhitespace(c)) {
                inSpace = true;
            } else {
                if (inSpace && out.length() > 0) {
                    out.append(' ');
                }
                out.append(c);
                inSpace = false;
            }
        }
        return out.toString();
    }
}
