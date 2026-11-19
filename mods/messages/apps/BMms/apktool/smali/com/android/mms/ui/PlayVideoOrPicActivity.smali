.class public Lcom/android/mms/ui/PlayVideoOrPicActivity;
.super Landroid/app/Activity;
.source "PlayVideoOrPicActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;,
        Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;
    }
.end annotation


# instance fields
.field private mCurPlayTime:Landroid/widget/TextView;

.field private mFullScreen:Z

.field private mHasVideoPaused:Z

.field private mImage:Landroid/widget/ImageView;

.field private mPath:Ljava/lang/String;

.field private mPlayVideoButton:Landroid/widget/ImageView;

.field private mProgressBar:Lcom/android/mms/ui/VideoProgressBar;

.field private mRootView:Landroid/view/View;

.field private mType:I

.field private mUpdateThread:Ljava/lang/Runnable;

.field private mVideo:Landroid/widget/VideoView;

.field private mVideoControllerLayout:Landroid/view/ViewGroup;

.field private mVideoDuration:Landroid/widget/TextView;

.field private mVideoPosition:I


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mCurPlayTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mFullScreen:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Lcom/android/mms/ui/VideoProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mProgressBar:Lcom/android/mms/ui/VideoProgressBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/PlayVideoOrPicActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mType:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mUpdateThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideoDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/PlayVideoOrPicActivity;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->saveContent(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->pauseVideo()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->playVideo()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->resetVideo()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/PlayVideoOrPicActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->setImmersiveMode(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->showPauseButton()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->showPlayButton()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;)V

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mUpdateThread:Ljava/lang/Runnable;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mFullScreen:Z

    .line 69
    return-void
.end method

.method private copy(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    const/16 v2, 0x1f40

    :try_start_2
    new-array v2, v2, [B

    .line 393
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 394
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 396
    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 397
    :goto_1
    :try_start_3
    const-string/jumbo v3, "Mms"

    const-string/jumbo v4, "Error while copying content "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 400
    if-eqz v2, :cond_0

    .line 402
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 407
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 409
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 398
    :cond_1
    :goto_3
    return v5

    .line 400
    :cond_2
    if-eqz v0, :cond_3

    .line 402
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 407
    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 409
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 415
    :cond_4
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 403
    :catch_1
    move-exception v0

    .line 404
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 410
    :catch_2
    move-exception v0

    .line 411
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "IOException caught while closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 403
    :catch_3
    move-exception v0

    .line 404
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 410
    :catch_4
    move-exception v0

    .line 411
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "IOException caught while closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 399
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 400
    :goto_6
    if-eqz v2, :cond_5

    .line 402
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 407
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 409
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 399
    :cond_6
    :goto_8
    throw v0

    .line 403
    :catch_5
    move-exception v2

    .line 404
    const-string/jumbo v3, "Mms"

    const-string/jumbo v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 410
    :catch_6
    move-exception v1

    .line 411
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 399
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 396
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_8
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_1
.end method

.method private declared-synchronized createNewFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 367
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 371
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 377
    return-object v1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    :try_start_2
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error creating new file in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideButton()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    .line 239
    return-void
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mHasVideoPaused:Z

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideoPosition:I

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 251
    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->showPlayButton()V

    .line 252
    return-void
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mUpdateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->post(Ljava/lang/Runnable;)Z

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 244
    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->hideButton()V

    .line 245
    return-void
.end method

.method private resetVideo()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mUpdateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mProgressBar:Lcom/android/mms/ui/VideoProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VideoProgressBar;->updateLocation(F)V

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mCurPlayTime:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->showPlayButton()V

    .line 260
    return-void
.end method

.method private saveContent(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 350
    const-string/jumbo v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error creating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-object v1

    .line 356
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->createNewFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 362
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->copy(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "Error while create new file "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    return-object v1

    :cond_1
    move-object v0, v1

    .line 362
    goto :goto_0
.end method

.method private setImmersiveMode(Z)V
    .locals 2

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    const/16 v0, 0xf06

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 212
    iput-boolean p1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mFullScreen:Z

    .line 213
    return-void

    .line 206
    :cond_0
    const/16 v0, 0x700

    goto :goto_0
.end method

.method private showPauseButton()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    .line 234
    return-void
.end method

.method private showPlayButton()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    .line 228
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mFullScreen:Z

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->setImmersiveMode(Z)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->setContentView(I)V

    .line 104
    const v0, 0x7f0f00f8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mRootView:Landroid/view/View;

    .line 105
    const v0, 0x7f0f00fa

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mImage:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/PlayVideoOrPicActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity$1;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f0f00f9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    .line 118
    const v0, 0x7f0f00fc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideoControllerLayout:Landroid/view/ViewGroup;

    .line 119
    const v0, 0x7f0f00fe

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/VideoProgressBar;

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mProgressBar:Lcom/android/mms/ui/VideoProgressBar;

    .line 120
    const v0, 0x7f0f00ff

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideoDuration:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0f00fd

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mCurPlayTime:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mCurPlayTime:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v0, 0x7f0f00fb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/PlayVideoOrPicActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity$2;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mType:I

    .line 140
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPath:Ljava/lang/String;

    .line 141
    iget v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->finish()V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideoControllerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPlayVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideoControllerLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/mms/ui/PlayVideoOrPicActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity$3;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/mms/ui/PlayVideoOrPicActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity$4;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/mms/ui/PlayVideoOrPicActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity$5;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 285
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 312
    :goto_0
    return v4

    .line 293
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->onBackPressed()V

    goto :goto_0

    .line 296
    :sswitch_1
    new-instance v0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;)V

    new-array v1, v4, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 299
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    iget v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 301
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :goto_1
    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    :cond_0
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f019d -> :sswitch_2
        0x7f0f019e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 265
    iget v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->pauseVideo()V

    .line 268
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    iget v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mHasVideoPaused:Z

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mHasVideoPaused:Z

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideo:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 193
    :cond_0
    return-void
.end method
