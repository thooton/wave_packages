.class Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;
.super Ljava/lang/Object;
.source "AudioViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/multipleviews/AudioViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get3(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mUpdateSeekbar"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get3(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 218
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v2}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get3(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    .line 220
    iget-object v4, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v4}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get5(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/android/mms/util/MediaPlayerUtils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v4, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v4}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get2(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/android/mms/util/MediaPlayerUtils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/util/MediaPlayerUtils;->getProgressPercentage(JJ)I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get1(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get3(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get4(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-get1(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
