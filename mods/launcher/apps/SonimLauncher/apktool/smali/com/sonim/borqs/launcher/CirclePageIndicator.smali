.class public Lcom/sonim/borqs/launcher/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/CirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mLastMotionX:F

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 73
    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 64
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mLastMotionX:F

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mActivePointerId:I

    .line 78
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f07000e

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 86
    const v2, 0x7f07000d

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 88
    const/high16 v3, 0x7f090000

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 90
    const v4, 0x7f07000f

    .line 89
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 92
    const v5, 0x7f0a0001

    .line 91
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 94
    const/high16 v6, 0x7f0a0000

    .line 93
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 96
    const v7, 0x7f080001

    .line 95
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 98
    const v8, 0x7f080002

    .line 97
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 102
    sget-object v8, Lcom/sonim/borqs/launcher/R$styleable;->CirclePageIndicator:[I

    .line 101
    invoke-virtual {p1, p2, v8, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 104
    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCentered:Z

    .line 106
    iput v3, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mOrientation:I

    .line 107
    iget-object v3, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v3, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 109
    const/4 v7, 0x3

    .line 108
    invoke-virtual {v8, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 113
    const/4 v3, 0x6

    .line 112
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 116
    const/4 v3, 0x7

    .line 115
    invoke-virtual {v8, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 121
    const/4 v3, 0x2

    .line 120
    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    const/4 v1, 0x4

    invoke-virtual {v8, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    .line 125
    const/4 v1, 0x5

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mSnap:Z

    .line 126
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mTouchSlop:I

    .line 136
    return-void
.end method

.method private measureLong(I)I
    .locals 6

    .prologue
    .line 378
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 381
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 395
    :cond_1
    :goto_0
    return v0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 387
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 388
    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    mul-float/2addr v4, v5

    .line 387
    add-float/2addr v3, v4

    .line 388
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    mul-float/2addr v0, v4

    .line 387
    add-float/2addr v0, v3

    .line 388
    const/high16 v3, 0x3f800000    # 1.0f

    .line 387
    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 391
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 392
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 4

    .prologue
    .line 407
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 408
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 410
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 422
    :goto_0
    return v0

    .line 415
    :cond_0
    iget v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 418
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 419
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    iget-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 227
    if-nez v6, :cond_1

    .line 228
    return-void

    .line 231
    :cond_1
    iget v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCurrentPage:I

    if-lt v0, v6, :cond_2

    .line 232
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->setCurrentItem(I)V

    .line 233
    return-void

    .line 240
    :cond_2
    iget v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_7

    .line 241
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 242
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 243
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 244
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 252
    :goto_0
    iget v4, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v4

    .line 253
    int-to-float v0, v0

    iget v4, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    add-float/2addr v4, v0

    .line 254
    int-to-float v0, v2

    iget v8, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    add-float/2addr v0, v8

    .line 255
    iget-boolean v8, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCentered:Z

    if-eqz v8, :cond_3

    .line 256
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    .line 257
    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v9

    .line 256
    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 263
    :cond_3
    iget v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    .line 264
    iget-object v2, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 265
    iget-object v2, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v9

    sub-float/2addr v1, v2

    .line 269
    :cond_4
    :goto_1
    if-ge v5, v6, :cond_9

    .line 270
    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    .line 271
    iget v3, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mOrientation:I

    if-nez v3, :cond_8

    move v3, v2

    move v2, v4

    .line 279
    :goto_2
    iget-object v8, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_5

    .line 280
    iget-object v8, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    :cond_5
    iget v8, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_6

    .line 285
    iget v8, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    iget-object v9, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 269
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 246
    :cond_7
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 247
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 248
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 249
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_8
    move v3, v4

    .line 276
    goto :goto_2

    .line 290
    :cond_9
    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mSnap:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mSnapPage:I

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 291
    iget-boolean v2, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mSnap:Z

    if-nez v2, :cond_a

    .line 292
    iget v2, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPageOffset:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 294
    :cond_a
    iget v2, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mOrientation:I

    if-nez v2, :cond_c

    .line 295
    add-float/2addr v0, v1

    .line 301
    :goto_4
    iget v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mRadius:F

    iget-object v2, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 302
    return-void

    .line 290
    :cond_b
    iget v1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCurrentPage:I

    goto :goto_3

    .line 299
    :cond_c
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 360
    iget v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 361
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->measureLong(I)I

    move-result v0

    .line 362
    invoke-direct {p0, p2}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->measureShort(I)I

    move-result v1

    .line 361
    invoke-virtual {p0, v0, v1}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->measureShort(I)I

    move-result v0

    .line 365
    invoke-direct {p0, p2}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->measureLong(I)I

    move-result v1

    .line 364
    invoke-virtual {p0, v0, v1}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 336
    iput p1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mScrollState:I

    .line 337
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCurrentPage:I

    .line 342
    iput p2, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mPageOffset:F

    .line 343
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->invalidate()V

    .line 344
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 348
    :cond_0
    iput p1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCurrentPage:I

    .line 349
    iput p1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mSnapPage:I

    .line 350
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->invalidate()V

    .line 352
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 427
    check-cast p1, Lcom/sonim/borqs/launcher/CirclePageIndicator$SavedState;

    .line 428
    invoke-virtual {p1}, Lcom/sonim/borqs/launcher/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 429
    iget v0, p1, Lcom/sonim/borqs/launcher/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCurrentPage:I

    .line 430
    iget v0, p1, Lcom/sonim/borqs/launcher/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mSnapPage:I

    .line 431
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->requestLayout()V

    .line 432
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 437
    new-instance v1, Lcom/sonim/borqs/launcher/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/sonim/borqs/launcher/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 438
    iget v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/sonim/borqs/launcher/CirclePageIndicator$SavedState;->currentPage:I

    .line 439
    return-object v1
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 327
    iput p1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mCurrentPage:I

    .line 328
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->invalidate()V

    .line 329
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 306
    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 311
    const-string/jumbo v1, "ViewPager does not have adapter instance."

    .line 310
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 314
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->invalidate()V

    .line 315
    return-void
.end method
