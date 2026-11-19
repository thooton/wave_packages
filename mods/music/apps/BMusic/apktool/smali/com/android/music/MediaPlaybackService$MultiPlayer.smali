.class Lcom/android/music/MediaPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackService$MultiPlayer$1;,
        Lcom/android/music/MediaPlaybackService$MultiPlayer$2;
    }
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsComplete:Z

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method static synthetic -get0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsComplete:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2689
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2684
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2686
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2687
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsComplete:Z

    .line 2755
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2770
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2690
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2691
    const/4 v1, 0x1

    .line 2690
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2692
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 2808
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsComplete:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2726
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2749
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 2744
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2745
    return-void
.end method

.method public seek(J)J
    .locals 3

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2821
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2696
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 2697
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2698
    const-string/jumbo v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 2700
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2699
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2704
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2705
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2715
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2716
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2717
    new-instance v0, Landroid/content/Intent;

    .line 2718
    const-string/jumbo v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 2717
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2719
    const-string/jumbo v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2720
    const-string/jumbo v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2721
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2723
    return-void

    .line 2702
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2706
    :catch_0
    move-exception v0

    .line 2708
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2709
    return-void

    .line 2710
    :catch_1
    move-exception v0

    .line 2712
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2713
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2752
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 2753
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2826
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2730
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "MultiPlayer.start called"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2731
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2732
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 2736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2737
    return-void
.end method
