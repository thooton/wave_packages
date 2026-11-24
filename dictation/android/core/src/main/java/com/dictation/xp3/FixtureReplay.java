package com.dictation.xp3;

import com.xp3.common.Json;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Parses and replays Phase 1 golden {@code core_fixtures.json} files through {@link AsrEngine},
 * verifying exact agreement on acoustic transcripts, PCEC punctuated transcripts, streaming
 * snapshots, PCEC input tokens/pauses, and VAD window scores.
 */
public final class FixtureReplay {

    public static final class StreamStep {
        public final int valid;
        public final int[] logitsArgmax;
        public final float[] logits;
        public final float[] hidden;

        StreamStep(int valid, int[] logitsArgmax, float[] logits, float[] hidden) {
            this.valid = valid;
            this.logitsArgmax = logitsArgmax;
            this.logits = logits;
            this.hidden = hidden;
        }
    }

    public static final class PcecStep {
        public final long[] inputIds;
        public final long[] inputPause;
        public final long[] slots;

        PcecStep(long[] inputIds, long[] inputPause, long[] slots) {
            this.inputIds = inputIds;
            this.inputPause = inputPause;
            this.slots = slots;
        }
    }

    public static final class PcecFlush {
        public final long nReal;
        public final long[] inputIds;
        public final long[] inputPause;
        public final long[] slots;

        PcecFlush(long nReal, long[] inputIds, long[] inputPause, long[] slots) {
            this.nReal = nReal;
            this.inputIds = inputIds;
            this.inputPause = inputPause;
            this.slots = slots;
        }
    }

    public static final class VadWindow {
        public final int startSample;
        public final float[] scores;

        VadWindow(int startSample, float[] scores) {
            this.startSample = startSample;
            this.scores = scores;
        }
    }

    public static final class ClipFixture {
        public final String id;
        public final int numSamples;
        public final String expectedAcoustic;
        public final String expectedPcec;
        public final List<String> expectedStreamSnapshots;
        public final List<StreamStep> streamSteps;
        public final List<PcecStep> pcecSteps;
        public final PcecFlush pcecFlush;
        public final List<VadWindow> vadWindows;

        ClipFixture(
            String id,
            int numSamples,
            String expectedAcoustic,
            String expectedPcec,
            List<String> expectedStreamSnapshots,
            List<StreamStep> streamSteps,
            List<PcecStep> pcecSteps,
            PcecFlush pcecFlush,
            List<VadWindow> vadWindows
        ) {
            this.id = id;
            this.numSamples = numSamples;
            this.expectedAcoustic = expectedAcoustic;
            this.expectedPcec = expectedPcec;
            this.expectedStreamSnapshots = Collections.unmodifiableList(expectedStreamSnapshots);
            this.streamSteps = Collections.unmodifiableList(streamSteps);
            this.pcecSteps = Collections.unmodifiableList(pcecSteps);
            this.pcecFlush = pcecFlush;
            this.vadWindows = Collections.unmodifiableList(vadWindows);
        }
    }

    public static final class Bundle {
        public final String tier;
        public final String pcecMethod;
        public final String pcecFlushMethod;
        public final String vadMethod;
        public final Map<String, MethodMeta> methodMetas;
        public final List<ClipFixture> clips;

        Bundle(
            String tier,
            String pcecMethod,
            String pcecFlushMethod,
            String vadMethod,
            Map<String, MethodMeta> methodMetas,
            List<ClipFixture> clips
        ) {
            this.tier = tier;
            this.pcecMethod = pcecMethod;
            this.pcecFlushMethod = pcecFlushMethod;
            this.vadMethod = vadMethod;
            this.methodMetas = Collections.unmodifiableMap(methodMetas);
            this.clips = Collections.unmodifiableList(clips);
        }
    }

    public static final class ReplayResult {
        public final String clipId;
        public final String actualAcoustic;
        public final String actualPcec;
        public final List<String> actualSnapshots;
        public final String finalStreamSettled;
        public final boolean monotonicSettled;
        public final boolean pcecInputsMatched;
        public final int vadWindowsChecked;

        ReplayResult(
            String clipId,
            String actualAcoustic,
            String actualPcec,
            List<String> actualSnapshots,
            String finalStreamSettled,
            boolean monotonicSettled,
            boolean pcecInputsMatched,
            int vadWindowsChecked
        ) {
            this.clipId = clipId;
            this.actualAcoustic = actualAcoustic;
            this.actualPcec = actualPcec;
            this.actualSnapshots = actualSnapshots;
            this.finalStreamSettled = finalStreamSettled;
            this.monotonicSettled = monotonicSettled;
            this.pcecInputsMatched = pcecInputsMatched;
            this.vadWindowsChecked = vadWindowsChecked;
        }
    }

