.class public Lcom/nuance/flext9_OEM/input/WriteThreadQueue$RecognizeQueueItem;
.super Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizeQueueItem"
.end annotation


# instance fields
.field public mStartWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 267
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$RecognizeQueueItem;->mStartWord:Ljava/lang/CharSequence;

    .line 268
    return-void
.end method
