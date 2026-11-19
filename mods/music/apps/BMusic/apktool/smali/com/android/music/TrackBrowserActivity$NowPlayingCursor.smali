.class Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[J

.field private mNowPlaying:[J

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 1340
    iput-object p3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 1341
    iput-object p2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 1342
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1343
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1346
    iput-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :goto_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1353
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_0

    .line 1354
    return-void

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    goto :goto_0

    .line 1357
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1358
    const-string/jumbo v0, "_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    .line 1359
    :goto_1
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_2

    .line 1360
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v8, v1, v0

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1361
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1362
    const-string/jumbo v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1365
    :cond_2
    const-string/jumbo v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/android/music/TrackBrowserActivity;

    .line 1369
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 1370
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_id"

    .line 1367
    # FEAT(whitelist)
    invoke-static/range {v0 .. v5}, Lcom/android/music/WaveLibrary;->queryUnfiltered(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1372
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    .line 1373
    iput v6, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1374
    return-void

    .line 1377
    :cond_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1378
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    .line 1379
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1380
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1381
    const-string/jumbo v2, "_id"

    .line 1380
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move v0, v6

    .line 1382
    :goto_2
    if-ge v0, v1, :cond_4

    .line 1383
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1384
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1382
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1386
    :cond_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1387
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    .line 1395
    :try_start_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move v0, v6

    :goto_3
    if-ltz v1, :cond_6

    .line 1396
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v2, v2, v1

    .line 1397
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 1398
    if-gez v4, :cond_5

    .line 1401
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->removeTrack(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 1395
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1404
    :cond_6
    if-lez v0, :cond_7

    .line 1405
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    .line 1406
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1407
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_7

    .line 1408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1409
    return-void

    .line 1412
    :catch_1
    move-exception v0

    .line 1413
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    .line 1415
    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1553
    :cond_0
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 1554
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1546
    :cond_0
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 1500
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1501
    :catch_0
    move-exception v0

    .line 1502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1503
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 1510
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 1511
    :catch_0
    move-exception v0

    .line 1512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1513
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1488
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getType(I)I
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1424
    if-ne p1, p2, :cond_0

    .line 1425
    return v3

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    if-nez v0, :cond_2

    .line 1429
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1428
    :cond_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v0, v0, p2

    .line 1437
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1438
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1439
    iput p2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    .line 1441
    return v3
.end method

.method public removeItem(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1446
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, p1, p1}, Lcom/android/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    return v1

    .line 1450
    :cond_0
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1451
    :goto_0
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge p1, v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, v1, v2

    aput-wide v2, v0, p1

    .line 1453
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1455
    :cond_1
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1456
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 1558
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1559
    const/4 v0, 0x1

    return v0
.end method
