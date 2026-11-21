.class public Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;
.super Lcom/nuance/flext9_OEM/input/Stroke;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiStroke"
.end annotation


# static fields
.field private static final MAX_POINTER_INDICES:I = 0xb


# instance fields
.field private mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

.field private mPaths:[Landroid/graphics/Path;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Stroke;-><init>()V

    .line 115
    new-array v0, v2, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    .line 116
    new-array v0, v2, [Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    .line 119
    iput p1, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mStrokeWidth:I

    move v0, v1

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    aput-object v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    new-instance v2, Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    invoke-direct {v2}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;-><init>()V

    aput-object v2, v0, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_1
    return-void
.end method

.method private ensureMininumPath(Lcom/nuance/flext9_OEM/input/Stroke$Arc;Landroid/graphics/Path;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p1, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mStrokeWidth:I

    if-ge v1, v2, :cond_0

    move v1, v0

    .line 207
    :goto_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mStrokeWidth:I

    iget-object v2, p1, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 208
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    iget-object v2, p1, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    iget-object v3, p1, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->clearArcs()V

    .line 216
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->clearPaths()V

    .line 217
    return-void
.end method

.method public clearArcs()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->clear()V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method public clearPaths()V
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public getArcs()[Lcom/nuance/flext9_OEM/input/Stroke$Arc;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    return-object v0
.end method

.method public getPaths()[Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 134
    and-int/lit16 v2, v0, 0xff

    .line 135
    shr-int/lit8 v0, v0, 0x8

    .line 136
    invoke-static {p1, v0}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 148
    if-eqz v2, :cond_0

    .line 149
    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    .line 152
    :cond_0
    if-nez v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->clear()V

    .line 156
    :cond_1
    invoke-static {p1, v0}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    .line 157
    invoke-static {p1, v0}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    .line 159
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v2, v2, v3

    int-to-float v4, v1

    int-to-float v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1, v0}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->addPoint(II)V

    .line 202
    :cond_2
    :goto_0
    return-void

    .line 163
    :cond_3
    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    .line 165
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    move v2, v1

    .line 170
    :goto_1
    if-ge v2, v3, :cond_2

    .line 172
    invoke-static {p1, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    .line 175
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v5, v5, v0

    .line 176
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v6, v6, v0

    move v0, v1

    .line 184
    :goto_2
    if-ge v0, v4, :cond_4

    .line 185
    invoke-static {p1, v2, v0}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v7

    float-to-int v7, v7

    .line 186
    invoke-static {p1, v2, v0}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v8

    float-to-int v8, v8

    .line 187
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    invoke-virtual {v5, v7, v8}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->addPoint(II)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    :cond_4
    invoke-static {p1, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    .line 192
    invoke-static {p1, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    float-to-int v4, v4

    .line 193
    int-to-float v7, v0

    int-to-float v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    invoke-virtual {v5, v0, v4}, Lcom/nuance/flext9_OEM/input/Stroke$Arc;->addPoint(II)V

    .line 170
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 198
    :cond_5
    if-ne v2, v5, :cond_2

    .line 199
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->ensureMininumPath(Lcom/nuance/flext9_OEM/input/Stroke$Arc;Landroid/graphics/Path;)V

    .line 200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/Stroke$MultiStroke;->ensureMininumPath(Lcom/nuance/flext9_OEM/input/Stroke$Arc;Landroid/graphics/Path;)V

    goto :goto_0
.end method
