.class public Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeAlphaSettings;
.super Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeAlphaSettings"
.end annotation


# instance fields
.field public mSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;)V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 299
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeAlphaSettings;->mSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    .line 300
    return-void
.end method
