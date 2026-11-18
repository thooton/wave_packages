"""Run Music Argon's WHERE clauses on the stock Oreo MediaProvider query shapes."""
import sqlite3
import sys

(songs, podcasts, playlist_tracks, playlist_ids, genre, artists, albums, artist_albums,
 count_albums, count_tracks, nested, any_audio, no_card) = sys.stdin.read().splitlines()
with sqlite3.connect(':memory:') as db:
    db.executescript('''
      CREATE TABLE audio (_id INTEGER, _data TEXT, artist_id INTEGER, album_id INTEGER,
                          album_key TEXT, is_music INTEGER, is_podcast INTEGER, title TEXT);
      CREATE TABLE audio_playlists_map (_id INTEGER, audio_id INTEGER, playlist_id INTEGER, play_order INTEGER);
      CREATE TABLE audio_genres_map_noid (audio_id INTEGER, genre_id INTEGER);
      CREATE TABLE album_art (album_id INTEGER, _data TEXT);
      CREATE VIEW artist_info AS SELECT artist_id AS _id FROM audio WHERE is_music=1 GROUP BY artist_id;
      CREATE VIEW album_info AS SELECT album_id AS _id FROM audio WHERE is_music=1 GROUP BY album_id;
      CREATE VIEW artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio;
    ''')
    rows = [
        (1, '/storage/0403-0201/Music/album/a.mp3', 1, 100, 'album a', 1, 0, 'a'),
        (2, '/storage/0403-0201/PODCASTS/b.mp3', 3, 101, 'pod b', 0, 1, 'b'),
        (3, '/storage/emulated/0/Music/c.mp3', 1, 200, 'album c', 1, 0, 'c'),
        (4, '/storage/0403-0201/Download/d.mp3', 3, 201, 'album d', 1, 0, 'd'),
        (5, '/storage/0403-0201/MusicBackup/e.mp3', 4, 202, 'album e', 1, 0, 'e'),
        (6, '/storage/0403-0201/Music/other/f.mp3', 2, 200, 'album c', 1, 0, 'f'),
        (7, "/storage/0403-0201/Music/100%_It's Live/g.mp3", 1, 300, 'album g', 1, 0, 'g'),
        (8, "/storage/0403-0201/Music/100xxIt's Live/h.mp3", 1, 301, 'album h', 1, 0, 'h'),
        (9, '/storage/0403-0201/Music/i.mp3', 2, 100, 'album a', 1, 0, 'i'),
        (10, '/storage/0403-0201/download/j.mp3', 3, 101, 'pod b', 0, 1, 'j'),
    ]
    db.executemany('INSERT INTO audio VALUES (?, ?, ?, ?, ?, ?, ?, ?)', rows)
    db.executemany('INSERT INTO audio_playlists_map VALUES (?, ?, 3, ?)', [(10 + i, i, i) for i in [1, 2, 3]])
    db.executemany('INSERT INTO audio_genres_map_noid VALUES (?, 3)', [(1,), (4,), (7,)])

    def check(sql, expected):
        actual = db.execute(sql).fetchall()
        assert actual == expected, (sql, actual, expected)

    check(f'SELECT _id FROM audio WHERE {songs} ORDER BY _id', [(1,), (6,), (7,), (8,), (9,)])
    check(f'SELECT _id FROM audio WHERE {podcasts}', [(2,)])
    check(f'SELECT audio_playlists_map._id, audio_id FROM audio_playlists_map, audio'
          f' WHERE audio._id=audio_id AND playlist_id=3 AND {playlist_tracks} ORDER BY play_order', [(11, 1), (12, 2)])
    check(f'SELECT audio_id FROM audio_playlists_map WHERE playlist_id=3 AND {playlist_ids} ORDER BY play_order', [(1,), (2,)])
    check(f'SELECT _id FROM audio_genres_map_noid, audio WHERE audio._id=audio_id AND genre_id=3 AND {genre}', [(1,), (7,)])
    check(f'SELECT _id, {count_albums}, {count_tracks} FROM artist_info WHERE {artists} ORDER BY _id', [(1, 3, 3), (2, 2, 2)])
    check(f'SELECT _id FROM album_info WHERE {albums} ORDER BY _id', [(100,), (200,), (300,), (301,)])
    check('SELECT audio.album_id, COUNT(*), COUNT(CASE WHEN artist_id=1 THEN 1 END)'
          ' FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id'
          ' WHERE is_music=1 AND audio.album_id IN (SELECT album_id FROM artists_albums_map WHERE artist_id=1)'
          f' AND ({artist_albums}) GROUP BY audio.album_id ORDER BY audio.album_id', [(100, 2, 1), (300, 1, 1), (301, 1, 1)])
    check(f'SELECT _id FROM audio WHERE {nested}', [(7,)])
    check(f'SELECT _id FROM audio WHERE {any_audio} ORDER BY _id', [(1,), (2,), (6,), (7,), (8,), (9,)])
    check(f'SELECT _id FROM audio WHERE {no_card}', [])
print('Folder whitelist SQL tests passed')
