.class Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;
.super Ljava/lang/Object;
.source "WriteThreadQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueConsumer"
.end annotation


# instance fields
.field private final mOnWriteThreadQueueConsumer:Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;",
            ">;",
            "Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;->mOnWriteThreadQueueConsumer:Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    .line 200
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 201
    return-void
.end method

.method private consume(Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;->mOnWriteThreadQueueConsumer:Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;->mOnWriteThreadQueueConsumer:Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;->consume(Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;)V

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;

    .line 210
    iget v1, v0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;->mType:I

    if-nez v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 221
    :goto_1
    return-void

    .line 215
    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueConsumer;->consume(Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
