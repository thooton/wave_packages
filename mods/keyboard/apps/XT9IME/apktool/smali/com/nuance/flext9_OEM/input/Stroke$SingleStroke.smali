.class public Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;
.super Lcom/nuance/flext9_OEM/input/Stroke;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleStroke"
.end annotation


# instance fields
.field private mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

.field private mPaths:[Landroid/graphics/Path;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Stroke;-><init>()V

    .line 46
    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    .line 47
    new-array v0, v1, [Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    .line 50
    iput p1, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mStrokeWidth:I

    .line 51
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    aput-object v1, v0, v2

    .line 52
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    new-instance v1, Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    invoke-direct {v1}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;-><init>()V

    aput-object v1, v0, v2

    .line 53
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->clearArcs()V

    .line 86
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->clearPaths()V

    .line 87
    return-void
.end method

.method public clearArcs()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 92
    return-void
.end method

.method public clearPaths()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->clear()V

    .line 97
    return-void
.end method

.method public getArcs()[Lcom/nuance/flext9_OEM/input/Stroke$Arc;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    return-object v0
.end method

.method public getPaths()[Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 62
    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 64
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->clear()V

    .line 65
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v0, v0, v1

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->addPoint(II)V

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    move v0, v1

    .line 70
    :goto_1
    if-ge v0, v4, :cond_1

    .line 71
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v5, v5, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v5, v5, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->addPoint(II)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v0, v0, v1

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->addPoint(II)V

    goto :goto_0

    .line 78
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
