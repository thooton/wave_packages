#!/bin/bash
# tools/rcs/import_config.sh [config.xml] [key=value ...]
#
# Gives Messages Improved an RCS account (root required). Writes into the app's private directory
#   /data/data/com.android.mms/files/rcs_import/config.xml        wap-provisioningdoc (manual config)
#   /data/data/com.android.mms/files/rcs_import/state.properties  key=value lines
# and pokes the RCS host service, which imports and deletes them, then (re)starts the engine.
#
# Keys: enabled=1|0, instance_id=urn:gsma:imei:..., clear=1 (forget account/caches/groups first),
#       reprovision=1 (go back to ACS provisioning), and any engine state key (docs/rcs/engine.md):
#       msisdn, pcscf, acs_url, user_agent, force_pager, uri_scheme, auth_user, IMEI, ...
#       An empty value (key=) removes that key.
#
# Examples:
#   tools/rcs/import_config.sh donor-config.xml instance_id=urn:gsma:imei:35123456-789012-0
#   tools/rcs/import_config.sh enabled=0                     # switch RCS off
#   tools/rcs/import_config.sh clear=1 enabled=0             # forget everything
set -euo pipefail
PKG=com.android.mms
DIR=/data/data/$PKG/files/rcs_import
TMP=/data/local/tmp/wave_rcs_import
xml=""; props=()
for a in "$@"; do
    if [[ "$a" == *=* ]]; then props+=("$a"); else xml="$a"; fi
done
[ -n "$xml" ] || [ ${#props[@]} -gt 0 ] || { sed -n '2,20p' "$0"; exit 1; }
adb shell "rm -rf $TMP; mkdir -p $TMP"
if [ -n "$xml" ]; then
    grep -q wap-provisioningdoc "$xml" || { echo "$xml: not a wap-provisioningdoc"; exit 1; }
    adb push "$xml" $TMP/config.xml >/dev/null
fi
if [ ${#props[@]} -gt 0 ]; then
    printf '%s\n' "${props[@]}" > "${TMPDIR:-/tmp}/wave_rcs_state.properties"
    adb push "${TMPDIR:-/tmp}/wave_rcs_state.properties" $TMP/state.properties >/dev/null
    rm -f "${TMPDIR:-/tmp}/wave_rcs_state.properties"
fi
adb shell su -c "'uid=\$(stat -c %u /data/data/$PKG); mkdir -p $DIR; cp $TMP/* $DIR/; chown -R \$uid:\$uid $DIR; chmod 700 $DIR; chmod 600 $DIR/*; restorecon -R /data/data/$PKG/files; rm -rf $TMP'"
adb shell am startservice -n $PKG/com.android.mms.rcs.RcsMessageStatusService -a org.wave.rcs.HOST --es cmd restart >/dev/null
echo "imported; status: tools/rcs/device_status.sh"
