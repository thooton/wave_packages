.class Lcom/android/music/MediaPlaybackService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 2755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2757
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0, v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-set0(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 2758
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap11(Lcom/android/music/MediaPlaybackService;Z)V

    .line 2764
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get14(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2765
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2766
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2767
    return-void
.end method
