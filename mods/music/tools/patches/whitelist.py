#!/usr/bin/env python3
"""Apply the whitelist hooks once to the stock apktool tree."""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PKG = ROOT / 'apps/BMusic/apktool/smali/com/android/music'
LIB = 'Lcom/android/music/ArgonLibrary;'
UI = 'Lcom/android/music/ArgonSettings;'
CONTEXT = 'Landroid/content/Context;'
ACTIVITY = 'Landroid/app/Activity;'
CURSOR = 'Landroid/database/Cursor;'
SELECT = f'{LIB}->selection({CONTEXT}Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;'
QUERY_ARGS = f'({CONTEXT}Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)'
QUERY = f'Lcom/android/music/MusicUtils;->query{QUERY_ARGS}{CURSOR}'
M = '    # FEAT(whitelist)'


def method_patch(name, method, callback, arguments=None):
    path = PKG / (name + '.smali')
    text = path.read_text()
    signature = r'\(' if arguments is None else re.escape(arguments)
    anchor = rf'^\.method [^\n]*\b{re.escape(method)}{signature}.*?^\.end method$'
    found = list(re.finditer(anchor, text, re.MULTILINE | re.DOTALL))
    assert len(found) == 1, (name, method, len(found))
    match = found[0]
    path.write_text(text[:match.start()] + callback(match[0]) + text[match.end():])


def once(text, old, new):
    assert text.count(old) == 1, (old, text.count(old))
    return text.replace(old, new, 1)


def prologue(text, code):
    return once(text, '    .prologue\n', '    .prologue\n' + M + '\n' + code + '\n')


browsers = ('ArtistAlbumBrowserActivity', 'AlbumBrowserActivity', 'TrackBrowserActivity', 'PlaylistBrowserActivity')
for cls in browsers:
    def create(text):
        text = prologue(text, f'    invoke-static {{p1}}, {UI}->addMenu(Landroid/view/Menu;)V\n')
        if cls == 'PlaylistBrowserActivity':
            text = once(text, '    move-result v0\n\n    return v0', M + '\n    const/4 v0, 0x1\n\n    return v0')
        return text

    method_patch(cls, 'onCreateOptionsMenu', create)
    method_patch(cls, 'onOptionsItemSelected', lambda text: prologue(text, f'''    invoke-static {{p0, p1}}, {UI}->handleMenu({ACTIVITY}Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :argon_menu_stock
    return v0
    :argon_menu_stock
'''))
    # Stock swallows KEYCODE_MENU when there are no songs. Settings must still be reachable.
    def key(text):
        old = re.search(r'    :sswitch_\d+\n    invoke-static \{p0\}, Lcom/android/music/MusicUtils;->getAllSongs[^\n]*\n\n    move-result-object v0\n\n    if-nez v0, :cond_0\n\n    \.line \d+\n    return v\d+', text)
        assert old is not None, cls
        return once(text, old[0], old[0].splitlines()[0] + '\n' + M + '\n    goto :cond_0')

    method_patch(cls, 'onKeyDown', key)
    method_patch(cls, 'onResume', lambda text: re.sub(
        r'(    invoke-super \{p0\}, [^\n]*->onResume\(\)V)',
        rf'\1\n\n{M}\n    invoke-static {{p0}}, {UI}->onResume({ACTIVITY})V', text, count=1))

# Shared synchronous queries (browse and library playback actions).
method_patch('MusicUtils', 'query', lambda text: once(text,
    '    move-object v3, p3',
    f'{M}\n    invoke-static {{p0, v1, p3}}, {SELECT}\n    move-result-object v3'), QUERY_ARGS[:-1] + 'I)')

# Asynchronous artist/album browsing queries bypass MusicUtils.
ASYNC = '    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery('
for cls, method, count in (('ArtistAlbumBrowserActivity', 'getArtistCursor', 1),
                           ('AlbumBrowserActivity', 'getAlbumCursor', 2)):
    def patch_groups(text):
        assert text.count(ASYNC) == count
        text = text.replace(ASYNC, f'{M}\n    invoke-static {{p0, v3, v5}}, {SELECT}\n'
                            '    move-result-object v5\n\n' + ASYNC)
        if method == 'getArtistCursor':
            where = '    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;'
            text = once(text, where, f'{M}\n    invoke-static {{p0, v4}}, {LIB}->artistCounts({CONTEXT}[Ljava/lang/String;)[Ljava/lang/String;\n'
                        '    move-result-object v4\n\n' + where)
        return text

    method_patch(cls, method, patch_groups)

# Filter before the limit=100 query, and retain the same WHERE for its unbounded follow-up.
track_handler = 'TrackBrowserActivity$TrackListAdapter$TrackQueryHandler'
method_patch(track_handler, 'doQuery', lambda text: once(text,
    '    .line 1622\n    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;\n', f'''{M}
    iget-object v0, p0, Lcom/android/music/{track_handler};->this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {{v0}}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->-get0(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;
    move-result-object v0
    invoke-static {{v0, p1, p3}}, {SELECT}
    move-result-object p3

    .line 1622
    invoke-virtual {{p1}}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
'''))

method_patch('MediaPlaybackService', 'makeAutoShuffleList', lambda text: once(text,
    '    const-string/jumbo v3, "is_music=1"\n',
    '    const-string/jumbo v3, "is_music=1"\n\n' + f'{M}\n    invoke-static {{p0, v1, v3}}, {SELECT}\n    move-result-object v3\n'))

# The playback queue and the already queued track's restore metadata are not library views.
for cls, method in (('TrackBrowserActivity$NowPlayingCursor', 'makeNowPlayingCursor'),
                    ('MediaPlaybackService', 'reloadQueue')):
    call = '    invoke-static/range {v0 .. v5}, ' + QUERY
    method_patch(cls, method, lambda text: once(text, call,
        M + '\n' + call.replace(QUERY, f'{LIB}->queryUnfiltered{QUERY_ARGS}{CURSOR}')))

# Fancy search replaces the caller WHERE, so filter its returned cursor instead.
FILTER_SEARCH = f'{LIB}->filterSearch({CONTEXT}{CURSOR}){CURSOR}'
method_patch('QueryBrowserActivity', 'getQueryCursor', lambda text: once(text,
    '    move-result-object v2\n\n    goto', f'    move-result-object v2\n\n{M}\n'
    f'    invoke-static {{p0, v2}}, {FILTER_SEARCH}\n    move-result-object v2\n\n    goto'))
method_patch('QueryBrowserActivity$QueryListAdapter$QueryHandler', 'onQueryComplete', lambda text: once(text,
    '    invoke-virtual {v0, p3}, Lcom/android/music/QueryBrowserActivity;->init',
    f'{M}\n    invoke-static {{v0, p3}}, {FILTER_SEARCH}\n    move-result-object p3\n\n'
    '    invoke-virtual {v0, p3}, Lcom/android/music/QueryBrowserActivity;->init'))

# Also refresh search screens that were left on the back stack.
search = PKG / 'QueryBrowserActivity.smali'
text = search.read_text()
assert '\n.method public onResume(' not in text
search.write_text(text + f"""
# FEAT(whitelist)
.method protected onResume()V
    .locals 0

    invoke-super {{p0}}, Landroid/app/ListActivity;->onResume()V
    invoke-static {{p0}}, {UI}->onResume({ACTIVITY})V
    return-void
.end method
""")
