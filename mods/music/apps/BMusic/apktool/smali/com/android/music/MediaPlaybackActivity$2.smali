.class Lcom/android/music/MediaPlaybackActivity$2;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .prologue
    .line 385
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get3(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 393
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->-get6(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 394
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set3(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 395
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get2(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->-set4(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get9(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get12(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set5(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get3(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 407
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get12(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-wrap0(Lcom/android/music/MediaPlaybackActivity;Z)J

    .line 408
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->-set4(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 412
    :cond_4
    return-void

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->-set3(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 380
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set1(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 381
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get3(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 417
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->-get6(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 418
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set3(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 419
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get2(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->-set4(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get9(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get12(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0, v6}, Lcom/android/music/MediaPlaybackActivity;->-set5(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->-set4(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 432
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0, v6}, Lcom/android/music/MediaPlaybackActivity;->-set1(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 433
    return-void

    .line 424
    :catch_0
    move-exception v0

    goto :goto_0
.end method
