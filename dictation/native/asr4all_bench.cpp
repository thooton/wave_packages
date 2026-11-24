#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dirent.h>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <sstream>
#include <string>
#include <sys/resource.h>
#include <vector>

#include "asr4all_runtime.h"
#include "mini_json.h"

namespace {

using asr4all::AsrRuntime;
using asr4all::InputTensor;
using asr4all::JsonValue;
using asr4all::MethodMetaInfo;
using asr4all::OutputTensor;
using asr4all::TensorSpec;
using asr4all::json_escape;
using asr4all::kDtypeFloat32;
using asr4all::kDtypeInt64;
using Clock = std::chrono::steady_clock;

constexpr int kSampleRate = 16000;
constexpr int kPauseThresholds[8] = {1, 2, 4, 8, 16, 32, 64, 128};

double elapsed_ms(Clock::time_point t0, Clock::time_point t1) {
  return std::chrono::duration<double, std::milli>(t1 - t0).count();
}

long get_peak_rss_kb() {
  // Prefer /proc/self/status VmHWM when available, fall back to getrusage.
  std::ifstream f("/proc/self/status");
  if (f) {
    std::string line;
    while (std::getline(f, line)) {
      if (line.rfind("VmHWM:", 0) == 0) {
        long kb = 0;
        if (std::sscanf(line.c_str(), "VmHWM: %ld kB", &kb) == 1 && kb > 0) {
          return kb;
        }
      }
    }
  }
  struct rusage ru {};
  if (::getrusage(RUSAGE_SELF, &ru) == 0) {
    return ru.ru_maxrss;
  }
  return 0;
}

std::string read_thermal_summary() {
  DIR* dir = ::opendir("/sys/class/thermal");
  if (!dir) return "";
  std::vector<std::string> entries;
  struct dirent* ent = nullptr;
  while ((ent = ::readdir(dir)) != nullptr) {
    std::string name(ent->d_name);
    if (name.rfind("thermal_zone", 0) == 0) {
      entries.push_back(name);
    }
  }
  ::closedir(dir);
  std::sort(entries.begin(), entries.end());

  std::ostringstream os;
  bool first = true;
  for (const auto& z : entries) {
    std::ifstream tf("/sys/class/thermal/" + z + "/type");
    std::ifstream vf("/sys/class/thermal/" + z + "/temp");
    std::string type_s, temp_s;
    if (!std::getline(tf, type_s) || !std::getline(vf, temp_s)) continue;
    while (!type_s.empty() && (type_s.back() == '\n' || type_s.back() == '\r'))
      type_s.pop_back();
    while (!temp_s.empty() && (temp_s.back() == '\n' || temp_s.back() == '\r'))
      temp_s.pop_back();
    if (temp_s.empty()) continue;
    if (!first) os << ' ';
    first = false;
    os << type_s << '=' << temp_s;
  }
  return os.str();
}

bool read_file_text(const std::string& path, std::string& out) {
  std::ifstream f(path, std::ios::binary);
  if (!f) return false;
  std::ostringstream ss;
  ss << f.rdbuf();
  out = ss.str();
  return true;
}

uint16_t rd_u16_le(const uint8_t* p) {
  return static_cast<uint16_t>(p[0]) | (static_cast<uint16_t>(p[1]) << 8);
}

uint32_t rd_u32_le(const uint8_t* p) {
  return static_cast<uint32_t>(p[0]) | (static_cast<uint32_t>(p[1]) << 8) |
         (static_cast<uint32_t>(p[2]) << 16) | (static_cast<uint32_t>(p[3]) << 24);
}

bool load_wav_16k_mono(const std::string& path, std::vector<float>& pcm, std::string& err) {
  std::ifstream f(path, std::ios::binary);
  if (!f) {
    err = "cannot open wav: " + path;
    return false;
  }
  std::vector<uint8_t> bytes(
      (std::istreambuf_iterator<char>(f)), std::istreambuf_iterator<char>());
  if (bytes.size() < 44 || std::memcmp(bytes.data(), "RIFF", 4) != 0 ||
      std::memcmp(bytes.data() + 8, "WAVE", 4) != 0) {
    err = "not a RIFF/WAVE file: " + path;
    return false;
  }

  bool have_fmt = false;
  uint16_t audio_fmt = 0, channels = 0, bits_per_sample = 0;
  uint32_t sample_rate = 0;
  size_t data_off = 0, data_size = 0;
  bool have_data = false;

  size_t pos = 12;
  while (pos + 8 <= bytes.size()) {
    const uint8_t* hdr = bytes.data() + pos;
    uint32_t chunk_sz = rd_u32_le(hdr + 4);
    pos += 8;
    if (pos + chunk_sz > bytes.size()) {
      chunk_sz = static_cast<uint32_t>(bytes.size() - pos);
    }
    if (std::memcmp(hdr, "fmt ", 4) == 0 && chunk_sz >= 16) {
      audio_fmt = rd_u16_le(bytes.data() + pos);
      channels = rd_u16_le(bytes.data() + pos + 2);
      sample_rate = rd_u32_le(bytes.data() + pos + 4);
      bits_per_sample = rd_u16_le(bytes.data() + pos + 14);
      have_fmt = true;
    } else if (std::memcmp(hdr, "data", 4) == 0) {
      data_off = pos;
      data_size = chunk_sz;
      have_data = true;
    }
    pos += chunk_sz + (chunk_sz & 1u);
  }

  if (!have_fmt || !have_data) {
    err = "missing fmt or data chunk in wav: " + path;
    return false;
  }
  if (audio_fmt != 1 || channels != 1 || sample_rate != kSampleRate ||
      bits_per_sample != 16) {
    std::ostringstream os;
    os << path << ": want 16000 Hz mono PCM16, got fmt=" << audio_fmt
       << " ch=" << channels << " sr=" << sample_rate << " bits=" << bits_per_sample;
    err = os.str();
    return false;
  }

  const size_t n_samples = data_size / 2;
  pcm.resize(n_samples);
  const uint8_t* p = bytes.data() + data_off;
  for (size_t i = 0; i < n_samples; ++i) {
    int16_t s = static_cast<int16_t>(rd_u16_le(p + 2 * i));
    pcm[i] = static_cast<float>(s) / 32768.0f;
  }
  return true;
}

int pause_bucket(int blanks) {
  int b = 0;
  for (int t : kPauseThresholds) {
    if (blanks >= t) ++b;
  }
  return b;
}

// ASCII + Latin-1 UTF-8 uppercase conversion matching Python str.upper() on
// PCEC vocab tokens.
std::string utf8_upper(const std::string& s) {
  std::string out;
  out.reserve(s.size());
  for (size_t i = 0; i < s.size(); ++i) {
    unsigned char c = static_cast<unsigned char>(s[i]);
    if (c >= 'a' && c <= 'z') {
      out.push_back(static_cast<char>(c - 'a' + 'A'));
    } else if (c == 0xC3 && i + 1 < s.size()) {
      unsigned char c2 = static_cast<unsigned char>(s[i + 1]);
      if (c2 == 0x9F) {
        // U+00DF 'ß' -> "SS"
        out += "SS";
        ++i;
      } else if (c2 >= 0xA0 && c2 <= 0xBE && c2 != 0xB7) {
        out.push_back(static_cast<char>(0xC3));
        out.push_back(static_cast<char>(c2 - 0x20));
        ++i;
      } else {
        out.push_back(static_cast<char>(c));
      }
    } else {
      out.push_back(static_cast<char>(c));
    }
  }
  return out;
}

std::string utf8_cap_first(const std::string& s) {
  if (s.empty()) return s;
  unsigned char c = static_cast<unsigned char>(s[0]);
  if (c < 0x80) {
    std::string out = s;
    if (c >= 'a' && c <= 'z') {
      out[0] = static_cast<char>(c - 'a' + 'A');
    }
    return out;
  }
  if (c == 0xC3 && s.size() >= 2) {
    unsigned char c2 = static_cast<unsigned char>(s[1]);
    if (c2 == 0x9F) {
      return "SS" + s.substr(2);
    }
    if (c2 >= 0xA0 && c2 <= 0xBE && c2 != 0xB7) {
      std::string out = s;
      out[1] = static_cast<char>(c2 - 0x20);
      return out;
    }
  }
  return s;
}

std::string strip_ws(const std::string& s) {
  size_t a = 0;
  while (a < s.size() && std::isspace(static_cast<unsigned char>(s[a]))) ++a;
  size_t b = s.size();
  while (b > a && std::isspace(static_cast<unsigned char>(s[b - 1]))) --b;
  return s.substr(a, b - a);
}

std::string collapse_spaces(const std::string& s) {
  std::string out;
  bool in_word = false;
  for (unsigned char c : s) {
    if (std::isspace(c)) {
      in_word = false;
    } else {
      if (!in_word && !out.empty()) out.push_back(' ');
      out.push_back(static_cast<char>(c));
      in_word = true;
    }
  }
  return out;
}

struct PcecMeta {
  std::vector<std::string> vocab;
  int blank_id = 0;
  int ctrl_cap = -1;
  int ctrl_allcaps = -1;
  int ctrl_period = -1;
  int ctrl_comma = -1;
  int ctrl_question = -1;
  int pad_in = 0;
  int pause_blackout = 0;
  bool real_pause = false;
};

struct TierConfig {
  std::string name;
  bool has_pcec = false;
  std::string pcec_name;
  std::string pcec_flush;
  int pcec_n_cache = 2;
};

struct BundleMeta {
  int spf = 640;
  int blank_id = 256;
  std::vector<std::string> vocab;
  std::string default_tier = "stream_c16r4";
  std::vector<TierConfig> tiers;
  bool has_pcec = false;
  PcecMeta pcec;
};

bool parse_bundle_meta(const std::string& path, BundleMeta& m, std::string& err) {
  std::string txt;
  if (!read_file_text(path, txt)) {
    err = "cannot read metadata: " + path;
    return false;
  }
  JsonValue root;
  if (!asr4all::parse_json(txt, root, &err)) {
    return false;
  }
  if (auto* v = root.get("samples_per_frame")) m.spf = static_cast<int>(v->as_int(640));
  if (auto* v = root.get("blank_id")) m.blank_id = static_cast<int>(v->as_int(256));
  if (auto* v = root.get("default_tier")) m.default_tier = v->as_string();
  if (auto* vv = root.get("vocab"); vv && vv->is_array()) {
    m.vocab.reserve(vv->arr_val.size());
    for (const auto& e : vv->arr_val) m.vocab.push_back(e.as_string());
  }
  if (auto* tt = root.get("tiers"); tt && tt->is_array()) {
    for (const auto& t : tt->arr_val) {
      TierConfig tc;
      if (auto* n = t.get("name")) tc.name = n->as_string();
      if (auto* p = t.get("pcec"); p && p->is_object()) {
        tc.has_pcec = true;
        if (auto* n = p->get("name")) tc.pcec_name = n->as_string();
        if (auto* fl = p->get("flush")) tc.pcec_flush = fl->as_string();
        if (auto* nc = p->get("cache_tensors")) tc.pcec_n_cache = static_cast<int>(nc->as_int(2));
      }
      m.tiers.push_back(std::move(tc));
    }
  }
  if (auto* pm = root.get("pcec"); pm && pm->is_object()) {
    m.has_pcec = true;
    if (auto* vv = pm->get("vocab"); vv && vv->is_array()) {
      m.pcec.vocab.reserve(vv->arr_val.size());
      for (const auto& e : vv->arr_val) m.pcec.vocab.push_back(e.as_string());
    }
    if (auto* v = pm->get("blank_id")) m.pcec.blank_id = static_cast<int>(v->as_int());
    if (auto* v = pm->get("pad_in")) m.pcec.pad_in = static_cast<int>(v->as_int());
    if (auto* v = pm->get("pause_blackout")) m.pcec.pause_blackout = static_cast<int>(v->as_int());
    if (auto* v = pm->get("real_pause")) m.pcec.real_pause = v->as_bool();
    if (auto* c = pm->get("ctrl"); c && c->is_object()) {
      if (auto* v = c->get("cap")) m.pcec.ctrl_cap = static_cast<int>(v->as_int(-1));
      if (auto* v = c->get("allcaps")) m.pcec.ctrl_allcaps = static_cast<int>(v->as_int(-1));
      if (auto* v = c->get("period")) m.pcec.ctrl_period = static_cast<int>(v->as_int(-1));
      if (auto* v = c->get("comma")) m.pcec.ctrl_comma = static_cast<int>(v->as_int(-1));
      if (auto* v = c->get("question")) m.pcec.ctrl_question = static_cast<int>(v->as_int(-1));
    }
  }
  return true;
}

std::string render_slots(const PcecMeta& pm, const std::vector<int64_t>& slots) {
  struct Word {
    std::vector<std::string> pieces;
    std::string cas;
    std::string punct;
  };
  std::vector<Word> words;
  std::string pending;
  int64_t prev = -1;
  for (int64_t i : slots) {
    if (i == prev || i == pm.blank_id) {
      prev = i;
      continue;
    }
    prev = i;
    if (i == pm.ctrl_cap) {
      pending = "cap";
    } else if (i == pm.ctrl_allcaps) {
      pending = "upper";
    } else if (i == pm.ctrl_period || i == pm.ctrl_comma || i == pm.ctrl_question) {
      if (!words.empty()) {
        if (i == pm.ctrl_period) words.back().punct = ".";
        else if (i == pm.ctrl_comma) words.back().punct = ",";
        else words.back().punct = "?";
      }
    } else if (i >= 0 && static_cast<size_t>(i) < pm.vocab.size() &&
               !pm.vocab[static_cast<size_t>(i)].empty()) {
      const std::string& piece = pm.vocab[static_cast<size_t>(i)];
      if (piece[0] == ' ' || words.empty()) {
        Word w;
        w.pieces.push_back(piece);
        w.cas = pending;
        pending.clear();
        words.push_back(std::move(w));
      } else {
        words.back().pieces.push_back(piece);
      }
    }
  }

  std::vector<std::string> out;
  bool sentence_start = true;
  for (const auto& wd : words) {
    std::string joined;
    for (const auto& p : wd.pieces) joined += p;
    std::string w = strip_ws(joined);
    if (w.empty()) continue;
    if (wd.cas == "upper") {
      w = utf8_upper(w);
    } else if (wd.cas == "cap" || sentence_start) {
      w = utf8_cap_first(w);
    }
    sentence_start = (wd.punct == "." || wd.punct == "?");
    out.push_back(w + wd.punct);
  }
  std::string res;
  for (size_t i = 0; i < out.size(); ++i) {
    if (i > 0) res.push_back(' ');
    res += out[i];
  }
  return res;
}

struct TensorBuf {
  TensorSpec spec;
  std::vector<float> f32;
  std::vector<int64_t> i64;

