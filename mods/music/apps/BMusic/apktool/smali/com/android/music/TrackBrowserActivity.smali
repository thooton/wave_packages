.class public Lcom/android/music/TrackBrowserActivity;
.super Landroid/app/ListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$1;,
        Lcom/android/music/TrackBrowserActivity$2;,
        Lcom/android/music/TrackBrowserActivity$3;,
        Lcom/android/music/TrackBrowserActivity$4;,
        Lcom/android/music/TrackBrowserActivity$5;,
        Lcom/android/music/TrackBrowserActivity$6;,
        Lcom/android/music/TrackBrowserActivity$7;,
        Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;,
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field public genericHandler:Landroid/os/Handler;

.field private mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mCheckFocus:Z

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDeletedOneRow:Z

.field private mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

.field private mEditMode:Z

.field private mGenre:Ljava/lang/String;

.field private mLastSelectedPosition:I

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mPlaylist:Ljava/lang/String;

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSortOrder:Ljava/lang/String;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUseLastListPos:Z


# direct methods
.method static synthetic -get0(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/music/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mCheckFocus:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/music/TrackBrowserActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/music/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/music/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/music/TrackBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mLastSelectedPosition:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/TrackBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/TrackBrowserActivity;->mCheckFocus:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/music/TrackBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/music/TrackBrowserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/music/TrackBrowserActivity;->mLastSelectedPosition:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setAlbumArtBackground()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 85
    const-string/jumbo v0, "TrackBrowserActivity"

    sput-object v0, Lcom/android/music/TrackBrowserActivity;->TAG:Ljava/lang/String;

    .line 107
    sput v1, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 108
    sput v1, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    .line 348
    new-instance v0, Lcom/android/music/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$1;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 360
    new-instance v0, Lcom/android/music/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$2;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 565
    new-instance v0, Lcom/android/music/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$3;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    .line 635
    new-instance v0, Lcom/android/music/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$4;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    .line 676
    new-instance v0, Lcom/android/music/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$5;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 686
    new-instance v0, Lcom/android/music/TrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$6;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 881
    new-instance v0, Lcom/android/music/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$7;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->genericHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method private getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1240
    if-nez p1, :cond_0

    .line 1241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1245
    :cond_0
    const-string/jumbo v0, "title_key"

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    const-string/jumbo v1, "title != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1250
    const-string/jumbo v1, "external"

    .line 1251
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 1250
    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1253
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1254
    const-string/jumbo v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1253
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1257
    :cond_1
    const-string/jumbo v2, "title_key"

    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1258
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    .line 1258
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v4

    .line 1331
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    .line 1332
    invoke-virtual {p0, v4, v10}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    .line 1333
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    .line 1335
    :cond_3
    return-object v4

    .line 1260
    :cond_4
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1261
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v2, "nowplaying"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1262
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 1263
    new-instance v4, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 1264
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1265
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1270
    :cond_5
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v2, "podcasts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1271
    const-string/jumbo v1, " AND is_podcast=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1273
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1274
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1275
    const-string/jumbo v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1274
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1278
    :cond_6
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1279
    const-string/jumbo v5, "title_key"

    move-object v0, p1

    move v6, p3

    .line 1278
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 1280
    :cond_7
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v2, "recentlyadded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1282
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1284
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1285
    const-string/jumbo v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1284
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1288
    :cond_8
    const-string/jumbo v2, "numweeks"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1289
    const v3, 0x93a80

    .line 1288
    mul-int/2addr v2, v3

    .line 1290
    const-string/jumbo v3, " AND date_added>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v2, v2

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1292
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1293
    const-string/jumbo v5, "title_key"

    move-object v0, p1

    move v6, p3

    .line 1292
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 1296
    :cond_9
    const-string/jumbo v1, "external"

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1295
    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1297
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1298
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1299
    const-string/jumbo v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1298
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1302
    :cond_a
    const-string/jumbo v2, "play_order"

    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1303
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 1304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    .line 1303
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 1307
    :cond_b
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1308
    const-string/jumbo v1, " AND album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1309
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 1308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "track, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1312
    :cond_c
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1313
    const-string/jumbo v1, " AND artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1314
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 1313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    :cond_d
    const-string/jumbo v1, " AND is_music=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1319
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1320
    const-string/jumbo v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1319
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1323
    :cond_e
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1324
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    .line 1323
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private isMusic(Landroid/database/Cursor;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 725
    const-string/jumbo v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 726
    const-string/jumbo v3, "album"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 727
    const-string/jumbo v4, "artist"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 729
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 731
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 732
    const-string/jumbo v5, "<unknown>"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 732
    if-eqz v3, :cond_0

    .line 733
    if-eqz v2, :cond_0

    .line 734
    const-string/jumbo v3, "recording"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 732
    if-eqz v2, :cond_0

    .line 736
    return v1

    .line 739
    :cond_0
    const-string/jumbo v2, "is_music"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 741
    if-ltz v2, :cond_1

    .line 742
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 744
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 742
    goto :goto_0
.end method

.method private moveToItemOnKey(Z)V
    .locals 3

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1023
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 1024
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 1025
    :cond_0
    return-void

    .line 1024
    :cond_1
    if-nez p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 1027
    :cond_2
    if-eqz p1, :cond_3

    .line 1028
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1032
    :goto_0
    return-void

    .line 1030
    :cond_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private removeItem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 975
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 976
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 977
    if-eqz v0, :cond_0

    if-gez v1, :cond_1

    .line 978
    :cond_0
    return-void

    .line 981
    :cond_1
    const-string/jumbo v2, "nowplaying"

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 987
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 993
    if-eqz v2, :cond_3

    .line 994
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 996
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 997
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1019
    :cond_3
    :goto_1
    return-void

    .line 1002
    :cond_4
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 1003
    const-string/jumbo v3, "_id"

    .line 1002
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1004
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1005
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1007
    const-string/jumbo v4, "external"

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1006
    invoke-static {v4, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1008
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v5, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1010
    add-int/lit8 v2, v0, -0x1

    .line 1011
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1012
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1013
    if-nez v2, :cond_5

    .line 1014
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_1

    .line 1016
    :cond_5
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-ge v1, v2, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    .line 990
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removePlaylistItem(I)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 642
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 643
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 642
    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 644
    if-nez v1, :cond_0

    .line 645
    const-string/jumbo v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No view when removing playlist item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 650
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 651
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :cond_1
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 660
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v0, p1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 672
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 674
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 656
    iput-boolean v2, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    goto :goto_0

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 664
    const-string/jumbo v2, "_id"

    .line 663
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 665
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 666
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 668
    const-string/jumbo v0, "external"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 667
    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 669
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setAlbumArtBackground()V
    .locals 7

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 457
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 456
    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-static {v1, v0}, Lcom/android/music/MusicUtils;->setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 460
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 466
    :cond_0
    return-void
.end method

.method private setTitle()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v7, v0

    .line 472
    :goto_0
    if-lez v7, :cond_d

    .line 473
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 474
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 475
    const-string/jumbo v1, "album"

    .line 474
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 476
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "album_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    const-string/jumbo v1, "\' AND "

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 487
    const-string/jumbo v1, "artist_id"

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    const-string/jumbo v1, "="

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 490
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 491
    const-string/jumbo v3, "artist_id"

    .line 490
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 489
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 483
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 494
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "album"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v5, v4

    .line 492
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 496
    if-eqz v1, :cond_10

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v7, :cond_f

    .line 499
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    .line 502
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    .line 504
    :goto_2
    if-eqz v4, :cond_0

    .line 505
    const-string/jumbo v0, "<unknown>"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 504
    if-eqz v0, :cond_e

    .line 506
    :cond_0
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 551
    :goto_3
    if-eqz v0, :cond_c

    .line 552
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "My recordings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 553
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_1
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 563
    :goto_5
    return-void

    :cond_2
    move v7, v8

    .line 471
    goto/16 :goto_0

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 510
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    goto :goto_3

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v1, "podcasts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 518
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    goto :goto_3

    .line 519
    :cond_5
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v1, "recentlyadded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 520
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    goto :goto_3

    .line 522
    :cond_6
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v3, v8

    .line 524
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 525
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 523
    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_d

    .line 528
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_7

    .line 529
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 530
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 532
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 533
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto/16 :goto_3

    .line 536
    :cond_8
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 537
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v3, v8

    .line 539
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 540
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 538
    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_d

    .line 542
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_9

    .line 543
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 544
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 546
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 547
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto/16 :goto_3

    .line 554
    :cond_a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FM recordings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 555
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 556
    :cond_b
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SoundRecorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 561
    :cond_c
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    goto/16 :goto_5

    :cond_d
    move-object v0, v4

    goto/16 :goto_3

    :cond_e
    move-object v0, v4

    goto/16 :goto_3

    :cond_f
    move-object v0, v6

    goto/16 :goto_1

    :cond_10
    move-object v4, v6

    goto/16 :goto_2
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 939
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 940
    return v3

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 945
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v2, "recentlyadded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 946
    if-ltz v0, :cond_1

    .line 947
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 948
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 971
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 950
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/android/music/TrackBrowserActivity;->moveToItemOnKey(Z)V

    .line 951
    return v3

    .line 953
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/android/music/TrackBrowserActivity;->moveToItemOnKey(Z)V

    .line 954
    return v3

    .line 956
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->removeItem()V

    .line 957
    return v3

    .line 960
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 962
    :sswitch_3
    return v3

    .line 964
    :sswitch_4
    return v3

    .line 966
    :sswitch_5
    return v3

    .line 948
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch

    .line 960
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x43 -> :sswitch_5
    .end sparse-switch
.end method

.method doSearch()V
    .locals 5

    .prologue
    .line 912
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 913
    const-string/jumbo v0, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 916
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 917
    const-string/jumbo v0, "<unknown>"

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 924
    :goto_0
    const-string/jumbo v3, "<unknown>"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 925
    const-string/jumbo v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    :cond_0
    const-string/jumbo v3, "android.intent.extra.focus"

    const-string/jumbo v4, "audio/*"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v2, 0x7f070058

    invoke-virtual {p0, v2, v3}, Lcom/android/music/TrackBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 929
    const-string/jumbo v3, "query"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 932
    return-void

    .line 920
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    const-string/jumbo v3, "android.intent.extra.artist"

    .line 922
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 921
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public init(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mCheckFocus:Z

    .line 390
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 392
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 393
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->closeContextMenu()V

    .line 395
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    return-void

    .line 399
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 400
    const v0, 0x7f0b0019

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    .line 401
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    .line 404
    sget v0, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 409
    sget v1, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 410
    if-nez p2, :cond_2

    .line 411
    const/4 v0, -0x1

    sput v0, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 419
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 420
    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v1, "nowplaying"

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->setSelection(I)V

    .line 426
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/Intent;

    .line 428
    const-string/jumbo v2, "com.android.music.metadatachanged"

    .line 427
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 432
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "artist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_4

    .line 434
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 435
    const-string/jumbo v3, "artist_id"

    .line 434
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 436
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 437
    :goto_1
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_4

    .line 438
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 440
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->setSelection(I)V

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/Intent;

    .line 448
    const-string/jumbo v2, "com.android.music.metadatachanged"

    .line 447
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 443
    :cond_5
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 429
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1204
    sparse-switch p1, :sswitch_data_0

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1206
    :sswitch_0
    if-nez p2, :cond_1

    .line 1207
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 1214
    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1215
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1216
    if-eqz v0, :cond_0

    .line 1217
    new-array v1, v1, [J

    iget-wide v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v2, v1, v4

    .line 1219
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 1218
    invoke-static {p0, v1, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 1204
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 789
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 878
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 792
    :pswitch_1
    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 793
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v1, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 794
    return v6

    .line 798
    :pswitch_2
    new-array v0, v6, [J

    iget-wide v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v2, v0, v4

    .line 799
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 800
    return v6

    .line 808
    :pswitch_3
    new-array v0, v6, [J

    iget-wide v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v2, v0, v4

    .line 809
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->createPlayList(Landroid/content/Context;[J)V

    .line 810
    return v6

    .line 814
    :pswitch_4
    new-array v0, v6, [J

    iget-wide v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v2, v0, v4

    .line 815
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "playlist"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 816
    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 817
    return v6

    .line 822
    :pswitch_5
    iget-wide v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 823
    return v6

    .line 826
    :pswitch_6
    new-array v1, v6, [J

    .line 827
    iget-wide v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    long-to-int v0, v2

    int-to-long v2, v0

    aput-wide v2, v1, v4

    .line 830
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-static {p0, v1, v4, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 852
    return v6

    .line 833
    :cond_0
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 856
    :pswitch_7
    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    .line 857
    return v6

    .line 860
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->doSearch()V

    .line 861
    return v6

    .line 864
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 865
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const-string/jumbo v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 868
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 871
    const v1, 0x7f07007a

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 870
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 873
    const v0, 0x7f070079

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 789
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    const-string/jumbo v1, "withtabs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p0, v4}, Lcom/android/music/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 131
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/music/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 132
    if-eqz p1, :cond_3

    .line 133
    const-string/jumbo v0, "selectedtrack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 134
    const-string/jumbo v0, "album"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "artist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "playlist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "genre"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "editmode"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 149
    :goto_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 150
    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    .line 151
    const-string/jumbo v1, "album"

    aput-object v1, v0, v6

    const-string/jumbo v1, "artist"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "artist_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "duration"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "mime_type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 149
    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 155
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 156
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 157
    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    .line 158
    const-string/jumbo v1, "album"

    aput-object v1, v0, v6

    const-string/jumbo v1, "artist"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "artist_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "duration"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "play_order"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "audio_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "is_music"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "mime_type"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 155
    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 166
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setContentView(I)V

    .line 167
    const v0, 0x7f0b0019

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 169
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 174
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :goto_1
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 189
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->setActivity(Lcom/android/music/TrackBrowserActivity;)V

    .line 191
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    :cond_2
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 196
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/music/TrackBrowserActivity$8;

    invoke-direct {v1, p0}, Lcom/android/music/TrackBrowserActivity$8;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void

    .line 140
    :cond_3
    const-string/jumbo v1, "album"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 143
    const-string/jumbo v1, "artist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 144
    const-string/jumbo v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 145
    const-string/jumbo v1, "genre"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 146
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    goto/16 :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 750
    const/4 v0, 0x5

    const v1, 0x7f070041

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 751
    const/4 v0, 0x1

    .line 752
    const v1, 0x7f070042

    .line 751
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 753
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 754
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 755
    const/16 v0, 0x15

    const v1, 0x7f070056

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 757
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f07003e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 758
    const/16 v0, 0xa

    const v1, 0x7f070006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 759
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 760
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 761
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 764
    const-string/jumbo v1, "audio_id"

    .line 763
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    iget-wide v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 769
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSelectAudioPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_1

    const-string/jumbo v1, ".fl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 772
    const/16 v0, 0xf

    const v1, 0x7f070078

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->isMusic(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    const/16 v0, 0x16

    const v1, 0x7f07001e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 779
    const-string/jumbo v2, "album"

    .line 778
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 781
    const-string/jumbo v2, "artist"

    .line 780
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 782
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 783
    const-string/jumbo v2, "title"

    .line 782
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 784
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 785
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1111
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1112
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1113
    const/16 v0, 0x11

    const v1, 0x7f07006b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1114
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1115
    const/16 v0, 0x13

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1117
    :cond_0
    const/16 v0, 0x9

    const v1, 0x7f070007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1118
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1119
    const/16 v0, 0x12

    const v1, 0x7f07004e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1120
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    const/16 v0, 0x14

    const v1, 0x7f07004f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1125
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_1

    .line 265
    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sput v0, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 281
    :try_start_0
    const-string/jumbo v0, "nowplaying"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 303
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 305
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 306
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 307
    return-void

    .line 284
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const v1, 0x7f0b0016

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1864
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1944
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1869
    :sswitch_0
    return v4

    .line 1872
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    .line 1873
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1874
    return v4

    .line 1876
    :cond_1
    const v0, 0x7f0b0018

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 1877
    return v4

    .line 1880
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    .line 1881
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1882
    return v4

    .line 1884
    :cond_2
    const v0, 0x7f0b001a

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 1885
    return v4

    .line 1889
    :sswitch_3
    new-array v1, v4, [J

    .line 1890
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1891
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 1892
    const-string/jumbo v2, "_id"

    .line 1891
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1894
    :try_start_0
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1895
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v1, v0
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 1902
    const-string/jumbo v3, "title"

    .line 1901
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 1903
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1904
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1908
    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    invoke-static {p0, v1, v5, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 1929
    :cond_3
    return v4

    .line 1896
    :catch_0
    move-exception v0

    .line 1897
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    .line 1898
    return v4

    .line 1906
    :cond_4
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1932
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1933
    if-eqz v0, :cond_5

    .line 1934
    invoke-virtual {v0}, Landroid/widget/ListView;->clearTextFilter()V

    .line 1935
    return v4

    .line 1939
    :cond_5
    :sswitch_5
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-nez v0, :cond_0

    .line 1940
    return v4

    .line 1864
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x1c -> :sswitch_4
        0x43 -> :sswitch_3
        0x52 -> :sswitch_5
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_1

    .line 1092
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 1094
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, p3}, Lcom/android/music/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 1101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const v1, 0x7f070046

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1198
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1140
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1141
    return v6

    .line 1145
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1146
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1150
    :cond_1
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    goto :goto_0

    .line 1154
    :pswitch_3
    sget-object v0, Lcom/android/music/TrackBrowserActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GO_TO_NOWPLAYING"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1156
    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1161
    :pswitch_4
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-nez v0, :cond_2

    .line 1162
    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1165
    return v6

    .line 1168
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1169
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    .line 1170
    const-string/jumbo v3, "is_music=1"

    .line 1171
    const-string/jumbo v5, "title_key"

    move-object v0, p0

    .line 1167
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1172
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1173
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1178
    :cond_3
    :goto_1
    return v6

    .line 1174
    :cond_4
    if-eqz v0, :cond_3

    .line 1175
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1176
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1181
    :pswitch_5
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 1182
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->createPlayList(Landroid/content/Context;[J)V

    .line 1186
    return v6

    .line 1190
    :pswitch_6
    invoke-static {}, Lcom/android/music/MusicUtils;->clearQueue()V

    .line 1191
    return v6

    .line 1138
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 341
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 342
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1130
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 1131
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 326
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 331
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_1

    .line 332
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 335
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 336
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    .line 258
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 376
    const-string/jumbo v0, "selectedtrack"

    iget-wide v2, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 377
    const-string/jumbo v0, "artist"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v0, "album"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v0, "playlist"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v0, "genre"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string/jumbo v0, "editmode"

    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 383
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    .prologue
    const v10, 0x7f07005b

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_4

    .line 214
    new-instance v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 215
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 218
    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_2

    const v3, 0x7f030006

    .line 221
    :goto_0
    new-array v5, v8, [Ljava/lang/String;

    new-array v6, v8, [I

    .line 222
    const-string/jumbo v2, "nowplaying"

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 223
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string/jumbo v8, "podcasts"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 225
    const-string/jumbo v8, "recentlyadded"

    .line 224
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    xor-int/lit8 v8, v2, 0x1

    :cond_0
    move-object v2, p0

    .line 214
    invoke-direct/range {v0 .. v8}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 226
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    invoke-virtual {p0, v10}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 228
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v9}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 244
    :goto_2
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_1

    .line 245
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 247
    :cond_1
    return-void

    .line 219
    :cond_2
    const v3, 0x7f030013

    goto :goto_0

    :cond_3
    move v2, v9

    .line 224
    goto :goto_1

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 237
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v8}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    goto :goto_2

    .line 240
    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 241
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v9}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    .line 252
    return-void
.end method
