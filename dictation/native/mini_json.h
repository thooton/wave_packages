#pragma once

#include <cctype>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <string>
#include <utility>
#include <vector>

namespace asr4all {

// Minimal non-throwing JSON DOM parser and serializer for metadata.json and
// benchmark reports. Handles full UTF-8 including \uXXXX escapes and surrogate
// pairs so non-ASCII vocab entries in metadata.json decode identically to Python.
struct JsonValue {
  enum class Type { Null, Bool, Number, String, Array, Object };

  Type type = Type::Null;
  bool bool_val = false;
  double num_val = 0.0;
  std::string str_val;
  std::vector<JsonValue> arr_val;
  std::map<std::string, JsonValue> obj_val;

  bool is_null() const { return type == Type::Null; }
  bool is_bool() const { return type == Type::Bool; }
  bool is_number() const { return type == Type::Number; }
  bool is_string() const { return type == Type::String; }
  bool is_array() const { return type == Type::Array; }
  bool is_object() const { return type == Type::Object; }

  const JsonValue* get(const std::string& key) const {
    if (type != Type::Object) return nullptr;
    auto it = obj_val.find(key);
    return it == obj_val.end() ? nullptr : &it->second;
  }

  int64_t as_int(int64_t def = 0) const {
    return type == Type::Number ? static_cast<int64_t>(num_val) : def;
  }
  double as_double(double def = 0.0) const {
    return type == Type::Number ? num_val : def;
  }
  bool as_bool(bool def = false) const {
    return type == Type::Bool ? bool_val : def;
  }
  const std::string& as_string() const {
    static const std::string kEmpty;
    return type == Type::String ? str_val : kEmpty;
  }
};

namespace detail {

inline void append_utf8(std::string& out, uint32_t cp) {
  if (cp <= 0x7F) {
    out.push_back(static_cast<char>(cp));
  } else if (cp <= 0x7FF) {
    out.push_back(static_cast<char>(0xC0 | ((cp >> 6) & 0x1F)));
    out.push_back(static_cast<char>(0x80 | (cp & 0x3F)));
  } else if (cp <= 0xFFFF) {
    out.push_back(static_cast<char>(0xE0 | ((cp >> 12) & 0x0F)));
    out.push_back(static_cast<char>(0x80 | ((cp >> 6) & 0x3F)));
    out.push_back(static_cast<char>(0x80 | (cp & 0x3F)));
  } else if (cp <= 0x10FFFF) {
    out.push_back(static_cast<char>(0xF0 | ((cp >> 18) & 0x07)));
    out.push_back(static_cast<char>(0x80 | ((cp >> 12) & 0x3F)));
    out.push_back(static_cast<char>(0x80 | ((cp >> 6) & 0x3F)));
    out.push_back(static_cast<char>(0x80 | (cp & 0x3F)));
  }
}

class JsonParser {
 public:
  explicit JsonParser(const std::string& src) : s_(src), pos_(0) {}

  bool parse(JsonValue& out, std::string* err) {
    skip_ws();
    if (!parse_value(out, err)) return false;
    skip_ws();
    if (pos_ != s_.size()) {
      if (err) *err = "trailing characters after JSON root";
      return false;
    }
    return true;
  }

 private:
  void skip_ws() {
    while (pos_ < s_.size() &&
           (s_[pos_] == ' ' || s_[pos_] == '\t' || s_[pos_] == '\n' ||
            s_[pos_] == '\r')) {
      ++pos_;
    }
  }

  bool parse_hex4(uint32_t& out) {
    if (pos_ + 4 > s_.size()) return false;
    uint32_t v = 0;
    for (int i = 0; i < 4; ++i) {
      char c = s_[pos_++];
      v <<= 4;
      if (c >= '0' && c <= '9') {
        v |= static_cast<uint32_t>(c - '0');
      } else if (c >= 'a' && c <= 'f') {
        v |= static_cast<uint32_t>(10 + c - 'a');
      } else if (c >= 'A' && c <= 'F') {
        v |= static_cast<uint32_t>(10 + c - 'A');
      } else {
        return false;
      }
    }
    out = v;
    return true;
  }

  bool parse_string(std::string& out, std::string* err) {
    if (pos_ >= s_.size() || s_[pos_] != '"') {
      if (err) *err = "expected '\"'";
      return false;
    }
    ++pos_;
    out.clear();
    while (pos_ < s_.size()) {
      char c = s_[pos_++];
      if (c == '"') return true;
      if (c == '\\') {
        if (pos_ >= s_.size()) {
          if (err) *err = "unterminated escape";
          return false;
        }
        char e = s_[pos_++];
        switch (e) {
          case '"': out.push_back('"'); break;
          case '\\': out.push_back('\\'); break;
          case '/': out.push_back('/'); break;
          case 'b': out.push_back('\b'); break;
          case 'f': out.push_back('\f'); break;
          case 'n': out.push_back('\n'); break;
          case 'r': out.push_back('\r'); break;
          case 't': out.push_back('\t'); break;
          case 'u': {
            uint32_t cp = 0;
            if (!parse_hex4(cp)) {
              if (err) *err = "invalid \\u escape";
              return false;
            }
            if (cp >= 0xD800 && cp <= 0xDBFF) {
              if (pos_ + 2 <= s_.size() && s_[pos_] == '\\' && s_[pos_ + 1] == 'u') {
                pos_ += 2;
                uint32_t low = 0;
                if (!parse_hex4(low) || low < 0xDC00 || low > 0xDFFF) {
                  if (err) *err = "invalid UTF-16 surrogate pair";
                  return false;
                }
                cp = 0x10000 + (((cp - 0xD800) << 10) | (low - 0xDC00));
              }
            }
            append_utf8(out, cp);
            break;
          }
          default:
            if (err) *err = "unknown escape sequence";
            return false;
        }
      } else {
        out.push_back(c);
      }
    }
    if (err) *err = "unterminated string";
    return false;
  }

