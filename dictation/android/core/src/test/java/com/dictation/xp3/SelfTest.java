package com.dictation.xp3;

import com.xp3.common.Check;
import com.xp3.common.Json;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Deterministic host test suite for {@code :dictation:core}. */
public final class SelfTest {

    private SelfTest() {}

    public static void main(String[] args) {
        Check check = new Check();
        check.run("tensor", () -> testTensor(check));
        check.run("methodMeta", () -> testMethodMeta(check));
        check.run("pcecPauseAndRender", () -> testPcecPauseAndRender(check));
        check.run("pcecPoolingAndArena", () -> testPcecPoolingAndArena(check));
        check.run("engineTiersAndCompaction", () -> testEngineTiersAndCompaction(check));
        check.run("engineFeedback", () -> testEngineFeedback(check));
        check.run("streamDisplay", () -> testStreamDisplay(check));
        check.run("silenceTracker", () -> testSilenceTracker(check));
        check.run("wavUtil", () -> testWavUtil(check));
        check.run("syntheticFixtureReplay", () -> testSyntheticFixtureReplay(check));
        check.run("externalGoldenFixtures", () -> testExternalGoldenFixtures(check));

        if (!check.report()) {
            System.exit(1);
        }
    }

    private static void testTensor(Check check) {
        Tensor f = Tensor.ofFloats(new int[] {1, 3}, new float[] {1.5f, -2.0f, 0.25f});
        check.same("fp32 dtype", Integer.valueOf(Tensor.DTYPE_FP32), Integer.valueOf(f.dtype));
        check.same("fp32 numel", Integer.valueOf(3), Integer.valueOf(f.numel()));
        check.same("fp32 dim -1", Integer.valueOf(3), Integer.valueOf(f.dim(-1)));
        Tensor fCopy = f.copy();
        fCopy.floatData()[0] = 99.0f;
        check.close("copy independent", 1.5, f.floatData()[0], 1e-6);

        Tensor scalar = Tensor.scalarLong(7L);
        check.same("scalar rank", Integer.valueOf(0), Integer.valueOf(scalar.rank()));
        check.same("scalar numel", Integer.valueOf(1), Integer.valueOf(scalar.numel()));
        check.same("scalar value", Long.valueOf(7L), Long.valueOf(scalar.longData()[0]));

        Tensor filled = Tensor.fullLong(new int[] {1, 4}, 256L);
        check.ok("fullLong filled", Arrays.equals(new long[] {256L, 256L, 256L, 256L}, filled.longData()));

        check.fails("mismatch length", () -> Tensor.ofFloats(new int[] {2, 2}, new float[] {1f, 2f}));
        check.fails("wrong accessor", () -> scalar.floatData());
    }

    private static void testMethodMeta(Check check) {
        String json = "{\"inputs\":[{\"dtype\":4,\"sizes\":[1,16]},{\"dtype\":4,\"sizes\":[]}],"
            + "\"outputs\":[{\"dtype\":6,\"sizes\":[1,16,257]}]}";
        MethodMeta mm = MethodMeta.parseJson("pcec_c16_flush", json);
        check.same("numInputs", Integer.valueOf(2), Integer.valueOf(mm.numInputs()));
        check.same("input0 dtype", Integer.valueOf(Tensor.DTYPE_INT64), Integer.valueOf(mm.input(0).dtype));
        check.same("input0 dim1", Integer.valueOf(16), Integer.valueOf(mm.input(0).dim(1)));
        check.same("scalar rank", Integer.valueOf(0), Integer.valueOf(mm.input(1).rank()));
        check.same("output0 dim2", Integer.valueOf(257), Integer.valueOf(mm.output(0).dim(2)));
    }

    private static void testPcecPauseAndRender(Check check) {
        int[] blanks = {0, 1, 2, 3, 4, 7, 8, 15, 16, 31, 32, 63, 64, 127, 128, 500};
        int[] expected = {0, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8};
        for (int i = 0; i < blanks.length; i++) {
            check.same("pause(" + blanks[i] + ")", Integer.valueOf(expected[i]),
                Integer.valueOf(PcecDecoder.pauseBucket(blanks[i])));
        }

        // Vocab: 0=" hello", 1=" world", 2="ing", 3=" ", 4=" usa", 5=" today", 6=" how", 7=" are", 8=" you"
        // Ctrl: cap=10, allcaps=11, period=12, comma=13, question=14, blank=15
        AsrMetadata.PcecConfig cfg = new AsrMetadata.PcecConfig(
            new String[] {" hello", " world", "ing", " ", " usa", " today", " how", " are", " you"},
            15, 10, 11, 12, 13, 14, 256, 9, true, true
        );

        // CTC collapse repeats + blanks, comma, allcaps, period -> next word auto-capitalized, question mark.
        List<Integer> slots = Arrays.asList(
            15, 0, 0, 15, 13, 1, 2, 11, 4, 12, 3, 6, 7, 8, 14
        );
        check.same("renderSlots", "Hello, worlding USA. How are you?", PcecDecoder.renderSlots(cfg, slots));
    }