  void init_zero(const TensorSpec& s) {
    spec = s;
    const size_t n = s.numel();
    if (s.dtype == kDtypeFloat32) {
      f32.assign(n, 0.0f);
      i64.clear();
    } else if (s.dtype == kDtypeInt64) {
      i64.assign(n, 0);
      f32.clear();
    }
  }

  InputTensor as_input() const {
    InputTensor in;
    in.dtype = spec.dtype;
    in.sizes = spec.sizes;
    if (spec.dtype == kDtypeFloat32) {
      in.f32 = f32.data();
      in.count = f32.size();
    } else {
      in.i64 = i64.data();
      in.count = i64.size();
    }
    return in;
  }

  void copy_from(const OutputTensor& out) {
    if (spec.dtype == kDtypeFloat32) {
      f32 = out.f32;
    } else {
      i64 = out.i64;
    }
  }
};

class PcecRunner {
 public:
  bool init(
      AsrRuntime* rt,
      const PcecMeta& pm,
      const TierConfig& tc,
      int hidden_dim,
      std::string& err) {
    rt_ = rt;
    pm_ = &pm;
    name_ = tc.pcec_name;
    flush_name_ = tc.pcec_flush;
    n_cache_ = tc.pcec_n_cache;
    dim_ = hidden_dim;

    MethodMetaInfo sm, fm;
    if (!rt_->get_method_meta(name_, sm) || !rt_->get_method_meta(flush_name_, fm)) {
      err = rt_->last_error();
      return false;
    }
    commit_ = sm.inputs[0].sizes[1];
    const int flush_slots = fm.outputs[0].sizes[1];
    lookahead_ = (flush_slots - 1) / 2 - commit_;
    const int n_feat = static_cast<int>(sm.inputs.size()) - n_cache_;
    wants_acoustic_ = (n_feat >= 3);
    wants_keep_ = (n_feat == 4);

    cache_specs_.clear();
    for (int i = n_feat; i < static_cast<int>(sm.inputs.size()); ++i) {
      cache_specs_.push_back(sm.inputs[static_cast<size_t>(i)]);
    }

    if (rt_->load_method(name_, "pcec") != 0 ||
        rt_->load_method(flush_name_, "pcec") != 0) {
      err = rt_->last_error();
      return false;
    }
    reset();
    return true;
  }

