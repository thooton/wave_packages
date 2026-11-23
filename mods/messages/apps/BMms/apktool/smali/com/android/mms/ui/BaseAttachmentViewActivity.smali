.class public abstract Lcom/android/mms/ui/BaseAttachmentViewActivity;
.super Landroid/app/Activity;
.source "BaseAttachmentViewActivity.java"

# interfaces
.implements Lcom/android/mms/ui/multipleviews/IAttachmentSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mNoSpace:Z


# instance fields
.field public mActualNumberOfSlides:I

.field private mCurrentMediaPosition:I

.field private mEditSlideShowMode:Z

.field public mMediaWithTextModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaWithTextModel;",
            ">;"
        }
    .end annotation
.end field

.field public mNumberOfSlidesLoaded:I

.field private mPlayAllMode:Z

.field public mSelectedAttachmentContainer:Landroid/widget/LinearLayout;

.field private mSingleSlideMode:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/BaseAttachmentViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->markAsReadIfNeed()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mNoSpace:Z

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mSingleSlideMode:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mPlayAllMode:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mEditSlideShowMode:Z

    .line 90
    iput v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mCurrentMediaPosition:I

    .line 69
    return-void
.end method

.method private copyMedia()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 355
    const/4 v1, 0x1

    .line 357
    iget-object v2, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 358
    return v0

    :cond_0
    move v2, v1

    move v1, v0

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->copyPart(Lcom/android/mms/model/MediaWithTextModel;)Z

    move-result v0

    and-int/2addr v2, v0

    .line 361
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 365
    :cond_1
    return v2
.end method

