#!/bin/bash
# tools/build.sh  -> out/system/lib/libsqlite.so (+ build/sqlite/sqlbench)
#
# Builds a newer SQLite as a drop-in replacement for the firmware's /system/lib/libsqlite.so
# (SQLite 3.19.4, Android 8.1). Packaged as a separate, optional Magisk module.
#   * SQLite: AOSP external/sqlite (pinned commit), dist/sqlite-autoconf-$SQLITE_DIR: upstream
#     amalgamation with Android's patch already applied (its fdsan parts are API>=29 only).
#   * Android glue (PHONE_NUMBERS_EQUAL, _TOKENIZE, _PHONE_NUMBER_STRIPPED_REVERSED,
#     LOCALIZED/UNICODE collators): the 8.1 sources, which use the versioned ICU 58 API the
#     firmware's libicuuc/libicui18n export (newer AOSP uses libandroidicu, which 8.1 lacks).
#   * Flags: 8.1's dist/Android.bp, plus the compatibility switches current AOSP uses to keep
#     old schemas/SQL behaving like before (legacy ALTER TABLE RENAME, rowid on views).
# Needs: NDK r27c and the shared, pinned firmware libraries.
set -euo pipefail
ROOT=$(cd "$(dirname "$0")/.." && pwd)
FIRMWARE=$(cd "$ROOT/../firmware" && pwd)
(cd "$FIRMWARE" && sha256sum -c sqlite-inputs.sha256)
SQLITE_COMMIT=38878b88206dbc25342587258cbe8723b3c19d50   # platform/external/sqlite main, 2026-11
SQLITE_DIR=3440400                                        # -> SQLite 3.44.4
AOSP81=android-8.1.0_r1
NDK="${NDK:-${ANDROID_HOME:-/opt/android-sdk}/ndk/27.2.12479018}"
[[ $(sed -n 's/^Pkg.Revision = //p' "$NDK/source.properties") == 27.2.12479018 ]] || { echo "NDK r27c (27.2.12479018) is required" >&2; exit 1; }
TC="$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin"
CC="$TC/armv7a-linux-androideabi27-clang"
[ -x "$CC" ] || { echo "NDK compiler not found at $CC" >&2; exit 1; }

