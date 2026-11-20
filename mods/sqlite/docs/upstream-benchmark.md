# Historical SQLite benchmark

The original Messages Argon checkout measured SQLite 3.19.4 against 3.44.4.
This is a record of those runs, not verification of the Wave package. The
workloads in `native/sqlite/bench/` and the test runner were retained.

Result, 2026-11-18, 1-2 rounds x 15 iterations (run cut short) (median ms; every result identical between the two):

| statement | stock | new |
|---|---|---|
| inbox thread list (236 threads) | 7.7 | 6.2 |
| conversation (Argon query, 97 rows) | 2.3 | 2.0 |
| orphan-thread DELETE (runs on every provider start) | 25.8 | 15.3 |
| unseen SMS scans (notifications) | 18.4-18.8 | 16.5 |
| insert SMS (fires triggers) | 5.2 | 3.5 |
| mark newest thread read (`UPDATE sms SET read=1 ... WHERE thread_id=`) | **4011** | **3024** |
| contacts phone snapshot / PhoneLookup with PHONE_NUMBERS_EQUAL | 6.1 / 4.2 | 4.9 / 1.8 |
| contacts sorted with LOCALIZED / PHONEBOOK collators | 5.1 / 2.7 | 4.2 / 2.2 |
| totals excl. integrity_check: mmssms / contacts2 | 4144 / 30.2 | 3127 / 23.8 (-25% / -21%) |

`PRAGMA integrity_check` is 1.3-2.5x slower because 3.44 checks more. Android doesn't run it
during normal operation.

Side finding: marking a busy thread read takes **seconds** on either version. That's the
`sms` update triggers, not SQLite itself, and is worth its own fix.
