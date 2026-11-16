.class public Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "ReplacementDrawableSpan.java"


# static fields
.field protected static final sWorkPaint:Landroid/graphics/Paint;


# instance fields
.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field private mExtraMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->sWorkPaint:Landroid/graphics/Paint;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    return-void
.end method

.method private setupFontMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 29
    sget-object v0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->sWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    sget-object v0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->sWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 33
    invoke-virtual {p0}, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 34
    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    .line 35
    iget v2, p0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->mExtraMargin:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 36
    iget v3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 37
    iget v3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 39
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 40
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p8, v0

    add-int/2addr v0, p6

    div-int/lit8 v0, v0, 0x2

    .line 55
    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    return-void
.end method

.method protected getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p5, p1}, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->setupFontMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public setExtraMargin(F)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->mExtraMargin:F

    .line 26
    return-void
.end method
