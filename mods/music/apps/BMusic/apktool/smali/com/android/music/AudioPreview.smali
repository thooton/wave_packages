.class public Lcom/android/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AudioPreview$1;,
        Lcom/android/music/AudioPreview$2;,
        Lcom/android/music/AudioPreview$3;,
        Lcom/android/music/AudioPreview$4;,
        Lcom/android/music/AudioPreview$PreviewPlayer;,
        Lcom/android/music/AudioPreview$PreviewPlayerTask;,
        Lcom/android/music/AudioPreview$ProgressRefresher;
    }
.end annotation


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDuration:I

.field private mLoadingText:Landroid/widget/TextView;

.field private mMediaId:J

.field private mPausedByTransientLossOfFocus:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayPauseButton:Landroid/widget/ImageButton;

.field private mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mResumeAfterCall:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mTotalTime:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/music/AudioPreview;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/AudioPreview;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/music/AudioPreview;)I
    .locals 1

    iget v0, p0, Lcom/android/music/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/music/AudioPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/music/AudioPreview;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/music/AudioPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mResumeAfterCall:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/music/AudioPreview;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/music/AudioPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/AudioPreview;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/music/AudioPreview;->mMediaId:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/music/AudioPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/music/AudioPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/AudioPreview;->mResumeAfterCall:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/music/AudioPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/music/AudioPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/AudioPreview;->refreshNow()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/music/AudioPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/music/AudioPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/AudioPreview;->mMediaId:J

    .line 78
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->mResumeAfterCall:Z

    .line 300
    new-instance v0, Lcom/android/music/AudioPreview$1;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$1;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 334
    new-instance v0, Lcom/android/music/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$2;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 403
    new-instance v0, Lcom/android/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$3;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mSeekFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 417
    new-instance v0, Lcom/android/music/AudioPreview$4;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$4;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 59
    return-void
.end method

.method private refreshNow()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 447
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    if-eqz v2, :cond_4

    .line 448
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/android/music/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    .line 450
    :goto_0
    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/android/music/AudioPreview;->mDuration:I

    if-lez v4, :cond_3

    .line 451
    iget v4, p0, Lcom/android/music/AudioPreview;->mDuration:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 452
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    .line 453
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 452
    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :goto_1
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    :goto_2
    return-void

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    .line 456
    iget v3, p0, Lcom/android/music/AudioPreview;->mDuration:I

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    .line 455
    invoke-static {p0, v4, v5}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 462
    :cond_1
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    .line 463
    iget-object v3, p0, Lcom/android/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    .line 464
    if-ne v2, v1, :cond_2

    .line 463
    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 465
    goto :goto_3

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    const-string/jumbo v1, "--:--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move-wide v2, v4

    goto :goto_0
.end method

.method private showPostPrepareUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/android/music/AudioPreview;->mDuration:I

    .line 281
    iget v0, p0, Lcom/android/music/AudioPreview;->mDuration:I

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 283
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    .line 286
    iget v1, p0, Lcom/android/music/AudioPreview;->mDuration:I

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 285
    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mSeekFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 289
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 293
    const/4 v2, 0x3

    .line 294
    const/4 v3, 0x1

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 295
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    .line 297
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->refreshNow()V

    .line 298
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 358
    const/4 v2, 0x3

    .line 359
    const/4 v3, 0x1

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 360
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->start()V

    .line 361
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    return-void
.end method

