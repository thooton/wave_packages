.class Lcom/android/mms/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# instance fields
.field private final mInterface:Lcom/android/mms/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/exif/ExifInterface;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/mms/exif/ExifReader;->mInterface:Lcom/android/mms/exif/ExifInterface;

    .line 37
    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/android/mms/exif/ExifData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mms/exif/ExifReader;->mInterface:Lcom/android/mms/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/android/mms/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/mms/exif/ExifInterface;)Lcom/android/mms/exif/ExifParser;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/mms/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 52
    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->next()I

    move-result v0

    .line 53
    :goto_0
    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 54
    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_1
    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->next()I

    move-result v0

    goto :goto_0

    .line 56
    :pswitch_0
    new-instance v0, Lcom/android/mms/exif/IfdData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->getCurrentIfd()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/mms/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/mms/exif/ExifData;->addIfdData(Lcom/android/mms/exif/IfdData;)V

    goto :goto_1

    .line 59
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->getTag()Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->hasValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {v1, v0}, Lcom/android/mms/exif/ExifParser;->registerForTagValue(Lcom/android/mms/exif/ExifTag;)V

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    goto :goto_1

    .line 67
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->getTag()Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 69
    invoke-virtual {v1, v0}, Lcom/android/mms/exif/ExifParser;->readFullTagValue(Lcom/android/mms/exif/ExifTag;)V

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    goto :goto_1

    .line 74
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v0, v0, [B

    .line 75
    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/android/mms/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 76
    invoke-virtual {v2, v0}, Lcom/android/mms/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 78
    :cond_2
    const-string/jumbo v0, "Mms"

    const-string/jumbo v3, "Failed to read the compressed thumbnail"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v0, v0, [B

    .line 83
    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/android/mms/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 84
    invoke-virtual {v1}, Lcom/android/mms/exif/ExifParser;->getStripIndex()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 86
    :cond_3
    const-string/jumbo v0, "Mms"

    const-string/jumbo v3, "Failed to read the strip bytes"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    :cond_4
    return-object v2

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
