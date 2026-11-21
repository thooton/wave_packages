# Keyboard Improved

The Sonim XP3800's stock XT9 predictive keyboard (`com.nuance.flext9_OEM.input`), made
responsive. It types the same text, suggests the same words in the same order and learns the
same way as stock; it just does it at once.

On stock, a letter's suggestions appear about 170 ms after the key goes down (p95 210 ms):
the letter is typed only when the key is released, and every key then waits on the XT9 engine
and several synchronous calls to the app and the system. With Keyboard Improved:

| Key press to suggestions on screen | Stock | Improved |
| --- | --- | --- |
| Letters (from key down), median | 172 ms | about 19 ms |
| Letters, 95th percentile | 212 ms | about 33 ms (2 frames) |
| Letters, 99th percentile |  | about 40–50 ms |
| Letters, slowest | 247 ms | 57–94 ms (an unlikely next letter, about 1 in 200) |
| Space and other keys (from key up), 95th percentile | 131 ms | about 23–29 ms |

Measured in Messages, typing a 208-key text at a key every 300 ms. The suggestions
themselves are ready about 7 ms after the key goes down (p95 about 14 ms); the rest is Android
delivering the key and drawing the frame. A letter is slower only when it is one the keyboard
didn't expect and the engine takes long over it, mostly the first letter of a word.

How:

- Letters are typed when the key goes down (holding a key still opens the stock popup).
- While you are between keys, the keyboard works out what each possible next key would
  suggest, on a background thread, and puts the engine back exactly as it was; the key you
  press is answered at once. The space after a word and the first letter of the next word are
  worked out ahead too.
- The suggestion bar is drawn as soon as it changes (word widths are measured ahead), and
  key handling no longer waits on the app or the system for things the keyboard already
  knows.
- The CPU stays at full speed while you type, and the keyboard's drawing runs ahead of the
  app's own work for the key.

See [SPEC.md](SPEC.md) for the behavior it keeps, and [AGENTS.md](AGENTS.md) for how it is
built. Needs firmware 11.20.00 with its stock keyboard: the module is built on the phone from
the phone's own keyboard APK when it is installed, and refuses any other version.

Build and test with `tools/setup.sh`, `tools/build.sh`, `tools/test.sh` and
`tools/package.sh`; `tools/deploy.sh` installs the module zip with Magisk
([shared requirements](../AGENTS.md)).
