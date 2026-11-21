#!/usr/bin/env python3
"""Verify that conversation title colors keep the stock Sonim Messages path.

Stock updateTitle() colors every conversation with one or more recipients,
groups included, from the first recipient's cached contact color, falling back
to sPrimaryColorDark. The same color tints received bubbles via
updateColorPalette(), so a group override recolors the whole conversation.
"""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SMALI = ROOT / 'apps/BMms/apktool/smali/com/android/mms/ui/ComposeMessageActivity.smali'
CLASS = 'Lcom/android/mms/ui/ComposeMessageActivity;'
STOCK = [
    'if-lt v3, v8, :cond_f',
    'invoke-virtual {p1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;',
    'move-result-object v0',
    'check-cast v0, Lcom/android/mms/data/Contact;',
    'invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getContactColor()I',
    'move-result v0',
    'if-nez v0, :cond_8',
    f'sget v0, {CLASS}->sPrimaryColorDark:I',
    ':cond_8',
    f'invoke-direct {{p0, v0}}, {CLASS}->updateColorPalette(I)V',
    f'invoke-direct {{p0, v0}}, {CLASS}->setActionBarColor(I)V',
]


def instructions(body):
    # Drop comments, debug line markers and blank lines; keep code and labels.
    lines = (re.sub(r'\s+#.*$', '', l).strip() for l in body.splitlines())
    return [l for l in lines if l and not l.startswith(('#', '.line', '.prologue'))]


def main():
    text = SMALI.read_text()
    method = re.search(r'\n\.method private updateTitle\(Lcom/android/mms/data/ContactList;\)V\n'
                       r'(.*?)\n\.end method', text, re.S)
    assert method, 'updateTitle(ContactList) not found'
    code = instructions(method.group(1))
    start = code.index(STOCK[0])
    assert code[start:start + len(STOCK)] == STOCK, code[start:start + len(STOCK) + 4]
    assert code.count(STOCK[0]) == 1
    print('title_color_test: OK')


if __name__ == '__main__':
    main()