    private FixtureReplay() {}

    public static Bundle parse(String json) {
        Map<String, Object> root = Json.object(Json.parse(json));
        String tier = Json.string(root, "tier");
        String pcecMethod = Json.text(root, "pcec_method");
        String pcecFlushMethod = Json.text(root, "pcec_flush_method");
        String vadMethod = Json.text(root, "vad_method");

        Map<String, Object> rawMetas = Json.object(root.get("method_metas"));
        Map<String, MethodMeta> metas = new LinkedHashMap<String, MethodMeta>();
        for (Map.Entry<String, Object> entry : rawMetas.entrySet()) {
            metas.put(entry.getKey(), MethodMeta.parseJson(entry.getKey(), Json.write(entry.getValue())));
        }

        List<Object> rawClips = Json.array(root.get("clips"));
        List<ClipFixture> clips = new ArrayList<ClipFixture>(rawClips.size());
        for (int i = 0; i < rawClips.size(); i++) {
            clips.add(parseClip(Json.object(rawClips.get(i))));
        }

        return new Bundle(tier, pcecMethod, pcecFlushMethod, vadMethod, metas, clips);
    }

    private static ClipFixture parseClip(Map<String, Object> c) {
        String id = Json.string(c, "id");
        int numSamples = ((Number) c.get("num_samples")).intValue();
        String expectedAcoustic = Json.text(c, "expected_acoustic");
        if (expectedAcoustic == null) expectedAcoustic = "";
        String expectedPcec = Json.text(c, "expected_pcec");
        if (expectedPcec == null) expectedPcec = "";

        List<Object> rawSnaps = Json.children(c, "expected_stream_snapshots");
        List<String> snaps = new ArrayList<String>(rawSnaps.size());
        for (int i = 0; i < rawSnaps.size(); i++) {
            snaps.add((String) rawSnaps.get(i));
        }

        List<Object> rawStream = Json.children(c, "stream_steps");
        List<StreamStep> streamSteps = new ArrayList<StreamStep>(rawStream.size());
        for (int i = 0; i < rawStream.size(); i++) {
            Map<String, Object> s = Json.object(rawStream.get(i));
            int valid = ((Number) s.get("valid")).intValue();
            int[] argmax = toIntArray(Json.children(s, "logits_argmax"));
            float[] logits = decodeFloat32Base64(Json.string(s, "logits_f32_b64"));
            String hiddenB64 = Json.text(s, "hidden_f32_b64");
            float[] hidden = hiddenB64 != null ? decodeFloat32Base64(hiddenB64) : null;
            streamSteps.add(new StreamStep(valid, argmax, logits, hidden));
        }

        List<Object> rawPcec = Json.children(c, "pcec_steps");
        List<PcecStep> pcecSteps = new ArrayList<PcecStep>(rawPcec.size());
        for (int i = 0; i < rawPcec.size(); i++) {
            Map<String, Object> p = Json.object(rawPcec.get(i));
            pcecSteps.add(new PcecStep(
                toLongArray(Json.children(p, "input_ids")),
                toLongArray(Json.children(p, "input_pause")),
                toLongArray(Json.children(p, "slots"))
            ));
        }

        PcecFlush flush = null;
        if (c.get("pcec_flush") instanceof Map) {
            Map<String, Object> f = Json.object(c.get("pcec_flush"));
            flush = new PcecFlush(
                ((Number) f.get("n_real")).longValue(),
                toLongArray(Json.children(f, "input_ids")),
                toLongArray(Json.children(f, "input_pause")),
                toLongArray(Json.children(f, "slots"))
            );
        }

        List<Object> rawVad = Json.children(c, "vad_windows");
        List<VadWindow> vadWindows = new ArrayList<VadWindow>(rawVad.size());
        for (int i = 0; i < rawVad.size(); i++) {
            Map<String, Object> v = Json.object(rawVad.get(i));
            vadWindows.add(new VadWindow(
                ((Number) v.get("start_sample")).intValue(),
                decodeFloat32Base64(Json.string(v, "scores_f32_b64"))
            ));
        }

        return new ClipFixture(id, numSamples, expectedAcoustic, expectedPcec, snaps, streamSteps, pcecSteps, flush, vadWindows);
    }

