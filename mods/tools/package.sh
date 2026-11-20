# Sourced by a mod's tools/package.sh with its env configured.
source "$SHARED/admit.sh"
admit
Z="$ROOT/build/zip"; rm -rf "$Z"; mkdir -p "$Z"
mkdir -p "$Z/META-INF/com/google/android"
install -m 0755 "$SHARED/magisk/update-binary" "$Z/META-INF/com/google/android/"
cp "$SHARED/magisk/updater-script" "$Z/META-INF/com/google/android/"
cp -r "$ROOT/out/system" "$Z/system"
cp "$ROOT/module/service.sh" "$ROOT/module/module.prop" "$Z/"
ver=$(sed -n 's/^version=//p' "$Z/module.prop")
[[ $ver =~ ^[0-9]+\.[0-9]+\.[0-9]+$ && $(sed -n 's/^id=//p' "$Z/module.prop") == "$MODULE_ID" ]]
cat >"$Z/customize.sh" <<INSTALL
# Module handover; never touch app data. Magisk handles the overlay at boot.
for old in $LEGACY_MODULE_IDS; do
    [ ! -d /data/adb/modules/\$old ] || touch /data/adb/modules/\$old/remove
done
set_perm_recursive "\$MODPATH/system" 0 0 0755 0644 u:object_r:system_file:s0
set_perm "\$MODPATH/service.sh" 0 0 0755
INSTALL
out="$ROOT/out/${MODULE_ID//_/-}-$ver.zip"; rm -f "$out"
(cd "$Z" && zip -qr -X "$out" .)
printf 'Packaged %s\n' "$out"
