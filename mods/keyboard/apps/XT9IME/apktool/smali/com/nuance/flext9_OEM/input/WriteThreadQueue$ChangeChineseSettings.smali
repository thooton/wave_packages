.class public Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeChineseSettings;
.super Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeChineseSettings"
.end annotation


# instance fields
.field public mSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;)V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 307
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeChineseSettings;->mSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    .line 308
    return-void
.end method