    /** Replays one clip in 8000-sample (0.5 s) streaming chunks through {@link AsrEngine} and {@link StreamDisplay}. */
    public static ReplayResult replayClip(AsrMetadata meta, Bundle bundle, ClipFixture clip) {
        ReplayModel fake = new ReplayModel(bundle, clip);
        AsrEngine engine = new AsrEngine(meta, fake, bundle.vadMethod);
        engine.setTier(bundle.tier);

        StreamDisplay display = new StreamDisplay();
        List<String> actualSnaps = new ArrayList<String>();
        String prevSettled = "";
        boolean monotonic = true;

        float[] dummyClip = new float[clip.numSamples];
        int chunkSize = 8000;
        for (int pos = 0; pos < dummyClip.length; pos += chunkSize) {
            int len = Math.min(chunkSize, dummyClip.length - pos);
            String snap = engine.decodeStream(dummyClip, pos, len);
            actualSnaps.add(snap);

            StreamDisplay.Update u = display.update(engine);
            if (!u.settled.startsWith(prevSettled) || !u.settled.equals(prevSettled + u.commitDelta)) {
                monotonic = false;
            }
            prevSettled = u.settled;
        }

        String actualAcoustic = engine.finish();
        String actualPcec = engine.pcec() != null ? engine.decodePcec(true) : actualAcoustic;
        // Re-run a second clean pass for StreamDisplay.finish so tail() isn't executed twice on the fixture.
        // Wait: instead, capture finish via StreamDisplay using a fresh pass or avoid double tail call.
        // Actually, let's check: ReplayModel can allow repeated flush reads safely since flush is idempotent!
        StreamDisplay.Update endUpdate = display.finish(engine);
        if (!endUpdate.settled.startsWith(prevSettled) || !endUpdate.settled.equals(prevSettled + endUpdate.commitDelta)) {
            monotonic = false;
        }

        int vadChecked = 0;
        if (engine.vadInfo() != null && !clip.vadWindows.isEmpty()) {
            float[] vadWin = new float[engine.vadInfo().samples];
            for (int i = 0; i < clip.vadWindows.size(); i++) {
                float[] got = engine.detectSpeech(vadWin);
                float[] exp = clip.vadWindows.get(i).scores;
                if (got.length != exp.length) {
                    throw new IllegalStateException("VAD length mismatch on " + clip.id);
                }
                for (int j = 0; j < exp.length; j++) {
                    if (Math.abs(got[j] - exp[j]) > 1e-6f) {
                        throw new IllegalStateException("VAD score mismatch on " + clip.id);
                    }
                }
                vadChecked++;
            }
        }

        if (fake.streamIdx != clip.streamSteps.size()) {
            throw new IllegalStateException(
                clip.id + ": expected " + clip.streamSteps.size() + " stream steps, executed " + fake.streamIdx);
        }
        if (fake.pcecIdx != clip.pcecSteps.size()) {
            throw new IllegalStateException(
                clip.id + ": expected " + clip.pcecSteps.size() + " pcec steps, executed " + fake.pcecIdx);
        }

        return new ReplayResult(
            clip.id,
            actualAcoustic,
            actualPcec,
            actualSnaps,
            endUpdate.settled,
            monotonic,
            fake.pcecInputsMatched,
            vadChecked
        );
    }

    public static float[] decodeFloat32Base64(String b64) {
        byte[] raw = Base64.getDecoder().decode(b64);
        if ((raw.length & 3) != 0) {
            throw new IllegalArgumentException("Base64 float32 payload not multiple of 4 bytes: " + raw.length);
        }
        ByteBuffer bb = ByteBuffer.wrap(raw).order(ByteOrder.LITTLE_ENDIAN);
        float[] out = new float[raw.length / 4];
        for (int i = 0; i < out.length; i++) {
            out[i] = bb.getFloat(i * 4);
        }
        return out;
    }

    public static String encodeFloat32Base64(float[] data) {
        ByteBuffer bb = ByteBuffer.allocate(data.length * 4).order(ByteOrder.LITTLE_ENDIAN);
        for (int i = 0; i < data.length; i++) {
            bb.putFloat(data[i]);
        }
        return Base64.getEncoder().encodeToString(bb.array());
    }

