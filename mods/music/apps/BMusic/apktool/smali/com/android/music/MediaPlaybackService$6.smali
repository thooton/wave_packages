.class Lcom/android/music/MediaPlaybackService$6;
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
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 1072
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1076
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get12(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get11(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    .line 1076
    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 1076
    if-eqz v0, :cond_1

    .line 1079
    :cond_0
    return-void

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap8(Lcom/android/music/MediaPlaybackService;Z)V

    .line 1085
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->-get13(Lcom/android/music/MediaPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->stopSelf(I)V

    .line 1086
    return-void
.end method
