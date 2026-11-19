.class Lcom/android/music/MediaPlaybackActivity$Worker;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1670
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    .line 1681
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1682
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1683
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1684
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1685
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1687
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1688
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    .line 1692
    return-void

    .line 1684
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1709
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1699
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1700
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1701
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    .line 1702
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1704
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1705
    return-void

    .line 1699
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
