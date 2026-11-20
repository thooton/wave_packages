# Sourced from a mod's package/deploy script after its env.sh. Admit only
# the complete expected set, not stray or stale files from an earlier build.
admit() {
    local app candidate dest stage
    mkdir -p "$ROOT/out"
    stage=$(mktemp -d "$ROOT/out/admit.XXXXXXXX")
    for app in $(all_apps); do
        candidate="$ROOT/build/$app/$app.apk"
        [ -f "$candidate" ] || {
            echo "$app: no stock-signed APK; run tools/build.sh first" >&2
            rm -rf "$stage"; return 1
        }
        python3 "$SHARED/verify_splice.py" "$(stock_apk "$app")" "$ROOT/build/$app/dex" \
            "$candidate" || { rm -rf "$stage"; return 1; }
        "$BT/zipalign" -c -p 4 "$candidate" || { rm -rf "$stage"; return 1; }
        dest="$stage/$(system_path "$app")"; mkdir -p "$(dirname "$dest")"; cp "$candidate" "$dest"
    done
    rm -rf "$ROOT/out/system"; mv "$stage/system" "$ROOT/out/system"; rmdir "$stage"
}
