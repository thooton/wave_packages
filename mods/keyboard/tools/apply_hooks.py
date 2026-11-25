#!/usr/bin/env python3
"""Apply the Keyboard Improved smali hooks to a stock apktool tree (idempotent check: fails
if already applied). The result is what's committed under apps/XT9IME/apktool.

    python3 tools/apply_hooks.py apps/XT9IME/apktool/smali

Hooks (all logic lives in Java, see apps/XT9IME/java):
  * AlphaInput: every NativeAlphaInput engine call goes through WaveAlpha (WaveSpec gate).
  * IME.onKeyDown / onKeyUp: WaveSpec.keyStart / keyDownEnd / keyUpEnd around the stock body.
  * AlphaInputView.updateSuggestions(IZ)I: WaveFrame.suggestionsUpdated after the stock body.
  * IME.showStatusIcon: WaveStatus (async, ordered).
  * IME.onUpdateSelection: WaveSpec.selectionChanging before, selectionUpdated after.
  * IME.onStartInput: WaveSpec.startInput before the stock body.
  * IME.getCurrentInputConnection (added): the stock connection wrapped in WaveConnection.
  * IME.checkEULAInfo: the OEM-build test before the monkey test (same result, no IPC).
  * HardKeyboard.onKeyDown: WaveEarly.afterKeyDown after the stock body; HardKeyboard's
    listener.onHardKeyEvent calls go through WaveEarly.dispatch.
  * KeyboardViewEx.showPopupKeyboard: WaveEarly.beforePopup before the stock body.
  * CandidatesListView.onDraw: Canvas.drawText -> WaveFrame.drawText (skips off-screen words),
    Paint.measureText -> WaveFrame.measure (widths remembered across keys).
  * Dictation (WaveDictation): IME.onKeyDown / onKeyUp ask WaveDictation.keyDown / keyUp first
    (true: consumed, stock not run); IME.onUpdateSelection is skipped while a session runs;
    IME.onStartInput calls WaveDictation.startInput first; IME.onFinishInput,
    onFinishInputView and onWindowHidden call WaveDictation before the stock body;
    IME.onUpdateCursorAnchorInfo (added) sends the caret to WaveDictation.
"""
import os, re, sys

P = 'com/nuance/flext9_OEM/input'


def params(desc):
    i, out = 1, []
    while desc[i] != ')':
        j = i
        while desc[j] == '[':
            j += 1
        if desc[j] == 'L':
            j = desc.index(';', j)
        out.append(desc[i:j + 1])
        i = j + 1
    return out, desc[i + 1:]


def wrap(root, cls, name, desc, before=None, after=None):
    """Rename the stock method to <name>$wave (private) and add a wrapper with the stock
    name and flags: before(this, args...) ; r = stock(args) ; after(this, args..., r).
    Hook signatures use Ljava/lang/Object; for `this`."""
    path = os.path.join(root, cls + '.smali')
    s = open(path, encoding='utf-8').read()
    if name + '$wave' + desc in s:
        print('already hooked: %s.%s' % (cls, name))
        return
    m = re.search(r'^\.method ([^\n]*?)\b' + re.escape(name + desc) + r'\n', s, re.M)
    if not m:
        sys.exit('not found: %s.%s%s' % (cls, name, desc))
    flags = m.group(1).split()
    assert 'static' not in flags
    stock_flags = [f for f in flags if f not in ('public', 'protected', 'private')] + ['private']
    s = s[:m.start()] + '.method ' + ' '.join(stock_flags) + ' ' + name + '$wave' + desc + '\n' + s[m.end():]
    ps, ret = params(desc)
    nparam = 1 + sum(2 if p in ('J', 'D') else 1 for p in ps)
    regs = ['p%d' % i for i in range(nparam)]
    hook_args = 'Ljava/lang/Object;' + ''.join(ps)
    L = ['', '# Wave: hook around the stock %s (now %s$wave).' % (name, name),
         '.method ' + ' '.join(flags) + ' ' + name + desc,
         '    .registers %d' % (nparam + 2)]
    if before:
        L.append('    invoke-static/range {p0 .. p%d}, L%s/%s;->%s(%s)V' % (nparam - 1, P, before[0], before[1], hook_args))
    L.append('    invoke-direct/range {p0 .. p%d}, L%s;->%s$wave%s' % (nparam - 1, cls, name, desc))
    if ret == 'V':
        res = None
    else:
        assert ret in ('Z', 'I'), ret
        L.append('    move-result v0')
        res = ret
    if after:
        # after(this, args..., result): copy args into a contiguous range after v0.
        # registers: v0 = result, v1 = scratch; build call with explicit list (<= 5 regs).
        call_regs = regs + (['v0'] if res else [])
        if res:
            assert len(call_regs) <= 5, 'too many args for non-range invoke'
            L.append('    invoke-static {%s}, L%s/%s;->%s(%s%s)V' % (', '.join(call_regs), P, after[0], after[1], hook_args, res))
        else:
            L.append('    invoke-static/range {p0 .. p%d}, L%s/%s;->%s(%s)V' % (nparam - 1, P, after[0], after[1], hook_args))
    L.append('    return-void' if ret == 'V' else '    return v0')
    L.append('.end method')
    s = s.rstrip('\n') + '\n' + '\n'.join(L) + '\n'
    open(path, 'w', encoding='utf-8', newline='\n').write(s)
    print('hooked %s.%s%s' % (cls.split('/')[-1], name, desc))


