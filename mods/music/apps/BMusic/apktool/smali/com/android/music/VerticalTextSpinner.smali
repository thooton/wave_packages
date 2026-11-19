.class public Lcom/android/music/VerticalTextSpinner;
.super Landroid/view/View;
.source "VerticalTextSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/VerticalTextSpinner$OnChangedListener;
    }
.end annotation


# static fields
.field private static SCROLL_DISTANCE:I

.field private static TEXT1_Y:I

.field private static TEXT2_Y:I

.field private static TEXT3_Y:I

.field private static TEXT4_Y:I

.field private static TEXT5_Y:I

.field private static TEXT_MARGIN_RIGHT:I

.field private static TEXT_SIZE:I

.field private static TEXT_SPACING:I


# instance fields
.field private isDraggingSelector:Z

.field private final mBackgroundFocused:Landroid/graphics/drawable/Drawable;

.field private mCurrentSelectedPos:I

.field private mDelayBetweenAnimations:J

.field private mDistanceOfEachAnimation:I

.field private mDownY:I

.field private mIsAnimationRunning:Z

.field private mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

.field private mNumberOfAnimations:I

.field private mScrollInterval:J

.field private mScrollMode:I

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private final mSelectorDefaultY:I

.field private final mSelectorFocused:Landroid/graphics/drawable/Drawable;

.field private final mSelectorHeight:I

.field private final mSelectorMaxY:I

.field private final mSelectorMinY:I

.field private final mSelectorNormal:Landroid/graphics/drawable/Drawable;

.field private mSelectorY:I

.field private mStopAnimation:Z

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;

.field private mText3:Ljava/lang/String;

.field private mText4:Ljava/lang/String;

.field private mText5:Ljava/lang/String;

