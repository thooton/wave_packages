.class public Lcom/android/mms/ui/multipleviews/AudioViewFragment;
.super Lcom/android/mms/ui/multipleviews/BaseViewFragment;
.source "AudioViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioFileNameText:Landroid/widget/TextView;

.field private mAudioProgressBar:Landroid/widget/ProgressBar;

.field private mCurrentDuration:Landroid/widget/TextView;

.field private mIsPlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPausedPosition:I

.field private mProgressbarUpdateHandler:Landroid/os/Handler;

.field private mTotalDuration:Landroid/widget/TextView;

.field private mUpdateSeekbar:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mAudioProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mCurrentDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mProgressbarUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mTotalDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->cleanupMediaPlayer()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->onPlaybackError()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mPausedPosition:I

    .line 212
    new-instance v0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;-><init>(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mUpdateSeekbar:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method private cleanupMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->stopAudio()V

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 201
    :cond_0
    return-void

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    iput-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 197
    throw v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    const v0, 0x7f0f009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mAudioFileNameText:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0f009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mAudioProgressBar:Landroid/widget/ProgressBar;

    .line 96
    const v0, 0x7f0f009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mCurrentDuration:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0f009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mTotalDuration:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0f0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 101
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mProgressbarUpdateHandler:Landroid/os/Handler;

    .line 104
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    if-eqz v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 108
    :cond_0
    if-nez v1, :cond_1

    .line 109
    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isEditSlideShowMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mAudioFileNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->initializeMediaPlayer()V

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isSingleSlideMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isPlayAllMode()Z

    move-result v0

    .line 124
    if-eqz v0, :cond_5

    .line 126
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->onPlayMedia()V

    .line 128
    :cond_5
    return-void
.end method

.method private initializeMediaPlayer()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/multipleviews/AudioViewFragment$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment$2;-><init>(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/multipleviews/AudioViewFragment$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment$3;-><init>(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 154
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->initializeProgressCallback()V

    .line 156
    :cond_0
    return-void
.end method

.method private initializeProgressCallback()V
    .locals 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 160
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mTotalDuration:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/mms/util/MediaPlayerUtils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mCurrentDuration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/util/MediaPlayerUtils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mAudioProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mAudioProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 164
    return-void
.end method

.method public static newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/AudioViewFragment;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-direct {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;-><init>()V

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iput-object p0, v0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    .line 74
    :cond_0
    return-object v0
.end method

.method private onPlaybackError()V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->showErrorMessage(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->stopAudio()V

    .line 206
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mAudioFileNameText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->setRetainInstance(Z)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    .line 87
    const v0, 0x7f04001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->initViews(Landroid/view/View;)V

    .line 89
    return-object v0
.end method

.method public onMenuUpdate(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isPlayAllMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    const/4 v0, 0x2

    const v1, 0x7f07038c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mPausedPosition:I

    if-eqz v0, :cond_2

    .line 288
    const/4 v0, 0x3

    const v1, 0x7f07038d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 290
    :cond_2
    const/4 v0, 0x1

    const v1, 0x7f0701af

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onPause()V

    .line 236
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->onPauseMedia()V

    .line 237
    return-void
.end method

.method public onPauseMedia()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mPausedPosition:I

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mIsPlaying:Z

    .line 261
    :cond_0
    return-void
.end method

.method public onPlayMedia()V
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPlay audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->startAudio()V

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onResume()V

    .line 242
    iget v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mPausedPosition:I

    if-lez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->onResumeMedia()V

    .line 246
    :cond_0
    return-void
.end method

.method public onResumeMedia()V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mIsPlaying:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mPausedPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mPausedPosition:I

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mIsPlaying:Z

    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mProgressbarUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mUpdateSeekbar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 272
    :cond_0
    return-void
.end method

.method public onStopMedia()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->initializeProgressCallback()V

    .line 278
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->cleanupMediaPlayer()V

    .line 280
    :cond_0
    return-void
.end method

.method public declared-synchronized startAudio()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 167
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mIsPlaying:Z

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->initializeMediaPlayer()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mProgressbarUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mUpdateSeekbar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mIsPlaying:Z

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 181
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudio()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mPausedPosition:I

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mIsPlaying:Z

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 190
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
