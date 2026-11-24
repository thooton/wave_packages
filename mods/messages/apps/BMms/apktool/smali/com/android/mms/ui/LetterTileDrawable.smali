.class public Lcom/android/mms/ui/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTileDrawable.java"


# static fields
.field private static sColors:Landroid/content/res/TypedArray;

.field private static sDefaultColor:I

.field private static final sFirstChar:[C

.field private static sLetterToTileRatio:F

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sRect:Landroid/graphics/Rect;

.field private static sTileFontColor:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContactType:I

.field private mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mIsCircle:Z

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sFirstChar:[C

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 78
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    const-class v0, Lcom/android/mms/ui/LetterTileDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->TAG:Ljava/lang/String;

    .line 71
    iput v2, p0, Lcom/android/mms/ui/LetterTileDrawable;->mContactType:I

    .line 72
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mScale:F

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mOffset:F

    .line 75
    iput-boolean v3, p0, Lcom/android/mms/ui/LetterTileDrawable;->mIsCircle:Z

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 82
    iput-object p1, p0, Lcom/android/mms/ui/LetterTileDrawable;->mContext:Landroid/content/Context;

    .line 84
    sget-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 85
    const v0, 0x7f060017

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    .line 86
    const v0, 0x7f080031

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/LetterTileDrawable;->sDefaultColor:I

    .line 87
    const v0, 0x7f080030

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/LetterTileDrawable;->sTileFontColor:I

    .line 88
    const v0, 0x7f0b001e

    invoke-virtual {p2, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/mms/ui/LetterTileDrawable;->sLetterToTileRatio:F

    .line 89
    sget-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 90
    const v1, 0x7f07034f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    sget-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    sget-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mms/ui/LetterTileDrawable;->mIdentifier:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LetterTileDrawable;->pickColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    sget-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mms/ui/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/ui/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 137
    iget-boolean v4, p0, Lcom/android/mms/ui/LetterTileDrawable;->mIsCircle:Z

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sget-object v7, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/mms/ui/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/mms/ui/LetterTileDrawable;->isEnglishLetter(C)Z

    move-result v4

    .line 144
    if-eqz v4, :cond_0

    .line 147
    sget-object v4, Lcom/android/mms/ui/LetterTileDrawable;->sFirstChar:[C

    iget-object v5, p0, Lcom/android/mms/ui/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aput-char v5, v4, v2

    .line 150
    sget-object v4, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/mms/ui/LetterTileDrawable;->mScale:F

    sget v6, Lcom/android/mms/ui/LetterTileDrawable;->sLetterToTileRatio:F

    mul-float/2addr v5, v6

    int-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 152
    sget-object v1, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/mms/ui/LetterTileDrawable;->sFirstChar:[C

    sget-object v5, Lcom/android/mms/ui/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 153
    sget-object v1, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/mms/ui/LetterTileDrawable;->sTileFontColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    sget-object v1, Lcom/android/mms/ui/LetterTileDrawable;->sFirstChar:[C

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/mms/ui/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    sget-object v5, Lcom/android/mms/ui/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    .line 159
    sget-object v6, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 157
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 161
    :cond_0
    return-void

    .line 140
    :cond_1
    sget-object v4, Lcom/android/mms/ui/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static isEnglishLetter(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    const/16 v2, 0x41

    if-gt v2, p0, :cond_1

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x61

    if-gt v2, p0, :cond_2

    const/16 v2, 0x7a

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isEnglishLetterString(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/LetterTileDrawable;->isEnglishLetter(C)Z

    move-result v0

    return v0

    .line 185
    :cond_0
    return v0
.end method

.method private pickColor(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mContactType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 172
    :cond_0
    sget v0, Lcom/android/mms/ui/LetterTileDrawable;->sDefaultColor:I

    return v0

    .line 177
    :cond_1
    sget-object v0, Lcom/android/mms/ui/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    sget v1, Lcom/android/mms/ui/LetterTileDrawable;->sDefaultColor:I

    invoke-static {v0, v1, p1}, Lcom/android/mms/ui/WaveInboxUi;->pickTileColor(Landroid/content/res/TypedArray;ILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/ui/LetterTileDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LetterTileDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    .line 104
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mIdentifier:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LetterTileDrawable;->pickColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 195
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 200
    return-void
.end method

.method public setContactDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/mms/ui/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/android/mms/ui/LetterTileDrawable;->mIdentifier:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setContactType(I)V
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/android/mms/ui/LetterTileDrawable;->mContactType:I

    .line 241
    return-void
.end method

.method public setIsCircular(Z)V
    .locals 0

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/android/mms/ui/LetterTileDrawable;->mIsCircle:Z

    .line 245
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/android/mms/ui/LetterTileDrawable;->mScale:F

    .line 215
    return-void
.end method
