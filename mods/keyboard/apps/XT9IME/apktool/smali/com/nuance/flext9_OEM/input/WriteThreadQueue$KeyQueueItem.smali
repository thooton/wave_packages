.class public Lcom/nuance/flext9_OEM/input/WriteThreadQueue$KeyQueueItem;
.super Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyQueueItem"
.end annotation


# instance fields
.field public mKey:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 283
    iput p1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$KeyQueueItem;->mKey:I

    .line 284
    return-void
.end method
