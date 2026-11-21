.class public Lcom/nuance/flext9_OEM/input/WriteThreadQueue;
.super Ljava/lang/Object;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeAlphaSettings;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeChineseSettings;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$EndArcSequence;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$KeyQueueItem;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$RecognizeQueueItem;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$StartArcSequence;,
        Lcom/nuance/flext9_OEM/input/WriteThreadQueue$TextQueueItem;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mOnWriteThreadQueueConsumer:Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mOnWriteThreadQueueConsumer:Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    .line 26
    return-void
.end method


# virtual methods
.method addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 128
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addChar(C)V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;

    invoke-direct {v2, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;-><init>(C)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 102
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addKey(I)V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$KeyQueueItem;

    invoke-direct {v2, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$KeyQueueItem;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 115
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addRecognize(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$RecognizeQueueItem;

    invoke-direct {v2, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$RecognizeQueueItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 141
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addSettings(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;)V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeAlphaSettings;

    invoke-direct {v2, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeAlphaSettings;-><init>(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 154
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addSettings(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;)V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeChineseSettings;

    invoke-direct {v2, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeChineseSettings;-><init>(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 167
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addText(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$TextQueueItem;

    invoke-direct {v2, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$TextQueueItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearQueue()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 76
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method endArcSequence()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$EndArcSequence;

    invoke-direct {v2}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$EndArcSequence;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 193
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method declared-synchronized start()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mOnWriteThreadQueueConsumer:Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    invoke-direct {v2, v3, v4}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 43
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startArcSequence()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$StartArcSequence;

    invoke-direct {v2}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$StartArcSequence;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 180
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 50
    :try_start_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 51
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :goto_0
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 63
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
