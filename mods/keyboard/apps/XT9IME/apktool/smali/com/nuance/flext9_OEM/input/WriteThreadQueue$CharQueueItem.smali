.class public Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;
.super Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharQueueItem"
.end annotation


# instance fields
.field public mChar:C


# direct methods
.method public constructor <init>(C)V
    .locals 2

    .prologue
    .line 274
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 275
    iput-char p1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 276
    return-void
.end method
