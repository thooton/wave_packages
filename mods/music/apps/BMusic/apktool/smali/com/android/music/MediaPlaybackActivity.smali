.class public Lcom/android/music/MediaPlaybackActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackActivity$10;,
        Lcom/android/music/MediaPlaybackActivity$11;,
        Lcom/android/music/MediaPlaybackActivity$12;,
        Lcom/android/music/MediaPlaybackActivity$13;,
        Lcom/android/music/MediaPlaybackActivity$14;,
        Lcom/android/music/MediaPlaybackActivity$15;,
        Lcom/android/music/MediaPlaybackActivity$16;,
        Lcom/android/music/MediaPlaybackActivity$17;,
        Lcom/android/music/MediaPlaybackActivity$1;,
        Lcom/android/music/MediaPlaybackActivity$2;,
        Lcom/android/music/MediaPlaybackActivity$3;,
        Lcom/android/music/MediaPlaybackActivity$4;,
        Lcom/android/music/MediaPlaybackActivity$5;,
        Lcom/android/music/MediaPlaybackActivity$6;,
        Lcom/android/music/MediaPlaybackActivity$7;,
        Lcom/android/music/MediaPlaybackActivity$8;,
        Lcom/android/music/MediaPlaybackActivity$9;,
        Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;,
        Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;,
        Lcom/android/music/MediaPlaybackActivity$Worker;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mUpdateOffShuffle:Z

.field private static mUpdateOnShuffle:Z

.field private static mUpdateRepeatALL:Z

.field private static mUpdateRepeatOFF:Z

.field private static mUpdateRepeatONE:Z


# instance fields
.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private mAlbum:Landroid/widget/ImageView;

.field private mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

.field private mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

.field private mAlbumId:J

.field private mArtistName:Landroid/widget/TextView;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDeviceHasDpad:Z

.field mDraggingLabel:Z

.field private mDrmIcon:Landroid/widget/ImageView;

.field private mDuration:J

.field private mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mFromTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field mInitialX:I

.field private mIntentDeRegistered:Z

.field mLabelScroller:Landroid/os/Handler;

.field private mLastSeekEventTime:J

.field mLastX:I

.field private mNextButton:Lcom/android/music/RepeatingImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNextOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPauseOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPosOverride:J

.field private mPrevButton:Lcom/android/music/RepeatingImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mPrevOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressComplete:Z

.field private mQueueListener:Landroid/view/View$OnClickListener;

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mScreenTimeoutListener:Landroid/content/BroadcastReceiver;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field mTextWidth:I

.field private mToast:Landroid/widget/Toast;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:I

.field private mTrackName:Landroid/widget/TextView;

.field private mUpdateAlbumart:Z

.field mViewWidth:I

.field private osc:Landroid/content/ServiceConnection;

.field private paused:Z

.field private seekmethod:I


