.class Lcom/android/mms/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/android/mms/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x3

    const/4 v4, 0x4

    .line 33
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/mms/exif/IfdData;->sIfds:[I

    .line 28
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/exif/IfdData;->mExifTags:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/exif/IfdData;->mOffsetToNextIfd:I

    .line 47
    iput p1, p0, Lcom/android/mms/exif/IfdData;->mIfdId:I

    .line 48
    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/mms/exif/IfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_0

    .line 129
    return v7

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    return v2

    .line 134
    :cond_1
    instance-of v0, p1, Lcom/android/mms/exif/IfdData;

    if-eqz v0, :cond_5

    .line 135
    check-cast p1, Lcom/android/mms/exif/IfdData;

    .line 136
    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getId()I

    move-result v0

    iget v1, p0, Lcom/android/mms/exif/IfdData;->mIfdId:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getTagCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/exif/IfdData;->getTagCount()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 137
    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getAllTags()[Lcom/android/mms/exif/ExifTag;

    move-result-object v3

    .line 138
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 139
    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v0

    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/android/mms/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/exif/ExifTag;

    .line 143
    invoke-virtual {v5, v0}, Lcom/android/mms/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    return v2

    .line 147
    :cond_4
    return v7

    .line 150
    :cond_5
    return v2
.end method

.method protected getAllTags()[Lcom/android/mms/exif/ExifTag;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/mms/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/exif/ExifTag;

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/mms/exif/IfdData;->mIfdId:I

    return v0
.end method

.method protected getTag(S)Lcom/android/mms/exif/ExifTag;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mms/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/mms/exif/IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->setIfd(I)V

    .line 87
    iget-object v0, p0, Lcom/android/mms/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/exif/ExifTag;

    return-object v0
.end method
