.class Lcom/android/music/MediaPlaybackService$3;
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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 469
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 473
    const-string/jumbo v0, "command"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIntentReceiver.onReceive "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    return-void

    .line 481
    :cond_0
    const-string/jumbo v0, "next"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v5}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 529
    :cond_2
    :goto_0
    return-void

    .line 483
    :cond_3
    const-string/jumbo v0, "previous"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 484
    const-string/jumbo v0, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 483
    if-eqz v0, :cond_5

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 486
    :cond_5
    const-string/jumbo v0, "togglepause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 487
    const-string/jumbo v0, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 486
    if-eqz v0, :cond_8

    .line 488
    :cond_6
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 489
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 490
    sput-boolean v4, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    goto :goto_0

    .line 492
    :cond_7
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 494
    :cond_8
    const-string/jumbo v0, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 495
    :cond_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 496
    sput-boolean v4, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    goto :goto_0

    .line 497
    :cond_a
    const-string/jumbo v0, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 498
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 499
    :cond_b
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 500
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 501
    sput-boolean v4, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 502
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 503
    :cond_c
    const-string/jumbo v0, "appwidgetupdate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 507
    const-string/jumbo v0, "appWidgetIds"

    .line 506
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->-get0(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->-get0(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1, v2, v0}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    goto/16 :goto_0

    .line 512
    :cond_d
    const-string/jumbo v0, "fastforward"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 513
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 514
    add-long/2addr v0, v6

    .line 515
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e

    .line 516
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v5}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 518
    :cond_e
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2, v0, v1}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 520
    :cond_f
    const-string/jumbo v0, "rewind"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 522
    sub-long/2addr v0, v6

    .line 523
    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_10

    .line 524
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto/16 :goto_0

    .line 526
    :cond_10
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2, v0, v1}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0
.end method
