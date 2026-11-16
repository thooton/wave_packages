.class Lcom/android/mms/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/android/mms/exif/IfdData;

.field private final mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/exif/ExifData;->USER_COMMENT_ASCII:[B

    .line 41
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/exif/ExifData;->USER_COMMENT_JIS:[B

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/exif/ExifData;->USER_COMMENT_UNICODE:[B

    .line 36
    return-void

    .line 38
    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 41
    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 44
    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/exif/IfdData;

    iput-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/mms/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 55
    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/android/mms/exif/IfdData;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 142
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    if-ne p0, p1, :cond_0

    .line 321
    return v4

    .line 323
    :cond_0
    if-nez p1, :cond_1

    .line 324
    return v3

    .line 326
    :cond_1
    instance-of v0, p1, Lcom/android/mms/exif/ExifData;

    if-eqz v0, :cond_8

    .line 327
    check-cast p1, Lcom/android/mms/exif/ExifData;

    .line 328
    iget-object v0, p1, Lcom/android/mms/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_2

    .line 329
    iget-object v0, p1, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 331
    :cond_2
    return v3

    .line 330
    :cond_3
    iget-object v0, p1, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 328
    if-nez v0, :cond_2

    move v2, v3

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 334
    iget-object v0, p1, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 335
    return v3

    .line 333
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v3

    .line 338
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 339
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v1

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v2

    .line 341
    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/android/mms/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 342
    return v3

    .line 338
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_7
    return v4

    .line 347
    :cond_8
    return v3
.end method

.method protected getIfdData(I)Lcom/android/mms/exif/IfdData;
    .locals 1

    .prologue
    .line 130
    invoke-static {p1}, Lcom/android/mms/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aget-object v0, v0, p1

    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag(SI)Lcom/android/mms/exif/ExifTag;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aget-object v1, v1, p2

    .line 163
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    .line 72
    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