  void reset() {
    cache_.resize(cache_specs_.size());
    for (size_t i = 0; i < cache_specs_.size(); ++i) {
      cache_[i].init_zero(cache_specs_[i]);
    }
    ids_.clear();
    pause_.clear();
    acoustic_.clear();
    keep_.clear();
    slots_.clear();
    consumed_ = 0;
    has_open_ = false;
    open_acc_.assign(static_cast<size_t>(dim_), 0.0);
    open_frames_ = 0;
    open_blanks_ = 0;
    open_id_ = 0;
    blanks_ = 0;
    prev_ = -1;
    pcec_ms_ = 0.0;
  }

  void pool(const std::vector<int>& frame_ids, const float* hidden, int blank) {
    for (size_t t = 0; t < frame_ids.size(); ++t) {
      const int fid = frame_ids[t];
      const float* hrow = hidden + t * static_cast<size_t>(dim_);
      if (fid != prev_ && fid != blank) {
        if (has_open_) emit();
        has_open_ = true;
        open_id_ = fid;
        open_acc_.resize(static_cast<size_t>(dim_));
        for (int d = 0; d < dim_; ++d) {
          open_acc_[static_cast<size_t>(d)] = static_cast<double>(hrow[d]);
        }
        open_frames_ = 1;
        open_blanks_ = blanks_;
        blanks_ = 0;
      } else if (has_open_) {
        for (int d = 0; d < dim_; ++d) {
          open_acc_[static_cast<size_t>(d)] += static_cast<double>(hrow[d]);
        }
        open_frames_ += 1;
      }
      prev_ = fid;
      if (fid == blank) {
        blanks_ += 1;
      }
    }
  }

