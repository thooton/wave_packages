.class final Lcom/android/providers/contacts/PhotoProcessor;
.super Ljava/lang/Object;
.source "PhotoProcessor.java"


# static fields
.field private static final WHITE_PAINT:Landroid/graphics/Paint;

.field private static sMaxDisplayPhotoDim:I

.field private static sMaxThumbnailDim:I


# instance fields
.field private mDisplayPhoto:Landroid/graphics/Bitmap;

.field private final mForceCropToSquare:Z

.field private final mMaxDisplayPhotoDim:I

.field private final mMaxThumbnailPhotoDim:I

.field private final mOriginal:Landroid/graphics/Bitmap;

.field private mThumbnailPhoto:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/PhotoProcessor;->WHITE_PAINT:Landroid/graphics/Paint;

    .line 54
    sget-object v0, Lcom/android/providers/contacts/PhotoProcessor;->WHITE_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-static {}, Lcom/android/providers/contacts/util/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v0

    const-wide/32 v2, 0x28000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 65
    :goto_0
    const-string/jumbo v1, "contacts.thumbnail_size"

    const/16 v2, 0x60

    .line 64
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/providers/contacts/PhotoProcessor;->sMaxThumbnailDim:I

    .line 68
    const-string/jumbo v1, "contacts.display_photo_size"

    .line 69
    if-eqz v0, :cond_1

    .line 70
    const/16 v0, 0x2d0

    .line 67
    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/providers/contacts/PhotoProcessor;->sMaxDisplayPhotoDim:I

    .line 37
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_1
    const/16 v0, 0x1e0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 152
    iput p2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    .line 153
    iput p3, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    .line 154
    iput-boolean p4, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    .line 155
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoProcessor;->process()V

    .line 156
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 136
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 173
    return-void
.end method

.method private getCompressedBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 254
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 255
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 257
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 259
    if-nez v1, :cond_0

    .line 260
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to compress image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    return-object v0
.end method

.method public static getMaxDisplayPhotoSize()I
    .locals 1

    .prologue
    .line 326
    sget v0, Lcom/android/providers/contacts/PhotoProcessor;->sMaxDisplayPhotoDim:I

    return v0
.end method

.method public static getMaxThumbnailSize()I
    .locals 1

    .prologue
    .line 318
    sget v0, Lcom/android/providers/contacts/PhotoProcessor;->sMaxThumbnailDim:I

    return v0
.end method

.method static getNormalizedBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    .line 207
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 208
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 211
    if-eqz p2, :cond_2

    if-eq v3, v4, :cond_2

    .line 213
    if-le v4, v3, :cond_3

    .line 214
    sub-int v0, v4, v3

    div-int/lit8 v0, v0, 0x2

    move v6, v0

    move v7, v2

    move v8, v3

    move v9, v3

    .line 222
    :goto_0
    int-to-float v0, p1

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 224
    cmpg-float v2, v0, v10

    if-ltz v2, :cond_0

    if-eqz v7, :cond_4

    .line 225
    :cond_0
    int-to-float v2, v9

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 226
    int-to-float v3, v8

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 227
    if-lez v2, :cond_1

    if-gtz v0, :cond_5

    .line 228
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid bitmap dimensions"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v6, v2

    move v7, v2

    move v8, v4

    move v9, v3

    .line 211
    goto :goto_0

    .line 217
    :cond_3
    sub-int v0, v3, v4

    div-int/lit8 v0, v0, 0x2

    move v6, v2

    move v7, v0

    move v8, v4

    move v9, v4

    .line 218
    goto :goto_0

    .line 224
    :cond_4
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    .line 245
    return-object p0

    .line 231
    :cond_5
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 230
    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 232
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    if-eqz v5, :cond_6

    .line 235
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    sget-object v5, Lcom/android/providers/contacts/PhotoProcessor;->WHITE_PAINT:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 238
    :cond_6
    new-instance v2, Landroid/graphics/Rect;

    .line 239
    add-int v3, v7, v9

    add-int v4, v6, v8

    .line 238
    invoke-direct {v2, v7, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 243
    return-object v10
.end method

.method private process()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid image file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    iget-boolean v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/PhotoProcessor;->getNormalizedBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    iget-boolean v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/PhotoProcessor;->getNormalizedBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    .line 185
    return-void
.end method


# virtual methods
.method public getDisplayPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayPhotoBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    const/16 v1, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxThumbnailPhotoDim()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    return v0
.end method

.method public getThumbnailPhotoBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 295
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    .line 296
    if-eqz v0, :cond_3

    const/16 v0, 0x5a

    .line 295
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 294
    goto :goto_0

    :cond_2
    move v0, v1

    .line 292
    goto :goto_0

    .line 296
    :cond_3
    const/16 v0, 0x5f

    goto :goto_1
.end method
