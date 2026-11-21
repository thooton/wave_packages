.class public abstract Lcom/nuance/flext9_OEM/input/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/Stroke$Arc;,
        Lcom/nuance/flext9_OEM/input/Stroke$DrawPath;,
        Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;,
        Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;
    }
.end annotation


# instance fields
.field protected mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/nuance/flext9_OEM/input/Stroke;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/nuance/flext9_OEM/input/AndroidVersionWrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 20
    new-instance v0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;-><init>(I)V

    .line 26
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearArcs()V
.end method

.method public abstract clearPaths()V
.end method

.method public abstract getArcs()[Lcom/nuance/flext9_OEM/input/Stroke$Arc;
.end method

.method public abstract getPaths()[Landroid/graphics/Path;
.end method

.method public abstract handleMotionEvent(Landroid/view/MotionEvent;)V
.end method
