# Stable group conversation opening

An SMS/MMS group title now uses the phone snapshot for its names, like the
inbox. Its colors are stock: like a one-to-one conversation, a group takes the
color its first recipient's inbox avatar cached, or the stock blue when that
recipient has none yet. Messages Improved 1.1.1 painted every group gray
instead, which also turned its received bubbles gray; 1.1.2 removed that
override. `tools/testing/title_color_test.py` keeps the color path stock.

On a normal first open, the list corrects any clipping of its last visible row
against the available history area. This also covers late height changes as MMS
content binds. The correction does not delay drawing, change the scroll range,
or take keypad focus. It stops on input, pause, thread change, or after a short
initial layout window. It does not run on a search jump or restored position.