.field private mTextList:[Ljava/lang/String;

.field private final mTextPaintDark:Landroid/text/TextPaint;

.field private final mTextPaintLight:Landroid/text/TextPaint;

.field private mTotalAnimatedDistance:I

.field private mWrapAround:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/music/VerticalTextSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/music/VerticalTextSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v3, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 105
    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    .line 106
    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT_MARGIN_RIGHT:I

    .line 107
    const/high16 v1, 0x41b00000    # 22.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    .line 108
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    .line 109
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v0, v0, 0x0

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/music/VerticalTextSpinner;->TEXT1_Y:I

    .line 110
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v0, v0, 0x1

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    sput v0, Lcom/android/music/VerticalTextSpinner;->TEXT2_Y:I

    .line 111
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    .line 112
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v0, v0, 0x3

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/music/VerticalTextSpinner;->TEXT4_Y:I

    .line 113
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sput v0, Lcom/android/music/VerticalTextSpinner;->TEXT5_Y:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x7f020040

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    const v1, 0x7f020041

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    const v1, 0x7f020042

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    .line 122
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorHeight:I

    .line 123
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    .line 124
    iput v4, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMinY:I

    .line 125
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 126
    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorHeight:I

    .line 125
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    .line 128
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 129
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 131
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    .line 132
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 133
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    const v2, 0x1060003

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 136
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    .line 137
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 138
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    const v2, 0x1060005

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 141
    iput v4, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 142
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollInterval:J

    .line 143
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateAnimationValues()V

    .line 144
    return-void
.end method

.method private calculateAnimationValues()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 467
    iget-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollInterval:J

    long-to-int v0, v0

    sget v1, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    .line 468
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    if-ge v0, v2, :cond_0

    .line 469
    iput v2, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    .line 470
    sget v0, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    .line 471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    sget v0, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    .line 474
    iget-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollInterval:J

    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    goto :goto_0
.end method

.method private calculateTextPositions()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText1:Ljava/lang/String;

    .line 425
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText2:Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    .line 427
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText4:Ljava/lang/String;

    .line 428
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText5:Ljava/lang/String;

    .line 429
    return-void
.end method

.method private canScrollDown()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canScrollUp()Z
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p4, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 481
    const/high16 v0, 0x41200000    # 10.0f

    int-to-float v1, p3

    invoke-virtual {p1, p2, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 482
    return-void
.end method

.method private getNewIndex(I)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 440
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    add-int/2addr v0, p1

    .line 441
    if-gez v0, :cond_2

    .line 442
    iget-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    return v2

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 448
    iget-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 451
    :cond_3
    return v2
.end method

.method private getTextToDraw(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v0

    .line 433
    if-gez v0, :cond_0

    .line 434
    const-string/jumbo v0, ""

    return-object v0

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private scroll()V
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 459
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    .line 463
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->invalidate()V

    .line 464
    return-void
.end method


# virtual methods
.method public getCurrentSelectedPos()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 266
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 267
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->getWidth()I

    move-result v1

    .line 268
    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorHeight:I

    add-int/2addr v2, v3

    .line 271
    iget-object v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    iget-object v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 275
    iget-object v3, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 278
    return-void

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    .line 282
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 288
    add-int/lit8 v4, v0, 0xf

    .line 291
    iget-object v5, p0, Lcom/android/music/VerticalTextSpinner;->mText1:Ljava/lang/String;

    .line 292
    iget-object v6, p0, Lcom/android/music/VerticalTextSpinner;->mText2:Ljava/lang/String;

    .line 293
    iget-object v7, p0, Lcom/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    .line 294
    iget-object v8, p0, Lcom/android/music/VerticalTextSpinner;->mText4:Ljava/lang/String;

    .line 295
    iget-object v9, p0, Lcom/android/music/VerticalTextSpinner;->mText5:Ljava/lang/String;

    .line 296
    iget-object v10, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 303
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12, v1, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 304
    sget v4, Lcom/android/music/VerticalTextSpinner;->TEXT1_Y:I

    iget v11, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v4, v11

    invoke-direct {p0, p1, v5, v4, v10}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 306
    sget v4, Lcom/android/music/VerticalTextSpinner;->TEXT2_Y:I

    iget v5, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v4, v5

    invoke-direct {p0, p1, v6, v4, v10}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 308
    sget v4, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    iget v5, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v4, v5

    invoke-direct {p0, p1, v7, v4, v10}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 317
    add-int/lit8 v0, v0, 0xf

    .line 318
    add-int/lit8 v4, v2, -0xf

    .line 317
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0, v1, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 319
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT2_Y:I

    iget v4, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v0, v4

    invoke-direct {p0, p1, v6, v0, v3}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 321
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    iget v4, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v0, v4

    invoke-direct {p0, p1, v7, v0, v3}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 323
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT4_Y:I

    iget v4, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v0, v4

    invoke-direct {p0, p1, v8, v0, v3}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    add-int/lit8 v0, v2, -0xf

    .line 331
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->getMeasuredHeight()I

    move-result v2

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 338
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 339
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v7, v0, v10}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 341
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT4_Y:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v8, v0, v10}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 343
    sget v0, Lcom/android/music/VerticalTextSpinner;->TEXT5_Y:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v9, v0, v10}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 350
    :goto_0
    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    if-eqz v0, :cond_6

    .line 351
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    if-le v0, v1, :cond_c

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    .line 353
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 354
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 355
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v1

    .line 356
    if-ltz v1, :cond_1

    .line 357
    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 358
    iget-object v2, p0, Lcom/android/music/VerticalTextSpinner;->mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/music/VerticalTextSpinner;->mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

    .line 360
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    iget-object v4, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    .line 359
    invoke-interface {v2, p0, v0, v3, v4}, Lcom/android/music/VerticalTextSpinner$OnChangedListener;->onChanged(Lcom/android/music/VerticalTextSpinner;II[Ljava/lang/String;)V

    .line 363
    :cond_1
    if-ltz v1, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    xor-int/lit8 v0, v0, 0x1

    .line 363
    if-eqz v0, :cond_3

    .line 365
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 367
    :cond_3
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 383
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    if-eqz v0, :cond_5

    .line 384
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    .line 391
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 392
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 398
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 399
    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 400
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 411
    :cond_5
    :goto_2
    iget-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 412
    iget-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    invoke-virtual {p0, v0, v1}, Lcom/android/music/VerticalTextSpinner;->postInvalidateDelayed(J)V

    .line 417
    :cond_6
    :goto_3
    return-void

    .line 348
    :cond_7
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    goto/16 :goto_0

    .line 368
    :cond_8
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 369
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 370
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v1

    .line 371
    if-ltz v1, :cond_9

    .line 372
    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 373
    iget-object v2, p0, Lcom/android/music/VerticalTextSpinner;->mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

    if-eqz v2, :cond_9

    .line 374
    iget-object v2, p0, Lcom/android/music/VerticalTextSpinner;->mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

    .line 375
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    iget-object v4, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    .line 374
    invoke-interface {v2, p0, v0, v3, v4}, Lcom/android/music/VerticalTextSpinner$OnChangedListener;->onChanged(Lcom/android/music/VerticalTextSpinner;II[Ljava/lang/String;)V

    .line 378
    :cond_9
    if-ltz v1, :cond_a

    if-nez v1, :cond_b

    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    .line 379
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 381
    :cond_b
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateTextPositions()V

    goto :goto_1

    .line 405
    :cond_c
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 406
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    goto :goto_2

    .line 407
    :cond_d
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 408
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    goto :goto_2

    .line 414
    :cond_e
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->invalidate()V

    goto :goto_3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/music/VerticalTextSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/VerticalTextSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 209
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 180
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    .line 181
    iput-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 182
    return v1

    .line 183
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 185
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    .line 186
    iput-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 187
    return v1

    .line 189
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 218
    packed-switch v2, :pswitch_data_0

    .line 253
    :pswitch_0
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 254
    iput-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 255
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->invalidate()V

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 220
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->requestFocus()Z

    .line 221
    iput v3, p0, Lcom/android/music/VerticalTextSpinner;->mDownY:I

    .line 222
    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    if-lt v3, v2, :cond_1

    .line 223
    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    iget-object v4, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v2, v4

    if-gt v3, v2, :cond_1

    move v0, v1

    .line 222
    :cond_1
    iput-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->isDraggingSelector:Z

    goto :goto_0

    .line 227
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/music/VerticalTextSpinner;->isDraggingSelector:Z

    if-eqz v2, :cond_0

    .line 228
    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iget v4, p0, Lcom/android/music/VerticalTextSpinner;->mDownY:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 229
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMinY:I

    if-gt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMinY:I

    iput v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 231
    iput-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 232
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    if-eq v0, v5, :cond_0

    .line 233
    iput v5, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 234
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    goto :goto_0

    .line 236
    :cond_2
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    if-lt v2, v3, :cond_3

    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    iput v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 238
    iput-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 239
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    if-eq v0, v1, :cond_0

    .line 240
    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 241
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    goto :goto_0

    .line 244
    :cond_3
    iput v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 245
    iput-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 153
    return-void
.end method

.method public setScrollInterval(J)V
    .locals 1

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/android/music/VerticalTextSpinner;->mScrollInterval:J

    .line 163
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateAnimationValues()V

    .line 164
    return-void
.end method

.method public setSelectedPos(I)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 157
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 158
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->postInvalidate()V

    .line 159
    return-void
.end method

.method public setWrapAround(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    .line 168
    return-void
.end method
