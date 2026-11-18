.class public Lcom/android/music/AlbumBrowserActivity;
.super Landroid/app/ListActivity;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AlbumBrowserActivity$1;,
        Lcom/android/music/AlbumBrowserActivity$2;,
        Lcom/android/music/AlbumBrowserActivity$3;,
        Lcom/android/music/AlbumBrowserActivity$4;,
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field public genericHandler:Landroid/os/Handler;

.field private mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

.field private mAdapterSent:Z

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mArtistId:Ljava/lang/String;

.field private mCheckFocus:Z

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field mIsUnknownAlbum:Z

.field mIsUnknownArtist:Z

.field private mLastSelectedPosition:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/music/AlbumBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCheckFocus:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/music/AlbumBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/music/AlbumBrowserActivity;->mLastSelectedPosition:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/music/AlbumBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/AlbumBrowserActivity;->mCheckFocus:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/music/AlbumBrowserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/music/AlbumBrowserActivity;->mLastSelectedPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 88
    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 89
    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 91
    const-string/jumbo v0, "AlbumBrowserActivity"

    sput-object v0, Lcom/android/music/AlbumBrowserActivity;->TAG:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 213
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$1;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 220
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$2;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$3;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 392
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$4;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->genericHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method private deleteCurrentSongs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 821
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 825
    const-string/jumbo v2, "_id"

    .line 824
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 830
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 831
    const-string/jumbo v3, "album"

    .line 830
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 833
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 832
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    .line 836
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 841
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {p0, v1, v4, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 851
    return-void

    .line 826
    :catch_0
    move-exception v0

    .line 827
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    .line 828
    return-void

    .line 839
    :cond_0
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 543
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v4, v1

    .line 544
    const-string/jumbo v0, "artist"

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const-string/jumbo v0, "album"

    const/4 v3, 0x2

    aput-object v0, v4, v3

    .line 545
    const-string/jumbo v0, "album_art"

    const/4 v3, 0x3

    aput-object v0, v4, v3

    .line 548
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 549
    const-string/jumbo v0, "external"

    .line 550
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 549
    invoke-static {v0, v6, v7}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 551
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 553
    const-string/jumbo v3, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 556
    :cond_0
    if-eqz p1, :cond_1

    .line 558
    const-string/jumbo v7, "album_key"

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    .line 557
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_0
    return-object v2

    .line 561
    :cond_1
    const-string/jumbo v10, "album_key"

    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    .line 560
    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 564
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 565
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 567
    const-string/jumbo v3, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 566
    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 570
    :cond_3
    if-eqz p1, :cond_4

    .line 572
    const-string/jumbo v7, "album_key"

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    .line 571
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_4
    const-string/jumbo v10, "album_key"

    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    .line 574
    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 274
    const-string/jumbo v0, ""

    .line 275
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 277
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 278
    const-string/jumbo v2, "artist"

    .line 277
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    const-string/jumbo v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 279
    if-eqz v1, :cond_1

    .line 281
    :cond_0
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_2
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method doSearch()V
    .locals 5

    .prologue
    .line 418
    const-string/jumbo v0, ""

    .line 419
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 420
    const-string/jumbo v1, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 423
    const-string/jumbo v1, ""

    .line 424
    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-nez v3, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 426
    const-string/jumbo v1, "android.intent.extra.album"

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 429
    :cond_0
    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v3, :cond_1

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string/jumbo v3, "android.intent.extra.artist"

    .line 432
    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 431
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    :cond_1
    const-string/jumbo v3, "android.intent.extra.focus"

    .line 438
    const-string/jumbo v4, "vnd.android.cursor.item/album"

    .line 437
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v1, 0x7f070058

    invoke-virtual {p0, v1, v3}, Lcom/android/music/AlbumBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 440
    const-string/jumbo v3, "query"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCheckFocus:Z

    .line 252
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 254
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 255
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->closeContextMenu()V

    .line 257
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    return-void

    .line 262
    :cond_1
    sget v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 264
    sget v2, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 265
    const/4 v0, -0x1

    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 268
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 269
    const v0, 0x7f0b0018

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 270
    invoke-direct {p0}, Lcom/android/music/AlbumBrowserActivity;->setTitle()V

    .line 271
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 448
    packed-switch p1, :pswitch_data_0

    .line 469
    :goto_0
    return-void

    .line 450
    :pswitch_0
    if-nez p2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 389
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 334
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 333
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 335
    invoke-static {p0, v0, v4}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 336
    return v6

    .line 341
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 340
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 342
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 343
    return v6

    .line 351
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 350
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 352
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->createPlayList(Landroid/content/Context;[J)V

    .line 353
    return v6

    .line 358
    :pswitch_4
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 357
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "playlist"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 360
    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 361
    return v6

    .line 365
    :pswitch_5
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 364
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    .line 367
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_0
    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {p0, v1, v4, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 382
    return v6

    .line 370
    :cond_0
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->doSearch()V

    .line 386
    return v6

    .line 330
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 99
    if-eqz p1, :cond_1

    .line 100
    const-string/jumbo v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "artist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 105
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    .line 109
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/music/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 111
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 112
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setContentView(I)V

    .line 122
    const v0, 0x7f0b0018

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_2

    .line 134
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 135
    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    .line 136
    new-array v6, v2, [I

    .line 135
    const v3, 0x7f030013

    move-object v2, p0

    .line 134
    invoke-direct/range {v0 .. v6}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 137
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setTitle(I)V

    .line 139
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 150
    :goto_1
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "artist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->setActivity(Lcom/android/music/AlbumBrowserActivity;)V

    .line 142
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 144
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 293
    const/4 v0, 0x5

    const v2, 0x7f070041

    invoke-interface {p1, v4, v0, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 295
    const v0, 0x7f070042

    .line 294
    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 296
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 297
    const/16 v0, 0xa

    const v2, 0x7f070006

    invoke-interface {p1, v4, v0, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 299
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 300
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 301
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 302
    const-string/jumbo v3, "_id"

    .line 301
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 304
    const-string/jumbo v3, "album"

    .line 303
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 306
    const-string/jumbo v3, "artist"

    .line 305
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    const-string/jumbo v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 307
    :goto_0
    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 309
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string/jumbo v2, "My recordings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 316
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string/jumbo v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 316
    :cond_1
    iput-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 318
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v0, :cond_6

    .line 319
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 323
    :goto_2
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 324
    :cond_2
    const/16 v0, 0x10

    const v1, 0x7f07001e

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 326
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 307
    goto :goto_0

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string/jumbo v2, "FM recordings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    goto :goto_1

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 483
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    const/16 v0, 0x11

    const v1, 0x7f07006b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 485
    const/16 v0, 0x9

    const v1, 0x7f070007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 487
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 186
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 192
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iput-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 194
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 196
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 855
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 886
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 860
    :sswitch_0
    return v1

    .line 863
    :sswitch_1
    const v0, 0x7f0b0017

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 864
    return v1

    .line 867
    :sswitch_2
    const v0, 0x7f0b0019

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 868
    return v1

    .line 871
    :sswitch_3
    invoke-direct {p0}, Lcom/android/music/AlbumBrowserActivity;->deleteCurrentSongs()V

    .line 872
    return v1

    .line 874
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 875
    if-eqz v0, :cond_1

    .line 876
    invoke-virtual {v0}, Landroid/widget/ListView;->clearTextFilter()V

    .line 877
    return v1

    .line 881
    :cond_1
    :sswitch_5
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-nez v0, :cond_0

    .line 882
    return v1

    .line 855
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
    .locals 4

    .prologue
    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string/jumbo v1, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string/jumbo v1, "artist"

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const v1, 0x7f070046

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 500
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 539
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 502
    :sswitch_0
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 507
    :cond_0
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    goto :goto_0

    .line 511
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 516
    :sswitch_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-nez v0, :cond_1

    .line 517
    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    return v6

    .line 523
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 524
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    .line 525
    const-string/jumbo v3, "is_music=1"

    .line 526
    const-string/jumbo v5, "title_key"

    move-object v0, p0

    .line 522
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_2

    .line 528
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 529
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_2
    return v6

    .line 500
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_2
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 244
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 245
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 492
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 493
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 201
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    .line 204
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 210
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 211
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterSent:Z

    .line 155
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "selectedalbum"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "artist"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 813
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 814
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    .line 818
    return-void
.end method
