.class public Lcom/android/mms/ui/VideoProgressBar;
.super Landroid/view/View;
.source "VideoProgressBar.java"


# instance fields
.field private lineHDp:I

.field private lineHPx:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mPosPaint:Landroid/graphics/Paint;

.field private position:F

.field private radiusDp:I

.field private radiusPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/VideoProgressBar;->radiusDp:I

    .line 46
    iget v0, p0, Lcom/android/mms/ui/VideoProgressBar;->radiusDp:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/VideoProgressBar;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/VideoProgressBar;->radiusPx:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/VideoProgressBar;->lineHDp:I

    .line 48
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/android/mms/ui/VideoProgressBar;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/VideoProgressBar;->lineHPx:I

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VideoProgressBar;->mPosPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VideoProgressBar;->mBgPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/VideoProgressBar;->mPosPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/mms/ui/VideoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/VideoProgressBar;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/mms/ui/VideoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/VideoProgressBar;->mPosPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/VideoProgressBar;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    return-void
.end method

.method private dip2px(F)I
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 81
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v10, 0x41200000    # 10.0f

    .line 68
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoProgressBar;->getWidth()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoProgressBar;->getHeight()I

    move-result v1

    .line 70
    iget v2, p0, Lcom/android/mms/ui/VideoProgressBar;->radiusPx:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/mms/ui/VideoProgressBar;->position:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/mms/ui/VideoProgressBar;->radiusPx:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 71
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoProgressBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 72
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/mms/ui/VideoProgressBar;->radiusPx:I

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    iget v7, p0, Lcom/android/mms/ui/VideoProgressBar;->lineHPx:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 73
    int-to-float v7, v0

    div-int/lit8 v8, v1, 0x2

    iget v9, p0, Lcom/android/mms/ui/VideoProgressBar;->lineHPx:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 72
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 73
    iget-object v5, p0, Lcom/android/mms/ui/VideoProgressBar;->mBgPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, v4, v10, v10, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 74
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/mms/ui/VideoProgressBar;->radiusPx:I

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    iget v7, p0, Lcom/android/mms/ui/VideoProgressBar;->lineHPx:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 75
    int-to-float v0, v0

    iget v7, p0, Lcom/android/mms/ui/VideoProgressBar;->position:F

    mul-float/2addr v0, v7

    div-int/lit8 v1, v1, 0x2

    iget v7, p0, Lcom/android/mms/ui/VideoProgressBar;->lineHPx:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    .line 74
    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/VideoProgressBar;->mPosPaint:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p1, v4, v10, v10, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 76
    int-to-float v0, v2

    int-to-float v1, v3

    iget v2, p0, Lcom/android/mms/ui/VideoProgressBar;->radiusPx:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mms/ui/VideoProgressBar;->mPosPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method public updateLocation(F)V
    .locals 4

    .prologue
    .line 61
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    return-void

    .line 62
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/VideoProgressBar;->position:F

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoProgressBar;->postInvalidate()V

    .line 64
    return-void
.end method