.method private stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rtsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 251
    if-eqz v0, :cond_3

    .line 253
    :cond_1
    new-instance v0, Lcom/android/music/AudioPreview$PreviewPlayerTask;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-direct {v0, p0, v1}, Lcom/android/music/AudioPreview$PreviewPlayerTask;-><init>(Lcom/android/music/AudioPreview;Lcom/android/music/AudioPreview$PreviewPlayer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview$PreviewPlayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    :cond_2
    :goto_0
    return-void

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->release()V

    .line 256
    iput-object v2, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 257
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 258
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->refreshNow()V

    goto :goto_0
.end method

.method private updatePlayPause()V
    .locals 2

    .prologue
    .line 389
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 390
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 393
    const v1, 0x7f020027

    .line 392
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 396
    const v1, 0x7f020028

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 474
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    .line 475
    iget v1, p0, Lcom/android/music/AudioPreview;->mDuration:I

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 474
    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 478
    if-eqz v0, :cond_0

    .line 479
    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 482
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 90
    return-void

    .line 92
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    .line 93
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 95
    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p0, v9}, Lcom/android/music/AudioPreview;->setVolumeControlStream(I)V

    .line 100
    invoke-virtual {p0, v6}, Lcom/android/music/AudioPreview;->requestWindowFeature(I)Z

    .line 101
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->setContentView(I)V

    .line 103
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    .line 106
    const-string/jumbo v0, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const v4, 0x7f070057

    invoke-virtual {p0, v4, v0}, Lcom/android/music/AudioPreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_0
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 113
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 117
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 119
    iget-object v4, p0, Lcom/android/music/AudioPreview;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 122
    if-nez v0, :cond_6

    .line 123
    new-instance v0, Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-direct {v0, v2}, Lcom/android/music/AudioPreview$PreviewPlayer;-><init>(Lcom/android/music/AudioPreview$PreviewPlayer;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 124
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0, p0}, Lcom/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/android/music/AudioPreview;)V

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    iget-object v4, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/android/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/music/AudioPreview$5;

    .line 147
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 146
    invoke-direct {v0, p0, v4}, Lcom/android/music/AudioPreview$5;-><init>(Lcom/android/music/AudioPreview;Landroid/content/ContentResolver;)V

    .line 197
    const-string/jumbo v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 198
    iget-object v3, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "media"

    if-ne v3, v4, :cond_7

    .line 200
    iget-object v3, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    new-array v4, v8, [Ljava/lang/String;

    .line 201
    const-string/jumbo v5, "title"

    aput-object v5, v4, v1

    .line 202
    const-string/jumbo v5, "artist"

    aput-object v5, v4, v6

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 200
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_4
    :goto_2
    return-void

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 132
    const-string/jumbo v2, "AudioPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const v0, 0x7f070054

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 136
    return-void

    .line 139
    :cond_6
    iput-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 140
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0, p0}, Lcom/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/android/music/AudioPreview;)V

    .line 141
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_1

    .line 207
    :cond_7
    iget-object v3, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :cond_8
    const-string/jumbo v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 214
    iget-object v3, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 216
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v9, [Ljava/lang/String;

    .line 217
    const-string/jumbo v5, "_id"

    aput-object v5, v4, v1

    .line 218
    const-string/jumbo v5, "title"

    aput-object v5, v4, v6

    .line 219
    const-string/jumbo v5, "artist"

    aput-object v5, v4, v8

    .line 220
    const-string/jumbo v5, "_data=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v7, v6, v1

    move-object v7, v2

    .line 215
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :cond_9
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->setNames()V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 241
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 242
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 439
    const v0, 0x7f070054

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 441
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 510
    sparse-switch p1, :sswitch_data_0

    .line 549
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 513
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 519
    :goto_0
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    .line 521
    :cond_0
    return v2

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    goto :goto_0

    .line 526
    :sswitch_1
    return v2

    .line 529
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 530
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 531
    return v2

    .line 533
    :sswitch_3
    return v2

    .line 535
    :sswitch_4
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    .line 536
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 538
    const v1, 0x7f020027

    .line 537
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 539
    :cond_2
    return v2

    .line 541
    :sswitch_5
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 544
    :cond_3
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 545
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 546
    const v1, 0x7f020028

    .line 545
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 547
    :cond_4
    return v2

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x4f -> :sswitch_0
        0x54 -> :sswitch_3
        0x55 -> :sswitch_0
        0x56 -> :sswitch_2
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x7e -> :sswitch_4
        0x7f -> :sswitch_5
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    return-void

    .line 273
    :cond_0
    check-cast p1, Lcom/android/music/AudioPreview$PreviewPlayer;

    iput-object p1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 274
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->setNames()V

    .line 275
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->start()V

    .line 276
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->showPostPrepareUI()V

    .line 277
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 235
    return-object v0
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 266
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 268
    return-void
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 490
    :goto_0
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    .line 491
    return-void

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    goto :goto_0
.end method

.method public setNames()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
