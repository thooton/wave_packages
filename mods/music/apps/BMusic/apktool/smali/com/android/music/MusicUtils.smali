.class public Lcom/android/music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicUtils$FastBitmapDrawable;,
        Lcom/android/music/MusicUtils$LogEntry;,
        Lcom/android/music/MusicUtils$ServiceBinder;,
        Lcom/android/music/MusicUtils$ServiceToken;
    }
.end annotation


# static fields
.field private static mCachedBit:Landroid/graphics/Bitmap;

.field private static mLastSdStatus:Ljava/lang/String;

.field public static mPlaylistTab:Z

.field static sActiveTabIndex:I

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static sArtId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/music/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sContentValuesCache:[Landroid/content/ContentValues;

.field private static final sEmptyList:[J

.field private static final sExternalMediaUri:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static sLogPtr:I

.field private static sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

.field public static sService:Lcom/android/music/IMediaPlaybackService;

.field private static sTime:Landroid/text/format/Time;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Landroid/text/format/Time;
    .locals 1

    sget-object v0, Lcom/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 174
    sput-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 333
    new-array v0, v3, [J

    sput-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    .line 618
    sput-object v4, Lcom/android/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 958
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 959
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 958
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 960
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1081
    const/4 v0, -0x2

    sput v0, Lcom/android/music/MusicUtils;->sArtId:I

    .line 1082
    sput-object v4, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 1083
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 1084
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1086
    const-string/jumbo v0, "content://media/external/audio/albumart"

    .line 1085
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 1087
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 1088
    sput v5, Lcom/android/music/MusicUtils;->sArtCacheId:I

    .line 1095
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1096
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1098
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1099
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1283
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    .line 1420
    sput v5, Lcom/android/music/MusicUtils;->sActiveTabIndex:I

    .line 1486
    sput-boolean v3, Lcom/android/music/MusicUtils;->mPlaylistTab:Z

    .line 1655
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/android/music/MusicUtils$LogEntry;

    sput-object v0, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    .line 1656
    sput v3, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1657
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TelephonyIsInProgress(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1682
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    const v0, 0x7f070074

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1686
    const/4 v0, 0x1

    return v0

    .line 1689
    :cond_0
    return v1
.end method

.method static activateTab(Landroid/app/Activity;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1488
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    packed-switch p1, :pswitch_data_0

    .line 1510
    return-void

    .line 1491
    :pswitch_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1492
    const-string/jumbo v2, "vnd.android.cursor.dir/artistalbum"

    .line 1491
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    :goto_0
    const-string/jumbo v1, "activetab"

    invoke-static {p0, v1, p1}, Lcom/android/music/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1513
    const-string/jumbo v1, "withtabs"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1514
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1515
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1516
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1517
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1518
    return-void

    .line 1495
    :pswitch_1
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1498
    :pswitch_2
    sput-boolean v4, Lcom/android/music/MusicUtils;->mPlaylistTab:Z

    .line 1499
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1502
    :pswitch_3
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1503
    const-string/jumbo v2, "vnd.android.cursor.dir/playlist"

    .line 1502
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1489
    :pswitch_data_0
    .packed-switch 0x7f0b0017
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .locals 5

    .prologue
    .line 605
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 606
    return-void

    .line 609
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/android/music/IMediaPlaybackService;->enqueue([JI)V

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 611
    array-length v1, p1

    .line 610
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 612
    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 611
    const v3, 0x7f080004

    .line 610
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 613
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJ)V
    .locals 16

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 767
    :goto_0
    return-void

    .line 683
    :cond_0
    move-object/from16 v0, p1

    array-length v12, v0

    .line 684
    const/4 v11, 0x0

    .line 685
    const/4 v10, 0x0

    .line 686
    new-array v13, v12, [Landroid/content/ContentValues;

    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 690
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "count(*)"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 692
    const-string/jumbo v3, "external"

    .line 691
    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 695
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 701
    :goto_1
    if-nez v4, :cond_1

    .line 702
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 704
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 703
    const v4, 0x7f080004

    .line 702
    invoke-virtual {v2, v4, v11, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 705
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 707
    return-void

    .line 696
    :catch_0
    move-exception v4

    .line 698
    const/4 v4, 0x0

    goto :goto_1

    .line 709
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 710
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 711
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 713
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v4, "audio_id"

    const/4 v5, 0x0

    aput-object v4, v6, v5

    .line 715
    const-string/jumbo v4, "external"

    .line 714
    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 718
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 724
    :goto_2
    const/4 v5, 0x0

    move v7, v5

    move v6, v10

    move v5, v11

    :goto_3
    if-ge v7, v12, :cond_6

    .line 725
    const/4 v6, 0x0

    .line 726
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 727
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-eqz v8, :cond_3

    .line 729
    :goto_4
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    aget-wide v10, p1, v7

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    aget-wide v8, p1, v7

    const-wide/16 v10, 0x0

    cmp-long v8, v10, v8

    if-nez v8, :cond_5

    .line 730
    :cond_2
    const/4 v6, 0x1

    .line 735
    :cond_3
    if-nez v6, :cond_4

    aget-wide v8, p1, v7

    const-wide/16 v10, 0x0

    cmp-long v8, v10, v8

    if-eqz v8, :cond_4

    .line 736
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    aput-object v8, v13, v5

    .line 737
    aget-object v8, v13, v5

    .line 738
    const-string/jumbo v9, "play_order"

    .line 739
    add-int v10, v14, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 737
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    aget-object v8, v13, v5

    .line 741
    const-string/jumbo v9, "audio_id"

    .line 742
    aget-wide v10, p1, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 740
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 743
    add-int/lit8 v5, v5, 0x1

    .line 724
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 719
    :catch_1
    move-exception v4

    .line 721
    const/4 v4, 0x0

    goto :goto_2

    .line 733
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    .line 746
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 747
    if-lez v5, :cond_8

    .line 748
    new-array v7, v5, [Landroid/content/ContentValues;

    .line 749
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_7

    .line 750
    aget-object v8, v13, v4

    aput-object v8, v7, v4

    .line 749
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 753
    :cond_7
    invoke-virtual {v2, v3, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 758
    :cond_8
    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    .line 759
    const v2, 0x7f070075

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 765
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 761
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 763
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 762
    const v4, 0x7f080004

    .line 761
    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method public static bindToService(Landroid/app/Activity;)Lcom/android/music/MusicUtils$ServiceToken;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    return-object v0
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 192
    if-nez v0, :cond_1

    .line 195
    :goto_0
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    new-instance v1, Lcom/android/music/MusicUtils$ServiceBinder;

    invoke-direct {v1, p1}, Lcom/android/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 199
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 198
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    sget-object v2, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v1, Lcom/android/music/MusicUtils$ServiceToken;

    invoke-direct {v1, v0}, Lcom/android/music/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    return-object v1

    .line 203
    :cond_0
    const-string/jumbo v0, "Music"

    const-string/jumbo v1, "Failed to bind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-object v4

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static clearAlbumArtCache()V
    .locals 2

    .prologue
    .line 1115
    sget-object v1, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 1116
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1118
    return-void

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static clearQueue()V
    .locals 3

    .prologue
    .line 1048
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/android/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createPlayList(Landroid/content/Context;[J)V
    .locals 3

    .prologue
    .line 1776
    new-instance v0, Lcom/android/music/RenameDialogBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/RenameDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1777
    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Lcom/android/music/RenameDialogBuilder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1778
    const v1, 0x7f070055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/music/RenameDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1780
    new-instance v1, Lcom/android/music/MusicUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/android/music/MusicUtils$3;-><init>(Landroid/content/Context;[J)V

    .line 1779
    const v2, 0x7f070081

    invoke-virtual {v0, v2, v1}, Lcom/android/music/RenameDialogBuilder;->setPositiveButton(ILcom/android/music/RenameDialogBuilder$OnPositiveListener;)Lcom/android/music/RenameDialogBuilder;

    .line 1796
    invoke-static {p0}, Lcom/android/music/MusicUtils;->makePlaylistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/RenameDialogBuilder;->setEditTextContent(Ljava/lang/CharSequence;)V

    .line 1797
    invoke-virtual {v0}, Lcom/android/music/RenameDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 1798
    return-void
.end method

.method public static dataForPlaylist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1724
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1725
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v7

    .line 1726
    const-string/jumbo v3, "name=?"

    .line 1727
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    .line 1728
    const-string/jumbo v5, "name"

    move-object v0, p0

    .line 1724
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1730
    if-eqz v1, :cond_1

    .line 1731
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1732
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1735
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1737
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1
.end method

.method static debugDump(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 1669
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1670
    sget v1, Lcom/android/music/MusicUtils;->sLogPtr:I

    add-int/2addr v1, v0

    .line 1671
    sget-object v2, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1672
    sget-object v2, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 1674
    :cond_0
    sget-object v2, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    aget-object v1, v2, v1

    .line 1675
    if-eqz v1, :cond_1

    .line 1676
    invoke-virtual {v1, p0}, Lcom/android/music/MusicUtils$LogEntry;->dump(Ljava/io/PrintWriter;)V

    .line 1669
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1679
    :cond_2
    return-void
.end method

.method static debugLog(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1661
    sget-object v0, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    sget v1, Lcom/android/music/MusicUtils;->sLogPtr:I

    new-instance v2, Lcom/android/music/MusicUtils$LogEntry;

    invoke-direct {v2, p0}, Lcom/android/music/MusicUtils$LogEntry;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 1662
    sget v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1663
    sget v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    sget-object v1, Lcom/android/music/MusicUtils;->sMusicLog:[Lcom/android/music/MusicUtils$LogEntry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1664
    const/4 v0, 0x0

    sput v0, Lcom/android/music/MusicUtils;->sLogPtr:I

    .line 1666
    :cond_0
    return-void
.end method

.method public static deletePlaylist(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 503
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    .line 502
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method public static deleteTracks(Landroid/content/Context;[J)V
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 515
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 516
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 519
    const-string/jumbo v0, "_data"

    aput-object v0, v2, v10

    const-string/jumbo v0, "album_id"

    aput-object v0, v2, v1

    .line 520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    const-string/jumbo v0, "_id IN ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    .line 522
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 523
    aget-wide v8, p1, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 524
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 525
    const-string/jumbo v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_2
    const-string/jumbo v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 530
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 529
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 531
    if-eqz v1, :cond_6

    .line 536
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 537
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 539
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 540
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, v2, v3}, Lcom/android/music/IMediaPlaybackService;->removeTrack(J)I

    .line 542
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 543
    sget-object v5, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :try_start_1
    sget-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    .line 546
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 553
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 555
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 559
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 560
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 566
    const-string/jumbo v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to delete file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 569
    :catch_1
    move-exception v0

    .line 570
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 543
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 573
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 576
    array-length v1, p1

    .line 575
    new-array v2, v10, [Ljava/lang/Object;

    .line 577
    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 576
    const v3, 0x7f080003

    .line 575
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 585
    return-void
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const v8, 0x7f0b0032

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 852
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    return-void

    .line 859
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 867
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 868
    const v1, 0x7f070033

    .line 869
    const v0, 0x7f070035

    .line 875
    :goto_0
    const-string/jumbo v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 876
    const-string/jumbo v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 875
    if-eqz v3, :cond_8

    .line 877
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 878
    const v1, 0x7f07002f

    .line 879
    const v0, 0x7f070031

    move v9, v0

    move v0, v1

    move v1, v9

    .line 906
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 907
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_2

    .line 909
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 911
    :cond_2
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_3

    .line 913
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 915
    :cond_3
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_4

    .line 917
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 919
    :cond_4
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_5

    .line 921
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 923
    :cond_5
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 924
    const-string/jumbo v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 925
    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 930
    :goto_2
    return-void

    .line 871
    :cond_6
    const v1, 0x7f070034

    .line 872
    const v0, 0x7f070036

    goto :goto_0

    .line 881
    :cond_7
    const v1, 0x7f070030

    .line 882
    const v0, 0x7f070032

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_1

    .line 884
    :cond_8
    const-string/jumbo v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 885
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 886
    const v1, 0x7f07002b

    .line 887
    const v0, 0x7f07002d

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_1

    .line 889
    :cond_9
    const v1, 0x7f07002c

    .line 890
    const v0, 0x7f07002e

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_1

    .line 892
    :cond_a
    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 897
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 898
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 899
    const-class v4, Lcom/android/music/ScanningProgress;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 900
    const/16 v4, 0xb

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v9, v0

    move v0, v1

    move v1, v9

    goto/16 :goto_1

    .line 901
    :cond_b
    sget-object v3, Lcom/android/music/MusicUtils;->mLastSdStatus:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 902
    sput-object v2, Lcom/android/music/MusicUtils;->mLastSdStatus:Ljava/lang/String;

    .line 903
    const-string/jumbo v3, "MusicUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sd card: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v0

    move v0, v1

    move v1, v9

    goto/16 :goto_1

    .line 927
    :cond_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_d
    move v9, v0

    move v0, v1

    move v1, v9

    goto/16 :goto_1
.end method

.method public static getAllSongs(Landroid/content/Context;)[J
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 412
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 413
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 414
    const-string/jumbo v3, "is_music=1"

    move-object v0, p0

    move-object v5, v4

    .line 412
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 416
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 428
    :cond_0
    if-eqz v1, :cond_1

    .line 429
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_1
    return-object v4

    .line 419
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 420
    new-array v3, v2, [J

    move v0, v6

    .line 421
    :goto_0
    if-ge v0, v2, :cond_3

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 423
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_3
    if-eqz v1, :cond_4

    .line 429
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_4
    return-object v3

    .line 427
    :catchall_0
    move-exception v0

    .line 428
    if-eqz v1, :cond_5

    .line 429
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_5
    throw v0
.end method

.method public static getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 1219
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1229
    cmp-long v0, p3, v2

    if-gez v0, :cond_2

    .line 1233
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 1234
    const-wide/16 v2, -0x1

    invoke-static {p0, p1, p2, v2, v3}, Lcom/android/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_0

    .line 1236
    return-object v0

    .line 1239
    :cond_0
    if-eqz p5, :cond_1

    .line 1240
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_1
    return-object v1

    .line 1245
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1246
    sget-object v2, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1247
    if-eqz v2, :cond_9

    .line 1250
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1251
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1271
    if-eqz v1, :cond_3

    .line 1272
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1251
    :cond_3
    :goto_0
    return-object v0

    .line 1274
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1252
    :catch_1
    move-exception v0

    .line 1253
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1257
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1258
    if-eqz v0, :cond_5

    .line 1259
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1260
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1261
    if-nez v0, :cond_6

    if-eqz p5, :cond_6

    .line 1262
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1271
    if-eqz v1, :cond_4

    .line 1272
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1262
    :cond_4
    :goto_1
    return-object v0

    .line 1274
    :catch_2
    move-exception v1

    goto :goto_1

    .line 1265
    :cond_5
    if-eqz p5, :cond_6

    .line 1266
    :try_start_4
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1271
    :cond_6
    if-eqz v1, :cond_7

    .line 1272
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1268
    :cond_7
    :goto_2
    return-object v0

    .line 1274
    :catch_3
    move-exception v1

    goto :goto_2

    .line 1269
    :catchall_0
    move-exception v0

    .line 1271
    if-eqz v1, :cond_8

    .line 1272
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1269
    :cond_8
    :goto_3
    throw v0

    .line 1274
    :catch_4
    move-exception v1

    goto :goto_3

    .line 1279
    :cond_9
    return-object v1
.end method

.method private static getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1292
    cmp-long v1, p3, v2

    if-gez v1, :cond_0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1294
    const-string/jumbo v1, "Must specify an album or a song id"

    .line 1293
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1298
    :cond_0
    cmp-long v1, p3, v2

    if-gez v1, :cond_3

    .line 1299
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://media/external/audio/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1300
    const-string/jumbo v2, "/albumart"

    .line 1299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1302
    const-string/jumbo v3, "r"

    .line 1301
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1303
    if-eqz v1, :cond_1

    .line 1304
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1305
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1323
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1324
    sput-object v0, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 1326
    :cond_2
    return-object v0

    .line 1308
    :cond_3
    :try_start_1
    sget-object v1, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1310
    const-string/jumbo v3, "r"

    .line 1309
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1311
    if-eqz v1, :cond_1

    .line 1312
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1313
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1320
    :catch_0
    move-exception v1

    .line 1321
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 1318
    :catch_1
    move-exception v1

    .line 1319
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1316
    :catch_2
    move-exception v1

    .line 1317
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1158
    add-int/lit8 v5, p3, -0x1

    .line 1159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1160
    sget-object v1, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1161
    if-eqz v1, :cond_5

    .line 1164
    :try_start_0
    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1170
    :try_start_1
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1171
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1172
    sget-object v1, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v6, 0x0

    .line 1171
    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1173
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v1, v0, 0x1

    .line 1174
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v0, v0, 0x1

    .line 1175
    :goto_0
    if-le v1, v5, :cond_0

    if-le v0, p4, :cond_0

    .line 1176
    shl-int/lit8 v4, v4, 0x1

    .line 1177
    shr-int/lit8 v1, v1, 0x1

    .line 1178
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1182
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1184
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget-object v1, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    .line 1183
    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_3

    .line 1188
    sget-object v1, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v1, v5, :cond_1

    .line 1189
    sget-object v1, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, p4, :cond_3

    .line 1190
    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v5, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1193
    if-eq v1, v0, :cond_2

    .line 1194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    move-object v0, v1

    .line 1204
    :cond_3
    if-eqz v2, :cond_4

    .line 1205
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1199
    :cond_4
    :goto_1
    return-object v0

    .line 1206
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1200
    :catch_1
    move-exception v0

    move-object v1, v3

    .line 1201
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1204
    if-eqz v1, :cond_5

    .line 1205
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1210
    :cond_5
    :goto_3
    return-object v3

    .line 1206
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1202
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 1204
    :goto_4
    if-eqz v2, :cond_6

    .line 1205
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1202
    :cond_6
    :goto_5
    throw v0

    .line 1206
    :catch_3
    move-exception v1

    goto :goto_5

    .line 1202
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 1200
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1123
    sget-object v1, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 1124
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1126
    if-nez v0, :cond_1

    .line 1128
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1131
    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/music/MusicUtils;->getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_2

    .line 1133
    new-instance v1, Lcom/android/music/MusicUtils$FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/android/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1134
    sget-object v2, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 1136
    :try_start_1
    sget-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1137
    if-nez v0, :cond_0

    .line 1138
    sget-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_0
    monitor-exit v2

    .line 1145
    :cond_1
    :goto_0
    return-object v0

    .line 1123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1134
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method static getCardId(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1611
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1614
    :try_start_0
    const-string/jumbo v1, "content://media/external/fs_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1615
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1614
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1621
    :goto_0
    const/4 v1, -0x1

    .line 1623
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1624
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1625
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1626
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_1
    move v1, v0

    .line 1632
    :cond_0
    :goto_2
    return v1

    .line 1616
    :catch_0
    move-exception v0

    .line 1618
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move-object v0, v6

    .line 1619
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1623
    goto :goto_1

    .line 1628
    :catch_1
    move-exception v2

    .line 1629
    if-eqz v0, :cond_0

    .line 1630
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 255
    :catch_0
    move-exception v0

    .line 258
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getCurrentArtistId()J
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getArtistId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 265
    :catch_0
    move-exception v0

    .line 269
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 276
    :catch_0
    move-exception v0

    .line 279
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getCurrentShuffleMode()I
    .locals 2

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 286
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 287
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1330
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1331
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1332
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1333
    const v2, 0x7f020023

    .line 1332
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1333
    const/4 v2, 0x0

    .line 1332
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 1338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1337
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1339
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getRingerMode(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 1352
    const-string/jumbo v0, "audio"

    .line 1351
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1353
    const/4 v1, 0x0

    .line 1354
    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1356
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getSelectAudioPath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1693
    const-string/jumbo v6, ""

    .line 1694
    if-nez p0, :cond_0

    .line 1695
    return-object v6

    .line 1699
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1702
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1703
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1701
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1704
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1705
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1708
    const-string/jumbo v1, "_data"

    .line 1707
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1709
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1710
    return-object v1

    .line 1713
    :cond_1
    if-eqz v0, :cond_2

    .line 1714
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1715
    return-object v6

    .line 1717
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1718
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v1

    .line 1721
    :cond_2
    return-object v6

    .line 1717
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;J)[J
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 374
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    const-string/jumbo v1, "is_music"

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    const-string/jumbo v1, "=1"

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 379
    const-string/jumbo v5, "track"

    move-object v0, p0

    .line 377
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    .line 382
    invoke-static {v0}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v1

    .line 383
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 384
    return-object v1

    .line 386
    :cond_0
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    return-object v0
.end method

.method public static getSongListForArtist(Landroid/content/Context;J)[J
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 357
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    const-string/jumbo v1, "is_music"

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    const-string/jumbo v1, "=1"

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 362
    const-string/jumbo v5, "album_key,track"

    move-object v0, p0

    .line 360
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-static {v0}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v1

    .line 367
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 368
    return-object v1

    .line 370
    :cond_0
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    return-object v0
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[J
    .locals 6

    .prologue
    .line 336
    if-nez p0, :cond_0

    .line 337
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    return-object v0

    .line 339
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 340
    new-array v3, v2, [J

    .line 341
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 345
    :try_start_0
    const-string/jumbo v0, "audio_id"

    .line 344
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 349
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 350
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 351
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    const-string/jumbo v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 353
    :cond_1
    return-object v3
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[J
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 390
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "audio_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 392
    const-string/jumbo v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 394
    const-string/jumbo v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    .line 391
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_0

    .line 397
    invoke-static {v0}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v1

    .line 398
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 399
    return-object v1

    .line 401
    :cond_0
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[J

    return-object v0
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 933
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    :cond_0
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_1

    .line 939
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    :cond_1
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_2

    .line 943
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 945
    :cond_2
    return-void
.end method

.method public static idForplaylist(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1742
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1743
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 1744
    const-string/jumbo v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 1745
    const-string/jumbo v5, "name"

    move-object v0, p0

    .line 1741
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1746
    const/4 v0, -0x1

    .line 1747
    if-eqz v1, :cond_1

    .line 1748
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1749
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1750
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1752
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1754
    :cond_1
    return v0
.end method

.method public static initAlbumArtCache()V
    .locals 2

    .prologue
    .line 1104
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    .line 1105
    sget v1, Lcom/android/music/MusicUtils;->sArtCacheId:I

    if-eq v0, v1, :cond_0

    .line 1106
    invoke-static {}, Lcom/android/music/MusicUtils;->clearAlbumArtCache()V

    .line 1107
    sput v0, Lcom/android/music/MusicUtils;->sArtCacheId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 809
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 810
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "volume"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x0

    .line 811
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 809
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 818
    :goto_0
    if-eqz v1, :cond_1

    .line 819
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 820
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 821
    const-string/jumbo v0, "external"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    move v6, v0

    .line 827
    :goto_2
    if-eqz v1, :cond_0

    .line 828
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_0
    return v6

    .line 812
    :catch_0
    move-exception v0

    .line 814
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move-object v1, v7

    .line 815
    goto :goto_0

    .line 824
    :catch_1
    move-exception v0

    .line 825
    const-string/jumbo v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "---Exception e=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public static makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    if-eqz p3, :cond_1

    .line 120
    if-ne p2, v3, :cond_0

    .line 121
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 127
    sget-object v1, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_1
    const v2, 0x7f080002

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 133
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 134
    sget-object v1, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 135
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    if-ne p2, v7, :cond_0

    .line 154
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 157
    if-nez p3, :cond_1

    .line 158
    const v2, 0x7f080002

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 161
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 162
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 164
    const v2, 0x7f070066

    .line 163
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 168
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 169
    sget-object v1, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 447
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v7

    .line 448
    const-string/jumbo v0, "name"

    aput-object v0, v2, v8

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 450
    if-nez v0, :cond_1

    .line 451
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "resolver = null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string/jumbo v3, "name != \'\'"

    .line 457
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 458
    const-string/jumbo v5, "name"

    const/4 v4, 0x0

    .line 456
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 464
    :goto_1
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 465
    const/16 v1, 0xc

    const v2, 0x7f070043

    invoke-interface {p1, v8, v1, v7, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 466
    const/4 v1, 0x4

    const v2, 0x7f070044

    invoke-interface {p1, v8, v1, v7, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 467
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 469
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 471
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 472
    const-string/jumbo v2, "playlist"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 480
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 481
    const-string/jumbo v3, "My recordings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    const v2, 0x7f070071

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-interface {p1, v8, v9, v7, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 492
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 459
    :catch_0
    move-exception v0

    .line 461
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move-object v0, v6

    .line 462
    goto :goto_1

    .line 488
    :cond_2
    invoke-interface {p1, v8, v9, v7, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_3

    .line 495
    :cond_3
    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static makePlaylistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1801
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1804
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v2, v7

    .line 1805
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1806
    const-string/jumbo v3, "name != \'\'"

    .line 1809
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1810
    const-string/jumbo v5, "name"

    const/4 v4, 0x0

    .line 1809
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 1817
    :goto_0
    if-nez v3, :cond_0

    .line 1818
    return-object v8

    .line 1811
    :catch_0
    move-exception v0

    .line 1813
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move-object v3, v8

    .line 1814
    goto :goto_0

    .line 1822
    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v2, v7

    .line 1833
    :goto_1
    if-nez v2, :cond_3

    .line 1835
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v2, v1

    move-object v1, v0

    move v0, v6

    .line 1836
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1837
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1838
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1839
    new-array v1, v6, [Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move v0, v7

    .line 1842
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_2
    move v10, v0

    move-object v0, v1

    move v1, v2

    move v2, v10

    goto :goto_1

    .line 1845
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1846
    return-object v0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v2, 0xe10

    const/4 v6, 0x0

    const-wide/16 v4, 0x3c

    .line 964
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    const v0, 0x7f070001

    .line 963
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 971
    sget-object v1, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 973
    sget-object v1, Lcom/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 974
    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    .line 975
    div-long v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 976
    div-long v2, p1, v4

    rem-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 977
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 978
    rem-long v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 980
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 965
    :cond_0
    const v0, 0x7f070002

    goto :goto_0
.end method

.method public static nameForId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1759
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1760
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v2, v7

    .line 1761
    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1763
    const-string/jumbo v5, "name"

    move-object v0, p0

    .line 1758
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1765
    if-eqz v1, :cond_0

    .line 1766
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1767
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1768
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1771
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1772
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 988
    invoke-static {p0, p1, v0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 989
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 993
    return-void
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 1

    .prologue
    .line 1001
    invoke-static {p1}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 1002
    invoke-static {p0, v0, p2, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 1003
    return-void
.end method

.method public static playAll(Landroid/content/Context;[JI)V
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 997
    return-void
.end method

.method private static playAll(Landroid/content/Context;[JIZ)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/high16 v6, 0x4000000

    const/4 v1, 0x0

    .line 1007
    array-length v2, p1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v2, :cond_1

    .line 1008
    :cond_0
    const-string/jumbo v0, "MusicUtils"

    const-string/jumbo v2, "attempt to play empty song list"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-array v0, v3, [Ljava/lang/Object;

    .line 1011
    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1010
    const v2, 0x7f070046

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1013
    return-void

    .line 1016
    :cond_1
    if-eqz p3, :cond_2

    .line 1017
    :try_start_0
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1019
    :cond_2
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v2

    .line 1020
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v4

    .line 1021
    if-eq p2, v0, :cond_3

    if-ne v4, p2, :cond_3

    aget-wide v4, p1, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1025
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v2

    .line 1026
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1029
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1042
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1030
    return-void

    .line 1033
    :cond_3
    if-gez p2, :cond_5

    .line 1036
    :goto_0
    :try_start_1
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz p3, :cond_4

    :goto_1
    invoke-interface {v2, p1, v0}, Lcom/android/music/IMediaPlaybackService;->open([JI)V

    .line 1037
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1042
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1044
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 1036
    goto :goto_1

    .line 1038
    :catch_0
    move-exception v0

    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1042
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1039
    :catchall_0
    move-exception v0

    .line 1040
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1042
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1039
    throw v0

    :cond_5
    move v1, p2

    goto :goto_0
.end method

.method public static playPlaylist(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 405
    invoke-static {p0, p1, p2}, Lcom/android/music/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 409
    :cond_0
    return-void
.end method

.method static processTabClick(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1473
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1474
    if-ne v1, p2, :cond_0

    .line 1475
    return-void

    .line 1477
    :cond_0
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    .line 1479
    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 1484
    return-void
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 797
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 796
    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 798
    :catch_0
    move-exception v0

    .line 800
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 801
    const/4 v0, 0x0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 773
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 774
    if-nez v0, :cond_0

    .line 775
    return-object v6

    .line 777
    :cond_0
    if-lez p6, :cond_1

    .line 778
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v2, p2

    # FEAT(whitelist)
    invoke-static {p0, v1, p3}, Lcom/android/music/WaveLibrary;->selection(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3

    move-object v4, p4

    move-object v5, p5

    .line 781
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 785
    :catch_0
    move-exception v0

    .line 787
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 788
    return-object v6

    .line 783
    :catch_1
    move-exception v0

    .line 784
    return-object v6

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public static renamePlaylist(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 1850
    invoke-static {p0, p1, p2}, Lcom/android/music/MusicUtils;->nameForId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1851
    new-instance v1, Lcom/android/music/RenameDialogBuilder;

    invoke-direct {v1, p0, v0}, Lcom/android/music/RenameDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1852
    const v2, 0x7f070082

    invoke-virtual {v1, v2}, Lcom/android/music/RenameDialogBuilder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1853
    const v2, 0x7f070089

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/music/RenameDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1855
    new-instance v2, Lcom/android/music/MusicUtils$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/music/MusicUtils$4;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1854
    const v3, 0x7f070088

    invoke-virtual {v1, v3, v2}, Lcom/android/music/RenameDialogBuilder;->setPositiveButton(ILcom/android/music/RenameDialogBuilder$OnPositiveListener;)Lcom/android/music/RenameDialogBuilder;

    .line 1879
    invoke-virtual {v1, v0}, Lcom/android/music/RenameDialogBuilder;->setEditTextContent(Ljava/lang/CharSequence;)V

    .line 1880
    invoke-virtual {v1}, Lcom/android/music/RenameDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 1881
    return-void
.end method

.method static setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    .line 1572
    if-nez p1, :cond_0

    .line 1573
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1574
    return-void

    .line 1577
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1578
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1579
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1580
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1581
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1582
    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 1583
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v5, 0x3fa66666    # 1.3f

    mul-float/2addr v4, v5

    .line 1585
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1586
    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1587
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1588
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1589
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1590
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1591
    new-instance v8, Landroid/graphics/ColorMatrix;

    invoke-direct {v8}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1593
    new-instance v9, Landroid/graphics/ColorMatrix;

    invoke-direct {v9}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1595
    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v9, v11, v11, v11, v10}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 1596
    invoke-virtual {v8, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1597
    new-instance v9, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v9, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1598
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1599
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1600
    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1602
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1603
    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1604
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1606
    invoke-virtual {v6, p1, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1607
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1608
    return-void
.end method

.method static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1344
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1343
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1345
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1346
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1347
    invoke-static {v0}, Lcom/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1348
    return-void
.end method

.method public static setPartyShuffleMenuIcon(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 308
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    .line 311
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 312
    const v1, 0x7f070005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const v1, 0x7f070004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method static setRingtone(Landroid/content/Context;J)V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1364
    const-string/jumbo v0, "airplane_mode_on"

    .line 1363
    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v6

    .line 1365
    :goto_0
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getRingerMode(Landroid/content/Context;)I

    move-result v2

    .line 1366
    if-eqz v2, :cond_0

    .line 1367
    if-ne v2, v6, :cond_2

    .line 1369
    :cond_0
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1370
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1371
    return-void

    :cond_1
    move v0, v1

    .line 1363
    goto :goto_0

    .line 1366
    :cond_2
    if-nez v0, :cond_0

    .line 1376
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1375
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1378
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1379
    const-string/jumbo v2, "is_ringtone"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string/jumbo v2, "is_alarm"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v9, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    .line 1389
    const-string/jumbo v0, "_data"

    aput-object v0, v2, v6

    const-string/jumbo v0, "title"

    aput-object v0, v2, v4

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1395
    :try_start_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1396
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1394
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 1402
    :goto_1
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 1404
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1405
    const-string/jumbo v0, "ringtone"

    .line 1406
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1405
    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1408
    const-string/jumbo v0, "MusicUtils"

    const-string/jumbo v2, " setting to make this the current ringtone"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1410
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1409
    const v2, 0x7f070040

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1414
    :cond_3
    if-eqz v1, :cond_4

    .line 1415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1418
    :cond_4
    return-void

    .line 1382
    :catch_0
    move-exception v0

    .line 1384
    const-string/jumbo v0, "MusicUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "couldn\'t set ringtone flag for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    return-void

    .line 1397
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 1399
    goto :goto_1

    .line 1413
    :catchall_0
    move-exception v0

    .line 1414
    if-eqz v1, :cond_5

    .line 1415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1413
    :cond_5
    throw v0
.end method

.method public static setSpinnerState(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 834
    invoke-static {p0}, Lcom/android/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 837
    const/4 v1, -0x3

    .line 836
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 839
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 840
    const/4 v1, -0x1

    .line 839
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 846
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 844
    const/4 v1, -0x2

    .line 843
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_0
.end method

.method public static showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1884
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1885
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1886
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1887
    new-instance v2, Lcom/android/music/MusicUtils$5;

    invoke-direct {v2, p2, p0, p1}, Lcom/android/music/MusicUtils$5;-><init>(ZLandroid/content/Context;[J)V

    .line 1886
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1898
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1899
    new-instance v2, Lcom/android/music/MusicUtils$6;

    invoke-direct {v2}, Lcom/android/music/MusicUtils$6;-><init>()V

    .line 1898
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1905
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1906
    return-void
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 984
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 985
    return-void
.end method

.method public static togglePartyShuffle()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 294
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    .line 297
    if-ne v0, v1, :cond_1

    .line 298
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    if-nez p0, :cond_0

    .line 209
    const-string/jumbo v0, "MusicUtils"

    const-string/jumbo v1, "Trying to unbind with null token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/music/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 213
    sget-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MusicUtils$ServiceBinder;

    .line 214
    if-nez v0, :cond_1

    .line 215
    const-string/jumbo v0, "MusicUtils"

    const-string/jumbo v1, "Trying to unbind for unknown Context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 218
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 219
    sget-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    sput-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 225
    :cond_2
    return-void
.end method

.method static updateButtonBar(Landroid/app/Activity;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1423
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    .line 1425
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1426
    if-eqz v1, :cond_6

    .line 1427
    const-string/jumbo v3, "withtabs"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move v4, v1

    .line 1430
    :goto_0
    if-eqz p1, :cond_0

    xor-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_1

    .line 1431
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1432
    return v4

    .line 1433
    :cond_1
    if-eqz v4, :cond_2

    .line 1434
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1436
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_5

    .line 1438
    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1439
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_4

    const/4 v1, 0x1

    .line 1440
    :goto_2
    if-eqz v1, :cond_3

    .line 1441
    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 1442
    sput v3, Lcom/android/music/MusicUtils;->sActiveTabIndex:I

    .line 1444
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1461
    new-instance v1, Lcom/android/music/MusicUtils$1;

    invoke-direct {v1, v0}, Lcom/android/music/MusicUtils$1;-><init>(Landroid/widget/TabWidget;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1436
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1439
    goto :goto_2

    .line 1469
    :cond_5
    return v4

    :cond_6
    move v4, v2

    goto :goto_0
.end method

.method static updateNowPlaying(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 1521
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1522
    if-nez v2, :cond_0

    .line 1523
    return-void

    .line 1527
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1528
    if-eqz v0, :cond_1

    .line 1529
    const-string/jumbo v1, "withtabs"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1531
    :cond_1
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_5

    .line 1532
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 1534
    const v0, 0x7f0b0001

    .line 1533
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1536
    const v1, 0x7f0b0002

    .line 1535
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1537
    sget-object v3, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1539
    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1540
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1542
    :cond_2
    if-eqz v0, :cond_4

    const-string/jumbo v3, "Your recordings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1543
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1548
    :cond_3
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    new-instance v0, Lcom/android/music/MusicUtils$2;

    invoke-direct {v0}, Lcom/android/music/MusicUtils$2;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1560
    return-void

    .line 1544
    :cond_4
    if-eqz v0, :cond_3

    .line 1545
    const-string/jumbo v3, "My FM recordings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1544
    if-eqz v3, :cond_3

    .line 1546
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1563
    :catch_0
    move-exception v0

    .line 1565
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1567
    :cond_5
    :goto_1
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1568
    return-void

    .line 1562
    :catch_1
    move-exception v0

    goto :goto_1
.end method
