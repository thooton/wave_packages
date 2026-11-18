.class Lcom/android/music/MediaPlaybackActivity$10;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 514
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get12(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set5(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 518
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    goto :goto_0
.end method