  void flush_open() {
    if (has_open_) emit();
  }

  bool drain(std::string& err) {
    const int k = commit_;
    while (static_cast<int>(ids_.size()) >= k) {
      std::vector<int64_t> ids_buf, pause_buf;
      std::vector<float> ac_buf, keep_buf;
      std::vector<InputTensor> inputs;
      build_feats(k, k, ids_buf, pause_buf, ac_buf, keep_buf, inputs);
      for (const auto& c : cache_) inputs.push_back(c.as_input());

      std::vector<OutputTensor> outs;
      auto t0 = Clock::now();
      if (!rt_->execute(name_, inputs, outs)) {
        err = rt_->last_error();
        return false;
      }
      pcec_ms_ += elapsed_ms(t0, Clock::now());

      const int skip = std::min(2 * k, std::max(0, 2 * lookahead_ - 2 * consumed_));
      for (int s = skip; s < 2 * k; ++s) {
        slots_.push_back(outs[0].i64[static_cast<size_t>(s)]);
      }
      for (int ci = 0; ci < n_cache_; ++ci) {
        cache_[static_cast<size_t>(ci)].copy_from(
            outs[outs.size() - static_cast<size_t>(n_cache_) + static_cast<size_t>(ci)]);
      }
      ids_.erase(ids_.begin(), ids_.begin() + k);
      pause_.erase(pause_.begin(), pause_.begin() + k);
      acoustic_.erase(acoustic_.begin(), acoustic_.begin() + k);
      keep_.erase(keep_.begin(), keep_.begin() + k);
      consumed_ += k;
    }
    return true;
  }

  bool decode_final(std::string& out_text, std::string& err) {
    const int n = static_cast<int>(ids_.size());
    std::vector<int64_t> ids_buf, pause_buf;
    std::vector<float> ac_buf, keep_buf;
    std::vector<InputTensor> inputs;
    build_feats(commit_, n, ids_buf, pause_buf, ac_buf, keep_buf, inputs);

    int64_t n_real = n;
    InputTensor n_real_in;
    n_real_in.dtype = kDtypeInt64;
    n_real_in.sizes = {};  // 0-D scalar tensor
    n_real_in.i64 = &n_real;
    n_real_in.count = 1;
    inputs.push_back(n_real_in);

    for (const auto& c : cache_) inputs.push_back(c.as_input());

    std::vector<OutputTensor> outs;
    auto t0 = Clock::now();
    if (!rt_->execute(flush_name_, inputs, outs)) {
      err = rt_->last_error();
      return false;
    }
    pcec_ms_ += elapsed_ms(t0, Clock::now());

    const int valid = 2 * lookahead_ + 2 * n + 1;
    const int skip = std::max(0, 2 * lookahead_ - 2 * consumed_);
    std::vector<int64_t> all_slots = slots_;
    for (int s = skip; s < valid; ++s) {
      all_slots.push_back(outs[0].i64[static_cast<size_t>(s)]);
    }
    out_text = render_slots(*pm_, all_slots);
    return true;
  }

  double pcec_ms() const { return pcec_ms_; }

