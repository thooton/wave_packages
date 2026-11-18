.class public Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackActivity;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1635
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1636
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v10, 0x4

    .line 1640
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    iget-wide v4, v0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->albumid:J

    .line 1641
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    iget-wide v2, v0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->songid:J

    .line 1642
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1643
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get1(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get4(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1646
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get4(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1647
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get4(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1651
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1652
    const/4 v6, 0x0

    .line 1651
    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1653
    if-nez v0, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0, v2, v3, v8, v9}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1657
    :cond_1
    if-eqz v0, :cond_3

    .line 1658
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get4(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1659
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get4(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1660
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get4(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1664
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0, v4, v5}, Lcom/android/music/MediaPlaybackActivity;->-set0(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 1666
    :cond_2
    return-void

    :cond_3
    move-wide v4, v8

    .line 1662
    goto :goto_0
.end method
