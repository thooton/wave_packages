.class Lcom/android/music/MediaPlaybackActivity$16;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1501
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1504
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1505
    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap12(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1509
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap6(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1510
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->-wrap3(Lcom/android/music/MediaPlaybackActivity;J)V

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    const-string/jumbo v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1512
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap6(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_0

    .line 1513
    :cond_2
    const-string/jumbo v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1514
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set5(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 1515
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get12(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-wrap0(Lcom/android/music/MediaPlaybackActivity;Z)J

    .line 1516
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap6(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_0

    .line 1517
    :cond_3
    const-string/jumbo v1, "com.android.music.shuffle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1518
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap8(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_0

    .line 1519
    :cond_4
    const-string/jumbo v1, "com.android.music.repeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap7(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_0
.end method
