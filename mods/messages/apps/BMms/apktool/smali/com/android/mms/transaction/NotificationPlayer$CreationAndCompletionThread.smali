.class final Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field public mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/mms/transaction/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$Command;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    .line 79
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 84
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer;->-set1(Lcom/android/mms/transaction/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    .line 85
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 90
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->stream:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 91
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 92
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-boolean v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 93
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->volume:F

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->volume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 94
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 95
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-boolean v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->looping:Z

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->stream:I

    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x1

    .line 98
    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 105
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 106
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 107
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v2}, Lcom/android/mms/transaction/NotificationPlayer;->-get3(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v2}, Lcom/android/mms/transaction/NotificationPlayer;->-get3(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v2, v1}, Lcom/android/mms/transaction/NotificationPlayer;->-set2(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v1, v0}, Lcom/android/mms/transaction/NotificationPlayer;->-set0(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 118
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 119
    return-void

    .line 101
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/mms/transaction/NotificationPlayer$Command;->stream:I

    const/4 v3, 0x0

    .line 102
    const/4 v4, 0x3

    .line 101
    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    :try_start_4
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v2}, Lcom/android/mms/transaction/NotificationPlayer;->-get4(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error loading sound for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