  bool parse_value(JsonValue& out, std::string* err) {
    skip_ws();
    if (pos_ >= s_.size()) {
      if (err) *err = "unexpected EOF";
      return false;
    }
    char c = s_[pos_];
    if (c == '"') {
      out.type = JsonValue::Type::String;
      return parse_string(out.str_val, err);
    }
    if (c == '{') {
      ++pos_;
      out.type = JsonValue::Type::Object;
      out.obj_val.clear();
      skip_ws();
      if (pos_ < s_.size() && s_[pos_] == '}') {
        ++pos_;
        return true;
      }
      while (true) {
        skip_ws();
        std::string key;
        if (!parse_string(key, err)) return false;
        skip_ws();
        if (pos_ >= s_.size() || s_[pos_] != ':') {
          if (err) *err = "expected ':'";
          return false;
        }
        ++pos_;
        JsonValue val;
        if (!parse_value(val, err)) return false;
        out.obj_val.emplace(std::move(key), std::move(val));
        skip_ws();
        if (pos_ < s_.size() && s_[pos_] == ',') {
          ++pos_;
          continue;
        }
        if (pos_ < s_.size() && s_[pos_] == '}') {
          ++pos_;
          return true;
        }
        if (err) *err = "expected ',' or '}'";
        return false;
      }
    }
    if (c == '[') {
      ++pos_;
      out.type = JsonValue::Type::Array;
      out.arr_val.clear();
      skip_ws();
      if (pos_ < s_.size() && s_[pos_] == ']') {
        ++pos_;
        return true;
      }
      while (true) {
        JsonValue elem;
        if (!parse_value(elem, err)) return false;
        out.arr_val.push_back(std::move(elem));
        skip_ws();
        if (pos_ < s_.size() && s_[pos_] == ',') {
          ++pos_;
          continue;
        }
        if (pos_ < s_.size() && s_[pos_] == ']') {
          ++pos_;
          return true;
        }
        if (err) *err = "expected ',' or ']'";
        return false;
      }
    }
    if (c == 't' && s_.compare(pos_, 4, "true") == 0) {
      pos_ += 4;
      out.type = JsonValue::Type::Bool;
      out.bool_val = true;
      return true;
    }
    if (c == 'f' && s_.compare(pos_, 5, "false") == 0) {
      pos_ += 5;
      out.type = JsonValue::Type::Bool;
      out.bool_val = false;
      return true;
    }
    if (c == 'n' && s_.compare(pos_, 4, "null") == 0) {
      pos_ += 4;
      out.type = JsonValue::Type::Null;
      return true;
    }
    if (c == '-' || (c >= '0' && c <= '9')) {
      const char* start = s_.c_str() + pos_;
      char* end = nullptr;
      double v = std::strtod(start, &end);
      if (end == start) {
        if (err) *err = "invalid number";
        return false;
      }
      pos_ = static_cast<size_t>(end - s_.c_str());
      out.type = JsonValue::Type::Number;
      out.num_val = v;
      return true;
    }
    if (err) *err = std::string("unexpected character: ") + c;
    return false;
  }

  const std::string& s_;
  size_t pos_;
};

}  // namespace detail

inline bool parse_json(const std::string& src, JsonValue& out, std::string* err = nullptr) {
  detail::JsonParser parser(src);
  return parser.parse(out, err);
}

inline std::string json_escape(const std::string& s) {
  std::string out;
  out.reserve(s.size() + 2);
  out.push_back('"');
  for (unsigned char c : s) {
    switch (c) {
      case '"': out += "\\\""; break;
      case '\\': out += "\\\\"; break;
      case '\b': out += "\\b"; break;
      case '\f': out += "\\f"; break;
      case '\n': out += "\\n"; break;
      case '\r': out += "\\r"; break;
      case '\t': out += "\\t"; break;
      default:
        if (c < 0x20) {
          char buf[8];
          std::snprintf(buf, sizeof(buf), "\\u%04x", static_cast<unsigned>(c));
          out += buf;
        } else {
          out.push_back(static_cast<char>(c));
        }
        break;
    }
  }
  out.push_back('"');
  return out;
}

}  // namespace asr4all