    private static void testPcecPoolingAndArena(Check check) {
        final int dim = 4;
        AsrMetadata meta = makeSyntheticMetadata();
        final List<String> loadedGroups = new ArrayList<String>();
        final List<Tensor[]> pcecCalls = new ArrayList<Tensor[]>();
        final List<Tensor[]> flushCalls = new ArrayList<Tensor[]>();

        final Map<String, MethodMeta> metas = syntheticMetas(4, 2, 16, dim, 2, 2);
        AsrModel fake = new AsrModel() {
            @Override
            public void loadMethod(String methodName, String arenaGroup) {
                loadedGroups.add(methodName + ":" + arenaGroup);
            }

            @Override
            public void unloadMethod(String methodName) {}

            @Override
            public MethodMeta methodMeta(String methodName) {
                return metas.get(methodName);
            }

            @Override
            public Tensor[] execute(String methodName, Tensor[] inputs) {
                if ("pcec_c2".equals(methodName)) {
                    pcecCalls.add(inputs);
                    // Output 4 slots (2*commit): [blank, tok0, blank, tok1]
                    long[] ids = inputs[0].longData();
                    long[] outSlots = new long[] {15, ids[0], 15, ids[1]};
                    return new Tensor[] {
                        Tensor.ofLongs(new int[] {1, 4}, outSlots),
                        Tensor.zeros(new int[] {1, 8}, Tensor.DTYPE_FP32),
                        Tensor.ofLongs(new int[] {1}, new long[] {pcecCalls.size()})
                    };
                }
                if ("pcec_c2_flush".equals(methodName)) {
                    flushCalls.add(inputs);
                    long[] outSlots = new long[9];
                    Arrays.fill(outSlots, 15);
                    outSlots[4] = 0; // " hello"
                    outSlots[5] = 12; // "."
                    return new Tensor[] {Tensor.ofLongs(new int[] {1, 9}, outSlots)};
                }
                throw new IllegalStateException("Unexpected method: " + methodName);
            }

            @Override
            public void close() {}
        };

        PcecDecoder dec = new PcecDecoder(meta.pcec, meta.tiers.get(0).pcec, fake, dim);
        check.same("pcec commit", Integer.valueOf(2), Integer.valueOf(dec.commit));
        check.same("pcec lookahead", Integer.valueOf(2), Integer.valueOf(dec.lookahead));
        check.ok("wantsAcoustic", dec.wantsAcoustic);
        check.ok("wantsKeep", dec.wantsKeep);

        // Feed frames: blank, tok0 (3 frames with hidden 1, 2, 6 -> mean 3.0), blank, blank, tok1, blank, tok2
        int[] frames = {15, 0, 0, 15, 15, 1, 15, 2};
        float[] hidden = new float[frames.length * dim];
        for (int d = 0; d < dim; d++) {
            hidden[1 * dim + d] = 1.0f;
            hidden[2 * dim + d] = 2.0f;
            hidden[3 * dim + d] = 6.0f;
            hidden[4 * dim + d] = 3.0f; // blank belongs to open tok0!
            hidden[5 * dim + d] = 10.0f;
            hidden[6 * dim + d] = 20.0f;
            hidden[7 * dim + d] = 5.0f;
        }
        // Note: frames 1..4 all belong to tok0 -> (1 + 2 + 6 + 3) / 4 = 3.0
        // Leading blanks before tok0 = 1 -> pauseBucket(1) = 1
        // Leading blanks before tok1 = 2 (frames 3,4) -> pauseBucket(2) = 2
        dec.pool(frames, hidden, 15, null);
        dec.drain();
        check.same("one drain call", Integer.valueOf(1), Integer.valueOf(pcecCalls.size()));
        Tensor[] call0 = pcecCalls.get(0);
        check.ok("pcec ids", Arrays.equals(new long[] {0, 1}, call0[0].longData()));
        check.ok("pcec pause", Arrays.equals(new long[] {1, 2}, call0[1].longData()));
        check.close("tok0 pooled hidden mean", 3.0, call0[2].floatData()[0], 1e-6);
        check.close("tok1 pooled hidden mean", 15.0, call0[2].floatData()[dim], 1e-6);
        check.close("keep zero", 0.0, call0[3].floatData()[0], 1e-6);
        check.same("first drain skipped by lookahead", Integer.valueOf(0), Integer.valueOf(dec.slots().size()));

        dec.flush();
        List<Integer> tailSlots = dec.tail();
        check.same("one flush call", Integer.valueOf(1), Integer.valueOf(flushCalls.size()));
        Tensor nReal = flushCalls.get(0)[4];
        check.same("n_real rank 0", Integer.valueOf(0), Integer.valueOf(nReal.rank()));
        check.same("n_real value", Long.valueOf(1L), Long.valueOf(nReal.longData()[0]));
        check.same("tail rendered", "Hello.", dec.render(tailSlots));
        check.ok("pcec arena group shared", loadedGroups.contains("pcec_c2:pcec")
            && loadedGroups.contains("pcec_c2_flush:pcec"));
    }