.method private copyPart(Lcom/android/mms/model/MediaWithTextModel;)Z
    .locals 15

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 369
    sput-boolean v11, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mNoSpace:Z

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v5

    .line 371
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 372
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-static {v1}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v7

    .line 374
    if-eqz v7, :cond_f

    .line 375
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 378
    :goto_0
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 378
    if-eqz v1, :cond_0

    .line 380
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 378
    if-eqz v1, :cond_0

    .line 381
    const-string/jumbo v1, "text/x-vCard"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 378
    if-eqz v1, :cond_0

    .line 382
    const-string/jumbo v1, "text/x-vCalendar"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 378
    if-eqz v1, :cond_0

    .line 383
    const-string/jumbo v1, "application/ogg"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 378
    if-eqz v1, :cond_0

    .line 384
    return v12

    .line 392
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 393
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_e

    .line 394
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 396
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 397
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/mms/util/Utils;->getStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 403
    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 402
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 403
    const-string/jumbo v8, "/"

    .line 402
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 406
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ne v9, v13, :cond_3

    .line 407
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 412
    :goto_1
    if-eqz v7, :cond_1

    .line 413
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/mms/drm/DrmUtils;->getConvertExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 416
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 417
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 418
    const-string/jumbo v5, "^\\."

    const-string/jumbo v7, ""

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 421
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 424
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 426
    sget-object v1, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " failed!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 451
    if-eqz v2, :cond_2

    .line 453
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 427
    :cond_2
    return v11

    .line 409
    :cond_3
    add-int/lit8 v6, v9, 0x1

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 410
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    goto/16 :goto_1

    .line 454
    :catch_0
    move-exception v1

    .line 456
    sget-object v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return v11

    .line 430
    :cond_4
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 432
    const/16 v4, 0x1f40

    :try_start_5
    new-array v4, v4, [B

    .line 434
    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v13, :cond_8

    .line 435
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 443
    :catch_1
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    .line 445
    :goto_4
    :try_start_6
    sget-object v3, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IOException caught while opening or reading stream"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ENOSPC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 447
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mNoSpace:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 451
    :cond_5
    if-eqz v4, :cond_6

    .line 453
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 460
    :cond_6
    if-eqz v2, :cond_7

    .line 462
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 449
    :cond_7
    return v11

    .line 440
    :cond_8
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 441
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 440
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 451
    :goto_5
    if-eqz v2, :cond_9

    .line 453
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 460
    :cond_9
    if-eqz v3, :cond_a

    .line 462
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 470
    :cond_a
    return v12

    .line 454
    :catch_2
    move-exception v1

    .line 456
    sget-object v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return v11

    .line 463
    :catch_3
    move-exception v1

    .line 465
    sget-object v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    return v11

    .line 454
    :catch_4
    move-exception v1

    .line 456
    sget-object v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return v11

    .line 463
    :catch_5
    move-exception v1

    .line 465
    sget-object v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    return v11

    .line 450
    :catchall_0
    move-exception v1

    move-object v2, v4

    .line 451
    :goto_6
    if-eqz v2, :cond_b

    .line 453
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 460
    :cond_b
    if-eqz v4, :cond_c

    .line 462
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 450
    :cond_c
    throw v1

    .line 454
    :catch_6
    move-exception v1

    .line 456
    sget-object v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return v11

    .line 463
    :catch_7
    move-exception v1

    .line 465
    sget-object v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    return v11

    .line 450
    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v3

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v14, v2

    move-object v2, v4

    move-object v4, v14

    goto :goto_6

    .line 443
    :catch_8
    move-exception v1

    move-object v2, v4

    goto/16 :goto_4

    :catch_9
    move-exception v1

    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_4

    :cond_d
    move-object v3, v5

    goto/16 :goto_2

    :cond_e
    move-object v3, v4

    goto :goto_5

    :cond_f
    move-object v3, v1

    goto/16 :goto_0
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 474
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-object v1
.end method

.method private markAsReadIfNeed()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "unread"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 102
    if-eqz v1, :cond_0

    .line 103
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 104
    const-string/jumbo v0, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string/jumbo v0, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    const-wide/16 v0, -0x2

    .line 109
    invoke-static {p0, v0, v1, v6}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 113
    :cond_0
    return-void
.end method

.method private overrideContainer(Lcom/android/mms/model/MediaWithTextModel;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0f0157

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-static {p1}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/ImageViewFragment;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 167
    :cond_1
    return-void

    .line 132
    :cond_2
    const-string/jumbo v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {p1}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/ImageViewFragment;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 132
    :cond_3
    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    invoke-static {p1}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 132
    :cond_4
    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    invoke-static {p1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 132
    :cond_5
    const-string/jumbo v3, "ref"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 154
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/x-vCard"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 155
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string/jumbo v2, "text/x-vCalendar"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 154
    if-eqz v1, :cond_0

    .line 158
    :cond_6
    invoke-static {p1}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 163
    :cond_7
    sget-object v1, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "default attachment type case"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveAllAttachment()V
    .locals 2

    .prologue
    # FEAT(imessage): iMessage attachments are saved full-size from the server.
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/ui/WaveIMessageSave;->saveAll(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :wave_save_all_stock

    return-void

    :wave_save_all_stock
    .line 328
    invoke-direct {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->copyMedia()Z

    move-result v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    const v0, 0x7f07038f

    .line 335
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 336
    return-void

    .line 332
    :cond_0
    sget-boolean v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mNoSpace:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070110

    goto :goto_0

    .line 333
    :cond_1
    const v0, 0x7f07010f

    goto :goto_0
.end method

.method private saveAttachment()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget v1, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mCurrentMediaPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    # FEAT(imessage): an iMessage attachment is saved full-size from the server.
    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/WaveIMessageSave;->savePart(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :wave_save_part_stock

    return-void

    :wave_save_part_stock
    invoke-direct {p0, v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->copyPart(Lcom/android/mms/model/MediaWithTextModel;)Z

    move-result v0

    .line 341
    if-eqz v0, :cond_0

    .line 342
    const v0, 0x7f07010e

    .line 347
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    return-void

    .line 344
    :cond_0
    sget-boolean v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mNoSpace:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070110

    goto :goto_0

    .line 345
    :cond_1
    const v0, 0x7f07010f

    goto :goto_0
.end method


# virtual methods
.method public getIAttachmentSelection()Lcom/android/mms/ui/multipleviews/IAttachmentSelection;
    .locals 0

    .prologue
    .line 253
    return-object p0
.end method

.method public isEditSlideShowMode()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mEditSlideShowMode:Z

    return v0
.end method

.method public isPlayAllMode()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mPlayAllMode:Z

    return v0
.end method

.method public isSingleSlideMode()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mSingleSlideMode:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onDataUpdate(Lcom/android/mms/model/SlideModel;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    iget v2, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mActualNumberOfSlides:I

    iget v3, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mNumberOfSlidesLoaded:I

    if-le v2, v3, :cond_2

    .line 224
    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onDataUpdate(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 230
    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    .line 231
    sget-object v3, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attachment prepareSlideData MediaModel contentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 232
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 234
    sget-object v3, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Attachment prepareSlideData  adding MediaWithTextModel "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v3, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mActualNumberOfSlides:I

    iget v4, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mNumberOfSlidesLoaded:I

    if-le v3, v4, :cond_5

    .line 237
    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onDataUpdate(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    .line 229
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_5
    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onLoadContainerView(I)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    .line 118
    invoke-direct {p0, v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->overrideContainer(Lcom/android/mms/model/MediaWithTextModel;)V

    .line 119
    return-void
.end method

.method public onLoadContainerView(Lcom/android/mms/model/MediaWithTextModel;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->overrideContainer(Lcom/android/mms/model/MediaWithTextModel;)V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const v1, 0x7f0f0157

    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 321
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 293
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onPlayAllMenuItemSelect()V

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/AttachmentPlayAllActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 299
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->saveAttachment()V

    goto :goto_0

    .line 302
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->saveAllAttachment()V

    goto :goto_0

    .line 305
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->playMediaInFullView()V

    .line 306
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/BaseViewFragment;

    .line 308
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onPlayMedia()V

    goto :goto_0

    .line 311
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/BaseViewFragment;

    .line 313
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onPauseMedia()V

    goto :goto_0

    .line 316
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/BaseViewFragment;

    .line 318
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onResumeMedia()V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPlayAllMenuItemSelect()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public onPlayNextSlide()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 271
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 272
    const v1, 0x7f0f0157

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/BaseViewFragment;

    .line 273
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onMenuUpdate(Landroid/view/Menu;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 278
    const/4 v0, 0x4

    const v1, 0x7f07038b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 280
    :cond_1
    const/4 v0, 0x6

    const v1, 0x7f07010d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 282
    const/4 v0, 0x7

    const v1, 0x7f07038a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 285
    :cond_2
    return v3
.end method

.method public playMediaInFullView()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public setEditSlideShowMode(Z)V
    .locals 0

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mEditSlideShowMode:Z

    .line 496
    return-void
.end method

.method public setInitialSlideSize(I)V
    .locals 3

    .prologue
    .line 248
    sget-object v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attachment setSlideShowSize size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput p1, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mActualNumberOfSlides:I

    .line 250
    return-void
.end method

.method public setPlayAllMode(Z)V
    .locals 0

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity;->mPlayAllMode:Z

    .line 262
    return-void
.end method