def patch_in_method(root, cls, method_sig, old, new, marker):
    """Replace old with new inside one method (once), idempotently (marker present: done)."""
    path = os.path.join(root, cls + '.smali')
    s = open(path, encoding='utf-8').read()
    start = s.index(method_sig)
    end = s.index('.end method', start)
    body = s[start:end]
    if marker in body:
        print('already patched ' + cls.split('/')[-1] + ' ' + method_sig)
        return
    if body.count(old) != 1:
        sys.exit('patch site not found in ' + cls + ' ' + method_sig)
    open(path, 'w', encoding='utf-8', newline='\n').write(s[:start] + body.replace(old, new) + s[end:])
    print('patched ' + cls.split('/')[-1] + ' ' + method_sig)


EULA_OLD = """    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->isCurrentUserAMonkey()Z
"""
EULA_NEW = """    # Wave: checkEULAInfo is (isCurrentUserAMonkey() || mBuildInfo.isOEMBuild()); both are
    # side-effect free, so on OEM builds answer true without the ActivityManager call (IPC).
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    if-eqz v0, :wave_monkey

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isOEMBuild()Z

    move-result v0

    if-eqz v0, :wave_monkey

    return v2

    :wave_monkey
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->isCurrentUserAMonkey()Z
"""


def retarget(root, cls, old, new):
    path = os.path.join(root, cls + '.smali')
    s = open(path, encoding='utf-8').read()
    n = s.count(old)
    if not n and s.count(new):
        print('already retargeted in ' + cls.split('/')[-1])
        return
    if not n:
        sys.exit('no call sites in ' + cls)
    open(path, 'w', encoding='utf-8', newline='\n').write(s.replace(old, new))
    print('retargeted %d call sites in %s' % (n, cls.split('/')[-1]))


IC = '''
# Wave: the text field connection goes through WaveConnection.
.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    move-result-object v0
    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveConnection;->wrap(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
    move-result-object v0
    return-object v0
.end method
'''


def add_methods(root, cls, marker, text):
    path = os.path.join(root, cls + '.smali')
    s = open(path, encoding='utf-8').read()
    if marker in s:
        print('already added: ' + marker)
        return
    open(path, 'w', encoding='utf-8', newline='\n').write(s.rstrip('\n') + '\n' + text)
    print('added %s to %s' % (marker, cls.split('/')[-1]))


STATUS = '''
# Wave: status bar icon updates (a synchronous call into system_server per key) are
# made in order on a background thread (WaveStatus), off the key handling path.
.method public showStatusIcon(I)V
    .registers 2
    invoke-static {p0, p1}, L%(P)s/WaveStatus;->show(Ljava/lang/Object;I)V
    return-void
.end method

.method public wave$showStatusIcon(I)V
    .registers 2
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showStatusIcon(I)V
    return-void
.end method
''' % {'P': P}


CURSOR = '''
# Wave: the caret position for dictation (WaveDictation); stock doesn't override this.
.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 2
    invoke-static {p0, p1}, L%(P)s/WaveDictation;->cursorAnchor(Ljava/lang/Object;Landroid/view/inputmethod/CursorAnchorInfo;)V
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    return-void
.end method
''' % {'P': P}


def dictation_key(name):
    """In the onKeyDown / onKeyUp wrapper: WaveDictation first; true consumes the key."""
    sig = '(ILandroid/view/KeyEvent;)Z'
    first = '    invoke-static/range {p0 .. p2}, L%s/WaveSpec;->keyStart(Ljava/lang/Object;ILandroid/view/KeyEvent;)V\n' % P
    patch_in_method(root, P + '/IME', '.method public %s%s' % (name, sig), first,
                    '    invoke-static/range {p0 .. p2}, L%s/WaveDictation;->%s(Ljava/lang/Object;ILandroid/view/KeyEvent;)Z\n'
                    '    move-result v0\n'
                    '    if-eqz v0, :wave_dictation_pass\n'
                    '    return v0\n'
                    '    :wave_dictation_pass\n' % (P, 'keyDown' if name == 'onKeyDown' else 'keyUp') + first,
                    'WaveDictation;->')