 private:
  void emit() {
    has_open_ = false;
    ids_.push_back(open_id_);
    std::vector<float> avg(static_cast<size_t>(dim_));
    const double n_frames = static_cast<double>(open_frames_);
    for (int d = 0; d < dim_; ++d) {
      avg[static_cast<size_t>(d)] =
          static_cast<float>(open_acc_[static_cast<size_t>(d)] / n_frames);
    }
    acoustic_.push_back(std::move(avg));
    pause_.push_back(pause_bucket(open_blanks_));
    keep_.push_back(0.0f);
  }

  void build_feats(
      int k,
      int n,
      std::vector<int64_t>& ids_buf,
      std::vector<int64_t>& pause_buf,
      std::vector<float>& ac_buf,
      std::vector<float>& keep_buf,
      std::vector<InputTensor>& inputs) const {
    ids_buf.assign(static_cast<size_t>(k), pm_->pad_in);
    pause_buf.assign(static_cast<size_t>(k), pm_->pause_blackout);
    for (int i = 0; i < n; ++i) {
      ids_buf[static_cast<size_t>(i)] = ids_[static_cast<size_t>(i)];
      if (pm_->real_pause) {
        pause_buf[static_cast<size_t>(i)] = pause_[static_cast<size_t>(i)];
      }
    }
    inputs.push_back({kDtypeInt64, {1, k}, nullptr, ids_buf.data(), ids_buf.size()});
    inputs.push_back({kDtypeInt64, {1, k}, nullptr, pause_buf.data(), pause_buf.size()});
    if (wants_acoustic_) {
      ac_buf.assign(static_cast<size_t>(k * dim_), 0.0f);
      for (int i = 0; i < n; ++i) {
        std::memcpy(
            ac_buf.data() + static_cast<size_t>(i * dim_),
            acoustic_[static_cast<size_t>(i)].data(),
            static_cast<size_t>(dim_) * sizeof(float));
      }
      inputs.push_back({kDtypeFloat32, {1, k, dim_}, ac_buf.data(), nullptr, ac_buf.size()});
    }
    if (wants_keep_) {
      keep_buf.assign(static_cast<size_t>(k), 0.0f);
      for (int i = 0; i < n; ++i) {
        keep_buf[static_cast<size_t>(i)] = keep_[static_cast<size_t>(i)];
      }
      inputs.push_back({kDtypeFloat32, {1, k}, keep_buf.data(), nullptr, keep_buf.size()});
    }
  }

  AsrRuntime* rt_ = nullptr;
  const PcecMeta* pm_ = nullptr;
  std::string name_;
  std::string flush_name_;
  int n_cache_ = 2;
  int commit_ = 16;
  int lookahead_ = 0;
  int dim_ = 384;
  bool wants_acoustic_ = true;
  bool wants_keep_ = true;

  std::vector<TensorSpec> cache_specs_;
  std::vector<TensorBuf> cache_;
  std::vector<int> ids_;
  std::vector<int> pause_;
  std::vector<std::vector<float>> acoustic_;
  std::vector<float> keep_;
  std::vector<int64_t> slots_;
  int consumed_ = 0;

  bool has_open_ = false;
  int open_id_ = 0;
  std::vector<double> open_acc_;
  int open_frames_ = 0;
  int open_blanks_ = 0;
  int blanks_ = 0;
  int prev_ = -1;
  double pcec_ms_ = 0.0;
};

struct ClipResult {
  std::string wav;
  double audio_s = 0.0;
  double decode_s = 0.0;
  double rtf = 0.0;
  int step_count = 0;
  double step_ms_median = 0.0;
  double step_ms_p95 = 0.0;
  double step_ms_max = 0.0;
  double pcec_ms = 0.0;
  double vad_ms = 0.0;
  std::string acoustic_text;
  std::string pcec_text;
};

double percentile(std::vector<double> v, double p) {
  if (v.empty()) return 0.0;
  std::sort(v.begin(), v.end());
  double idx = p * static_cast<double>(v.size() - 1);
  size_t lo = static_cast<size_t>(std::floor(idx));
  size_t hi = std::min(v.size() - 1, lo + 1);
  double frac = idx - static_cast<double>(lo);
  return v[lo] * (1.0 - frac) + v[hi] * frac;
}

void print_usage(const char* argv0) {
  std::cerr
      << "Usage: " << argv0
      << " --model <asr_encoder.pte> --meta <metadata.json>"
      << " [--tier stream_c16r4] [--threads 4] [--no-pcec]"
      << " [--vad none|vad|vad_dft] [--repeat-seconds N]"
      << " [--json-out report.json] <clip1.wav> [clip2.wav ...]\n";
}

}  // namespace

