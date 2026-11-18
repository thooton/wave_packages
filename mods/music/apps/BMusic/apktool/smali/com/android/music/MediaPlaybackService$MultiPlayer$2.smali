.class Lcom/android/music/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 2770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2772
    packed-switch p2, :pswitch_data_0

    .line 2788
    const-string/jumbo v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get10(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 2790
    const-string/jumbo v0, "MultiPlayer"

    const-string/jumbo v1, "Error:Repeat track-sendMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2792
    return v4

    .line 2774
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-set1(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 2775
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get1(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2781
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-set2(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2782
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get1(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2784
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    .line 2785
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    .line 2784
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2786
    return v4

    .line 2794
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-set1(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 2795
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get1(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2796
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-set2(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2797
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 2798
    const v1, 0x7f070054

    .line 2797
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2800
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v3}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 2803
    return v3

    .line 2772
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
