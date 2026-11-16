.class public Lcom/android/mms/util/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ImageCacheService$ImageData;
    }
.end annotation


# static fields
.field private static sCrcTable:[J


# instance fields
.field private mCache:Lcom/android/mms/util/BlobCache;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    const/4 v3, 0x0

    .line 32
    new-array v0, v8, [J

    sput-object v0, Lcom/android/mms/util/ImageCacheService;->sCrcTable:[J

    move v6, v3

    .line 143
    :goto_0
    if-ge v6, v8, :cond_2

    .line 144
    int-to-long v0, v6

    move v2, v3

    move-wide v4, v0

    .line 145
    :goto_1
    const/16 v0, 0x8

    if-ge v2, v0, :cond_1

    .line 146
    long-to-int v0, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-wide v0, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    .line 147
    :goto_2
    const/4 v7, 0x1

    shr-long/2addr v4, v7

    xor-long/2addr v4, v0

    .line 145
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 146
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 149
    :cond_1
    sget-object v0, Lcom/android/mms/util/ImageCacheService;->sCrcTable:[J

    aput-wide v4, v0, v6

    .line 143
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 24
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "imgcache"

    .line 40
    const/16 v1, 0x1f4

    const/high16 v2, 0x1400000

    .line 41
    const/4 v3, 0x3

    .line 39
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/mms/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/mms/util/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    .line 42
    iput-object p1, p0, Lcom/android/mms/util/ImageCacheService;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static final crc64Long([B)J
    .locals 7

    .prologue
    .line 154
    const-wide/16 v2, -0x1

    .line 155
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 156
    sget-object v4, Lcom/android/mms/util/ImageCacheService;->sCrcTable:[J

    long-to-int v5, v2

    aget-byte v6, p0, v0

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long/2addr v2, v6

    xor-long/2addr v2, v4

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-wide v2
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-char v5, v3, v0

    .line 165
    add-int/lit8 v6, v1, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v1

    .line 166
    add-int/lit8 v1, v6, 0x1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-object v2
.end method

.method private static isSameKey([B[B)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 115
    array-length v2, p0

    .line 116
    array-length v0, p1

    if-ge v0, v2, :cond_0

    .line 117
    return v1

    :cond_0
    move v0, v1

    .line 119
    :goto_0
    if-ge v0, v2, :cond_2

    .line 120
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_1

    .line 121
    return v1

    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static makeKey(Ljava/lang/String;I)[B
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/ImageCacheService;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mms/util/ImageCacheService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/CacheManager;->clear(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public clearImageData(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 93
    invoke-static {p1, p2}, Lcom/android/mms/util/ImageCacheService;->makeKey(Ljava/lang/String;I)[B

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/android/mms/util/ImageCacheService;->crc64Long([B)J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/util/BlobCache;->clearEntry(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 104
    :cond_0
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getImageData(Ljava/lang/String;I)Lcom/android/mms/util/ImageCacheService$ImageData;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-static {p1, p2}, Lcom/android/mms/util/ImageCacheService;->makeKey(Ljava/lang/String;I)[B

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/android/mms/util/ImageCacheService;->crc64Long([B)J

    move-result-wide v2

    .line 57
    iget-object v1, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    invoke-virtual {v4, v2, v3}, Lcom/android/mms/util/BlobCache;->lookup(J)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v1

    .line 63
    if-nez v2, :cond_1

    return-object v5

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 68
    :catch_0
    move-exception v0

    .line 72
    :cond_0
    return-object v5

    .line 64
    :cond_1
    invoke-static {v0, v2}, Lcom/android/mms/util/ImageCacheService;->isSameKey([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    array-length v0, v0

    .line 66
    new-instance v1, Lcom/android/mms/util/ImageCacheService$ImageData;

    invoke-direct {v1, v2, v0}, Lcom/android/mms/util/ImageCacheService$ImageData;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1
.end method

.method public putImageData(Ljava/lang/String;I[B)V
    .locals 5

    .prologue
    .line 76
    invoke-static {p1, p2}, Lcom/android/mms/util/ImageCacheService;->makeKey(Ljava/lang/String;I)[B

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/android/mms/util/ImageCacheService;->crc64Long([B)J

    move-result-wide v2

    .line 78
    array-length v1, v0

    array-length v4, p3

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    iget-object v0, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    if-eqz v0, :cond_0

    .line 82
    iget-object v4, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    monitor-enter v4

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ImageCacheService;->mCache:Lcom/android/mms/util/BlobCache;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/mms/util/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    .line 90
    :cond_0
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method