SRC="${SQLITE_SOURCE_CACHE:-$ROOT/.tools/src}"; B="$ROOT/build/sqlite"; OUT="$ROOT/out/system/lib"
G=https://android.googlesource.com/platform
fetch() {  # fetch <dir> <url-of-tar.gz>
    [ -d "$1" ] && return 0
    mkdir -p "$(dirname "$1")"
    local partial
    partial=$(mktemp -d "$1.part.XXXXXXXX")
    if ! (curl --retry 3 -fsSL "$2" | tar xz -C "$partial"); then
        rm -rf "$partial"; return 1
    fi
    mv -T "$partial" "$1"
}
fetch "$SRC/sqlite-$SQLITE_COMMIT" "$G/external/sqlite/+archive/$SQLITE_COMMIT/dist/sqlite-autoconf-$SQLITE_DIR.tar.gz"
fetch "$SRC/sqlite-android-$AOSP81" "$G/external/sqlite/+archive/refs/tags/$AOSP81/android.tar.gz"
if [ ! -d "$SRC/icu-$AOSP81/include/unicode" ]; then
    fetch "$SRC/icu-$AOSP81/common" "$G/external/icu/+archive/refs/tags/$AOSP81/icu4c/source/common/unicode.tar.gz"
    fetch "$SRC/icu-$AOSP81/i18n" "$G/external/icu/+archive/refs/tags/$AOSP81/icu4c/source/i18n/unicode.tar.gz"
    mkdir -p "$SRC/icu-$AOSP81/include/unicode"
    cp "$SRC/icu-$AOSP81"/{common,i18n}/*.h "$SRC/icu-$AOSP81/include/unicode/"
fi
S="$SRC/sqlite-$SQLITE_COMMIT"; A="$SRC/sqlite-android-$AOSP81"; ICU="$SRC/icu-$AOSP81/include"
version=$(sed -n 's/^#define SQLITE_VERSION  *"\(.*\)"/\1/p' "$S/sqlite3.h")
echo "SQLite $version (AOSP external/sqlite ${SQLITE_COMMIT:0:12}), glue + ICU 58 from $AOSP81"

DEFS=(
    # 8.1 dist/Android.bp
    -DNDEBUG=1 -DHAVE_USLEEP=1 -DSQLITE_HAVE_ISNAN -DSQLITE_DEFAULT_JOURNAL_SIZE_LIMIT=1048576
    -DSQLITE_THREADSAFE=2 -DSQLITE_TEMP_STORE=3 -DSQLITE_POWERSAFE_OVERWRITE=1
    -DSQLITE_DEFAULT_FILE_FORMAT=4 -DSQLITE_DEFAULT_AUTOVACUUM=1 -DSQLITE_ENABLE_MEMORY_MANAGEMENT=1
    -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_BACKWARDS -DSQLITE_ENABLE_FTS4
    -DSQLITE_OMIT_BUILTIN_TEST -DSQLITE_OMIT_COMPILEOPTION_DIAGS -DSQLITE_OMIT_LOAD_EXTENSION
    -DSQLITE_DEFAULT_FILE_PERMISSIONS=0600 -DSQLITE_SECURE_DELETE -DSQLITE_ENABLE_BATCH_ATOMIC_WRITE
    -DUSE_PREAD64 -Dfdatasync=fdatasync -DHAVE_MALLOC_H=1 -DHAVE_MALLOC_USABLE_SIZE
    -DSQLITE_ENABLE_ICU -DANDROID
    # current AOSP: keep pre-3.26 ALTER TABLE RENAME and pre-3.36 rowid-of-view behaviour
    -DSQLITE_DEFAULT_LEGACY_ALTER_TABLE -DSQLITE_ALLOW_ROWID_IN_VIEW
    -DBIONIC_IOCTL_NO_SIGNEDNESS_OVERLOAD
)
OPT=(-O2 -mthumb -fPIC -fno-strict-aliasing -Wno-unused-parameter)
rm -rf "$B"; mkdir -p "$B/obj" "$OUT"
"$CC" "${OPT[@]}" "${DEFS[@]}" -I"$ICU" -c "$S/sqlite3.c" -o "$B/obj/sqlite3.o" &
workers=($!)
for f in sqlite3_android PhoneNumberUtils OldPhoneNumberUtils; do
    "$CC" -x c++ -std=c++11 "${OPT[@]}" -fno-exceptions -fno-rtti "${DEFS[@]}" \
        -I"$S" -I"$A" -I"$ICU" -I"$ROOT/native/sqlite/include" \
        -c "$A/$f.cpp" -o "$B/obj/$f.o" &
    workers+=($!)
done
failed=0
for worker in "${workers[@]}"; do wait "$worker" || failed=1; done
(( failed == 0 ))
# link against the firmware's own ICU libs (exact ICU 58 symbol set); --no-undefined proves every
# import resolves on the phone. Plain clang driver: no libc++ dependency (the glue uses none).
"$CC" -shared -o "$B/libsqlite.so" "$B"/obj/*.o -Wl,-soname,libsqlite.so \
    -Wl,--no-undefined -Wl,-z,relro -Wl,-z,now -Wl,--build-id=sha1 \
    -L"$FIRMWARE/system/lib" -licui18n -licuuc -llog -ldl -lm
"$TC/llvm-strip" --strip-unneeded -o "$OUT/libsqlite.so" "$B/libsqlite.so"

# ABI check: everything the stock library exports (except compiler-runtime helpers it happened to
# re-export) must be exported by ours, or something on the phone could fail to link at boot.
nm_def() { "$TC/llvm-nm" -D --defined-only "$1" | awk '{print $3}' | sed 's/@.*//' | sort -u; }
missing=$(comm -23 <(nm_def "$FIRMWARE/system/lib/libsqlite.so" | grep -vE '^(__aeabi_|__gnu_|_edata|_end|__bss_start|__[a-z]+[sdt][fi][0-9]?$|__(add|sub|mul|div|cmp|eq|ne|lt|le|gt|ge|un|fix|float|extend|trunc|ashl|ashr|lshr|clz|ctz|popcount|neg|u?div|u?mod)[a-z0-9]*$)') \
                  <(nm_def "$OUT/libsqlite.so"))
[ -z "$missing" ] || { echo "ABI check FAILED, not exported any more:"; echo "$missing"; exit 1; }
need=$("$TC/llvm-readelf" -d "$OUT/libsqlite.so" | sed -n 's/.*NEEDED.*\[\(.*\)\]/\1/p' | tr '\n' ' ')
echo "ABI check OK ($(nm_def "$OUT/libsqlite.so" | grep -c '^sqlite3_') sqlite3_* exports; needs: $need)"
echo "built out/system/lib/libsqlite.so ($(stat -c %s "$OUT/libsqlite.so") bytes, stock $(stat -c %s "$FIRMWARE/system/lib/libsqlite.so"))"

# Optional test executable; never included in the module.
"$CC" -O2 -mthumb -fPIE -pie -I"$S" -I"$ICU" -I"$A" "$ROOT/native/sqlite/sqlbench.c" -o "$B/sqlbench" \
    -L"$B" -lsqlite -L"$FIRMWARE/system/lib" -licuuc -ldl -Wl,--allow-shlib-undefined
echo "built build/sqlite/sqlbench"
