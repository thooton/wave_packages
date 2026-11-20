# Stable group conversation opening

An SMS/MMS group title used the color cached on its first recipient. That value
could change when an avatar was drawn elsewhere, so the same conversation could
open with the blue default or the gray palette. Groups now use the existing
neutral gray swatch and use the phone snapshot for the title, like the inbox.
Single-recipient titles keep their existing behavior.

On a normal first open, the list corrects any clipping of its last visible row
against the available history area. This also covers late height changes as MMS
content binds. The correction does not delay drawing, change the scroll range,
or take keypad focus. It stops on input, pause, thread change, or after a short
initial layout window. It does not run on a search jump or restored position.
