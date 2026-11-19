.class public Lcom/android/music/ArtistAlbumBrowserActivity;
.super Landroid/app/ExpandableListActivity;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/ArtistAlbumBrowserActivity$1;,
        Lcom/android/music/ArtistAlbumBrowserActivity$2;,
        Lcom/android/music/ArtistAlbumBrowserActivity$3;,
        Lcom/android/music/ArtistAlbumBrowserActivity$4;,
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field public genericHandler:Landroid/os/Handler;

.field private mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

.field private mAdapterSent:Z

.field private mArtistCursor:Landroid/database/Cursor;

.field private mCheckFocus:Z

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field mIsUnknownAlbum:Z

.field mIsUnknownArtist:Z

.field private mLastSelectedPosition:I

.field private mLinearList:Landroid/widget/LinearLayout;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/music/ArtistAlbumBrowserActivity;)Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/music/ArtistAlbumBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCheckFocus:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/music/ArtistAlbumBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastSelectedPosition:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/music/ArtistAlbumBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCheckFocus:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/music/ArtistAlbumBrowserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastSelectedPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 88
    sput v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 89
    sput v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 94
    const-string/jumbo v0, "ArtistAlbumBrowserActivity"

    sput-object v0, Lcom/android/music/ArtistAlbumBrowserActivity;->TAG:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 234
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$1;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$2;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$3;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$4;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->genericHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 660
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v4, v1

    .line 661
    const-string/jumbo v0, "artist"

    const/4 v3, 0x1

    aput-object v0, v4, v3

    .line 662
    const-string/jumbo v0, "number_of_albums"

    const/4 v3, 0x2

    aput-object v0, v4, v3

    .line 663
    const-string/jumbo v0, "number_of_tracks"

    const/4 v3, 0x3

    aput-object v0, v4, v3

    .line 665
    # FEAT(whitelist)
    invoke-static {p0, v4}, Lcom/android/music/ArgonLibrary;->artistCounts(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4

    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 666
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 668
    const-string/jumbo v3, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 667
    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 672
    :cond_0
    if-eqz p1, :cond_1

    .line 674
    const-string/jumbo v7, "artist_key"

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    .line 673
    # FEAT(whitelist)
    invoke-static {p0, v3, v5}, Lcom/android/music/ArgonLibrary;->selection(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return-object v2

    .line 677
    :cond_1
    const-string/jumbo v10, "artist_key"

    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    .line 676
    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 297
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle(I)V

    .line 298
    return-void
.end method


# virtual methods
.method doSearch()V
    .locals 5

    .prologue
    .line 595
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 596
    const-string/jumbo v0, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 599
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 602
    const-string/jumbo v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string/jumbo v3, "android.intent.extra.focus"

    .line 604
    const-string/jumbo v4, "vnd.android.cursor.item/artist"

    .line 603
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v1, 0x7f070058

    invoke-virtual {p0, v1, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 621
    const-string/jumbo v3, "query"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 624
    return-void

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    move-object v1, v0

    .line 614
    :goto_1
    const-string/jumbo v3, "android.intent.extra.artist"

    .line 615
    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 614
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string/jumbo v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string/jumbo v3, "android.intent.extra.focus"

    .line 618
    const-string/jumbo v4, "vnd.android.cursor.item/album"

    .line 617
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 610
    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v0, :cond_2

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCheckFocus:Z

    .line 275
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 277
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 278
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->closeContextMenu()V

    .line 280
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 281
    return-void

    .line 285
    :cond_1
    sget v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 287
    sget v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 288
    const/4 v0, -0x1

    sput v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 291
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 292
    const v0, 0x7f0b0017

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 293
    invoke-direct {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle()V

    .line 294
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 629
    sparse-switch p1, :sswitch_data_0

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 632
    :sswitch_0
    if-nez p2, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 640
    :sswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 641
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 642
    if-eqz v1, :cond_0

    .line 644
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 646
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 645
    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 652
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 651
    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 647
    :cond_3
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 649
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 648
    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_1

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5

    .prologue
    .line 303
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 305
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.PICK"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v0, "album"

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 311
    const-string/jumbo v2, "album"

    .line 310
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    const-string/jumbo v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 316
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 317
    const-string/jumbo v3, "_id"

    .line 316
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 318
    const-string/jumbo v0, "artist"

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 564
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 479
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 479
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 484
    :goto_0
    invoke-static {p0, v0, v4}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 485
    return v6

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 481
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_0

    .line 489
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 489
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 493
    :goto_1
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 494
    return v6

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 491
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_1

    .line 502
    :pswitch_3
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 504
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 503
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 509
    :cond_2
    :goto_2
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->createPlayList(Landroid/content/Context;[J)V

    .line 510
    return v6

    .line 505
    :cond_3
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 506
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_2

    .line 514
    :pswitch_4
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 516
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 514
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 518
    :goto_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "playlist"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 519
    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 520
    return v6

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 516
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_3

    .line 526
    :pswitch_5
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 528
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 527
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v1

    .line 530
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    :goto_4
    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_5
    invoke-static {p0, v1, v4, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 557
    return v6

    .line 533
    :cond_5
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 537
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    .line 540
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 541
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    :goto_6
    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 543
    :cond_7
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 561
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->doSearch()V

    .line 562
    return v6

    .line 476
    nop

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
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    .line 103
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-virtual {p0, v4}, Lcom/android/music/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 105
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 106
    if-eqz p1, :cond_1

    .line 107
    const-string/jumbo v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "selectedalbumname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "selectedartist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "selectedartistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 112
    :cond_1
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

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
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setContentView(I)V

    .line 122
    const v0, 0x7f0b0017

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 125
    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setTextFilterEnabled(Z)V

    .line 126
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLinearList:Landroid/widget/LinearLayout;

    .line 131
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 136
    new-array v5, v2, [Ljava/lang/String;

    .line 137
    new-array v6, v2, [I

    .line 138
    new-array v8, v2, [Ljava/lang/String;

    new-array v9, v2, [I

    .line 136
    const v4, 0x7f030016

    .line 137
    const v7, 0x7f030014

    move-object v2, p0

    .line 133
    invoke-direct/range {v0 .. v9}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 139
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 140
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle(I)V

    .line 141
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 152
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->setActivity(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    .line 144
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 145
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 146
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 390
    const/4 v0, 0x5

    const v2, 0x7f070041

    invoke-interface {p1, v6, v0, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 392
    const v0, 0x7f070042

    .line 391
    invoke-interface {p1, v6, v1, v6, v0}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 393
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 394
    const/16 v0, 0xa

    const v2, 0x7f070006

    invoke-interface {p1, v6, v0, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 396
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 399
    iget-wide v2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 398
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    .line 400
    iget-wide v2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 401
    iget-wide v4, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    .line 402
    if-nez v0, :cond_5

    .line 403
    if-ne v2, v8, :cond_0

    .line 405
    const-string/jumbo v0, "Artist/Album"

    const-string/jumbo v1, "no group"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, v2, v0

    .line 409
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 410
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 411
    const-string/jumbo v3, "_id"

    .line 410
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 413
    const-string/jumbo v3, "artist"

    .line 412
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 414
    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string/jumbo v2, "Your recordings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 423
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string/jumbo v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 423
    :goto_1
    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 425
    iput-boolean v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 426
    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-eqz v0, :cond_4

    .line 427
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 432
    :goto_2
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 419
    const-string/jumbo v2, "My FM recordings"

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 423
    goto :goto_1

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 430
    const v0, 0x7f07001e

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 433
    :cond_5
    if-ne v0, v1, :cond_a

    .line 434
    if-ne v3, v8, :cond_6

    .line 436
    const-string/jumbo v0, "Artist/Album"

    const-string/jumbo v1, "no child"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 439
    :cond_6
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 440
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 441
    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 442
    iget-wide v4, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 444
    const-string/jumbo v3, "album"

    .line 443
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, v2, v0

    .line 446
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 447
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 448
    const-string/jumbo v3, "artist"

    .line 447
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 451
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string/jumbo v2, "My recordings"

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 453
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 458
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 459
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 460
    const-string/jumbo v2, "<unknown>"

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 458
    :goto_4
    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 461
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 462
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string/jumbo v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 461
    :cond_8
    iput-boolean v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 463
    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v0, :cond_d

    .line 464
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 468
    :goto_5
    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    .line 469
    :cond_9
    const v0, 0x7f07001e

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 472
    :cond_a
    return-void

    .line 454
    :cond_b
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string/jumbo v2, "FM recordings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 455
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    goto :goto_3

    :cond_c
    move v0, v1

    .line 458
    goto :goto_4

    .line 466
    :cond_d
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    # FEAT(whitelist)
    invoke-static {p1}, Lcom/android/music/ArgonSettings;->addMenu(Landroid/view/Menu;)V

    const/4 v2, 0x0

    .line 326
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 327
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    const/16 v0, 0x11

    const v1, 0x7f07006b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 329
    const/16 v0, 0x9

    const v1, 0x7f070007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 331
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sput v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 206
    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 212
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 213
    iput-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 214
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 216
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 217
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1073
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1157
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ExpandableListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1080
    :sswitch_0
    return v5

    .line 1083
    :sswitch_1
    const v0, 0x7f0b001a

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 1084
    return v5

    .line 1087
    :sswitch_2
    const v0, 0x7f0b0018

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 1088
    return v5

    .line 1091
    :sswitch_3
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 1096
    const-string/jumbo v3, "_id"

    .line 1095
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1097
    :try_start_1
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 1098
    const-string/jumbo v4, "_id"

    .line 1097
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1099
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 1100
    const-string/jumbo v4, "artist"

    .line 1099
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1107
    :goto_0
    if-eqz v2, :cond_2

    .line 1109
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1108
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v1

    .line 1111
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1116
    :goto_1
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    :goto_2
    invoke-static {p0, v1, v6, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 1141
    return v5

    .line 1101
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1102
    :goto_3
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 1114
    :cond_1
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1118
    :cond_2
    if-eqz v1, :cond_4

    .line 1120
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1119
    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    .line 1122
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1123
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1127
    :goto_4
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1125
    :cond_3
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1129
    :cond_4
    return v6

    .line 1145
    :cond_5
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_6

    .line 1147
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->clearTextFilter()V

    .line 1148
    return v5

    .line 1152
    :cond_6
    :sswitch_5
    # FEAT(whitelist)
    goto :cond_0

    .line 1101
    :catch_1
    move-exception v0

    goto :goto_3

    .line 1073
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    # FEAT(whitelist)
    invoke-static {p0, p1}, Lcom/android/music/ArgonSettings;->handleMenu(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :argon_menu_stock
    return v0
    :argon_menu_stock

    const v1, 0x7f070046

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 384
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 347
    :sswitch_0
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    goto :goto_0

    .line 356
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 361
    :sswitch_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    if-nez v0, :cond_1

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 365
    return v6

    .line 368
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 369
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    .line 370
    const-string/jumbo v3, "is_music=1"

    .line 371
    const-string/jumbo v5, "title_key"

    move-object v0, p0

    .line 367
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_2

    .line 373
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 374
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_2
    return v6

    .line 345
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
    .line 264
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 267
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 336
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 337
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    # FEAT(whitelist)
    invoke-static {p0}, Lcom/android/music/ArgonSettings;->onResume(Landroid/app/Activity;)V

    .line 222
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    .line 225
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 231
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 232
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    .line 172
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "selectedalbum"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v0, "selectedalbumname"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "selectedartist"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v0, "selectedartistname"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 1064
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 1065
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    .line 1069
    return-void
.end method