    private static void testEngineTiersAndCompaction(Check check) {
        final int dim = 4;
        AsrMetadata meta = makeSyntheticMetadata();
        final Map<String, MethodMeta> metas = syntheticMetas(4, 2, 16, dim, 2, 2);
        final List<String> unloaded = new ArrayList<String>();
        final int[] stepCount = new int[1];

        AsrModel fake = new AsrModel() {
            @Override
            public void loadMethod(String methodName, String arenaGroup) {}

            @Override
            public void unloadMethod(String methodName) {
                unloaded.add(methodName);
            }

            @Override
            public MethodMeta methodMeta(String methodName) {
                return metas.get(methodName);
            }

            @Override
            public Tensor[] execute(String methodName, Tensor[] inputs) {
                if ("stream_c4r2".equals(methodName)) {
                    int s = stepCount[0]++;
                    float[] logits = new float[4 * 16];
                    // Emit token 0 on step 0 frame 0, token 1 on step 20 frame 0, blanks elsewhere.
                    for (int f = 0; f < 4; f++) {
                        int tok = (s == 0 && f == 0) ? 0 : (s == 30 && f == 0) ? 1 : 15;
                        logits[f * 16 + tok] = 10.0f;
                    }
                    return new Tensor[] {
                        Tensor.ofFloats(new int[] {1, 4, 16}, logits),
                        Tensor.zeros(new int[] {10}, Tensor.DTYPE_FP32),
                        Tensor.zeros(new int[] {6}, Tensor.DTYPE_FP32),
                        Tensor.zeros(new int[] {1, 4, dim}, Tensor.DTYPE_FP32)
                    };
                }
                if ("vad_dft".equals(methodName)) {
                    float[] scores = new float[21];
                    Arrays.fill(scores, 0.8f);
                    return new Tensor[] {Tensor.ofFloats(new int[] {1, 21}, scores)};
                }
                if ("pcec_c2_flush".equals(methodName)) {
                    long[] outSlots = new long[9];
                    Arrays.fill(outSlots, 15);
                    outSlots[4] = 0;
                    outSlots[5] = 1;
                    outSlots[6] = 12;
                    return new Tensor[] {Tensor.ofLongs(new int[] {1, 9}, outSlots)};
                }
                if ("pcec_c2".equals(methodName)) {
                    long[] outSlots = new long[] {15, 0, 15, 1};
                    return new Tensor[] {
                        Tensor.ofLongs(new int[] {1, 4}, outSlots),
                        Tensor.zeros(new int[] {1, 8}, Tensor.DTYPE_FP32),
                        Tensor.zeros(new int[] {1}, Tensor.DTYPE_INT64)
                    };
                }
                throw new IllegalStateException("Unexpected: " + methodName);
            }

            @Override
            public void close() {}
        };

        AsrEngine engine = new AsrEngine(meta, fake, "vad_dft");
        check.same("tier name", "stream_c4r2", engine.currentTier().name);
        check.same("tier lookahead", Integer.valueOf(2), Integer.valueOf(engine.currentTier().lookahead));
        check.ok("vad discovered", engine.vadInfo() != null && "vad_dft".equals(engine.vadInfo().name));

        // Feed > 80000 samples (triggers PCM compaction past 65536) with non-multiple-of-640 tail.
        float[] chunk = new float[8000];
        for (int i = 0; i < 10; i++) {
            engine.decodeStream(chunk);
        }
        engine.decodeStream(new float[333]); // partial frame < 640 samples
        String acoustic = engine.finish();
        check.same("acoustic after compaction", "hello world", acoustic);

        float[] vadScores = engine.detectSpeech(new float[16000]);
        check.same("vad scores len", Integer.valueOf(21), Integer.valueOf(vadScores.length));
        check.close("vad score", 0.8, vadScores[0], 1e-6);

        engine.unloadAll();
        check.ok("unloaded methods", unloaded.contains("stream_c4r2") && unloaded.contains("vad_dft"));
    }

