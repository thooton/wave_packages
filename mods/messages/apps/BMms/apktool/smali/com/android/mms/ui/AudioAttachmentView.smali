.class public Lcom/android/mms/ui/AudioAttachmentView;
.super Landroid/widget/LinearLayout;
.source "AudioAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mAlbumView:Landroid/widget/TextView;

.field private mArtistView:Landroid/widget/TextView;

.field private mAudioUri:Landroid/net/Uri;

.field private mErrorMsgView:Landroid/widget/TextView;

.field private mIsPlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNameView:Landroid/widget/TextView;

.field private final mRes:Landroid/content/res/Resources;


# direct methods
.method static synthetic -wrap0(Lcom/android/mms/ui/AudioAttachmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/AudioAttachmentView;->onPlaybackError()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    .line 63
    return-void
.end method

.method private cleanupMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iput-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 88
    :cond_0
    return-void

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    iput-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 84
    throw v0
.end method

.method private onPlaybackError()V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f07019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->showErrorMessage(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V

    .line 77
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0f000f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    .line 71
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekAudio(I)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iput-object p1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    const-string/jumbo v0, "album"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    const-string/jumbo v0, "artist"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public setVcal(Lcom/android/mms/model/VcalModel;)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public declared-synchronized startAudio()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/AudioAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AudioAttachmentView$1;-><init>(Lcom/android/mms/ui/AudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/AudioAttachmentView$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AudioAttachmentView$2;-><init>(Lcom/android/mms/ui/AudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 111
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public declared-synchronized stopAudio()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/AudioAttachmentView;->cleanupMediaPlayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 172
    return-void

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    .line 169
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method
