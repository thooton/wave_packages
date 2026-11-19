.class public Lcom/android/mms/ui/multipleviews/VideoViewFragment;
.super Lcom/android/mms/ui/multipleviews/BaseViewFragment;
.source "VideoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;,
        Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;,
        Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;
    }
.end annotation


# instance fields
.field private mAttachmentText:Landroid/widget/TextView;

.field private mCurrentDuration:Landroid/widget/TextView;

.field private mFootViewLayout:Landroid/widget/LinearLayout;

.field private mHideFooterViewRunnable:Ljava/lang/Runnable;

.field private mPausedPosition:I

.field private mPlayPauseIcon:Landroid/widget/ImageView;

.field private mProgressBarLayout:Landroid/widget/LinearLayout;

.field private mVideoAttachmentView:Landroid/widget/RelativeLayout;

.field private mVideoDuration:Landroid/widget/TextView;

.field private mVideoProgressBar:Landroid/widget/ProgressBar;

.field private mVideoView:Landroid/widget/VideoView;

.field private mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

.field private mVideoViewRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mCurrentDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mFootViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPlayPauseIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/multipleviews/VideoViewFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->updateProgressBarState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPausedPosition:I

    .line 295
    new-instance v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;-><init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)V

    invoke-static {v0, p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->-wrap0(Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewRunnable:Ljava/lang/Runnable;

    .line 329
    new-instance v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;-><init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)V

    invoke-static {v0, p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->-wrap0(Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mHideFooterViewRunnable:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method private clearHandlerResource()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mHideFooterViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 110
    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    .line 111
    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPlayPauseIcon:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0f00a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 113
    const v1, 0x7f0f00aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mProgressBarLayout:Landroid/widget/LinearLayout;

    .line 114
    const v1, 0x7f0f00a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mFootViewLayout:Landroid/widget/LinearLayout;

    .line 115
    const v1, 0x7f0f009d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoDuration:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f0f009c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mCurrentDuration:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0f00ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoProgressBar:Landroid/widget/ProgressBar;

    .line 118
    const v1, 0x7f0f0098

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mAttachmentText:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mAttachmentText:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 120
    const v1, 0x7f0f00a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoAttachmentView:Landroid/widget/RelativeLayout;

    .line 121
    const v1, 0x7f0f00a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    new-instance v2, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    invoke-direct {v2, v3}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;-><init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;)V

    iput-object v2, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    .line 126
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v2}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v3

    .line 130
    :cond_0
    if-nez v3, :cond_1

    .line 131
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isEditSlideShowMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v2}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mAttachmentText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v4}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mAttachmentText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    .line 142
    check-cast v2, Lcom/android/mms/model/VideoModel;

    .line 143
    iget-object v4, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 144
    iget-object v4, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;-><init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 162
    new-instance v4, Lcom/android/mms/ui/multipleviews/VideoViewFragment$4;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$4;-><init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 173
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isSingleSlideMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isPlayAllMode()Z

    move-result v0

    .line 176
    if-eqz v0, :cond_5

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->onPlayMedia()V

    .line 181
    :cond_5
    return-void
.end method

.method public static newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/VideoViewFragment;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-direct {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;-><init>()V

    .line 84
    if-eqz v0, :cond_0

    .line 86
    iput-object p0, v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    .line 89
    :cond_0
    return-object v0
.end method

.method private updateProgressBarState(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 275
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mFootViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->footerViewSlideUp(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mProgressBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/android/mms/util/MediaPlayerUtils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mCurrentDuration:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/android/mms/util/MediaPlayerUtils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 281
    invoke-static {v4, v5, v0, v1}, Lcom/android/mms/util/MediaPlayerUtils;->getProgressPercentage(JJ)I

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mHideFooterViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mFootViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->footerViewSlideUp(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mProgressBarLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->clearHandlerResource()V

    goto :goto_0
.end method


# virtual methods
.method public footerViewSlideDown(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mFootViewLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 403
    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 408
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 409
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 411
    return-void
.end method

.method public footerViewSlideUp(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 390
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 390
    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 395
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 396
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 397
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 398
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->setRetainInstance(Z)V

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    .line 103
    const v0, 0x7f04001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->initView(Landroid/view/View;)V

    .line 105
    return-object v0
.end method

.method public onKeyEvent()V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mFootViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->footerViewSlideUp(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->clearHandlerResource()V

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoViewHandler:Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mHideFooterViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    :cond_0
    return-void
.end method

.method public onMenuUpdate(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isPlayAllMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x2

    const v1, 0x7f07038c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPausedPosition:I

    if-eqz v0, :cond_2

    .line 259
    const/4 v0, 0x3

    const v1, 0x7f07038d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 261
    :cond_2
    const/4 v0, 0x1

    const v1, 0x7f0701af

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onPause()V

    .line 197
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->onPauseMedia()V

    .line 198
    return-void
.end method

.method public onPauseMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPlayPauseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPausedPosition:I

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mFootViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->clearHandlerResource()V

    .line 229
    :cond_0
    return-void
.end method

.method public onPlayMedia()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPlayPauseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoAttachmentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->updateProgressBarState(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 216
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onResume()V

    .line 203
    iget v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPausedPosition:I

    if-lez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->onResumeMedia()V

    .line 206
    :cond_0
    return-void
.end method

.method public onResumeMedia()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPlayPauseIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPausedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPausedPosition:I

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->updateProgressBarState(Z)V

    .line 239
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onStop()V

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 190
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->clearHandlerResource()V

    .line 192
    :cond_0
    return-void
.end method

.method public onStopMedia()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iput v2, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPausedPosition:I

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mPlayPauseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoAttachmentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->mVideoView:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 248
    invoke-direct {p0, v2}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->updateProgressBarState(Z)V

    .line 249
    return-void
.end method
