# Sourced from a mod's package/deploy script after its env.sh. Admit only
# the complete expected set, not stray or stale files from an earlier build.
admit() {
    local inputs=${OEM_SIGNED_APKS:?Set OEM_SIGNED_APKS to a directory of authorized, signed APKs} app candidate dest
    local stage
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
