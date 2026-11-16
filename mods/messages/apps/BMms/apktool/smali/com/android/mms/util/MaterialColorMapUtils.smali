.class public Lcom/android/mms/util/MaterialColorMapUtils;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;
    }
.end annotation


# instance fields
.field private final sPrimaryColors:Landroid/content/res/TypedArray;

.field private final sSecondaryColors:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x7f060017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    .line 49
    const v0, 0x7f060018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    .line 50
    return-void
.end method

.method public static getCircularBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    const v1, 0x1050006

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 279
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 278
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 280
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 282
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 283
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 284
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 285
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 286
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 287
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 288
    return-object v1
.end method

.method public static getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;
    .locals 3

    .prologue
    .line 149
    const v0, 0x7f08002e

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 151
    const v1, 0x7f08002f

    .line 150
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 152
    new-instance v2, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {v2, v0, v1}, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v2
.end method

.method public static getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    if-gtz p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 253
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 254
    :goto_0
    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    invoke-virtual {v1, v3, v3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    return-object v0

    .line 253
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 197
    new-instance v3, Lcom/android/mms/ui/LetterTileDrawable;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/LetterTileDrawable;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 201
    if-eqz p1, :cond_5

    .line 202
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNameForAvatar()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getLookup()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 211
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    invoke-virtual {v3, v1, v0}, Lcom/android/mms/ui/LetterTileDrawable;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/LetterTileDrawable;->getColor()I

    move-result v0

    .line 222
    if-eqz p1, :cond_2

    .line 223
    invoke-virtual {p1, v0}, Lcom/android/mms/data/Contact;->setContactColor(I)V

    .line 225
    :cond_2
    invoke-virtual {v3, v5}, Lcom/android/mms/ui/LetterTileDrawable;->setContactType(I)V

    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/LetterTileDrawable;->setScale(F)V

    .line 227
    invoke-virtual {v3, v5}, Lcom/android/mms/ui/LetterTileDrawable;->setIsCircular(Z)V

    .line 228
    return-object v3

    .line 215
    :cond_3
    invoke-virtual {v3, v2, v0}, Lcom/android/mms/ui/LetterTileDrawable;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {v3, v1, v1}, Lcom/android/mms/ui/LetterTileDrawable;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method public static hue(I)F
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 161
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 162
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 163
    and-int/lit16 v3, p0, 0xff

    .line 165
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 170
    if-ne v4, v5, :cond_0

    .line 192
    :goto_0
    return v0

    .line 173
    :cond_0
    sub-int v5, v4, v5

    int-to-float v5, v5

    .line 174
    sub-int v6, v4, v1

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 175
    sub-int v7, v4, v2

    int-to-float v7, v7

    div-float/2addr v7, v5

    .line 176
    sub-int v3, v4, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 178
    if-ne v1, v4, :cond_1

    .line 179
    sub-float v1, v3, v7

    .line 186
    :goto_1
    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    .line 187
    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    .line 188
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    goto :goto_0

    .line 180
    :cond_1
    if-ne v2, v4, :cond_2

    .line 181
    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v1, v6

    sub-float/2addr v1, v3

    goto :goto_1

    .line 183
    :cond_2
    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v1, v7

    sub-float/2addr v1, v6

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static toConformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 232
    if-nez p0, :cond_0

    .line 233
    return-object v4

    .line 236
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 237
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 238
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 239
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    invoke-virtual {v3, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {v3, p1, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    return-object v2
.end method

.method public static vectobitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 267
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 268
    :goto_0
    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    invoke-virtual {p0, v2, v2, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    return-object v0

    .line 267
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public calculatePrimaryAndSecondaryColor(I)Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 124
    const-string/jumbo v0, "calculatePrimaryAndSecondaryColor"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Lcom/android/mms/util/MaterialColorMapUtils;->hue(I)F

    move-result v5

    .line 127
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v1

    move v3, v0

    move v0, v1

    .line 129
    :goto_0
    iget-object v4, p0, Lcom/android/mms/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/mms/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 131
    invoke-static {v4}, Lcom/android/mms/util/MaterialColorMapUtils;->hue(I)F

    move-result v4

    .line 135
    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 136
    cmpg-float v6, v4, v3

    if-gez v6, :cond_0

    move v2, v0

    move v3, v4

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 143
    new-instance v0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v3, p0, Lcom/android/mms/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 144
    iget-object v4, p0, Lcom/android/mms/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 143
    invoke-direct {v0, v3, v1}, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v0
.end method
