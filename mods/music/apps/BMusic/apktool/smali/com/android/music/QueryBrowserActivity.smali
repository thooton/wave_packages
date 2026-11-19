.class public Lcom/android/music/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/QueryBrowserActivity$1;,
        Lcom/android/music/QueryBrowserActivity$2;,
        Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private mFilterString:Ljava/lang/String;

.field private mQueryCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method static synthetic -get0(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/android/music/QueryBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$1;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Lcom/android/music/QueryBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$2;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 440
    if-nez p2, :cond_0

    .line 441
    const-string/jumbo p2, ""

    .line 443
    :cond_0
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    .line 444
    const-string/jumbo v0, "_id"

    aput-object v0, v4, v1

    .line 445
    const-string/jumbo v0, "mime_type"

    const/4 v3, 0x1

    aput-object v0, v4, v3

    .line 447
    const-string/jumbo v0, "artist"

    const/4 v3, 0x2

    aput-object v0, v4, v3

    const-string/jumbo v0, "album"

    const/4 v3, 0x3

    aput-object v0, v4, v3

    .line 448
    const-string/jumbo v0, "title"

    const/4 v3, 0x4

    aput-object v0, v4, v3

    const-string/jumbo v0, "data1"

    const/4 v3, 0x5

    aput-object v0, v4, v3

    const-string/jumbo v0, "data2"

    const/4 v3, 0x6

    aput-object v0, v4, v3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 451
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 454
    if-eqz p1, :cond_1

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 455
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_0
    return-object v2

    :cond_1
    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    .line 457
    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    # FEAT(whitelist)
    invoke-static {p0, v2}, Lcom/android/music/ArgonLibrary;->filterSearch(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    move-result-object v2

    goto :goto_0
.end method

.method private playAlbum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 275
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v0, "album"

    aput-object v0, v2, v7

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "album=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "is_music"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "=1"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 280
    const-string/jumbo v5, "track"

    move-object v0, p0

    .line 279
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 283
    return v7

    .line 285
    :cond_0
    return v6
.end method

.method private playArtist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 261
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v0, "artist"

    aput-object v0, v2, v7

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "artist=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string/jumbo v1, "is_music"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string/jumbo v1, "=1"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 266
    const-string/jumbo v5, "track"

    move-object v0, p0

    .line 265
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 268
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 269
    return v7

    .line 271
    :cond_0
    return v6
.end method

.method private playResumeLastPlaylist()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 239
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v0

    .line 241
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 242
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 243
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 242
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 254
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 255
    return v11

    .line 246
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "album_id=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, "is_music"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, "=1"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 249
    new-array v6, v11, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v6, v10

    move-object v4, p0

    move-object v8, v3

    move-object v9, v3

    .line 248
    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_1
    return v10
.end method

.method private playTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 289
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v0, "title"

    aput-object v0, v2, v7

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string/jumbo v1, "is_music"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string/jumbo v1, "=1"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 294
    const-string/jumbo v5, "track"

    move-object v0, p0

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 296
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 297
    return v7

    .line 299
    :cond_0
    return v6
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 386
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 387
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 390
    return-void

    .line 392
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 393
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 371
    :pswitch_0
    if-nez p2, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 83
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 321
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    iget-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 338
    :cond_0
    iput-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 339
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 340
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/high16 v4, 0x4000000

    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 400
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    :cond_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 404
    const-string/jumbo v2, "mime_type"

    .line 403
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string/jumbo v1, "artist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string/jumbo v1, "artist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 424
    :goto_0
    return-void

    .line 412
    :cond_2
    const-string/jumbo v1, "album"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string/jumbo v1, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 418
    :cond_3
    if-ltz p3, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_4

    .line 419
    const/4 v0, 0x1

    new-array v0, v0, [J

    aput-wide p4, v0, v3

    .line 420
    invoke-static {p0, v0, v3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 422
    :cond_4
    const-string/jumbo v0, "QueryBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position/id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 428
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 436
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 431
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 432
    const/4 v0, 0x1

    return v0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 315
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 316
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterSent:Z

    .line 309
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/QueryBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    const-string/jumbo v6, "content://media/external/audio/media/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-array v1, v11, [J

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 106
    invoke-static {p0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 107
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    .line 108
    return-void

    :cond_0
    move-object v0, v4

    .line 96
    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v6, "content://media/external/audio/albums/"

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "album"

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    .line 117
    return-void

    .line 119
    :cond_2
    const-string/jumbo v6, "content://media/external/audio/artists/"

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "artist"

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    .line 126
    return-void

    .line 130
    :cond_3
    const-string/jumbo v3, "query"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 131
    const-string/jumbo v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    const-string/jumbo v0, "android.intent.extra.focus"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string/jumbo v3, "android.intent.extra.artist"

    .line 133
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string/jumbo v5, "android.intent.extra.album"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    const-string/jumbo v6, "android.intent.extra.title"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    if-eqz v0, :cond_4

    .line 138
    const-string/jumbo v6, "audio/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 139
    iput-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 212
    :cond_4
    :goto_1
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setContentView(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 214
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_10

    .line 216
    new-instance v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 218
    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    .line 217
    const v3, 0x7f030013

    move-object v2, p0

    .line 216
    invoke-direct/range {v0 .. v6}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 219
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 221
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 236
    :goto_2
    return-void

    .line 141
    :cond_5
    const-string/jumbo v1, "vnd.android.cursor.item/album"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    if-eqz v5, :cond_4

    .line 143
    iput-object v5, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 144
    if-eqz v3, :cond_4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_6
    const-string/jumbo v1, "vnd.android.cursor.item/artist"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    if-eqz v3, :cond_4

    .line 151
    iput-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_7
    const-string/jumbo v3, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    const-string/jumbo v0, "android.intent.extra.focus"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string/jumbo v3, "query"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    const-string/jumbo v5, "android.intent.extra.album"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    const-string/jumbo v6, "android.intent.extra.artist"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    const-string/jumbo v7, "android.intent.extra.genre"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 164
    const-string/jumbo v8, "android.intent.extra.playlist"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    const-string/jumbo v8, "android.intent.extra.title"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string/jumbo v8, "QueryBrowserActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MediaFocus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  Album = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 168
    const-string/jumbo v10, "  Artist = "

    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 168
    const-string/jumbo v10, "  Title = "

    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-nez v0, :cond_8

    .line 172
    const-string/jumbo v0, "QueryBrowserActivity"

    const-string/jumbo v1, "Play UnStructured Search"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 202
    :goto_3
    if-nez v0, :cond_4

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    const-class v1, Lcom/android/music/MusicBrowserActivity;

    .line 205
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void

    .line 173
    :cond_8
    const-string/jumbo v8, "vnd.android.cursor.item/*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 174
    if-nez v3, :cond_9

    .line 176
    const-string/jumbo v0, "QueryBrowserActivity"

    const-string/jumbo v1, "Query is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/music/QueryBrowserActivity;->playResumeLastPlaylist()Z

    move-result v0

    goto :goto_3

    .line 180
    :cond_9
    const-string/jumbo v0, "QueryBrowserActivity"

    const-string/jumbo v1, "Play UnStructured Search for track"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_3

    .line 182
    :cond_a
    const-string/jumbo v3, "vnd.android.cursor.item/genre"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 184
    const-string/jumbo v0, "QueryBrowserActivity"

    const-string/jumbo v1, "Genre Search Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_3

    .line 185
    :cond_b
    const-string/jumbo v3, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 187
    const-string/jumbo v0, "QueryBrowserActivity"

    const-string/jumbo v1, "Artist Search Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, v6, v7}, Lcom/android/music/QueryBrowserActivity;->playArtist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 189
    :cond_c
    const-string/jumbo v3, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 191
    const-string/jumbo v0, "QueryBrowserActivity"

    const-string/jumbo v1, "Album Search Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0, v5, v6}, Lcom/android/music/QueryBrowserActivity;->playAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 193
    :cond_d
    const-string/jumbo v3, "vnd.android.cursor.item/audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 195
    const-string/jumbo v0, "QueryBrowserActivity"

    const-string/jumbo v3, "Song Search Mode"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, v5, v6, v7, v1}, Lcom/android/music/QueryBrowserActivity;->playTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_3

    .line 197
    :cond_e
    const-string/jumbo v1, "vnd.android.cursor.item/playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 199
    const-string/jumbo v0, "QueryBrowserActivity"

    const-string/jumbo v1, "Playlist Search Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_3

    .line 223
    :cond_f
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 224
    iput-object v4, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_2

    .line 227
    :cond_10
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/android/music/QueryBrowserActivity;)V

    .line 228
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 230
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_11

    .line 231
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_2

    .line 233
    :cond_11
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_2

    :cond_12
    move v0, v2

    goto/16 :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

# FEAT(whitelist)
.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V
    invoke-static {p0}, Lcom/android/music/ArgonSettings;->onResume(Landroid/app/Activity;)V
    return-void
.end method