    private static void testEngineFeedback(Check check) {
        AsrMetadata base = makeSyntheticMetadata();
        String first = base.defaultTier;
        String second = "stream_c4r3";
        AsrMetadata meta = new AsrMetadata(base.sampleRate, base.samplesPerFrame, base.vocab, base.blankId,
            first, base.encoderFile, Arrays.asList(new AsrMetadata.TierEntry(first, null),
                new AsrMetadata.TierEntry(second, null)), null, Collections.emptyList());
        Map<String, MethodMeta> metas = syntheticMetas(4, 2, 16, 2, 2, 2);
        MethodMeta firstMeta = metas.get(first);
        int secondWindow = 7 * meta.samplesPerFrame;
        metas.put(second, new MethodMeta(second, Arrays.asList(
            new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, secondWindow}),
            firstMeta.input(1), firstMeta.input(2)),
            Arrays.asList(firstMeta.output(0), firstMeta.output(1), firstMeta.output(2), firstMeta.output(3))));
        List<String> events = new ArrayList<String>();
        Map<String, Integer> feedback = new HashMap<String, Integer>();
        AsrModel fake = new AsrModel() {
            @Override public MethodMeta methodMeta(String name) { return metas.get(name); }
            @Override public boolean supportsFeedback() { return true; }
            @Override public void close() {}

            @Override
            public void loadMethod(String name, String arenaGroup) {
                events.add("load " + name);
            }

            @Override
            public void unloadMethod(String name) {
                events.add("unload " + name);
                feedback.remove(name);
            }

            @Override
            public void setFeedback(String name, int[] outIdx, int[] inIdx) {
                check.ok("register cache outputs", Arrays.equals(new int[] {1, 2}, outIdx));
                check.ok("register cache inputs", Arrays.equals(new int[] {1, 2}, inIdx));
                events.add("register " + name);
                feedback.put(name, 0);
            }

            @Override
            public void resetFeedback(String name) {
                if (!feedback.containsKey(name)) throw new IllegalStateException("Unregistered feedback: " + name);
                events.add("reset " + name);
                feedback.put(name, 0);
            }

            @Override
            public Tensor[] execute(String name, Tensor[] inputs) {
                MethodMeta mm = methodMeta(name);
                check.ok("feedback step receives PCM and null caches", inputs.length == 3 && inputs[0] != null
                    && Arrays.equals(mm.input(0).shape(), inputs[0].shape()) && inputs[1] == null && inputs[2] == null);
                int step = feedback.get(name);
                feedback.put(name, step + 1);
                float[] logits = new float[4 * 16];
                logits[step == 0 ? 0 : 1] = 10.0f; // hello on a clean cache, world otherwise
                for (int f = 1; f < 4; f++) logits[f * 16 + 15] = 10.0f;
                return new Tensor[] {Tensor.ofFloats(mm.output(0).shape(), logits), null, null,
                    Tensor.zeros(mm.output(3).shape(), Tensor.DTYPE_FP32)};
            }
        };

        AsrEngine engine = new AsrEngine(meta, fake);
        int firstWindow = engine.currentTier().window;
        check.same("feedback across steps", "hello world",
            engine.decodeStream(new float[firstWindow + 4 * meta.samplesPerFrame]));
        check.same("feedback registration follows load", Arrays.asList("load " + first, "register " + first,
            "reset " + first), events);
        events.clear();
        engine.reset();
        check.same("feedback reset without reload", Collections.singletonList("reset " + first), events);
        check.same("feedback zero after reset", "hello", engine.decodeStream(new float[firstWindow]));
        events.clear();
        engine.unloadAll();
        engine.preloadActiveMethods();
        check.same("feedback re-registered after unload", Arrays.asList("unload " + first, "load " + first,
            "register " + first, "reset " + first), events);
        check.same("feedback zero after reload", "hello hello",
            engine.decodeStream(new float[4 * meta.samplesPerFrame]));
        events.clear();
        engine.setTier(second);
        check.same("feedback zero after tier change", "hello", engine.decodeStream(new float[secondWindow]));
        check.same("feedback registered for new tier", Arrays.asList("unload " + first, "load " + second,
            "register " + second, "reset " + second), events);
    }

    private static void testStreamDisplay(Check check) {
        // Test multi-block PCEC streaming: commit=2, lookahead=2.
        // Acoustic tokens emitted over 6 steps:
        //   tok0=" hello", tok1=" world", tok2=" how", tok3=" are", tok4=" you", tok5=" today"
        // PCEC emits slots for [tok0, tok1] after 4 tokens, [tok2, tok3] after 6 tokens,
        // and on finish adds period + [tok4, tok5] + "?".
        final int dim = 2;
        AsrMetadata meta = makeSyntheticMetadata();
        final Map<String, MethodMeta> metas = syntheticMetas(4, 2, 16, dim, 2, 2);
        final int[][] stepTokens = {
            {0, 15, 1, 15}, // " hello", " world"
            {6, 15, 7, 15}, // " how", " are"
            {8, 15, 5, 15}, // " you", " today"
            {9, 15, 15, 15}, // " a" closes " today" -> triggers pcec step 2 during streaming!
            {15, 15, 15, 15}
        };
        final int[] streamStep = new int[1];
        final int[] pcecStep = new int[1];

        AsrModel fake = new AsrModel() {
            @Override public void loadMethod(String n, String g) {}
            @Override public void unloadMethod(String n) {}
            @Override public MethodMeta methodMeta(String n) { return metas.get(n); }
            @Override public void close() {}

            @Override
            public Tensor[] execute(String methodName, Tensor[] inputs) {
                if ("stream_c4r2".equals(methodName)) {
                    int idx = Math.min(streamStep[0]++, stepTokens.length - 1);
                    float[] logits = new float[4 * 16];
                    for (int f = 0; f < 4; f++) {
                        logits[f * 16 + stepTokens[idx][f]] = 5.0f;
                    }
                    return new Tensor[] {
                        Tensor.ofFloats(new int[] {1, 4, 16}, logits),
                        Tensor.zeros(new int[] {10}, Tensor.DTYPE_FP32),
                        Tensor.zeros(new int[] {6}, Tensor.DTYPE_FP32),
                        Tensor.zeros(new int[] {1, 4, dim}, Tensor.DTYPE_FP32)
                    };
                }
                if ("pcec_c2".equals(methodName)) {
                    int p = pcecStep[0]++;
                    long[] outSlots;
                    if (p == 0) {
                        outSlots = new long[] {15, 15, 15, 15}; // warm-up, skipped
                    } else if (p == 1) {
                        // First 2 tokens emerge: " hello", " world"
                        outSlots = new long[] {15, 0, 15, 1};
                    } else {
                        // Next 2 tokens emerge: period on "world" + " how", " are"
                        outSlots = new long[] {12, 6, 15, 7};
                    }
                    return new Tensor[] {
                        Tensor.ofLongs(new int[] {1, 4}, outSlots),
                        Tensor.zeros(new int[] {1, 8}, Tensor.DTYPE_FP32),
                        Tensor.zeros(new int[] {1}, Tensor.DTYPE_INT64)
                    };
                }
                if ("pcec_c2_flush".equals(methodName)) {
                    // Remaining tokens in lookahead (2) + n_real (1): " you", " today", "?", " a", "."
                    long[] outSlots = new long[] {15, 8, 15, 5, 14, 9, 12, 15, 15};
                    return new Tensor[] {Tensor.ofLongs(new int[] {1, 9}, outSlots)};
                }
                throw new IllegalStateException("Unexpected: " + methodName);
            }
        };

        AsrEngine engine = new AsrEngine(meta, fake, null);
        StreamDisplay display = new StreamDisplay();
        StringBuilder fieldCommitted = new StringBuilder();
        String prevSettled = "";
        boolean sawPunctRevisionWithoutRewrite = false;

        // Stream 5 chunks of 4 frames (so 4 steps run during decodeStream, triggering pcec step 2 live).
        for (int c = 0; c < 5; c++) {
            engine.decodeStream(new float[4 * 640]);
            StreamDisplay.Update u = display.update(engine);
            check.ok("settled prefix monotonic step " + c, u.settled.startsWith(prevSettled));
            check.same("commitDelta exact step " + c, u.settled, prevSettled + u.commitDelta);
            fieldCommitted.append(u.commitDelta);
            check.same("field committed equals settled step " + c, u.settled, fieldCommitted.toString());
            if ("Hello".equals(u.settled)) {
                // "world" is held tentative while PCEC hasn't punctuated it yet!
                check.ok("no duplicate world", countOccurrences(u.settled + u.tentative, "world") == 1);
            }
            if (u.settled.contains("world.")) {
                sawPunctRevisionWithoutRewrite = true;
            }
            prevSettled = u.settled;
        }

        engine.finish();
        StreamDisplay.Update end = display.finish(engine);
        check.ok("final settled prefix monotonic", end.settled.startsWith(prevSettled));
        fieldCommitted.append(end.commitDelta);
        check.same("final tentative empty", "", end.tentative);
        check.same("final field equals decodePcec(true)", engine.decodePcec(true), fieldCommitted.toString());
        check.same("exact final text", "Hello world. How are you today? A.", fieldCommitted.toString());
        check.ok("held-back word punctuated safely", sawPunctRevisionWithoutRewrite);
    }

    private static void testSilenceTracker(Check check) {
        SilenceTracker st = new SilenceTracker(8000L, 0.5f, 0.02f);
        float[] quiet = new float[20];
        // 20 * 40ms = 800ms per call -> 9 calls = 7200ms (not timed out), 10th = 8000ms (timed out)
        for (int i = 0; i < 9; i++) {
            check.ok("not timed out at " + ((i + 1) * 800), !st.feedVadScores(quiet, 40.0));
        }
        check.ok("timed out at 8000ms", st.feedVadScores(quiet, 40.0));

        // Speech resets silence counter.
        check.ok("speech resets", !st.feedVadScores(new float[] {0.9f}, 40.0));
        check.same("silence reset to 0", Long.valueOf(0L), Long.valueOf(st.silenceMs()));
        check.ok("heardSpeech true", st.heardSpeech());

        // RMS fallback test.
        st.reset();
        float[] silentPcm = new float[16000];
        float[] loudPcm = new float[16000];
        Arrays.fill(loudPcm, 0.25f);
        for (int s = 0; s < 7; s++) {
            check.ok("rms not timed out " + s, !st.feedPcmFallback(silentPcm, 0, silentPcm.length, 16000));
        }
        check.ok("rms loud resets", !st.feedPcmFallback(loudPcm, 0, loudPcm.length, 16000));
        check.same("rms silence 0", Long.valueOf(0L), Long.valueOf(st.silenceMs()));
        for (int s = 0; s < 7; s++) {
            st.feedPcmFallback(silentPcm, 0, silentPcm.length, 16000);
        }
        check.ok("rms times out at 8s", st.feedPcmFallback(silentPcm, 0, silentPcm.length, 16000));
    }

    private static void testWavUtil(Check check) {
        short[] samples = new short[] {0, 16384, -16384, 32767, -32768};
        byte[] wav = WavUtil.writePcm16kMono(samples);
        short[] decoded = WavUtil.readShorts16kMono(wav);
        check.ok("wav roundtrip shorts", Arrays.equals(samples, decoded));
        float[] floats = WavUtil.readPcm16kMono(wav);
        check.close("wav float 0.5", 0.5, floats[1], 1e-6);
        check.close("wav float -1.0", -1.0, floats[4], 1e-6);

        // Insert a JUNK chunk of odd size (5 bytes + 1 pad byte) between WAVE and fmt.
        ByteArrayOutputStream withJunk = new ByteArrayOutputStream();
        withJunk.write(wav, 0, 12);
        withJunk.write(new byte[] {'J', 'U', 'N', 'K', 5, 0, 0, 0, 1, 2, 3, 4, 5, 0}, 0, 14);
        withJunk.write(wav, 12, wav.length - 12);
        check.ok("wav with odd JUNK chunk", Arrays.equals(samples, WavUtil.readShorts16kMono(withJunk.toByteArray())));

        // Reject wrong sample rate.
        byte[] badRate = wav.clone();
        badRate[24] = 0x44; badRate[25] = (byte) 0xAC; // 44100 Hz
        check.fails("reject 44.1kHz", "16000 Hz", () -> WavUtil.readShorts16kMono(badRate));
    }

    private static void testSyntheticFixtureReplay(Check check) {
        AsrMetadata meta = makeSyntheticMetadata();
        String fixtureJson = buildSyntheticFixtureJson();
        FixtureReplay.Bundle bundle = FixtureReplay.parse(fixtureJson);
        check.same("3 synthetic clips", Integer.valueOf(3), Integer.valueOf(bundle.clips.size()));

        for (int i = 0; i < bundle.clips.size(); i++) {
            FixtureReplay.ClipFixture clip = bundle.clips.get(i);
            FixtureReplay.ReplayResult res = FixtureReplay.replayClip(meta, bundle, clip);
            check.same(clip.id + " acoustic", clip.expectedAcoustic, res.actualAcoustic);
            check.same(clip.id + " pcec", clip.expectedPcec, res.actualPcec);
            check.same(clip.id + " snapshots", clip.expectedStreamSnapshots, res.actualSnapshots);
            check.same(clip.id + " stream final", clip.expectedPcec, res.finalStreamSettled);
            check.ok(clip.id + " monotonic", res.monotonicSettled);
            check.ok(clip.id + " pcec inputs matched", res.pcecInputsMatched);
        }
    }

    /**
     * Automatically replays Phase 1's verified {@code core_fixtures.json} when present as a test
     * resource ({@code /core_fixtures.json} + {@code /metadata.json}) or via system properties
     * {@code -Ddictation.fixtures=...} and {@code -Ddictation.metadata=...}.
     */
    private static void testExternalGoldenFixtures(Check check) throws Exception {
        String metadataText = readOptionalResourceOrProp("/metadata.json", "dictation.metadata");
        AsrMetadata meta = null;
        if (metadataText != null) {
            meta = AsrMetadata.parse(metadataText);
            check.same("real metadata sampleRate", Integer.valueOf(16000), Integer.valueOf(meta.sampleRate));
            check.same("real metadata spf", Integer.valueOf(640), Integer.valueOf(meta.samplesPerFrame));
            check.same("real metadata blankId", Integer.valueOf(256), Integer.valueOf(meta.blankId));
            check.ok("real metadata pcec present", meta.pcec != null && meta.pcec.vocab.length == 6144);
        }
        String fixturesText = readOptionalResourceOrProp("/core_fixtures.json", "dictation.fixtures");
        if (fixturesText == null) {
            return; // Not dropped in yet during Phase 3a; Phase 3b enables this automatically.
        }
        if (meta == null) {
            throw new IllegalStateException("core_fixtures.json present without metadata.json");
        }
        FixtureReplay.Bundle bundle = FixtureReplay.parse(fixturesText);
        check.ok("golden fixtures non-empty", !bundle.clips.isEmpty());
        for (int i = 0; i < bundle.clips.size(); i++) {
            FixtureReplay.ClipFixture clip = bundle.clips.get(i);
            FixtureReplay.ReplayResult res = FixtureReplay.replayClip(meta, bundle, clip);
            check.same("golden " + clip.id + " acoustic", clip.expectedAcoustic, res.actualAcoustic);
            check.same("golden " + clip.id + " pcec", clip.expectedPcec, res.actualPcec);
            if (!clip.expectedStreamSnapshots.isEmpty()) {
                check.same("golden " + clip.id + " snapshots", clip.expectedStreamSnapshots, res.actualSnapshots);
            }
            check.same("golden " + clip.id + " stream final", clip.expectedPcec, res.finalStreamSettled);
            check.ok("golden " + clip.id + " monotonic", res.monotonicSettled);
            check.ok("golden " + clip.id + " pcec inputs matched", res.pcecInputsMatched);
        }
    }

    private static String readOptionalResourceOrProp(String resource, String propName) throws Exception {
        String path = System.getProperty(propName);
        if (path != null && path.length() > 0) {
            File f = new File(path);
            if (f.isFile()) {
                try (InputStream in = new FileInputStream(f)) {
                    return readUtf8(in);
                }
            }
        }
        InputStream res = SelfTest.class.getResourceAsStream(resource);
        if (res != null) {
            try (InputStream in = res) {
                return readUtf8(in);
            }
        }
        return null;
    }

    private static String readUtf8(InputStream in) throws Exception {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buf = new byte[8192];
        int n;
        while ((n = in.read(buf)) >= 0) out.write(buf, 0, n);
        return new String(out.toByteArray(), StandardCharsets.UTF_8);
    }

    private static int countOccurrences(String haystack, String needle) {
        int count = 0;
        int idx = 0;
        while ((idx = haystack.indexOf(needle, idx)) >= 0) {
            count++;
            idx += needle.length();
        }
        return count;
    }

    private static AsrMetadata makeSyntheticMetadata() {
        String[] vocab = new String[] {
            " hello", " world", "ing", " ", " usa", " today", " how", " are", " you",
            " a", " b", " c", " d", " e", " f"
        };
        AsrMetadata.PcecConfig pcec = new AsrMetadata.PcecConfig(
            vocab, 15, 10, 11, 12, 13, 14, 15, 9, true, true
        );
        AsrMetadata.PcecRung rung = new AsrMetadata.PcecRung("pcec_c2", "pcec_c2_flush", 2);
        List<AsrMetadata.TierEntry> tiers = Collections.singletonList(
            new AsrMetadata.TierEntry("stream_c4r2", rung)
        );
        List<AsrMetadata.VadEntry> vad = Collections.singletonList(
            new AsrMetadata.VadEntry("wake", "vad_dft", 0.2, 0.04)
        );
        return new AsrMetadata(16000, 640, vocab, 15, "stream_c4r2", "asr_encoder.pte", tiers, pcec, vad);
    }

    private static Map<String, MethodMeta> syntheticMetas(
        int commitFrames, int lookaheadFrames, int vocabSize, int hiddenDim, int pcecCommit, int pcecLookahead
    ) {
        int window = (commitFrames + lookaheadFrames) * 640;
        int flushSlots = 2 * (pcecCommit + pcecLookahead) + 1;
        Map<String, MethodMeta> map = new HashMap<String, MethodMeta>();
        map.put("stream_c4r2", new MethodMeta(
            "stream_c4r2",
            Arrays.asList(
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, window}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {10}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {6})
            ),
            Arrays.asList(
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, commitFrames, vocabSize}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {10}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {6}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, commitFrames, hiddenDim})
            )
        ));
        map.put("pcec_c2", new MethodMeta(
            "pcec_c2",
            Arrays.asList(
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1, pcecCommit}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1, pcecCommit}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, pcecCommit, hiddenDim}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, pcecCommit}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, 8}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1})
            ),
            Arrays.asList(
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1, 2 * pcecCommit}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, 8}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1})
            )
        ));
        map.put("pcec_c2_flush", new MethodMeta(
            "pcec_c2_flush",
            Arrays.asList(
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1, pcecCommit}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1, pcecCommit}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, pcecCommit, hiddenDim}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, pcecCommit}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[0]),
                new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, 8}),
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1})
            ),
            Collections.singletonList(
                new MethodMeta.TensorSpec(Tensor.DTYPE_INT64, new int[] {1, flushSlots})
            )
        ));
        map.put("vad_dft", new MethodMeta(
            "vad_dft",
            Collections.singletonList(new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, 16000})),
            Collections.singletonList(new MethodMeta.TensorSpec(Tensor.DTYPE_FP32, new int[] {1, 21}))
        ));
        return map;
    }

    private static String buildSyntheticFixtureJson() {
        Map<String, Object> root = new LinkedHashMap<String, Object>();
        root.put("tier", "stream_c4r2");
        root.put("pcec_method", "pcec_c2");
        root.put("pcec_flush_method", "pcec_c2_flush");
        root.put("vad_method", "vad_dft");

        Map<String, Object> metas = new LinkedHashMap<String, Object>();
        metas.put("stream_c4r2", Json.map(
            "inputs", Json.list(
                specJson(6, 1, 3840), specJson(6, 10), specJson(6, 6)),
            "outputs", Json.list(
                specJson(6, 1, 4, 16), specJson(6, 10), specJson(6, 6), specJson(6, 1, 4, 2))
        ));
        metas.put("pcec_c2", Json.map(
            "inputs", Json.list(
                specJson(4, 1, 2), specJson(4, 1, 2), specJson(6, 1, 2, 2),
                specJson(6, 1, 2), specJson(6, 1, 8), specJson(4, 1)),
            "outputs", Json.list(
                specJson(4, 1, 4), specJson(6, 1, 8), specJson(4, 1))
        ));
        metas.put("pcec_c2_flush", Json.map(
            "inputs", Json.list(
                specJson(4, 1, 2), specJson(4, 1, 2), specJson(6, 1, 2, 2),
                specJson(6, 1, 2), specJson(4), specJson(6, 1, 8), specJson(4, 1)),
            "outputs", Json.list(specJson(4, 1, 9))
        ));
        metas.put("vad_dft", Json.map(
            "inputs", Json.list(specJson(6, 1, 16000)),
            "outputs", Json.list(specJson(6, 1, 21))
        ));
        root.put("method_metas", metas);

        // Clip 1: short clip (2560 samples = 4 frames < window 6 frames -> 0 stream calls during decodeStream, 1 in finish, 0 pcec_steps)
        Map<String, Object> clip1 = new LinkedHashMap<String, Object>();
        clip1.put("id", "clip_short");
        clip1.put("num_samples", Integer.valueOf(2560));
        clip1.put("expected_acoustic", "hello");
        clip1.put("expected_pcec", "Hello.");
        clip1.put("expected_stream_snapshots", Json.list(""));
        clip1.put("stream_steps", Json.list(stepJson(4, new int[] {0, 15, 15, 15})));
        clip1.put("pcec_steps", Json.list());
        clip1.put("pcec_flush", Json.map(
            "n_real", Integer.valueOf(1),
            "input_ids", Json.list(0, 15),
            "input_pause", Json.list(0, 9),
            "slots", Json.list(15, 15, 15, 15, 0, 12, 15, 15, 15)
        ));
        clip1.put("vad_windows", Json.list());

        // Clip 2: multi-PCEC-block clip (16000 samples = 25 frames -> 5 stream steps during two 8000-chunks + 2 in finish)
        // Wait: chunk 1 = 8000 (12.5 frames): nextFrame 0 (0+6<=12.5 -> step 0, nf=4), (4+6<=12.5 -> step 1, nf=8), (8+6=14>12.5).
        // chunk 2 = 16000 (25 frames): nf=8 (14<=25 -> step 2, nf=12), nf=12 (18<=25 -> step 3, nf=16), nf=16 (22<=25 -> step 4, nf=20).
        // finish: nf=20 (20*640=12800 < 16000 -> step 5, valid=4, nf=24), nf=24 (24*640=15360 < 16000 -> step 6, valid=1, nf=28).
        Map<String, Object> clip2 = new LinkedHashMap<String, Object>();
        clip2.put("id", "clip_multi_pcec");
        clip2.put("num_samples", Integer.valueOf(16000));
        clip2.put("expected_acoustic", "hello world how are you");
        clip2.put("expected_pcec", "Hello world. How are you?");
        clip2.put("expected_stream_snapshots", Json.list("hello world", "hello world how are you"));
        clip2.put("stream_steps", Json.list(
            stepJson(4, new int[] {0, 15, 15, 15}), // tok 0 (" hello")
            stepJson(4, new int[] {1, 15, 15, 15}), // tok 1 (" world") -> pcec step 0 (ids=[0,1], pause=[0,2])
            stepJson(4, new int[] {6, 15, 15, 15}), // tok 6 (" how")
            stepJson(4, new int[] {7, 15, 15, 15}), // tok 7 (" are") -> pcec step 1 (ids=[6,7], pause=[2,2])
            stepJson(4, new int[] {8, 15, 15, 15}), // tok 8 (" you")
            stepJson(4, new int[] {15, 15, 15, 15}),
            stepJson(1, new int[] {15, 15, 15, 15})
        ));
        clip2.put("pcec_steps", Json.list(
            Json.map(
                "input_ids", Json.list(0, 1),
                "input_pause", Json.list(0, 2),
                "slots", Json.list(15, 15, 15, 15)
            ),
            Json.map(
                "input_ids", Json.list(6, 7),
                "input_pause", Json.list(2, 2),
                "slots", Json.list(15, 0, 15, 1)
            )
        ));
        clip2.put("pcec_flush", Json.map(
            "n_real", Integer.valueOf(1),
            "input_ids", Json.list(8, 15),
            "input_pause", Json.list(2, 9),
            "slots", Json.list(12, 6, 15, 7, 15, 8, 14, 15, 15)
        ));
        float[] vad = new float[21];
        Arrays.fill(vad, 0.75f);
        clip2.put("vad_windows", Json.list(
            Json.map("start_sample", Integer.valueOf(0), "scores_f32_b64", FixtureReplay.encodeFloat32Base64(vad))
        ));

        // Clip 3: non-multiple-of-640 samples (5300 samples = 8 full frames + 180 trailing samples)
        // chunk 1 (5300): window=3840 -> step 0 (nf=0->4); nf=4 -> (4+6)*640=6400 > 5300.
        // finish: nf=4 (2560<5300 -> step 1, valid=min(4, 8-4)=4, nf=8); nf=8 (5120<5300 -> step 2, valid=min(4, 8-8)=0, nf=12).
        Map<String, Object> clip3 = new LinkedHashMap<String, Object>();
        clip3.put("id", "clip_unaligned");
        clip3.put("num_samples", Integer.valueOf(5300));
        clip3.put("expected_acoustic", "hello world");
        clip3.put("expected_pcec", "Hello world.");
        clip3.put("expected_stream_snapshots", Json.list("hello"));
        clip3.put("stream_steps", Json.list(
            stepJson(4, new int[] {0, 15, 15, 15}),
            stepJson(4, new int[] {1, 15, 15, 15}),
            stepJson(0, new int[] {5, 5, 5, 5}) // valid=0 -> MUST be ignored!
        ));
        clip3.put("pcec_steps", Json.list(
            Json.map(
                "input_ids", Json.list(0, 1),
                "input_pause", Json.list(0, 2),
                "slots", Json.list(15, 15, 15, 15)
            )
        ));
        clip3.put("pcec_flush", Json.map(
            "n_real", Integer.valueOf(0),
            "input_ids", Json.list(15, 15),
            "input_pause", Json.list(9, 9),
            "slots", Json.list(15, 0, 15, 1, 12, 15, 15, 15, 15)
        ));
        clip3.put("vad_windows", Json.list());

        root.put("clips", Json.list(clip1, clip2, clip3));
        return Json.write(root);
    }

    private static Map<String, Object> specJson(int dtype, int... sizes) {
        List<Object> dims = new ArrayList<Object>(sizes.length);
        for (int i = 0; i < sizes.length; i++) dims.add(Integer.valueOf(sizes[i]));
        return Json.map("dtype", Integer.valueOf(dtype), "sizes", dims);
    }

    private static Map<String, Object> stepJson(int valid, int[] argmax) {
        float[] logits = new float[4 * 16];
        List<Object> am = new ArrayList<Object>(valid);
        for (int f = 0; f < 4; f++) {
            logits[f * 16 + argmax[f]] = 10.0f;
            if (f < valid) am.add(Integer.valueOf(argmax[f]));
        }
        float[] hidden = new float[4 * 2];
        return Json.map(
            "valid", Integer.valueOf(valid),
            "logits_argmax", am,
            "logits_f32_b64", FixtureReplay.encodeFloat32Base64(logits),
            "hidden_f32_b64", FixtureReplay.encodeFloat32Base64(hidden)
        );
    }
}
