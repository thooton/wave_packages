.class Lcom/android/music/AudioPreview$ProgressRefresher;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressRefresher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get8(Lcom/android/music/AudioPreview;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get2(Lcom/android/music/AudioPreview;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v1}, Lcom/android/music/AudioPreview;->-get2(Lcom/android/music/AudioPreview;)I

    move-result v1

    div-int/2addr v0, v1

    .line 380
    iget-object v0, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get7(Lcom/android/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v1}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get5(Lcom/android/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get5(Lcom/android/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/music/AudioPreview$ProgressRefresher;

    iget-object v2, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {v1, v2}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    iget-object v0, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-wrap0(Lcom/android/music/AudioPreview;)V

    .line 385
    return-void
.end method
