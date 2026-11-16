.class public Lcom/android/mms/ui/SlideListItemView;
.super Landroid/widget/LinearLayout;
.source "SlideListItemView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;,
        Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;
    }
.end annotation


# static fields
.field private static final FILE_DIR:Ljava/lang/String;


# instance fields
.field private mAttachmentIcon:Landroid/widget/ImageView;

.field private mAttachmentName:Landroid/widget/TextView;

.field mImageLoadedCallback:Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;

.field private mImagePreview:Landroid/widget/ImageView;

.field private mImageUri:Landroid/net/Uri;

.field mPosition:I

.field private mTextPreview:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SlideListItemView;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideListItemView;->saveAttachment(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "/"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SlideListItemView;->FILE_DIR:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideListItemView;->mPosition:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideListItemView;->mPosition:I

    .line 92
    return-void
.end method

.method private createSaveFile(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 280
    const-string/jumbo v7, ""

    .line 282
    const/16 v0, 0x2e

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 283
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 301
    :goto_0
    const-string/jumbo v2, "^\\."

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/util/Utils;->getStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    const-string/jumbo v4, "/"

    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    const-string/jumbo v4, "."

    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/util/Utils;->getStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    const-string/jumbo v5, "/"

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    const-string/jumbo v5, "_"

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    const-string/jumbo v5, "."

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    const-string/jumbo v0, "ct"

    .line 290
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 296
    :goto_2
    if-eqz v1, :cond_1

    .line 297
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v1, v6

    goto/16 :goto_0

    :cond_2
    move-object v0, v7

    .line 289
    goto :goto_2

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    if-eqz v1, :cond_3

    .line 297
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_3
    throw v0

    .line 311
    :cond_4
    return-object v2

    :cond_5
    move-object v0, v7

    goto :goto_2
.end method

.method private saveAttachment(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 237
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_9

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideListItemView;->createSaveFile(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 239
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 241
    const-string/jumbo v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " failed!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    if-eqz v2, :cond_0

    .line 260
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    :cond_0
    return-object v3

    .line 261
    :catch_0
    move-exception v1

    .line 262
    const-string/jumbo v2, "Mms"

    const-string/jumbo v4, "Exception caught while closing input: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return-object v3

    .line 245
    :cond_1
    :try_start_3
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 246
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    const/16 v6, 0x2000

    :try_start_4
    new-array v6, v6, [B

    .line 249
    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 250
    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 254
    :catch_1
    move-exception v1

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    .line 255
    :goto_1
    :try_start_5
    const-string/jumbo v5, "Mms"

    const-string/jumbo v6, "Exception caught while save attachment: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 258
    if-eqz v4, :cond_2

    .line 260
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 266
    :cond_2
    if-eqz v2, :cond_3

    .line 268
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 256
    :cond_3
    return-object v3

    .line 252
    :cond_4
    :try_start_8
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v1

    .line 258
    :goto_2
    if-eqz v2, :cond_5

    .line 260
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 266
    :cond_5
    if-eqz v4, :cond_6

    .line 268
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 275
    :cond_6
    return-object v1

    .line 261
    :catch_2
    move-exception v1

    .line 262
    const-string/jumbo v2, "Mms"

    const-string/jumbo v4, "Exception caught while closing input: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return-object v3

    .line 269
    :catch_3
    move-exception v1

    .line 270
    const-string/jumbo v2, "Mms"

    const-string/jumbo v4, "Exception caught while closing output: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    return-object v3

    .line 261
    :catch_4
    move-exception v1

    .line 262
    const-string/jumbo v2, "Mms"

    const-string/jumbo v4, "Exception caught while closing input: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return-object v3

    .line 269
    :catch_5
    move-exception v1

    .line 270
    const-string/jumbo v2, "Mms"

    const-string/jumbo v4, "Exception caught while closing output: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    return-object v3

    .line 257
    :catchall_0
    move-exception v1

    move-object v4, v3

    move-object v2, v3

    .line 258
    :goto_3
    if-eqz v2, :cond_7

    .line 260
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 266
    :cond_7
    if-eqz v4, :cond_8

    .line 268
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 257
    :cond_8
    throw v1

    .line 261
    :catch_6
    move-exception v1

    .line 262
    const-string/jumbo v2, "Mms"

    const-string/jumbo v4, "Exception caught while closing input: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return-object v3

    .line 269
    :catch_7
    move-exception v1

    .line 270
    const-string/jumbo v2, "Mms"

    const-string/jumbo v4, "Exception caught while closing output: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    return-object v3

    .line 257
    :catchall_1
    move-exception v1

    move-object v4, v3

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v9, v2

    move-object v2, v4

    move-object v4, v9

    goto :goto_3

    .line 254
    :catch_8
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_1

    :catch_9
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_1

    :cond_9
    move-object v1, v3

    move-object v4, v3

    goto :goto_2
.end method


# virtual methods
.method public getContentText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f0f0104

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 98
    const v0, 0x7f0f0101

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f0f0103

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0f0102

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    .line 101
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public seekAudio(I)V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 112
    if-eqz p2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/MobilePaperShowActivity;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    new-instance v0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;-><init>(Lcom/android/mms/ui/SlideListItemView;Landroid/net/Uri;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    const v1, 0x7f02008d

    .line 129
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/MobilePaperShowActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    .line 137
    new-instance v1, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mImageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;-><init>(Lcom/android/mms/ui/SlideListItemView;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public setLayoutModel(I)V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 427
    const v0, 0x7f0f0100

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 432
    return-void

    .line 429
    :cond_0
    const v0, 0x7f0f0104

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/mms/ui/SlideListItemView;->mImageUri:Landroid/net/Uri;

    .line 316
    return-void
.end method

.method public setVcal(Lcom/android/mms/model/VcalModel;)V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 407
    if-eqz p3, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/MobilePaperShowActivity;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    if-eqz p2, :cond_2

    const-string/jumbo v0, "contacts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    xor-int/lit8 v4, v0, 0x1

    .line 415
    if-nez v4, :cond_0

    .line 416
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 419
    :cond_0
    new-instance v0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;-><init>(Lcom/android/mms/ui/SlideListItemView;Landroid/net/Uri;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_1
    return-void

    .line 414
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    if-eqz p1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/MobilePaperShowActivity;

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;-><init>(Lcom/android/mms/ui/SlideListItemView;Landroid/net/Uri;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 351
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setVideo: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method
