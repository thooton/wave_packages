.class Lcom/android/music/MediaPlaybackService$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 309
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    if-ne p1, v2, :cond_4

    .line 313
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 314
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 316
    if-ltz v0, :cond_1

    .line 317
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get11(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v2

    .line 317
    :goto_0
    invoke-static {v3, v0}, Lcom/android/music/MediaPlaybackService;->-set3(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 319
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 334
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 318
    goto :goto_0

    :cond_3
    move v0, v1

    .line 317
    goto :goto_0

    .line 321
    :cond_4
    if-ne p1, v4, :cond_7

    .line 322
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->-get11(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 323
    :cond_5
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    move v1, v2

    .line 322
    :cond_6
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-set3(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 324
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_1

    .line 326
    :cond_7
    if-nez p1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get11(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-wrap10(Lcom/android/music/MediaPlaybackService;)V

    .line 331
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-set3(Lcom/android/music/MediaPlaybackService;Z)Z

    goto :goto_1
.end method