# direct methods
.method static synthetic -get0(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumId:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/music/MediaPlaybackActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/music/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/music/MediaPlaybackActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/music/MediaPlaybackActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIntentDeRegistered:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/music/MediaPlaybackActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumId:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mIntentDeRegistered:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/music/MediaPlaybackActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/music/MediaPlaybackActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;
    .locals 0

    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/music/MediaPlaybackActivity;Z)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->refreshNow(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->cycleRepeat()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->startPlayback()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/music/MediaPlaybackActivity;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/music/MediaPlaybackActivity;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/music/MediaPlaybackActivity;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/music/MediaPlaybackActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string/jumbo v0, "MediaPlaybackActivity"

    sput-object v0, Lcom/android/music/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    .line 97
    sput-boolean v1, Lcom/android/music/MediaPlaybackActivity;->mUpdateOnShuffle:Z

    .line 98
    sput-boolean v1, Lcom/android/music/MediaPlaybackActivity;->mUpdateOffShuffle:Z

    .line 99
    sput-boolean v1, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatALL:Z

    .line 100
    sput-boolean v1, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatONE:Z

    .line 101
    sput-boolean v1, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatOFF:Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, -0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 95
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIntentDeRegistered:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mUpdateAlbumart:Z

    .line 166
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 167
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    .line 168
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 169
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 170
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 259
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$1;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    .line 377
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$2;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 436
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$3;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    .line 445
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$4;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 451
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$5;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 457
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$6;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$6;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 463
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$7;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$7;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 478
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$8;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 496
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$9;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$9;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 511
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$10;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 524
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$11;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$11;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 538
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$12;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$12;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 544
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$13;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$13;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 817
    const/4 v0, 0x3

    new-array v0, v0, [[I

    .line 818
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    .line 822
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 826
    new-array v1, v4, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 817
    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    .line 1285
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$14;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$14;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    .line 1383
    iput-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1384
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    .line 1388
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    .line 1466
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$15;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$15;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 1501
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$16;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$16;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1526
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$17;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$17;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenTimeoutListener:Landroid/content/BroadcastReceiver;

    .line 1630
    iput-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumId:J

    .line 104
    return-void

    .line 818
    :array_0
    .array-data 4
        0x2d
        0x33
        0x21
        0x2e
        0x30
        0x35
        0x31
        0x25
        0x2b
        0x2c
    .end array-data

    .line 822
    :array_1
    .array-data 4
        0x1d
        0x2f
        0x20
        0x22
        0x23
        0x24
        0x26
        0x27
        0x28
        0x43
    .end array-data

    .line 826
    :array_2
    .array-data 4
        0x36
        0x34
        0x1f
        0x32
        0x1e
        0x2a
        0x29
        0x37
        0x38
        0x42
    .end array-data
.end method

.method private cycleRepeat()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1215
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1216
    return-void

    .line 1219
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1220
    if-nez v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1222
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatALL:Z

    .line 1223
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatOFF:Z

    .line 1224
    const v0, 0x7f07003d

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1242
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 1245
    :goto_1
    return-void

    .line 1225
    :cond_1
    if-ne v0, v1, :cond_3

    .line 1226
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1227
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1229
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateOffShuffle:Z

    .line 1230
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateOnShuffle:Z

    .line 1231
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 1233
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatONE:Z

    .line 1234
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatALL:Z

    .line 1235
    const v0, 0x7f07003c

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1237
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1238
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatOFF:Z

    .line 1239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatONE:Z

    .line 1240
    const v0, 0x7f07003b

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private deleteCurrentSongs()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1049
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1050
    new-array v2, v7, [J

    .line 1051
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 1053
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1058
    :goto_0
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-static {p0, v2, v6, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 1076
    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mUpdateAlbumart:Z

    .line 1078
    :cond_0
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1046
    return-void

    .line 1042
    :catch_1
    move-exception v0

    .line 1043
    return-void

    .line 1056
    :cond_1
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 1166
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 1169
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->pause()V

    .line 1173
    :goto_0
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    if-eqz v0, :cond_0

    .line 1174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    .line 1175
    :cond_0
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow(Z)J

    .line 1177
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1181
    :cond_1
    :goto_1
    return-void

    .line 1171
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private queueNextRefresh(J)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1396
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    if-nez v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1398
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1399
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1401
    :cond_0
    return-void
.end method

.method private refreshNow(Z)J
    .locals 10

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1405
    const-wide/16 v0, 0x1f4

    return-wide v0

    .line 1407
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    .line 1415
    :goto_0
    iget-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 1416
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1407
    :cond_1
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    goto :goto_0

    .line 1419
    :cond_2
    if-eqz p1, :cond_a

    .line 1420
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    .line 1421
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 1422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    move-wide v2, v0

    .line 1424
    :goto_1
    const-wide/16 v0, 0x3e8

    rem-long v0, v2, v0

    const-wide/16 v4, 0x3e8

    sub-long v0, v4, v0

    .line 1426
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_9

    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 1427
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1428
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 1429
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    .line 1428
    invoke-static {p0, v6, v7}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    :goto_2
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1436
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    :goto_3
    iget-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    if-nez v4, :cond_3

    .line 1446
    const-wide/16 v4, 0x384

    cmp-long v4, v2, v4

    if-gtz v4, :cond_7

    .line 1447
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1460
    :cond_3
    :goto_4
    return-wide v0

    .line 1431
    :cond_4
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 1432
    iget-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1431
    invoke-static {p0, v6, v7}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1461
    :catch_0
    move-exception v0

    .line 1463
    const-wide/16 v0, 0x1f4

    return-wide v0

    .line 1439
    :cond_5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 1440
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 1441
    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    const/4 v0, 0x0

    .line 1440
    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1443
    const-wide/16 v0, 0x1f4

    goto :goto_3

    .line 1442
    :cond_6
    const/4 v0, 0x4

    goto :goto_5

    .line 1448
    :cond_7
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_8

    .line 1449
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4

    .line 1451
    :cond_8
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    iget-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4

    .line 1455
    :cond_9
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-string/jumbo v3, "--:--"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_a
    move-wide v2, v0

    goto/16 :goto_1
.end method

.method private scanBackward(IJ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 1081
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1082
    return-void

    .line 1084
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_2

    .line 1085
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1086
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1120
    :goto_0
    return-void

    .line 1089
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1090
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 1091
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    cmp-long v0, p2, v6

    if-gez v0, :cond_6

    .line 1094
    const-wide/16 v0, 0xa

    mul-long/2addr v0, p2

    move-wide v2, v0

    .line 1099
    :goto_1
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long/2addr v0, v2

    .line 1100
    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 1102
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 1103
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v4

    .line 1104
    iget-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1105
    add-long/2addr v0, v4

    .line 1107
    :cond_3
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    if-gez p1, :cond_5

    .line 1108
    :cond_4
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v0, v1}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 1109
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1111
    :cond_5
    if-ltz p1, :cond_7

    .line 1112
    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1116
    :goto_2
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow(Z)J

    goto :goto_0

    .line 1118
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1097
    :cond_6
    sub-long v0, p2, v6

    const-wide/16 v2, 0x28

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xc350

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1

    .line 1114
    :cond_7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x1388

    const/4 v1, 0x1

    .line 1123
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1124
    return-void

    .line 1126
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_2

    .line 1127
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1162
    :goto_0
    return-void

    .line 1131
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1132
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 1133
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1134
    cmp-long v0, p2, v4

    if-gez v0, :cond_6

    .line 1136
    const-wide/16 v0, 0xa

    mul-long/2addr v0, p2

    move-wide v2, v0

    .line 1141
    :goto_1
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    add-long/2addr v0, v2

    .line 1142
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v4

    .line 1143
    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    .line 1145
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 1146
    iget-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1147
    sub-long/2addr v0, v4

    .line 1149
    :cond_3
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    if-gez p1, :cond_5

    .line 1150
    :cond_4
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v0, v1}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 1151
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1153
    :cond_5
    if-ltz p1, :cond_7

    .line 1154
    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1158
    :goto_2
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow(Z)J

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1139
    :cond_6
    sub-long v0, p2, v4

    const-wide/16 v2, 0x28

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xc350

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1

    .line 1156
    :cond_7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private seekMethod1(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 837
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v3, :cond_0

    .line 838
    return v0

    :cond_0
    move v4, v0

    .line 839
    :goto_0
    const/16 v3, 0xa

    if-ge v4, v3, :cond_c

    move v3, v0

    .line 840
    :goto_1
    const/4 v5, 0x3

    if-ge v3, v5, :cond_b

    .line 841
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v5, v5, v3

    aget v5, v5, v4

    if-ne v5, p1, :cond_a

    .line 844
    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v5, :cond_2

    .line 865
    :cond_1
    :goto_2
    iput v4, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    .line 866
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    .line 868
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x5

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-interface {v2, v4, v5}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_3
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow(Z)J

    .line 872
    return v1

    .line 846
    :cond_2
    if-nez v3, :cond_3

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-le v4, v5, :cond_3

    move v0, v1

    .line 847
    goto :goto_2

    .line 848
    :cond_3
    if-nez v3, :cond_4

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v4, v5, :cond_4

    move v0, v2

    .line 849
    goto :goto_2

    .line 851
    :cond_4
    if-ne v3, v6, :cond_5

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-le v4, v5, :cond_5

    move v0, v2

    .line 852
    goto :goto_2

    .line 853
    :cond_5
    if-ne v3, v6, :cond_6

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v5, v6, :cond_6

    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v4, v5, :cond_6

    move v0, v1

    .line 854
    goto :goto_2

    .line 856
    :cond_6
    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v3, v5, :cond_7

    if-gt v4, v7, :cond_7

    move v0, v1

    .line 857
    goto :goto_2

    .line 858
    :cond_7
    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v3, v5, :cond_8

    const/4 v5, 0x5

    if-lt v4, v5, :cond_8

    move v0, v2

    .line 859
    goto :goto_2

    .line 861
    :cond_8
    iget v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-le v3, v5, :cond_9

    if-gt v4, v7, :cond_9

    move v0, v2

    .line 862
    goto :goto_2

    .line 863
    :cond_9
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-le v3, v2, :cond_1

    const/4 v2, 0x5

    if-lt v4, v2, :cond_1

    move v0, v1

    .line 864
    goto :goto_2

    .line 840
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 839
    :cond_b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_0

    .line 876
    :cond_c
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    .line 877
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    .line 878
    return v0

    .line 869
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private seekMethod2(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 883
    return v1

    :cond_0
    move v0, v1

    .line 884
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 885
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 886
    mul-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0xa

    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow(Z)J

    .line 892
    const/4 v0, 0x1

    return v0

    .line 884
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_2
    return v1

    .line 889
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 1367
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    .line 1369
    const v1, 0x7f020027

    .line 1368
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1375
    :goto_0
    return-void

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1373
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1325
    return-void

    .line 1327
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1336
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1341
    :goto_0
    return-void

    .line 1329
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1339
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1332
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    .line 1333
    const v1, 0x7f02002e

    .line 1332
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1345
    return-void

    .line 1347
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1357
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 1358
    const v1, 0x7f020033

    .line 1357
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1363
    :goto_0
    return-void

    .line 1349
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 1350
    const v1, 0x7f020032

    .line 1349
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1361
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1353
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 1354
    const v1, 0x7f020020

    .line 1353
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1249
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1252
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1253
    return-void
.end method

.method private startPlayback()V
    .locals 4

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1257
    return-void

    .line 1258
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1259
    const-string/jumbo v1, ""

    .line 1260
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1264
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1265
    const-string/jumbo v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1266
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1271
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->stop()V

    .line 1272
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1, v0}, Lcom/android/music/IMediaPlaybackService;->openFile(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->play()V

    .line 1274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1281
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow(Z)J

    move-result-wide v0

    .line 1282
    invoke-direct {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 1283
    return-void

    .line 1268
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    const-string/jumbo v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "couldn\'t start playback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1184
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1185
    return-void

    .line 1188
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1189
    if-nez v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1193
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatALL:Z

    .line 1194
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateRepeatOFF:Z

    .line 1195
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 1197
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateOnShuffle:Z

    .line 1198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateOffShuffle:Z

    .line 1199
    const v0, 0x7f070039

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1209
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 1212
    :goto_1
    return-void

    .line 1200
    :cond_2
    if-eq v0, v2, :cond_3

    .line 1201
    if-ne v0, v1, :cond_4

    .line 1202
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1203
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateOffShuffle:Z

    .line 1204
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateOnShuffle:Z

    .line 1205
    const v0, 0x7f07003a

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1207
    :cond_4
    const-string/jumbo v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private updateTrackInfo()V
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    .line 1566
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 1567
    return-void

    .line 1570
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1571
    if-nez v2, :cond_1

    .line 1572
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    .line 1573
    return-void

    .line 1576
    :cond_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v4

    .line 1577
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "http://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1580
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1581
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->removeMessages(I)V

    .line 1583
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    .line 1584
    new-instance v1, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;-><init>(JJ)V

    .line 1583
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1616
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    .line 1617
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    if-eqz v0, :cond_3

    .line 1618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    .line 1619
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 1620
    iget-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1619
    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    :goto_1
    return-void

    .line 1586
    :cond_4
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 1587
    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1588
    const v2, 0x7f070037

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1590
    :cond_5
    if-eqz v2, :cond_7

    const-string/jumbo v3, "Your recordings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1591
    const v2, 0x7f070073

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1596
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1597
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    .line 1598
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v2

    .line 1599
    const-string/jumbo v7, "<unknown>"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1600
    const v2, 0x7f070038

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    .line 1603
    :goto_3
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->removeMessages(I)V

    .line 1605
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    .line 1606
    new-instance v3, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;-><init>(JJ)V

    .line 1605
    const/4 v0, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1607
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1609
    invoke-static {p0, v4, v5}, Lcom/android/music/MusicUtils;->getSelectAudioPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1610
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mDrmIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    const-string/jumbo v1, ".fl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1611
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDrmIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    goto/16 :goto_1

    .line 1592
    :cond_7
    if-eqz v2, :cond_6

    .line 1593
    :try_start_1
    const-string/jumbo v3, "My FM recordings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1592
    if-eqz v3, :cond_6

    .line 1594
    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1612
    :cond_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDrmIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1613
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDrmIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1624
    :catch_1
    move-exception v0

    .line 1626
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    move-wide v0, v2

    goto :goto_3
.end method

.method private useDpadMusicControl()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    .line 958
    if-eqz v0, :cond_1

    .line 961
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 963
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 801
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 802
    return-void

    .line 815
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x104

    const/4 v1, 0x1

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    .line 113
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->setVolumeControlStream(I)V

    .line 115
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$Worker;

    const-string/jumbo v2, "album art worker"

    invoke-direct {v0, v2}, Lcom/android/music/MediaPlaybackActivity$Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    .line 116
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackActivity$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;-><init>(Lcom/android/music/MediaPlaybackActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->requestWindowFeature(I)Z

    .line 122
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->setContentView(I)V

    .line 125
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 127
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 128
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    .line 133
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 135
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    .line 136
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 137
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    .line 139
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 141
    iput v1, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    .line 143
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/music/RepeatingImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/music/RepeatingImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    .line 149
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 150
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    .line 152
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDrmIcon:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 159
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 163
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchSlop:I

    .line 164
    return-void

    .line 147
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 627
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 633
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 634
    const/4 v0, 0x6

    const v1, 0x7f070003

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 638
    const/16 v0, 0xe

    const v1, 0x7f07006c

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 639
    const/16 v0, 0x12

    const v1, 0x7f07006d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 640
    const/16 v0, 0x13

    const v1, 0x7f07006e

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 642
    const v0, 0x7f070042

    .line 641
    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    .line 646
    const/16 v0, 0x10

    const v1, 0x7f07003f

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 647
    const/16 v0, 0xa

    const v1, 0x7f070006

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 655
    return v5

    .line 657
    :cond_0
    return v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity$Worker;->quit()V

    .line 621
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 623
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 969
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 971
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->seekMethod1(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 972
    return v6

    .line 971
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->seekMethod2(I)Z

    move-result v0

    goto :goto_0

    .line 974
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1035
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 995
    :sswitch_0
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    .line 996
    return v6

    .line 999
    :sswitch_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1003
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->requestFocus()Z

    .line 1005
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    .line 1006
    return v6

    .line 1008
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1012
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->requestFocus()Z

    .line 1014
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    .line 1015
    return v6

    .line 1018
    :sswitch_3
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    .line 1019
    return v6

    .line 1023
    :sswitch_4
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    .line 1024
    return v6

    .line 1030
    :sswitch_5
    return v6

    .line 1032
    :sswitch_6
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->deleteCurrentSongs()V

    .line 1033
    return v6

    .line 974
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x1c -> :sswitch_6
        0x2f -> :sswitch_3
        0x3e -> :sswitch_4
        0x4c -> :sswitch_0
        0x54 -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, -0x1

    .line 901
    packed-switch p1, :pswitch_data_0

    .line 954
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 903
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 907
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_1

    .line 908
    return v4

    .line 910
    :cond_1
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_4

    .line 911
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 912
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 913
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 926
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 927
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 928
    return v4

    .line 915
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 916
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->setExtDisplayPlay()V

    goto :goto_1

    .line 952
    :catch_0
    move-exception v0

    goto :goto_0

    .line 920
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 919
    const/4 v2, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    .line 921
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 922
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 923
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->setExtDisplayPlay()V

    goto :goto_1

    .line 930
    :pswitch_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_6

    .line 934
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_5

    .line 935
    return v4

    .line 937
    :cond_5
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_7

    .line 938
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 939
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 948
    :cond_6
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 949
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 950
    return v4

    .line 942
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 941
    const/4 v2, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    .line 943
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->setExtDisplayPlay()V

    .line 944
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 945
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 901
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 286
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    .line 287
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    .line 288
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 296
    const-string/jumbo v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const-string/jumbo v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 296
    if-eqz v2, :cond_0

    .line 297
    if-eqz v10, :cond_0

    .line 298
    const-string/jumbo v2, "recording"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 296
    if-eqz v2, :cond_0

    .line 300
    return v7

    .line 291
    :catch_0
    move-exception v0

    .line 293
    return v6

    .line 289
    :catch_1
    move-exception v0

    .line 290
    return v6

    .line 303
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 304
    return v7

    .line 308
    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 307
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 309
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "is_music"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 307
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_f

    .line 313
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 314
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 316
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 318
    :goto_1
    if-nez v0, :cond_3

    .line 319
    return v7

    :cond_2
    move v0, v7

    .line 314
    goto :goto_0

    .line 322
    :cond_3
    if-eqz v8, :cond_6

    .line 323
    const-string/jumbo v0, "<unknown>"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v4, v0

    .line 325
    :goto_2
    if-eqz v9, :cond_7

    .line 326
    const-string/jumbo v0, "<unknown>"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 328
    :goto_3
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 331
    const-string/jumbo v0, "vnd.android.cursor.item/artist"

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    .line 359
    :goto_4
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const v2, 0x7f070058

    invoke-virtual {p0, v2, v5}, Lcom/android/music/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 360
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 361
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    const-string/jumbo v7, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string/jumbo v7, "query"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    if-eqz v4, :cond_4

    .line 365
    const-string/jumbo v0, "android.intent.extra.artist"

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    :cond_4
    if-eqz v3, :cond_5

    .line 368
    const-string/jumbo v0, "android.intent.extra.album"

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    :cond_5
    const-string/jumbo v0, "android.intent.extra.title"

    invoke-virtual {v5, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string/jumbo v0, "android.intent.extra.focus"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-static {v5, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    return v6

    :cond_6
    move v4, v7

    .line 322
    goto :goto_2

    :cond_7
    move v3, v7

    .line 325
    goto :goto_3

    .line 332
    :cond_8
    if-eqz v3, :cond_9

    .line 339
    const-string/jumbo v0, "vnd.android.cursor.item/album"

    move-object v1, v0

    move-object v2, v9

    move-object v0, v9

    goto :goto_4

    .line 340
    :cond_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    xor-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_a

    .line 341
    xor-int/lit8 v0, v3, 0x1

    .line 340
    if-eqz v0, :cond_d

    .line 342
    :cond_a
    if-eqz v10, :cond_b

    const-string/jumbo v0, "<unknown>"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 345
    :cond_b
    return v6

    .line 354
    :cond_c
    const-string/jumbo v0, "audio/*"

    move-object v1, v0

    move-object v2, v10

    move-object v0, v10

    goto :goto_4

    .line 357
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "shouldn\'t be here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v0, v6

    goto/16 :goto_0

    :cond_f
    move v0, v6

    goto/16 :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 594
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 689
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 795
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 691
    :pswitch_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 692
    const-class v1, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 693
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 697
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    goto :goto_0

    .line 701
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 704
    :cond_0
    return v6

    .line 707
    :pswitch_3
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->cycleRepeat()V

    .line 708
    return v6

    .line 711
    :pswitch_4
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    .line 712
    return v6

    .line 715
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string/jumbo v2, "vnd.android.cursor.dir/track"

    .line 715
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 717
    const-string/jumbo v1, "playlist"

    const-string/jumbo v2, "nowplaying"

    .line 715
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 721
    :pswitch_6
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    .line 722
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_0

    .line 729
    :pswitch_7
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 730
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 731
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->createPlayList(Landroid/content/Context;[J)V

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mUpdateAlbumart:Z

    .line 733
    return v6

    .line 737
    :pswitch_8
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 738
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 739
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "playlist"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 740
    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 741
    return v6

    .line 745
    :pswitch_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 746
    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 747
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v1, v0

    .line 749
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 754
    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mUpdateAlbumart:Z

    .line 774
    :cond_1
    return v6

    .line 752
    :cond_2
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 778
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    .line 779
    const-string/jumbo v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    .line 778
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    const-string/jumbo v1, "android.media.extra.AUDIO_SESSION"

    .line 781
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v2

    .line 780
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 783
    sget-object v0, Lcom/android/music/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getAudioSessionId()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return v6

    .line 789
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->closeOptionsMenu()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 790
    return v6

    .line 689
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 662
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x0

    return v0

    .line 664
    :cond_0
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_1

    .line 666
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    .line 667
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 668
    const v1, 0x7f070005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 674
    :cond_1
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_2

    .line 676
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    .line 677
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 680
    :cond_2
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 681
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 682
    return v3

    .line 670
    :cond_3
    const v1, 0x7f070004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 597
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 598
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    .line 601
    :cond_0
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackActivity;->mUpdateOnShuffle:Z

    .line 604
    sput-boolean v2, Lcom/android/music/MediaPlaybackActivity;->mUpdateOffShuffle:Z

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mUpdateAlbumart:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 608
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumId:J

    .line 610
    :cond_2
    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mUpdateAlbumart:Z

    .line 611
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 612
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIntentDeRegistered:Z

    if-eqz v0, :cond_3

    .line 613
    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 615
    :cond_3
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 616
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 565
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 567
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 568
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 574
    const-string/jumbo v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string/jumbo v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    const-string/jumbo v1, "com.android.music.shuffle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string/jumbo v1, "com.android.music.repeat"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 581
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 582
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenTimeoutListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 586
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 587
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgressComplete:Z

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow(Z)J

    move-result-wide v0

    .line 588
    invoke-direct {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 589
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 552
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 553
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIntentDeRegistered:Z

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenTimeoutListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 560
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 561
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 185
    if-nez v1, :cond_0

    .line 186
    return v4

    .line 188
    :cond_0
    if-nez v0, :cond_2

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 192
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 256
    :cond_1
    :goto_0
    return v4

    .line 193
    :cond_2
    if-eq v0, v5, :cond_3

    .line 194
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 196
    :cond_3
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 200
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 201
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v0, :cond_8

    .line 202
    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 204
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    sub-int/2addr v3, v2

    .line 205
    if-eqz v3, :cond_7

    .line 206
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    .line 207
    add-int/2addr v0, v3

    .line 208
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v0, v2, :cond_5

    .line 210
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    sub-int/2addr v0, v2

    .line 211
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    sub-int/2addr v0, v2

    .line 213
    :cond_5
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    neg-int v2, v2

    if-ge v0, v2, :cond_6

    .line 216
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    add-int/2addr v0, v2

    .line 217
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    add-int/2addr v0, v2

    .line 219
    :cond_6
    invoke-virtual {v1, v0, v4}, Landroid/widget/TextView;->scrollTo(II)V

    .line 221
    :cond_7
    return v5

    .line 223
    :cond_8
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 224
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchSlop:I

    if-le v0, v2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 231
    invoke-virtual {v1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 232
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 234
    :cond_9
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 237
    if-nez v0, :cond_a

    .line 238
    return v4

    .line 243
    :cond_a
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 244
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 245
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v0, v2, :cond_b

    .line 246
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 248
    return v4

    .line 250
    :cond_b
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 251
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 253
    return v5
.end method

.method textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    const v0, 0x7f0b0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 176
    :cond_0
    const v0, 0x7f0b0007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_1

    .line 178
    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 179
    :cond_1
    return-object v1
.end method
