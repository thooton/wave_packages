.class public Lcom/nuance/flext9_OEM/input/WriteThreadQueue$EndArcSequence;
.super Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndArcSequence"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 320
    return-void
.end method
