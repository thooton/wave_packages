.class Lcom/android/music/MediaPlaybackService$4;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 532
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 537
    const-string/jumbo v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const-string/jumbo v0, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 540
    const-string/jumbo v1, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 542
    if-ne v0, v3, :cond_1

    .line 543
    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    .line 542
    if-eqz v2, :cond_1

    .line 544
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 545
    sput v3, Lcom/android/music/MediaPlaybackService;->mPauseReason:I

    .line 546
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    if-ne v0, v5, :cond_0

    .line 548
    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 547
    if-eqz v0, :cond_0

    .line 549
    sget-boolean v0, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 547
    if-eqz v0, :cond_0

    .line 550
    sget v0, Lcom/android/music/MediaPlaybackService;->mPauseReason:I

    if-ne v3, v0, :cond_0

    .line 551
    sput-boolean v4, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 552
    const/4 v0, 0x0

    .line 553
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->-get9(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 554
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0
.end method