if __name__ == '__main__':
    root = sys.argv[1]
    retarget(root, P + '/AlphaInput', 'L%s/NativeAlphaInput;->xt9input_alpha_' % P, 'L%s/WaveAlpha;->xt9input_alpha_' % P)
    wrap(root, P + '/IME', 'onKeyDown', '(ILandroid/view/KeyEvent;)Z', ('WaveSpec', 'keyStart'), ('WaveSpec', 'keyDownEnd'))
    wrap(root, P + '/IME', 'onKeyUp', '(ILandroid/view/KeyEvent;)Z', ('WaveSpec', 'keyStart'), ('WaveSpec', 'keyUpEnd'))
    wrap(root, P + '/AlphaInputView', 'updateSuggestions', '(IZ)I', None, ('WaveFrame', 'suggestionsUpdated'))
    add_methods(root, P + '/IME', 'wave$showStatusIcon', STATUS)
    wrap(root, P + '/IME', 'onUpdateSelection', '(IIIIII)V', ('WaveSpec', 'selectionChanging'), ('WaveSpec', 'selectionUpdated'))
    wrap(root, P + '/IME', 'onStartInput', '(Landroid/view/inputmethod/EditorInfo;Z)V', ('WaveSpec', 'startInput'), None)
    add_methods(root, P + '/IME', 'WaveConnection;->wrap', IC)
    patch_in_method(root, P + '/IME', '.method public checkEULAInfo()Z', EULA_OLD, EULA_NEW, ':wave_monkey')
    # Letters on key down (WaveEarly).
    wrap(root, P + '/HardKeyboard', 'onKeyDown', '(ILandroid/view/KeyEvent;)Z', None, ('WaveEarly', 'afterKeyDown'))
    retarget(root, P + '/HardKeyboard',
             'invoke-interface {v2, v0}, L%s/HardKeyboard$HardKeyEventListener;->onHardKeyEvent(L%s/HardKeyboardEvent;)Z' % (P, P),
             'invoke-static {v2, v0}, L%s/WaveEarly;->dispatch(L%s/HardKeyboard$HardKeyEventListener;L%s/HardKeyboardEvent;)Z' % (P, P, P))
    wrap(root, P + '/KeyboardViewEx', 'showPopupKeyboard', '(ILjava/lang/CharSequence;)V', ('WaveEarly', 'beforePopup'), None)
    # Candidate bar: words outside the visible strip are not drawn (WaveFrame.drawText).
    retarget(root, P + '/CandidatesListView',
             'invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V',
             'invoke-static/range {v8 .. v14}, L%s/WaveFrame;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V' % P)
    # Candidate widths are remembered across keys (WaveFrame.measure).
    retarget(root, P + '/CandidatesListView',
             'invoke-virtual {v7, v9, v10, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F',
             'invoke-static {v7, v9, v10, v2}, L%s/WaveFrame;->measure(Landroid/graphics/Paint;Ljava/lang/CharSequence;II)F' % P)
    # Dictation (WaveDictation).
    dictation_key('onKeyDown')
    dictation_key('onKeyUp')
    sel = '    invoke-static/range {p0 .. p6}, L%s/WaveSpec;->selectionChanging(Ljava/lang/Object;IIIIII)V\n' % P
    patch_in_method(root, P + '/IME', '.method public onUpdateSelection(IIIIII)V', sel,
                    '    invoke-static {}, L%s/WaveDictation;->active()Z\n'
                    '    move-result v0\n'
                    '    if-eqz v0, :wave_dictation_sel\n'
                    '    return-void\n'
                    '    :wave_dictation_sel\n' % P + sel, 'WaveDictation;->')
    start = '    invoke-static/range {p0 .. p2}, L%s/WaveSpec;->startInput(Ljava/lang/Object;Landroid/view/inputmethod/EditorInfo;Z)V\n' % P
    patch_in_method(root, P + '/IME', '.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V', start,
                    '    invoke-static/range {p0 .. p2}, L%s/WaveDictation;->startInput(Ljava/lang/Object;Landroid/view/inputmethod/EditorInfo;Z)V\n' % P
                    + start, 'WaveDictation;->')
    wrap(root, P + '/IME', 'onFinishInput', '()V', ('WaveDictation', 'finishInput'), None)
    wrap(root, P + '/IME', 'onFinishInputView', '(Z)V', ('WaveDictation', 'finishInputView'), None)
    wrap(root, P + '/IME', 'onWindowHidden', '()V', ('WaveDictation', 'windowHidden'), None)
    add_methods(root, P + '/IME', 'WaveDictation;->cursorAnchor', CURSOR)
