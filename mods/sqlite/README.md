# SQLite Improved

An optional Magisk module that overlays the **system-wide** 32-bit SQLite
library on the XP3800. It uses SQLite 3.44.4 with Android 8.1's ICU 58 glue
and has no APKs or dependency on Messages Improved. The ZIP leaves `/system`
untouched, does not collect databases, and does not alter Android's rescue
settings. Install it from System Mods in Wave.

From the `wave_packages` root on Linux:

```sh
sdkmanager 'ndk;27.2.12479018'
mods/sqlite/tools/package.sh
```

Set `NDK` to the r27c directory if it is outside `ANDROID_HOME/ndk/`. The
build fetches pinned AOSP sources (optionally set `SQLITE_SOURCE_CACHE`),
checks the hashes of the three pinned Sonim libraries, and verifies the
new library's exports and ICU imports before producing
`mods/sqlite/out/sqlite-improved-1.0.0.zip`.

The stock library inputs match firmware 11.17.00 and 11.20.00 byte for byte.
This is a build-baseline check, not a boot test. Test on a recoverable phone
with a verified boot backup before normal use. If Android has not finished
booting within five minutes of starting the module service, the service
attempts to disable the module and reboot. This cannot help if Magisk never
starts the service. Verify stock boots and that contacts, SMS/MMS, and other
providers still work both with the module and after disabling it. Do not
install it alongside another system SQLite overlay.

See the [historical benchmark](docs/upstream-benchmark.md) for the original
measurements. Its test executable and SQL workloads are not in the ZIP.
