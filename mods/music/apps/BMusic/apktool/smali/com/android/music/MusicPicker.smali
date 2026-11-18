.class public Lcom/android/music/MusicPicker;
.super Landroid/app/ListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicPicker$1;,
        Lcom/android/music/MusicPicker$QueryHandler;,
        Lcom/android/music/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final CURSOR_COLS:[Ljava/lang/String;

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private isRingtone:Z

.field mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

.field private mAudiomanager:Landroid/media/AudioManager;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/view/View;

.field mCursor:Landroid/database/Cursor;

.field private mIsSelected:Z

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNoSongTextView:Landroid/widget/TextView;

.field mOkayButton:Landroid/view/View;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/music/MusicPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/MusicPicker;->mIsSelected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/music/MusicPicker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MusicPicker;->mNoSongTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/MusicPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/MusicPicker;->mIsSelected:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 97
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 98
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "title_key"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "album"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "artist"

    aput-object v1, v0, v3

    .line 101
    const-string/jumbo v1, "artist_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "duration"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "track"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 97
    sput-object v0, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 107
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 107
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 110
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/android/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 71
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 151
    iput-wide v2, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 159
    iput-wide v2, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MusicPicker;->mIsSelected:Z

    .line 613
    new-instance v0, Lcom/android/music/MusicPicker$1;

    invoke-direct {v0, p0}, Lcom/android/music/MusicPicker$1;-><init>(Lcom/android/music/MusicPicker;)V

    iput-object v0, p0, Lcom/android/music/MusicPicker;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 71
    return-void
.end method


# virtual methods
.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/16 v3, 0x2a

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 685
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    invoke-virtual {v0, v3}, Lcom/android/music/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    const-string/jumbo v0, "title != \'\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    iget-object v1, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 695
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 697
    const-string/jumbo v1, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 696
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 701
    :cond_0
    if-eqz p1, :cond_1

    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 704
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    const/4 v4, 0x0

    .line 703
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 709
    invoke-virtual {p0, v5}, Lcom/android/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 710
    iget-object v2, p0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    sget-object v6, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 711
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v4, v10

    move-object v5, v1

    move-object v8, v10

    .line 710
    invoke-virtual/range {v2 .. v9}, Lcom/android/music/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_0
    return-object v10

    .line 705
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method makeListShown()V
    .locals 2

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/android/music/MusicPicker;->mListShown:Z

    if-nez v0, :cond_0

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MusicPicker;->mListShown:Z

    .line 663
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 664
    const v1, 0x10a0001

    .line 663
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 665
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    .line 667
    const/high16 v1, 0x10a0000

    .line 666
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 668
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 798
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 800
    :pswitch_0
    iget-wide v0, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 801
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 802
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    goto :goto_0

    .line 807
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0026
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    .line 780
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 781
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 783
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 784
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 786
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 442
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 444
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string/jumbo v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const v0, 0x7f070080

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 449
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    .line 450
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setVolumeControlStream(I)V

    .line 457
    const-string/jumbo v0, "audio"

    .line 456
    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mAudiomanager:Landroid/media/AudioManager;

    .line 460
    if-nez p1, :cond_4

    .line 461
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 462
    const-string/jumbo v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 461
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    move v7, v8

    .line 472
    :goto_0
    const-string/jumbo v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 473
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 485
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isRingtone"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/MusicPicker;->isRingtone:Z

    .line 486
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setContentView(I)V

    .line 488
    const-string/jumbo v0, "title_key"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 490
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 492
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 494
    new-instance v0, Lcom/android/music/MusicPicker$TrackListAdapter;

    .line 495
    new-array v5, v9, [Ljava/lang/String;

    new-array v6, v9, [I

    const v4, 0x7f03000a

    move-object v1, p0

    move-object v2, p0

    .line 494
    invoke-direct/range {v0 .. v6}, Lcom/android/music/MusicPicker$TrackListAdapter;-><init>(Lcom/android/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    .line 497
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 499
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 502
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 504
    new-instance v0, Lcom/android/music/MusicPicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/music/MusicPicker$QueryHandler;-><init>(Lcom/android/music/MusicPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    .line 506
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 507
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    .line 509
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    .line 510
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 512
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mCancelButton:Landroid/view/View;

    .line 513
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mNoSongTextView:Landroid/widget/TextView;

    .line 515
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mNoSongTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mNoSongTextView:Landroid/widget/TextView;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 535
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 537
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 538
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 539
    if-ltz v2, :cond_2

    .line 540
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_2
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 543
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 557
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/music/MusicPicker;->setSortMode(I)Z

    .line 558
    return-void

    .line 465
    :cond_4
    const-string/jumbo v0, "android.intent.extra.ringtone.EXISTING_URI"

    .line 464
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 468
    const-string/jumbo v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 469
    const-string/jumbo v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/MusicPicker;->mListHasFocus:Z

    .line 470
    const-string/jumbo v0, "sortMode"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 474
    :cond_5
    const-string/jumbo v0, "android.intent.action.GET_RINGTONE"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 475
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 477
    :cond_6
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 478
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 479
    const-string/jumbo v0, "MusicPicker"

    const-string/jumbo v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    .line 481
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 576
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 577
    const v0, 0x7f07005e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 578
    const/4 v0, 0x2

    const v1, 0x7f07005f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 579
    const/4 v0, 0x3

    const v1, 0x7f070060

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 580
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 814
    sparse-switch p1, :sswitch_data_0

    .line 826
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 824
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 814
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 730
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAudiomanager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAudiomanager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MusicPicker;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 732
    const/4 v2, 0x3

    .line 733
    const/4 v3, 0x2

    .line 731
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 736
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 568
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x1

    return v0

    .line 571
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 596
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 597
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 598
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAudiomanager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAudiomanager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MusicPicker;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 600
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 562
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 563
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 564
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 588
    const-string/jumbo v0, "liststate"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 590
    const-string/jumbo v0, "focused"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    const-string/jumbo v0, "sortMode"

    iget v1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 604
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 609
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 611
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 739
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    return-void

    .line 742
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 743
    iget-object v1, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    .line 744
    const-string/jumbo v3, "_id"

    .line 743
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 745
    iget-object v1, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    .line 746
    const-string/jumbo v5, "_data"

    .line 745
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    if-eqz v1, :cond_1

    const-string/jumbo v4, ".fl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/music/MusicPicker;->isRingtone:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 749
    const v0, 0x7f07007c

    .line 750
    const/4 v1, 0x1

    .line 749
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 751
    return-void

    .line 754
    :cond_1
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 756
    iput-wide v2, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 757
    iget-wide v0, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 758
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 759
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 762
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 763
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 764
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 765
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 766
    iput-wide v2, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 767
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 768
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_3
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    const-string/jumbo v1, "MusicPicker"

    const-string/jumbo v2, "Unable to play track"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 772
    :cond_4
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 773
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 774
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method setSortMode(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 628
    iget v0, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    if-eq p1, v0, :cond_0

    .line 629
    packed-switch p1, :pswitch_data_0

    .line 653
    :cond_0
    return v1

    .line 631
    :pswitch_0
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 632
    const-string/jumbo v0, "title_key"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 633
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 634
    return v2

    .line 636
    :pswitch_1
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 637
    const-string/jumbo v0, "album_key ASC, track ASC, title_key ASC"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 640
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 641
    return v2

    .line 643
    :pswitch_2
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 644
    const-string/jumbo v0, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 648
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 649
    return v2

    .line 629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 789
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 791
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 792
    iput-object v1, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 793
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 795
    :cond_0
    return-void
.end method