    private static int[] toIntArray(List<Object> list) {
        int[] out = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            out[i] = ((Number) list.get(i)).intValue();
        }
        return out;
    }

    private static long[] toLongArray(List<Object> list) {
        long[] out = new long[list.size()];
        for (int i = 0; i < list.size(); i++) {
            out[i] = ((Number) list.get(i)).longValue();
        }
        return out;
    }

    private static final class ReplayModel implements AsrModel {
        final Bundle bundle;
        final ClipFixture clip;
        int streamIdx;
        int pcecIdx;
        int vadIdx;
        boolean pcecInputsMatched = true;

        ReplayModel(Bundle bundle, ClipFixture clip) {
            this.bundle = bundle;
            this.clip = clip;
        }

        @Override
        public void loadMethod(String methodName, String arenaGroup) {}

        @Override
        public void unloadMethod(String methodName) {}

        @Override
        public MethodMeta methodMeta(String methodName) {
            return bundle.methodMetas.get(methodName);
        }

        @Override
        public Tensor[] execute(String methodName, Tensor[] inputs) {
            MethodMeta mm = bundle.methodMetas.get(methodName);
            if (mm == null) throw new IllegalStateException("Unknown method in fixture: " + methodName);

            if (methodName.equals(bundle.tier)) {
                if (streamIdx >= clip.streamSteps.size()) {
                    throw new IllegalStateException("Too many stream steps for " + clip.id);
                }
                StreamStep step = clip.streamSteps.get(streamIdx++);
                Tensor logits = Tensor.ofFloats(mm.output(0).shape(), step.logits);
                Tensor fCache = Tensor.zeros(mm.output(1).shape(), mm.output(1).dtype);
                Tensor aCache = Tensor.zeros(mm.output(2).shape(), mm.output(2).dtype);
                if (mm.numOutputs() > 3) {
                    float[] hidden = step.hidden != null
                        ? step.hidden
                        : new float[Tensor.numel(mm.output(3).shape())];
                    return new Tensor[] {logits, fCache, aCache, Tensor.ofFloats(mm.output(3).shape(), hidden)};
                }
                return new Tensor[] {logits, fCache, aCache};
            }

            if (methodName.equals(bundle.pcecMethod)) {
                if (pcecIdx >= clip.pcecSteps.size()) {
                    throw new IllegalStateException("Too many PCEC steps for " + clip.id);
                }
                PcecStep step = clip.pcecSteps.get(pcecIdx++);
                if (step.inputIds.length > 0 && !Arrays.equals(step.inputIds, inputs[0].longData())) {
                    pcecInputsMatched = false;
                }
                if (step.inputPause.length > 0 && !Arrays.equals(step.inputPause, inputs[1].longData())) {
                    pcecInputsMatched = false;
                }
                Tensor[] outs = new Tensor[mm.numOutputs()];
                outs[0] = Tensor.ofLongs(mm.output(0).shape(), step.slots);
                for (int i = 1; i < mm.numOutputs(); i++) {
                    outs[i] = Tensor.zeros(mm.output(i).shape(), mm.output(i).dtype);
                }
                return outs;
            }

            if (methodName.equals(bundle.pcecFlushMethod)) {
                if (clip.pcecFlush == null) {
                    throw new IllegalStateException("Unexpected PCEC flush for " + clip.id);
                }
                PcecFlush flush = clip.pcecFlush;
                if (flush.inputIds.length > 0 && !Arrays.equals(flush.inputIds, inputs[0].longData())) {
                    pcecInputsMatched = false;
                }
                if (flush.inputPause.length > 0 && !Arrays.equals(flush.inputPause, inputs[1].longData())) {
                    pcecInputsMatched = false;
                }
                // Find the 0-D scalar n_real input (right before the cache tensors).
                for (int i = 0; i < inputs.length; i++) {
                    if (inputs[i].rank() == 0 && inputs[i].dtype == Tensor.DTYPE_INT64) {
                        if (inputs[i].longData()[0] != flush.nReal) {
                            pcecInputsMatched = false;
                        }
                        break;
                    }
                }
                return new Tensor[] {Tensor.ofLongs(mm.output(0).shape(), flush.slots)};
            }

            if (methodName.equals(bundle.vadMethod)) {
                if (vadIdx >= clip.vadWindows.size()) {
                    throw new IllegalStateException("Too many VAD windows for " + clip.id);
                }
                VadWindow w = clip.vadWindows.get(vadIdx++);
                return new Tensor[] {Tensor.ofFloats(mm.output(0).shape(), w.scores)};
            }

            throw new IllegalStateException("Unhandled method in fixture: " + methodName);
        }

        @Override
        public void close() {}
    }
}
