.class public Lcom/android/music/PlaylistBrowserActivity;
.super Landroid/app/ListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/PlaylistBrowserActivity$1;,
        Lcom/android/music/PlaylistBrowserActivity$2;,
        Lcom/android/music/PlaylistBrowserActivity$3;,
        Lcom/android/music/PlaylistBrowserActivity$4;,
        Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    }
.end annotation


# static fields
.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field public genericHandler:Landroid/os/Handler;

.field private mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

.field mAdapterSent:Z

.field private mCheckFocus:Z

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mIsCallingProgress:Z

.field private mLastSelectedPosition:I

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackChangeListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/music/PlaylistBrowserActivity;)Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/PlaylistBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCheckFocus:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/music/PlaylistBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mLastSelectedPosition:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/PlaylistBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/PlaylistBrowserActivity;->mCheckFocus:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/music/PlaylistBrowserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/music/PlaylistBrowserActivity;->mLastSelectedPosition:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/music/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 77
    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 78
    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 85
    iput-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mIsCallingProgress:Z

    .line 261
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$1;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackChangeListener:Landroid/content/BroadcastReceiver;

    .line 277
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$2;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$3;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 560
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$4;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->genericHandler:Landroid/os/Handler;

    .line 610
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 611
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 610
    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/16 v8, 0x25

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    const-string/jumbo v0, "name != \'\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    if-eqz p2, :cond_1

    .line 621
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 622
    array-length v0, v4

    new-array v6, v0, [Ljava/lang/String;

    .line 623
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    move v0, v1

    .line 625
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v4, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v0

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 628
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 629
    const-string/jumbo v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v5, "name LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 634
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 636
    if-eqz p1, :cond_3

    .line 638
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 639
    const-string/jumbo v7, "name"

    move-object v0, p1

    .line 637
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-object v2

    .line 644
    :cond_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 645
    const-string/jumbo v7, "name"

    move-object v2, p0

    .line 643
    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 646
    invoke-direct {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 650
    if-nez p1, :cond_0

    .line 651
    return-object v4

    .line 653
    :cond_0
    instance-of v0, p1, Landroid/database/MergeCursor;

    if-eqz v0, :cond_1

    .line 655
    const-string/jumbo v0, "PlaylistBrowserActivity"

    const-string/jumbo v1, "Already wrapped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-object p1

    .line 659
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 660
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 661
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 663
    :goto_0
    new-instance v7, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 664
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_2

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 666
    const-wide/16 v2, -0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 671
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 679
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 680
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v0, "count(*)"

    aput-object v0, v2, v8

    const-string/jumbo v3, "is_podcast=1"

    move-object v0, p0

    move-object v5, v4

    .line 678
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_3

    .line 682
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 683
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 684
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 685
    if-lez v1, :cond_3

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 687
    const-wide/16 v2, -0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 694
    :cond_3
    new-instance v0, Landroid/database/MergeCursor;

    new-array v1, v9, [Landroid/database/Cursor;

    aput-object v7, v1, v8

    aput-object p1, v1, v10

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 695
    return-object v0

    :cond_4
    move-object v6, v4

    goto/16 :goto_0
.end method

.method private playPodcasts()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 586
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 588
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 589
    const-string/jumbo v3, "is_podcast=1"

    .line 590
    const-string/jumbo v5, "title_key"

    move-object v0, p0

    .line 587
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 592
    if-nez v1, :cond_0

    .line 594
    return-void

    .line 597
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 598
    new-array v3, v2, [J

    move v0, v6

    .line 599
    :goto_0
    if-ge v0, v2, :cond_1

    .line 600
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 601
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v3, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 608
    :goto_1
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 606
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 605
    :catchall_0
    move-exception v0

    .line 606
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 605
    throw v0
.end method

.method private playRecentlyAdded()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 535
    const-string/jumbo v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x93a80

    mul-int/2addr v0, v1

    .line 536
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v6

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "date_added>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    int-to-long v10, v0

    sub-long/2addr v8, v10

    .line 537
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 541
    const-string/jumbo v5, "title_key"

    move-object v0, p0

    .line 539
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 543
    if-nez v1, :cond_0

    .line 545
    return-void

    .line 548
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 549
    new-array v3, v2, [J

    move v0, v6

    .line 550
    :goto_0
    if-ge v0, v2, :cond_1

    .line 551
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 552
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v3, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 559
    :goto_1
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 557
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 556
    :catchall_0
    move-exception v0

    .line 557
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 556
    throw v0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 320
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 321
    return-void
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCheckFocus:Z

    .line 299
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 301
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 302
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->closeContextMenu()V

    .line 304
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    return-void

    .line 309
    :cond_1
    sget v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 311
    sget v2, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 312
    const/4 v0, -0x1

    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 314
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 315
    const v0, 0x7f0b001a

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 316
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle()V

    .line 317
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 474
    sparse-switch p1, :sswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 476
    :sswitch_0
    if-nez p2, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 483
    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 484
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 487
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 474
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 397
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 468
    :cond_0
    :goto_0
    return v6

    .line 400
    :sswitch_0
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    goto :goto_0

    .line 402
    :cond_1
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v4, -0x3

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V

    goto :goto_0

    .line 405
    :cond_2
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0

    .line 410
    :sswitch_1
    new-array v2, v6, [J

    .line 411
    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v1, v4

    int-to-long v4, v1

    aput-wide v4, v2, v7

    .line 412
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 413
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 414
    const-string/jumbo v3, "name"

    .line 413
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    const-string/jumbo v1, "My recordings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 416
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 423
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    :goto_2
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {p0, v2, v6, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 446
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    goto :goto_0

    .line 417
    :cond_4
    const-string/jumbo v1, "FM recordings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 425
    :cond_5
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 451
    :sswitch_2
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 452
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    const-class v1, Lcom/android/music/WeekSelector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 454
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    return v6

    .line 457
    :cond_6
    const-string/jumbo v0, "PlaylistBrowserActivity"

    const-string/jumbo v1, "should not be here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 461
    :sswitch_3
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->renamePlaylist(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 398
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v9, 0x7f07005c

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-boolean v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mIsCallingProgress:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 97
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string/jumbo v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iput-boolean v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 106
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/music/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/music/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 108
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/music/PlaylistBrowserActivity;->setVolumeControlStream(I)V

    .line 109
    new-instance v2, Lcom/android/music/PlaylistBrowserActivity$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/music/PlaylistBrowserActivity$5;-><init>(Lcom/android/music/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setContentView(I)V

    .line 165
    const v0, 0x7f0b001a

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 168
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 171
    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "starting query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_2

    .line 176
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 177
    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 178
    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v2, "name"

    aput-object v2, v5, v8

    .line 179
    new-array v6, v3, [I

    const v2, 0x1020014

    aput v2, v6, v8

    .line 177
    const v3, 0x7f030013

    move-object v2, p0

    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 180
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    invoke-virtual {p0, v9}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 182
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 200
    :goto_0
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->setActivity(Lcom/android/music/PlaylistBrowserActivity;)V

    .line 185
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 193
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 197
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 365
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 370
    const/4 v0, 0x5

    const v1, 0x7f070041

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 372
    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    .line 373
    const/16 v0, 0x11

    const v1, 0x7f070022

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 376
    :cond_1
    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 377
    const/16 v0, 0x12

    const v1, 0x7f070023

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 380
    :cond_2
    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    .line 381
    const/16 v0, 0x13

    const v1, 0x7f070024

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 385
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 386
    const-string/jumbo v2, "name"

    .line 385
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "My recordings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 388
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_4
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 393
    return-void

    .line 389
    :cond_5
    const-string/jumbo v1, "FM recordings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    # FEAT(whitelist)
    invoke-static {p1}, Lcom/android/music/ArgonSettings;->addMenu(Landroid/view/Menu;)V

    const/4 v2, 0x0

    .line 325
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    const/16 v0, 0x11

    const v1, 0x7f07006b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 331
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    # FEAT(whitelist)
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 227
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iput-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 237
    :cond_2
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mIsCallingProgress:Z

    if-nez v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    :cond_3
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 827
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 902
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 834
    :sswitch_0
    return v4

    .line 837
    :sswitch_1
    const v0, 0x7f0b0019

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 838
    return v4

    .line 841
    :sswitch_2
    const v0, 0x7f0b0017

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 842
    return v4

    .line 845
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {v0}, Landroid/widget/ListView;->clearTextFilter()V

    .line 848
    return v4

    .line 852
    :cond_1
    :sswitch_4
    # FEAT(whitelist)
    goto :cond_0

    .line 857
    :sswitch_5
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 858
    const-string/jumbo v1, "_id"

    .line 857
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 859
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 860
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 861
    new-array v2, v4, [J

    .line 862
    long-to-int v0, v0

    int-to-long v0, v0

    aput-wide v0, v2, v5

    .line 864
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 865
    const-string/jumbo v3, "name"

    .line 864
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 866
    const-string/jumbo v1, "My recordings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 867
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 873
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 877
    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 878
    invoke-static {p0, v2, v4, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 896
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 899
    :cond_3
    return v4

    .line 868
    :cond_4
    const-string/jumbo v1, "FM recordings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 875
    :cond_5
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x1c -> :sswitch_3
        0x43 -> :sswitch_5
        0x52 -> :sswitch_4
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 500
    const-string/jumbo v2, "vnd.android.cursor.dir/com.android.music.playlist"

    .line 499
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string/jumbo v1, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 504
    const-string/jumbo v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    .line 506
    const v0, 0x7f0b0013

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 505
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 507
    const-string/jumbo v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 509
    const v2, 0x7f02001e

    .line 508
    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 507
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 511
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 512
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 513
    return-void

    .line 515
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string/jumbo v1, "playlist"

    const-string/jumbo v2, "recentlyadded"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 531
    :goto_0
    return-void

    .line 520
    :cond_1
    const-wide/16 v0, -0x3

    cmp-long v0, p4, v0

    if-nez v0, :cond_2

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v1, "playlist"

    const-string/jumbo v2, "podcasts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 526
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string/jumbo v1, "playlist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    # FEAT(whitelist)
    invoke-static {p0, p1}, Lcom/android/music/ArgonSettings;->handleMenu(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :argon_menu_stock
    return v0
    :argon_menu_stock

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 360
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 345
    :sswitch_0
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-nez v0, :cond_0

    .line 346
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    const/4 v1, 0x0

    .line 347
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    goto :goto_0

    .line 354
    :sswitch_1
    const-string/jumbo v0, "PlaylistBrowserActivity"

    const-string/jumbo v1, "GO_TO_NOWPLAYING"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 357
    const/4 v0, 0x1

    return v0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mIsCallingProgress:Z

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 275
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 336
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 337
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    # FEAT(whitelist)
    invoke-static {p0}, Lcom/android/music/ArgonSettings;->onResume(Landroid/app/Activity;)V

    .line 245
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mIsCallingProgress:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 248
    return-void

    .line 251
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 257
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 258
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 259
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterSent:Z

    .line 206
    return-object v0
.end method
