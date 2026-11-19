.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# instance fields
.field private mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 65
    const-string/jumbo v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 60
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;

    .line 66
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 72
    const-string/jumbo v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 60
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;

    .line 74
    invoke-direct {p0, p4}, Lcom/android/mms/model/ImageModel;->decodeImageBounds(Landroid/net/Uri;)V

    .line 75
    return-void
.end method

.method private createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 148
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 149
    iget-object v6, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    const v4, 0x19000

    move v2, p1

    move v3, p1

    move-object v5, p2

    .line 148
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/UriImage;->getResizedImageData(IIIIILandroid/net/Uri;Landroid/content/Context;)[B

    move-result-object v0

    .line 153
    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private decodeImageBounds(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 98
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 99
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 104
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 80
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "Type of media is unknown."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mSrc:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 86
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 94
    return-void
.end method


# virtual methods
.method public cancelThumbnailLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    invoke-interface {v0}, Lcom/android/mms/util/ItemLoadedFuture;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 139
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelThumbnailLoading for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mms/util/ItemLoadedFuture;->cancel(Landroid/net/Uri;)V

    .line 144
    :cond_1
    iput-object v3, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 145
    return-void
.end method

.method protected checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 158
    if-nez v0, :cond_0

    .line 160
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/model/ImageModel;->createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mFullSizeBitmapCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iput-boolean v3, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 116
    return-void

    .line 111
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/ImageModel;->mFill:S

    if-eq v0, v3, :cond_0

    .line 112
    iput-boolean v2, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    goto :goto_0
.end method

.method public loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 134
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method