int main(int argc, char** argv) {
  std::string model_path;
  std::string meta_path;
  std::string tier_name;
  int threads = 4;
  bool no_pcec = false;
  std::string vad_mode = "none";
  double repeat_seconds = 0.0;
  std::string json_out;
  std::vector<std::string> wav_paths;

  for (int i = 1; i < argc; ++i) {
    std::string a = argv[i];
    if (a == "--model" && i + 1 < argc) {
      model_path = argv[++i];
    } else if (a == "--meta" && i + 1 < argc) {
      meta_path = argv[++i];
    } else if (a == "--tier" && i + 1 < argc) {
      tier_name = argv[++i];
    } else if (a == "--threads" && i + 1 < argc) {
      threads = std::atoi(argv[++i]);
    } else if (a == "--no-pcec") {
      no_pcec = true;
    } else if (a == "--vad" && i + 1 < argc) {
      vad_mode = argv[++i];
    } else if (a == "--repeat-seconds" && i + 1 < argc) {
      repeat_seconds = std::atof(argv[++i]);
    } else if (a == "--json-out" && i + 1 < argc) {
      json_out = argv[++i];
    } else if (a == "-h" || a == "--help") {
      print_usage(argv[0]);
      return 0;
    } else if (!a.empty() && a[0] == '-') {
      std::cerr << "Unknown option: " << a << "\n";
      print_usage(argv[0]);
      return 2;
    } else {
      wav_paths.push_back(a);
    }
  }

  if (model_path.empty() || meta_path.empty() || wav_paths.empty()) {
    print_usage(argv[0]);
    return 2;
  }

  BundleMeta meta;
  std::string err;
  if (!parse_bundle_meta(meta_path, meta, err)) {
    std::cerr << "Error parsing metadata: " << err << "\n";
    return 1;
  }

  if (tier_name.empty()) tier_name = meta.default_tier;
  const TierConfig* tier_cfg = nullptr;
  for (const auto& tc : meta.tiers) {
    if (tc.name == tier_name) {
      tier_cfg = &tc;
      break;
    }
  }
  if (!tier_cfg) {
    std::cerr << "Unknown tier: " << tier_name << "\n";
    return 1;
  }

  asr4all::set_num_threads(threads);

  auto t_load0 = Clock::now();
  auto rt = AsrRuntime::open_file(model_path);
  if (!rt) {
    std::cerr << "Failed to open model: " << asr4all::get_thread_last_error() << "\n";
    return 1;
  }

  MethodMetaInfo stream_meta;
  if (!rt->get_method_meta(tier_cfg->name, stream_meta)) {
    std::cerr << "Failed to get stream meta: " << rt->last_error() << "\n";
    return 1;
  }
  if (rt->load_method(tier_cfg->name, "") != 0) {
    std::cerr << "Failed to load stream method: " << rt->last_error() << "\n";
    return 1;
  }

  const int window = stream_meta.inputs[0].sizes.back();
  const int commit = stream_meta.outputs[0].sizes[1];
  const int vocab_out = stream_meta.outputs[0].sizes[2];
  const int n_out = static_cast<int>(stream_meta.outputs.size());
  const int hidden_dim = (n_out > 3) ? stream_meta.outputs[3].sizes.back() : 0;
  const bool use_pcec = !no_pcec && meta.has_pcec && tier_cfg->has_pcec && n_out > 3;

  PcecRunner pcec;
  if (use_pcec) {
    if (!pcec.init(rt.get(), meta.pcec, *tier_cfg, hidden_dim, err)) {
      std::cerr << "Failed to init PCEC: " << err << "\n";
      return 1;
    }
  }

  int vad_samples = 0;
  const bool use_vad = (vad_mode == "vad" || vad_mode == "vad_dft");
  if (use_vad) {
    MethodMetaInfo vm;
    if (!rt->get_method_meta(vad_mode, vm)) {
      std::cerr << "Failed to get VAD meta: " << rt->last_error() << "\n";
      return 1;
    }
    vad_samples = vm.inputs[0].sizes.back();
    if (rt->load_method(vad_mode, "") != 0) {
      std::cerr << "Failed to load VAD method: " << rt->last_error() << "\n";
      return 1;
    }
  } else if (vad_mode != "none") {
    std::cerr << "Invalid --vad mode: " << vad_mode << "\n";
    return 2;
  }

  const double load_ms = elapsed_ms(t_load0, Clock::now());

  // Warmup: single zero-input pass so lazy initialization doesn't pollute clip 0.
  auto t_warm0 = Clock::now();
  {
    std::vector<float> zero_win(static_cast<size_t>(window), 0.0f);
    TensorBuf fc, ac;
    fc.init_zero(stream_meta.inputs[1]);
    ac.init_zero(stream_meta.inputs[2]);
    std::vector<InputTensor> ins = {
        {kDtypeFloat32, {1, window}, zero_win.data(), nullptr, zero_win.size()},
        fc.as_input(),
        ac.as_input(),
    };
    std::vector<OutputTensor> outs;
    if (!rt->execute(tier_cfg->name, ins, outs)) {
      std::cerr << "Warmup execute failed: " << rt->last_error() << "\n";
      return 1;
    }
  }
  const double warmup_ms = elapsed_ms(t_warm0, Clock::now());

  auto run_clip = [&](const std::string& wav_path,
                      const std::vector<float>& pcm,
                      ClipResult& res) -> bool {
    res = ClipResult{};
    res.wav = wav_path;
    res.audio_s = static_cast<double>(pcm.size()) / static_cast<double>(kSampleRate);

    TensorBuf filter_cache, attn_cache;
    filter_cache.init_zero(stream_meta.inputs[1]);
    attn_cache.init_zero(stream_meta.inputs[2]);
    if (use_pcec) pcec.reset();

    std::vector<int> all_frame_ids;
    std::vector<double> step_times;
    std::vector<float> win(static_cast<size_t>(window), 0.0f);

    const int64_t total_frames = static_cast<int64_t>(pcm.size()) / meta.spf;
    int64_t next_frame = 0;

    auto t_dec0 = Clock::now();
    // Same step sequence as decode_stream(clip) + finish(): runs while
    // next_frame * spf < len(pcm).
    while (next_frame * meta.spf < static_cast<int64_t>(pcm.size())) {
      const size_t start = static_cast<size_t>(next_frame * meta.spf);
      std::fill(win.begin(), win.end(), 0.0f);
      const size_t hi = std::min(pcm.size(), start + static_cast<size_t>(window));
      if (hi > start) {
        std::memcpy(win.data(), pcm.data() + start, (hi - start) * sizeof(float));
      }

      std::vector<InputTensor> ins = {
          {kDtypeFloat32, {1, window}, win.data(), nullptr, win.size()},
          filter_cache.as_input(),
          attn_cache.as_input(),
      };
      std::vector<OutputTensor> outs;
      auto ts0 = Clock::now();
      if (!rt->execute(tier_cfg->name, ins, outs)) {
        std::cerr << "Stream execute failed: " << rt->last_error() << "\n";
        return false;
      }
      step_times.push_back(elapsed_ms(ts0, Clock::now()));

      filter_cache.copy_from(outs[1]);
      attn_cache.copy_from(outs[2]);

      const int64_t valid =
          std::max<int64_t>(0, std::min<int64_t>(commit, total_frames - next_frame));
      std::vector<int> frame_ids;
      frame_ids.reserve(static_cast<size_t>(valid));
      const float* logits = outs[0].f32.data();
      for (int64_t t = 0; t < valid; ++t) {
        const float* row = logits + static_cast<size_t>(t * vocab_out);
        int best_idx = 0;
        float best_val = row[0];
        for (int v = 1; v < vocab_out; ++v) {
          if (row[v] > best_val) {
            best_val = row[v];
            best_idx = v;
          }
        }
        frame_ids.push_back(best_idx);
      }

      all_frame_ids.insert(all_frame_ids.end(), frame_ids.begin(), frame_ids.end());
      if (use_pcec && !frame_ids.empty()) {
        pcec.pool(frame_ids, outs[3].f32.data(), meta.blank_id);
        if (!pcec.drain(err)) {
          std::cerr << "PCEC drain failed: " << err << "\n";
          return false;
        }
      }
      next_frame += commit;
    }

    if (use_pcec) {
      pcec.flush_open();
      if (!pcec.drain(err)) {
        std::cerr << "PCEC final drain failed: " << err << "\n";
        return false;
      }
      if (!pcec.decode_final(res.pcec_text, err)) {
        std::cerr << "PCEC flush failed: " << err << "\n";
        return false;
      }
      res.pcec_ms = pcec.pcec_ms();
    }

    const double dec_ms = elapsed_ms(t_dec0, Clock::now());
    res.decode_s = dec_ms / 1000.0;
    res.rtf = res.audio_s > 0.0 ? (res.decode_s / res.audio_s) : 0.0;
    res.step_count = static_cast<int>(step_times.size());
    res.step_ms_median = percentile(step_times, 0.50);
    res.step_ms_p95 = percentile(step_times, 0.95);
    res.step_ms_max = step_times.empty()
                          ? 0.0
                          : *std::max_element(step_times.begin(), step_times.end());

    // Acoustic CTC collapse
    std::string raw;
    int prev = -1;
    for (int id : all_frame_ids) {
      if (id != prev && id != meta.blank_id &&
          id >= 0 && static_cast<size_t>(id) < meta.vocab.size()) {
        raw += meta.vocab[static_cast<size_t>(id)];
      }
      prev = id;
    }
    res.acoustic_text = collapse_spaces(raw);
    if (!use_pcec) {
      res.pcec_text = res.acoustic_text;
    }

    if (use_vad && vad_samples > 0) {
      std::vector<float> vwin(static_cast<size_t>(vad_samples), 0.0f);
      auto tv0 = Clock::now();
      for (size_t off = 0; off < pcm.size(); off += static_cast<size_t>(vad_samples)) {
        std::fill(vwin.begin(), vwin.end(), 0.0f);
        size_t n = std::min(static_cast<size_t>(vad_samples), pcm.size() - off);
        std::memcpy(vwin.data(), pcm.data() + off, n * sizeof(float));
        std::vector<InputTensor> vins = {
            {kDtypeFloat32, {1, vad_samples}, vwin.data(), nullptr, vwin.size()},
        };
        std::vector<OutputTensor> vouts;
        if (!rt->execute(vad_mode, vins, vouts)) {
          std::cerr << "VAD execute failed: " << rt->last_error() << "\n";
          return false;
        }
      }
      res.vad_ms = elapsed_ms(tv0, Clock::now());
    }

    return true;
  };

  std::vector<std::vector<float>> loaded_wavs(wav_paths.size());
  for (size_t i = 0; i < wav_paths.size(); ++i) {
    if (!load_wav_16k_mono(wav_paths[i], loaded_wavs[i], err)) {
      std::cerr << "Error loading wav: " << err << "\n";
      return 1;
    }
  }

  std::vector<ClipResult> results;
  results.reserve(wav_paths.size());
  for (size_t i = 0; i < wav_paths.size(); ++i) {
    ClipResult r;
    if (!run_clip(wav_paths[i], loaded_wavs[i], r)) return 1;
    std::cout << "[" << tier_cfg->name << "] " << r.wav
              << " audio=" << std::fixed << std::setprecision(2) << r.audio_s << "s"
              << " decode=" << r.decode_s << "s"
              << " rtf=" << std::setprecision(3) << r.rtf
              << " pcec_ms=" << std::setprecision(1) << r.pcec_ms
              << " | " << (use_pcec ? r.pcec_text : r.acoustic_text) << "\n";
    results.push_back(std::move(r));
  }

  // Sustained thermal / rolling-RTF loop when --repeat-seconds > 0.
  double sustained_audio_s = 0.0;
  double sustained_decode_s = 0.0;
  struct RollingSample {
    double total_audio_s = 0.0;
    double window_rtf = 0.0;
    double cumulative_rtf = 0.0;
    std::string thermal;
  };
  std::vector<RollingSample> rolling;
  if (repeat_seconds > 0.0) {
    double win_audio_s = 0.0;
    double win_decode_s = 0.0;
    size_t idx = 0;
    while (sustained_audio_s < repeat_seconds) {
      ClipResult r;
      if (!run_clip(wav_paths[idx], loaded_wavs[idx], r)) return 1;
      sustained_audio_s += r.audio_s;
      sustained_decode_s += r.decode_s;
      win_audio_s += r.audio_s;
      win_decode_s += r.decode_s;
      idx = (idx + 1) % wav_paths.size();

      if (win_audio_s >= 10.0 || sustained_audio_s >= repeat_seconds) {
        RollingSample rs;
        rs.total_audio_s = sustained_audio_s;
        rs.window_rtf = win_audio_s > 0.0 ? (win_decode_s / win_audio_s) : 0.0;
        rs.cumulative_rtf =
            sustained_audio_s > 0.0 ? (sustained_decode_s / sustained_audio_s) : 0.0;
        rs.thermal = read_thermal_summary();
        std::cout << "[sustained " << std::fixed << std::setprecision(1)
                  << rs.total_audio_s << "s] rolling_rtf=" << std::setprecision(3)
                  << rs.window_rtf << " cum_rtf=" << rs.cumulative_rtf;
        if (!rs.thermal.empty()) std::cout << " thermal: " << rs.thermal;
        std::cout << "\n" << std::flush;
        rolling.push_back(std::move(rs));
        win_audio_s = 0.0;
        win_decode_s = 0.0;
      }
    }
  }

  const long peak_rss_kb = get_peak_rss_kb();
  std::cout << "SUMMARY tier=" << tier_cfg->name << " threads=" << threads
            << " load_ms=" << std::fixed << std::setprecision(1) << load_ms
            << " warmup_ms=" << warmup_ms << " peak_rss_kb=" << peak_rss_kb << "\n";

  if (!json_out.empty()) {
    std::ofstream jf(json_out);
    if (!jf) {
      std::cerr << "Cannot write json-out: " << json_out << "\n";
      return 1;
    }
    jf << std::fixed;
    jf << "{\n";
    jf << "  \"tier\": " << json_escape(tier_cfg->name) << ",\n";
    jf << "  \"threads\": " << threads << ",\n";
    jf << "  \"pcec_enabled\": " << (use_pcec ? "true" : "false") << ",\n";
    jf << "  \"vad\": " << json_escape(vad_mode) << ",\n";
    jf << "  \"load_ms\": " << std::setprecision(3) << load_ms << ",\n";
    jf << "  \"warmup_ms\": " << std::setprecision(3) << warmup_ms << ",\n";
    jf << "  \"peak_rss_kb\": " << peak_rss_kb << ",\n";
    jf << "  \"clips\": [\n";
    for (size_t i = 0; i < results.size(); ++i) {
      const auto& r = results[i];
      jf << "    {\n";
      jf << "      \"wav\": " << json_escape(r.wav) << ",\n";
      jf << "      \"audio_s\": " << std::setprecision(4) << r.audio_s << ",\n";
      jf << "      \"decode_s\": " << std::setprecision(4) << r.decode_s << ",\n";
      jf << "      \"rtf\": " << std::setprecision(5) << r.rtf << ",\n";
      jf << "      \"step_count\": " << r.step_count << ",\n";
      jf << "      \"step_ms_median\": " << std::setprecision(3) << r.step_ms_median << ",\n";
      jf << "      \"step_ms_p95\": " << std::setprecision(3) << r.step_ms_p95 << ",\n";
      jf << "      \"step_ms_max\": " << std::setprecision(3) << r.step_ms_max << ",\n";
      jf << "      \"pcec_ms\": " << std::setprecision(3) << r.pcec_ms << ",\n";
      jf << "      \"vad_ms\": " << std::setprecision(3) << r.vad_ms << ",\n";
      jf << "      \"acoustic_text\": " << json_escape(r.acoustic_text) << ",\n";
      jf << "      \"pcec_text\": " << json_escape(r.pcec_text) << "\n";
      jf << "    }" << (i + 1 < results.size() ? "," : "") << "\n";
    }
    jf << "  ]";
    if (repeat_seconds > 0.0) {
      jf << ",\n  \"sustained\": {\n";
      jf << "    \"total_audio_s\": " << std::setprecision(3) << sustained_audio_s << ",\n";
      jf << "    \"total_decode_s\": " << std::setprecision(3) << sustained_decode_s << ",\n";
      jf << "    \"rtf\": " << std::setprecision(5)
         << (sustained_audio_s > 0.0 ? sustained_decode_s / sustained_audio_s : 0.0) << ",\n";
      jf << "    \"samples\": [\n";
      for (size_t i = 0; i < rolling.size(); ++i) {
        const auto& rs = rolling[i];
        jf << "      {\"audio_s\": " << std::setprecision(2) << rs.total_audio_s
           << ", \"window_rtf\": " << std::setprecision(5) << rs.window_rtf
           << ", \"cumulative_rtf\": " << std::setprecision(5) << rs.cumulative_rtf
           << ", \"thermal\": " << json_escape(rs.thermal) << "}"
           << (i + 1 < rolling.size() ? "," : "") << "\n";
      }
      jf << "    ]\n";
      jf << "  }\n";
    } else {
      jf << "\n";
    }
    jf << "}\n";
  }

  return 0;
}
