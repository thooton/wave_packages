# Sourced from a mod's package/deploy script after its env.sh. Admit only
# the complete expected set, not stray or stale files from an earlier build.
#
# OEM_SIGNED_APKS=<dir>  authorized OEM-signed APKs, as "<App>.apk" (release path).
# WAVE_SPLICE=1          the local build's stock-signed spliced APKs (test devices only;
#                        see tools/splice_apk.py and tools/verify_splice.py).

admit_oem() {
    local inputs=$1 app candidate dest stage
    mkdir -p "$ROOT/out"
    stage=$(mktemp -d "$ROOT/out/admit.XXXXXXXX")
    for app in $(all_apps); do
        candidate="$inputs/$app.apk"
        python3 "$SHARED/verify_release.py" "$BT/apksigner" "$(stock_apk "$app")" \
            "$ROOT/build/$app/unsigned.apk" "$candidate" || { rm -rf "$stage"; return 1; }
        "$BT/zipalign" -c -p 4 "$candidate" || { rm -rf "$stage"; return 1; }
        dest="$stage/$(system_path "$app")"; mkdir -p "$(dirname "$dest")"; cp "$candidate" "$dest"
    done
    rm -rf "$ROOT/out/system"; mv "$stage/system" "$ROOT/out/system"; rmdir "$stage"
}

admit_splice() {
    local app candidate request dest stage
    echo 'Admitting stock-signed test APKs (spliced dex; not OEM-signed releases)' >&2
    mkdir -p "$ROOT/out"
    stage=$(mktemp -d "$ROOT/out/admit.XXXXXXXX")
    for app in $(all_apps); do
        candidate="$ROOT/build/$app/$app.apk"; request="$ROOT/build/$app/unsigned.apk"
        { [ -f "$candidate" ] && [ -f "$request" ]; } || {
            echo "$app: no stock-signed test APK; run tools/build.sh first" >&2
            rm -rf "$stage"; return 1
        }
        python3 "$SHARED/verify_splice.py" "$(stock_apk "$app")" "$request" "$candidate" \
            || { rm -rf "$stage"; return 1; }
        "$BT/zipalign" -c -p 4 "$candidate" || { rm -rf "$stage"; return 1; }
        dest="$stage/$(system_path "$app")"; mkdir -p "$(dirname "$dest")"; cp "$candidate" "$dest"
    done
    rm -rf "$ROOT/out/system"; mv "$stage/system" "$ROOT/out/system"; rmdir "$stage"
}

admit() {
    if [ -n "${OEM_SIGNED_APKS:-}" ]; then
        admit_oem "$OEM_SIGNED_APKS"
    elif [ "${WAVE_SPLICE:-0}" = 1 ]; then
        admit_splice
    else
        echo 'Set OEM_SIGNED_APKS to authorized signed APKs, or WAVE_SPLICE=1 for a test build.' >&2
        return 1
    fi
}
