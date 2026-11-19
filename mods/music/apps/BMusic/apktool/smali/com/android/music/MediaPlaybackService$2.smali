.class Lcom/android/music/MediaPlaybackService$2;
.super Landroid/os/Handler;
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
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 352
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 353
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v5, 0x5

    const-wide/16 v6, 0xa

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMediaplayerHandler.handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 358
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 466
    :goto_0
    :pswitch_0
    return-void

    .line 360
    :pswitch_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    .line 361
    iget v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 366
    :goto_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get9(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 364
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    goto :goto_1

    .line 369
    :pswitch_2
    iget v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    .line 370
    iget v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 375
    :goto_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get9(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 373
    :cond_1
    iput v2, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    goto :goto_2

    .line 378
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get4(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v3}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-wrap6(Lcom/android/music/MediaPlaybackService;)V

    goto :goto_0

    .line 389
    :pswitch_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v1, "com.android.music.playbackcomplete"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap4(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get10(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 391
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 392
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v4}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 398
    :pswitch_5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get14(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 404
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    :pswitch_7
    goto/16 :goto_0

    .line 412
    :pswitch_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 406
    :pswitch_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    sput-boolean v4, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 416
    :pswitch_a
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 417
    sput-boolean v3, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 418
    sput v3, Lcom/android/music/MediaPlaybackService;->mPauseReason:I

    .line 420
    :cond_5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 423
    :pswitch_b
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_6

    .line 425
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get3(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->-get2(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    .line 426
    const/4 v2, 0x3

    .line 425
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 428
    return-void

    .line 430
    :cond_6
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    .line 431
    sget-boolean v0, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 430
    if-eqz v0, :cond_7

    .line 432
    sget v0, Lcom/android/music/MediaPlaybackService;->mPauseReason:I

    if-ne v3, v0, :cond_7

    .line 433
    sput-boolean v4, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    .line 435
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get9(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 436
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 438
    :cond_7
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 447
    :pswitch_c
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    .line 449
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get9(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 450
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 451
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 453
    :cond_8
    iget v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    .line 454
    iget v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    .line 455
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 459
    :goto_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get9(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 457
    :cond_9
    iput v2, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    goto :goto_3

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 404
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
