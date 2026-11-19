.class public Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailTask"
.end annotation


# instance fields
.field private final mIsVideo:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/util/ThumbnailManager;


# direct methods
.method static synthetic -get0(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/mms/util/ThumbnailManager;Landroid/net/Uri;Z)V
    .locals 1

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    if-nez p2, :cond_0

    .line 246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 248
    :cond_0
    iput-object p2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    .line 249
    iput-boolean p3, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    .line 250
    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 458
    if-nez p1, :cond_0

    return-void

    .line 460
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 392
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 393
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 394
    const/16 v2, 0x5a

    .line 393
    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 395
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private computeSampleSizeLarger(III)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 517
    div-int v0, p1, p3

    div-int v1, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 518
    if-gt v0, v2, :cond_0

    return v2

    .line 520
    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 521
    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->prevPowerOf2(I)I

    move-result v0

    .line 520
    :goto_0
    return v0

    .line 522
    :cond_1
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method private ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 444
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p1

    .line 445
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    return-object v0
.end method

.method private getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-static {v0}, Lcom/android/mms/util/ThumbnailManager;->-wrap0(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/ImageCacheService;

    move-result-object v2

    .line 326
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v3, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-static {v3}, Lcom/android/mms/util/ThumbnailManager;->-get0(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 327
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 329
    if-nez v3, :cond_0

    .line 330
    return-object v1

    .line 336
    :cond_0
    invoke-static {v3}, Lcom/android/mms/TempFileProvider;->isTempFile(Ljava/lang/String;)Z

    move-result v4

    .line 339
    if-nez v4, :cond_6

    .line 340
    invoke-virtual {v2, v3, v5}, Lcom/android/mms/util/ImageCacheService;->getImageData(Ljava/lang/String;I)Lcom/android/mms/util/ImageCacheService$ImageData;

    move-result-object v0

    .line 343
    :goto_0
    if-eqz v0, :cond_2

    .line 344
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 346
    iget-object v2, v0, Lcom/android/mms/util/ImageCacheService$ImageData;->mData:[B

    .line 347
    iget v4, v0, Lcom/android/mms/util/ImageCacheService$ImageData;->mOffset:I

    iget-object v5, v0, Lcom/android/mms/util/ImageCacheService$ImageData;->mData:[B

    array-length v5, v5

    iget v0, v0, Lcom/android/mms/util/ImageCacheService$ImageData;->mOffset:I

    sub-int v0, v5, v0

    .line 346
    invoke-direct {p0, v2, v4, v0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->requestDecode([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    if-nez v0, :cond_1

    .line 349
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decode cached failed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    return-object v0

    .line 354
    :cond_2
    if-eqz p1, :cond_3

    .line 355
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getVideoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 359
    :goto_1
    if-nez v0, :cond_4

    .line 360
    const-string/jumbo v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decode orig failed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-object v1

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v5}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->onDecodeOriginal(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 364
    :cond_4
    const/16 v1, 0x280

    invoke-direct {p0, v0, v1, v5}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    if-nez v4, :cond_5

    .line 367
    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 368
    invoke-virtual {v2, v3, v5, v1}, Lcom/android/mms/util/ImageCacheService;->putImageData(Ljava/lang/String;I[B)V

    .line 370
    :cond_5
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 434
    if-nez v0, :cond_0

    .line 435
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 437
    :cond_0
    return-object v0
.end method

.method private getVideoBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 375
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-static {v0}, Lcom/android/mms/util/ThumbnailManager;->-get0(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 378
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 383
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v1

    goto :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 383
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 388
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 384
    :catch_2
    move-exception v0

    goto :goto_1

    .line 381
    :catchall_0
    move-exception v0

    .line 383
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 381
    :goto_2
    throw v0

    .line 384
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private onDecodeOriginal(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 451
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 452
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 454
    const/16 v1, 0x280

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->requestDecode(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private prevPowerOf2(I)I
    .locals 1

    .prologue
    .line 529
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 530
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method private requestDecode(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 467
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 471
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-static {v0}, Lcom/android/mms/util/ThumbnailManager;->-get0(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 477
    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 478
    invoke-static {v0, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 479
    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->closeSilently(Ljava/io/Closeable;)V

    .line 483
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-static {v0}, Lcom/android/mms/util/ThumbnailManager;->-get0(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 490
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 489
    invoke-direct {p0, v1, v2, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->computeSampleSizeLarger(III)I

    move-result v1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 491
    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 493
    invoke-static {v0, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 494
    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->closeSilently(Ljava/io/Closeable;)V

    .line 496
    if-nez v1, :cond_1

    .line 497
    return-object v4

    .line 472
    :catch_0
    move-exception v0

    .line 473
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t open uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    return-object v4

    .line 484
    :catch_1
    move-exception v0

    .line 485
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t open uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    return-object v4

    .line 502
    :cond_1
    invoke-direct {p0, v1, p3, v5}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 503
    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-static {v1}, Lcom/android/mms/util/ThumbnailManager;->-get0(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/ui/UriImage;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 507
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 508
    invoke-static {v0, v1}, Lcom/android/mms/ui/UriImage;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 510
    :cond_2
    return-object v0
.end method

.method private requestDecode([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 400
    if-nez p4, :cond_0

    .line 401
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 404
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object p1

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 425
    invoke-virtual {v1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 426
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 427
    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 428
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 429
    :cond_1
    return-object v0
.end method

.method private resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 412
    int-to-float v2, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, p2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 411
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 413
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    return-object p1

    .line 414
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 539
    int-to-float v2, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, p2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 538
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 540
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return-object p1

    .line 541
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 267
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z

    invoke-direct {p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->getBitmap(Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v1, v1, Lcom/android/mms/util/ThumbnailManager;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;-><init>(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t load bitmap for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 268
    :catch_1
    move-exception v0

    .line 269
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t load bitmap for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method
