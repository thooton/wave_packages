.class public Lcom/android/mms/util/ThumbnailManager;
.super Lcom/android/mms/util/BackgroundLoaderManager;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ThumbnailManager$ImageLoaded;,
        Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;
    }
.end annotation


# static fields
.field private static mEmptyImageBitmap:Landroid/graphics/Bitmap;

.field private static mEmptyVideoBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImageCacheService:Lcom/android/mms/util/ImageCacheService;

.field private final mThumbnailCache:Lcom/android/mms/util/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/SimpleCache",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get2()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyVideoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/SimpleCache;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/ImageCacheService;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/android/mms/util/SimpleCache;

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/SimpleCache;-><init>(IIFZ)V

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    .line 88
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    const v1, 0x7f02008d

    .line 90
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyImageBitmap:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x7f02008f

    .line 93
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyVideoBitmap:Landroid/graphics/Bitmap;

    .line 95
    return-void
.end method

.method private declared-synchronized getImageCacheService()Lcom/android/mms/util/ImageCacheService;
    .locals 2

    .prologue
    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/android/mms/util/ImageCacheService;

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/util/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 131
    if-eqz v0, :cond_3

    move v1, v2

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/android/mms/util/ThumbnailManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 133
    if-nez v1, :cond_4

    xor-int/lit8 v4, v5, 0x1

    .line 134
    :goto_1
    if-eqz p3, :cond_5

    .line 136
    :goto_2
    const-string/jumbo v3, "Mms"

    const/4 v6, 0x3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    const-string/jumbo v3, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getThumbnail mThumbnailCache.get for uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " thumbnail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 138
    const-string/jumbo v7, " callback: "

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 138
    const-string/jumbo v7, " thumbnailExists: "

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    const-string/jumbo v7, " taskExists: "

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 140
    const-string/jumbo v6, " newTaskRequired: "

    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 141
    const-string/jumbo v6, " callbackRequired: "

    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    if-eqz v1, :cond_6

    .line 145
    if-eqz v2, :cond_2

    .line 146
    new-instance v1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    invoke-direct {v1, v0, p2}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 147
    invoke-interface {p3, v1, v8}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 149
    :cond_2
    new-instance v0, Lcom/android/mms/util/NullItemLoadedFuture;

    invoke-direct {v0}, Lcom/android/mms/util/NullItemLoadedFuture;-><init>()V

    return-object v0

    :cond_3
    move v1, v3

    .line 131
    goto/16 :goto_0

    :cond_4
    move v4, v3

    .line 133
    goto :goto_1

    :cond_5
    move v2, v3

    .line 134
    goto :goto_2

    .line 152
    :cond_6
    if-eqz v2, :cond_7

    .line 153
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/util/ThumbnailManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    .line 156
    :cond_7
    if-eqz v4, :cond_8

    .line 157
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;-><init>(Lcom/android/mms/util/ThumbnailManager;Landroid/net/Uri;Z)V

    .line 159
    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    :cond_8
    new-instance v0, Lcom/android/mms/util/ThumbnailManager$1;

    invoke-direct {v0, p0, p3}, Lcom/android/mms/util/ThumbnailManager$1;-><init>(Lcom/android/mms/util/ThumbnailManager;Lcom/android/mms/util/ItemLoadedCallback;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/mms/util/BackgroundLoaderManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;->cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 185
    :try_start_0
    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->clear()V

    .line 187
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0}, Lcom/android/mms/util/SimpleCache;->clear()V

    .line 188
    invoke-virtual {p0}, Lcom/android/mms/util/ThumbnailManager;->clearBackingStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 189
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBackingStore()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/CacheManager;->clear(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 203
    return-void

    .line 198
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ImageCacheService;->clear()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic clearCallback()V
    .locals 0

    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->clearCallback()V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string/jumbo v0, "Mms"

    return-object v0
.end method

.method public getThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    return-object v0
.end method

.method public getVideoThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onLowMemory()V
    .locals 0

    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->onLowMemory()V

    return-void
.end method

.method public removeBackingStoreThumbnail(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 215
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeBackingStoreThumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    if-eqz p1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 221
    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_1

    .line 223
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ImageCacheService;->clearImageData(Ljava/lang/String;I)V

    .line 226
    :cond_1
    return-void
.end method

.method public removeThumbnail(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 206
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeThumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SimpleCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    return-void
.end method
