.class public Lcom/android/mms/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/exif/ExifParser$ExifTagEvent;,
        Lcom/android/mms/exif/ExifParser$IfdEvent;,
        Lcom/android/mms/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/android/mms/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/android/mms/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/android/mms/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripSizeTag:Lcom/android/mms/exif/ExifTag;

.field private mTag:Lcom/android/mms/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/mms/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 168
    sget v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 167
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/mms/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 169
    sget v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/mms/exif/ExifParser;->TAG_GPS_IFD:S

    .line 171
    sget v0, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 170
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/mms/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 173
    sget v0, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 172
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/mms/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 175
    sget v0, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 174
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/mms/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 177
    sget v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 176
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/mms/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 179
    sget v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 178
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/mms/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/android/mms/exif/ExifInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput v4, p0, Lcom/android/mms/exif/ExifParser;->mIfdStartOffset:I

    .line 151
    iput v4, p0, Lcom/android/mms/exif/ExifParser;->mNumOfTagInIfd:I

    .line 159
    iput-boolean v4, p0, Lcom/android/mms/exif/ExifParser;->mContainExifData:Z

    .line 161
    iput v4, p0, Lcom/android/mms/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 181
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 205
    if-nez p1, :cond_0

    .line 206
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Null argument inputStream to ExifParser"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iput-object p3, p0, Lcom/android/mms/exif/ExifParser;->mInterface:Lcom/android/mms/exif/ExifInterface;

    .line 212
    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/exif/ExifParser;->mContainExifData:Z

    .line 213
    new-instance v0, Lcom/android/mms/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/android/mms/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    .line 214
    iput p2, p0, Lcom/android/mms/exif/ExifParser;->mOptions:I

    .line 215
    iget-boolean v0, p0, Lcom/android/mms/exif/ExifParser;->mContainExifData:Z

    if-nez v0, :cond_1

    .line 216
    return-void

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->parseTiffHeader()V

    .line 220
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v0

    .line 221
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 222
    new-instance v2, Lcom/android/mms/exif/ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/mms/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_2
    long-to-int v2, v0

    iput v2, p0, Lcom/android/mms/exif/ExifParser;->mIfd0Position:I

    .line 225
    iput v4, p0, Lcom/android/mms/exif/ExifParser;->mIfdType:I

    .line 226
    invoke-direct {p0, v4}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    :cond_3
    invoke-direct {p0, v4, v0, v1}, Lcom/android/mms/exif/ExifParser;->registerIfd(IJ)V

    .line 228
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 229
    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/mms/exif/ExifParser;->mDataAboveIfd0:[B

    .line 230
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifParser;->read([B)I

    .line 233
    :cond_4
    return-void
.end method

.method private checkAllowed(II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mInterface:Lcom/android/mms/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 642
    if-nez v0, :cond_0

    .line 643
    return v1

    .line 645
    :cond_0
    invoke-static {v0, p1}, Lcom/android/mms/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v0

    return v0
.end method

.method private checkOffsetOrImageTag(Lcom/android/mms/exif/ExifTag;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 591
    return-void

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v1

    .line 594
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v2

    .line 595
    sget-short v3, Lcom/android/mms/exif/ExifParser;->TAG_EXIF_IFD:S

    if-ne v1, v3, :cond_3

    sget v3, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 596
    invoke-direct {p0, v5}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 597
    invoke-direct {p0, v4}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    .line 596
    if-eqz v1, :cond_2

    .line 598
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/mms/exif/ExifParser;->registerIfd(IJ)V

    .line 638
    :cond_2
    :goto_0
    return-void

    .line 600
    :cond_3
    sget-short v3, Lcom/android/mms/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v1, v3, :cond_4

    sget v3, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 601
    invoke-direct {p0, v6}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/mms/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 604
    :cond_4
    sget-short v3, Lcom/android/mms/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v1, v3, :cond_5

    .line 605
    sget v3, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    .line 604
    if-eqz v3, :cond_5

    .line 606
    invoke-direct {p0, v4}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/mms/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 609
    :cond_5
    sget-short v3, Lcom/android/mms/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v1, v3, :cond_6

    .line 610
    sget v3, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    .line 609
    if-eqz v3, :cond_6

    .line 611
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/exif/ExifParser;->registerCompressedImage(J)V

    goto :goto_0

    .line 614
    :cond_6
    sget-short v3, Lcom/android/mms/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v1, v3, :cond_7

    .line 615
    sget v3, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    .line 614
    if-eqz v3, :cond_7

    .line 616
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    iput-object p1, p0, Lcom/android/mms/exif/ExifParser;->mJpegSizeTag:Lcom/android/mms/exif/ExifTag;

    goto :goto_0

    .line 619
    :cond_7
    sget-short v3, Lcom/android/mms/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v1, v3, :cond_a

    sget v3, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 620
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 622
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 623
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v1

    if-ne v1, v4, :cond_8

    .line 624
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/mms/exif/ExifParser;->registerUncompressedStrip(IJ)V

    .line 622
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :cond_8
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/mms/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_2

    .line 630
    :cond_9
    iget-object v1, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/mms/exif/ExifParser$ExifTagEvent;

    invoke-direct {v3, p1, v0}, Lcom/android/mms/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/mms/exif/ExifTag;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 633
    :cond_a
    sget-short v0, Lcom/android/mms/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v1, v0, :cond_2

    .line 634
    sget v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-direct {p0, v2, v0}, Lcom/android/mms/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    .line 633
    if-eqz v0, :cond_2

    .line 635
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    .line 633
    if-eqz v0, :cond_2

    .line 635
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->hasValue()Z

    move-result v0

    .line 633
    if-eqz v0, :cond_2

    .line 636
    iput-object p1, p0, Lcom/android/mms/exif/ExifParser;->mStripSizeTag:Lcom/android/mms/exif/ExifTag;

    goto/16 :goto_0
.end method

.method private isIfdRequested(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    packed-switch p1, :pswitch_data_0

    .line 196
    return v1

    .line 186
    :pswitch_0
    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 188
    :pswitch_1
    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 190
    :pswitch_2
    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 192
    :pswitch_3
    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    :goto_3
    return v0

    :cond_3
    move v0, v1

    goto :goto_3

    .line 194
    :pswitch_4
    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    :goto_4
    return v0

    :cond_4
    move v0, v1

    goto :goto_4

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    iget v1, p0, Lcom/android/mms/exif/ExifParser;->mOptions:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 394
    iget v1, p0, Lcom/android/mms/exif/ExifParser;->mIfdType:I

    packed-switch v1, :pswitch_data_0

    .line 405
    const/4 v0, 0x0

    return v0

    .line 396
    :pswitch_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    invoke-direct {p0, v2}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    .line 396
    if-nez v1, :cond_0

    .line 398
    invoke-direct {p0, v0}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    .line 396
    :cond_0
    return v0

    .line 400
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    return v0

    .line 403
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    return v0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/android/mms/exif/ExifInterface;)Lcom/android/mms/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/android/mms/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/android/mms/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/android/mms/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 742
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 750
    :goto_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    .line 751
    new-instance v0, Lcom/android/mms/exif/ExifInvalidFormatException;

    const-string/jumbo v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 747
    :cond_1
    new-instance v0, Lcom/android/mms/exif/ExifInvalidFormatException;

    const-string/jumbo v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_2
    return-void
.end method

.method private readTag()Lcom/android/mms/exif/ExifTag;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x7fffffff

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 536
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v1

    .line 537
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 538
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 539
    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    .line 540
    new-instance v0, Lcom/android/mms/exif/ExifInvalidFormatException;

    .line 541
    const-string/jumbo v1, "Number of component is larger then Integer.MAX_VALUE"

    .line 540
    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    invoke-static {v2}, Lcom/android/mms/exif/ExifTag;->isValidType(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    const-string/jumbo v0, "Mms"

    const-string/jumbo v3, "Tag %04x: Invalid data type %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/exif/CountedDataInputStream;->skip(J)J

    .line 547
    return-object v7

    .line 550
    :cond_1
    new-instance v0, Lcom/android/mms/exif/ExifTag;

    long-to-int v3, v8

    iget v4, p0, Lcom/android/mms/exif/ExifParser;->mIfdType:I

    .line 551
    long-to-int v7, v8

    if-eqz v7, :cond_2

    .line 550
    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/exif/ExifTag;-><init>(SSIIZ)V

    .line 552
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getDataSize()I

    move-result v1

    .line 553
    const/4 v3, 0x4

    if-le v1, v3, :cond_5

    .line 554
    iget-object v1, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/mms/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 555
    cmp-long v1, v4, v10

    if-lez v1, :cond_3

    .line 556
    new-instance v0, Lcom/android/mms/exif/ExifInvalidFormatException;

    .line 557
    const-string/jumbo v1, "offset is larger then Integer.MAX_VALUE"

    .line 556
    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v5, v6

    .line 551
    goto :goto_0

    .line 561
    :cond_3
    iget-object v1, p0, Lcom/android/mms/exif/ExifParser;->mDataAboveIfd0:[B

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/mms/exif/ExifParser;->mIfd0Position:I

    int-to-long v10, v1

    cmp-long v1, v4, v10

    if-gez v1, :cond_4

    .line 562
    const/4 v1, 0x7

    if-ne v2, v1, :cond_4

    .line 563
    long-to-int v1, v8

    new-array v1, v1, [B

    .line 564
    iget-object v2, p0, Lcom/android/mms/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v3, v4

    add-int/lit8 v3, v3, -0x8

    .line 565
    long-to-int v4, v8

    .line 564
    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 566
    invoke-virtual {v0, v1}, Lcom/android/mms/exif/ExifTag;->setValue([B)Z

    .line 581
    :goto_1
    return-object v0

    .line 568
    :cond_4
    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/ExifTag;->setOffset(I)V

    goto :goto_1

    .line 571
    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->hasDefinedCount()Z

    move-result v2

    .line 573
    invoke-virtual {v0, v6}, Lcom/android/mms/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifParser;->readFullTagValue(Lcom/android/mms/exif/ExifTag;)V

    .line 576
    invoke-virtual {v0, v2}, Lcom/android/mms/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 577
    iget-object v2, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/mms/exif/CountedDataInputStream;->skip(J)J

    .line 579
    iget-object v1, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/mms/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/ExifTag;->setOffset(I)V

    goto :goto_1
.end method

.method private registerCompressedImage(J)V
    .locals 5

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/mms/exif/ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/mms/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/mms/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/mms/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/mms/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/android/mms/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 757
    new-instance v2, Lcom/android/mms/exif/CountedDataInputStream;

    invoke-direct {v2, p1}, Lcom/android/mms/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 758
    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_0

    .line 759
    new-instance v0, Lcom/android/mms/exif/ExifInvalidFormatException;

    const-string/jumbo v1, "Invalid JPEG format"

    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_0
    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v0

    move v1, v0

    .line 763
    :goto_0
    const/16 v0, -0x27

    if-eq v1, v0, :cond_4

    .line 764
    invoke-static {v1}, Lcom/android/mms/exif/JpegHeader;->isSofMarker(S)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 763
    if-eqz v0, :cond_4

    .line 765
    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 768
    const/16 v3, -0x1f

    if-ne v1, v3, :cond_1

    .line 771
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 772
    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->readInt()I

    move-result v1

    .line 773
    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v3

    .line 774
    add-int/lit8 v0, v0, -0x6

    .line 775
    const v4, 0x45786966

    if-ne v1, v4, :cond_1

    if-nez v3, :cond_1

    .line 776
    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/exif/ExifParser;->mTiffStartPosition:I

    .line 777
    iput v0, p0, Lcom/android/mms/exif/ExifParser;->mApp1End:I

    .line 778
    iget v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStartPosition:I

    iget v1, p0, Lcom/android/mms/exif/ExifParser;->mApp1End:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 779
    const/4 v0, 0x1

    return v0

    .line 783
    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x2

    int-to-long v4, v1

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_3

    .line 784
    :cond_2
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Invalid JPEG format."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return v6

    .line 787
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v0

    move v1, v0

    goto :goto_0

    .line 789
    :cond_4
    return v6
.end method

.method private skipTo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/exif/CountedDataInputStream;->skipTo(J)V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 503
    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mJpegSizeTag:Lcom/android/mms/exif/ExifTag;

    if-nez v0, :cond_0

    .line 493
    return v1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mJpegSizeTag:Lcom/android/mms/exif/ExifTag;

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/android/mms/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mImageEvent:Lcom/android/mms/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/android/mms/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mStripSizeTag:Lcom/android/mms/exif/ExifTag;

    if-nez v0, :cond_0

    .line 483
    return v1

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mStripSizeTag:Lcom/android/mms/exif/ExifTag;

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getTag()Lcom/android/mms/exif/ExifTag;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    return-object v0
.end method

.method protected next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x4

    const/4 v6, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 274
    iget-boolean v0, p0, Lcom/android/mms/exif/ExifParser;->mContainExifData:Z

    if-nez v0, :cond_0

    .line 275
    return v6

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 278
    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/mms/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    .line 279
    if-ge v0, v2, :cond_3

    .line 280
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->readTag()Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    .line 281
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->next()I

    move-result v0

    return v0

    .line 284
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/android/mms/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/mms/exif/ExifTag;)V

    .line 287
    :cond_2
    return v4

    .line 288
    :cond_3
    if-ne v0, v2, :cond_5

    .line 290
    iget v0, p0, Lcom/android/mms/exif/ExifParser;->mIfdType:I

    if-nez v0, :cond_6

    .line 291
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 292
    invoke-direct {p0, v4}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 293
    :cond_4
    cmp-long v2, v0, v8

    if-eqz v2, :cond_5

    .line 294
    invoke-direct {p0, v4, v0, v1}, Lcom/android/mms/exif/ExifParser;->registerIfd(IJ)V

    .line 314
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 315
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 316
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 318
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    instance-of v0, v1, Lcom/android/mms/exif/ExifParser$IfdEvent;

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 325
    check-cast v0, Lcom/android/mms/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/android/mms/exif/ExifParser$IfdEvent;->ifd:I

    iput v0, p0, Lcom/android/mms/exif/ExifParser;->mIfdType:I

    .line 326
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/android/mms/exif/ExifParser;->mNumOfTagInIfd:I

    .line 327
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mms/exif/ExifParser;->mIfdStartOffset:I

    .line 329
    iget v0, p0, Lcom/android/mms/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v0, v0, 0xc

    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mApp1End:I

    if-le v0, v2, :cond_8

    .line 330
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid size of IFD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mIfdType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v6

    .line 300
    :cond_6
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 301
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    iget-object v2, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    .line 301
    sub-int/2addr v0, v2

    .line 304
    :goto_1
    if-ge v0, v1, :cond_7

    .line 305
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid size of link to next IFD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 307
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 308
    cmp-long v2, v0, v8

    if-eqz v2, :cond_5

    .line 309
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid link to next IFD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string/jumbo v0, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to skip to data at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    const-string/jumbo v3, " for "

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    const-string/jumbo v2, ", the file may be broken."

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 334
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 335
    check-cast v1, Lcom/android/mms/exif/ExifParser$IfdEvent;

    iget-boolean v0, v1, Lcom/android/mms/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_9

    .line 336
    return v5

    .line 338
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto/16 :goto_0

    .line 340
    :cond_a
    instance-of v0, v1, Lcom/android/mms/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_b

    .line 341
    check-cast v1, Lcom/android/mms/exif/ExifParser$ImageEvent;

    iput-object v1, p0, Lcom/android/mms/exif/ExifParser;->mImageEvent:Lcom/android/mms/exif/ExifParser$ImageEvent;

    .line 342
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mImageEvent:Lcom/android/mms/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/android/mms/exif/ExifParser$ImageEvent;->type:I

    return v0

    .line 344
    :cond_b
    check-cast v1, Lcom/android/mms/exif/ExifParser$ExifTagEvent;

    .line 345
    iget-object v0, v1, Lcom/android/mms/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/mms/exif/ExifTag;

    iput-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    .line 346
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_c

    .line 347
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifParser;->readFullTagValue(Lcom/android/mms/exif/ExifTag;)V

    .line 348
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/android/mms/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/mms/exif/ExifTag;)V

    .line 350
    :cond_c
    iget-boolean v0, v1, Lcom/android/mms/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_5

    .line 351
    const/4 v0, 0x2

    return v0

    .line 355
    :cond_d
    return v6

    :cond_e
    move v0, v1

    goto/16 :goto_1
.end method

.method protected read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/android/mms/exif/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Lcom/android/mms/exif/ExifTag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 650
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v0

    .line 651
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 653
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v2

    .line 654
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/mms/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 658
    instance-of v2, v0, Lcom/android/mms/exif/ExifParser$ImageEvent;

    if-eqz v2, :cond_3

    .line 660
    const-string/jumbo v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 662
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid thumbnail offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 737
    :goto_2
    :pswitch_0
    return-void

    .line 652
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 665
    :cond_3
    instance-of v2, v0, Lcom/android/mms/exif/ExifParser$IfdEvent;

    if-eqz v2, :cond_5

    .line 666
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ifd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Lcom/android/mms/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/android/mms/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 667
    const-string/jumbo v3, " overlaps value for tag: \n"

    .line 666
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 667
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 674
    iget-object v2, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/android/mms/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    .line 673
    sub-int/2addr v0, v2

    .line 675
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid size of tag: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 676
    const-string/jumbo v4, " setting count to: "

    .line 675
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->forceSetComponentCount(I)V

    goto :goto_1

    .line 668
    :cond_5
    instance-of v2, v0, Lcom/android/mms/exif/ExifParser$ExifTagEvent;

    if-eqz v2, :cond_4

    .line 669
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tag value for tag: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 670
    check-cast v0, Lcom/android/mms/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/android/mms/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/mms/exif/ExifTag;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 671
    const-string/jumbo v3, " overlaps value for tag: \n"

    .line 669
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 671
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 685
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifParser;->read([B)I

    .line 687
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->setValue([B)Z

    goto/16 :goto_2

    .line 691
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 694
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [J

    .line 695
    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_6

    .line 696
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 698
    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->setValue([J)Z

    goto/16 :goto_2

    .line 702
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/mms/exif/Rational;

    .line 703
    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_7

    .line 704
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readUnsignedRational()Lcom/android/mms/exif/Rational;

    move-result-object v3

    aput-object v3, v0, v1

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 706
    :cond_7
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->setValue([Lcom/android/mms/exif/Rational;)Z

    goto/16 :goto_2

    .line 710
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 711
    array-length v2, v0

    :goto_6
    if-ge v1, v2, :cond_8

    .line 712
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v1

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 714
    :cond_8
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_2

    .line 718
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 719
    array-length v2, v0

    :goto_7
    if-ge v1, v2, :cond_9

    .line 720
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readLong()I

    move-result v3

    aput v3, v0, v1

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 722
    :cond_9
    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_2

    .line 726
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/android/mms/exif/Rational;

    .line 727
    array-length v3, v2

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_a

    .line 728
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readRational()Lcom/android/mms/exif/Rational;

    move-result-object v1

    aput-object v1, v2, v0

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 730
    :cond_a
    invoke-virtual {p1, v2}, Lcom/android/mms/exif/ExifTag;->setValue([Lcom/android/mms/exif/Rational;)Z

    goto/16 :goto_2

    .line 682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/android/mms/exif/Rational;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readLong()I

    move-result v0

    .line 874
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readLong()I

    move-result v1

    .line 875
    new-instance v2, Lcom/android/mms/exif/Rational;

    int-to-long v4, v0

    int-to-long v0, v1

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    sget-object v0, Lcom/android/mms/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    if-lez p1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 832
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/android/mms/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 858
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 859
    new-instance v4, Lcom/android/mms/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/android/mms/exif/ExifTag;)V
    .locals 4

    .prologue
    .line 515
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/mms/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/mms/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/mms/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/mms/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 366
    iget v0, p0, Lcom/android/mms/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/mms/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    .line 367
    iget-object v0, p0, Lcom/android/mms/exif/ExifParser;->mTiffStream:Lcom/android/mms/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/mms/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 368
    if-le v0, v1, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-boolean v2, p0, Lcom/android/mms/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    .line 372
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->readTag()Lcom/android/mms/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    .line 374
    add-int/lit8 v0, v0, 0xc

    .line 375
    iget-object v2, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/android/mms/exif/ExifParser;->mTag:Lcom/android/mms/exif/ExifTag;

    invoke-direct {p0, v2}, Lcom/android/mms/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/mms/exif/ExifTag;)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/mms/exif/ExifParser;->skipTo(I)V

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 385
    iget v2, p0, Lcom/android/mms/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_5

    .line 386
    invoke-direct {p0, v4}, Lcom/android/mms/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/mms/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    .line 385
    if-eqz v2, :cond_5

    .line 387
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 388
    invoke-direct {p0, v4, v0, v1}, Lcom/android/mms/exif/ExifParser;->registerIfd(IJ)V

    .line 391
    :cond_5
    return-void
.end method
