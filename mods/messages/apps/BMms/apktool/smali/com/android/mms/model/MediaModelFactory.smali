.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/android/mms/model/TextModel;

    const-string/jumbo v1, "text/plain"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    return-object v0
.end method

.method public static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-static {p1}, Lcom/android/mms/model/MediaModelFactory;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string/jumbo v0, "cid:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 78
    return-object v0

    .line 67
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No part found for the model."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 129
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 132
    const-string/jumbo v1, "Content-Type of the part may not be null."

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 137
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "text/x-vCard"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 138
    if-eqz v1, :cond_4

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "text/x-vCalendar"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 138
    if-eqz v1, :cond_4

    .line 141
    new-instance v0, Lcom/android/mms/model/TextModel;

    .line 142
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v5

    move-object v1, p0

    move-object v3, p2

    move-object v6, p5

    .line 141
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .line 143
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    .line 203
    :cond_1
    :goto_0
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_13

    invoke-interface {v1}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v2

    if-lez v2, :cond_13

    .line 206
    invoke-interface {v1, v7}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v2

    mul-double/2addr v2, v8

    double-to-int v1, v2

    .line 209
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 212
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 213
    if-gtz v2, :cond_16

    .line 214
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_14

    invoke-interface {v3}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v4

    if-lez v4, :cond_14

    .line 217
    invoke-interface {v3, v7}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v3

    .line 218
    invoke-interface {v3}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v4

    if-eqz v4, :cond_16

    .line 219
    invoke-interface {v3}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    sub-int v1, v2, v1

    .line 221
    if-nez v1, :cond_3

    .line 222
    instance-of v2, v0, Lcom/android/mms/model/AudioModel;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/android/mms/model/VideoModel;

    .line 221
    if-eqz v2, :cond_3

    .line 223
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v1

    .line 224
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[MediaModelFactory] compute new duration for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    const-string/jumbo v4, ", duration="

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 235
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 242
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 247
    :goto_3
    return-object v0

    .line 144
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "text/x-vCard"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    new-instance v0, Lcom/android/mms/model/VcardModel;

    .line 146
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 145
    invoke-direct {v0, p0, v2, p2, v1}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 147
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "text/x-vCalendar"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    new-instance v0, Lcom/android/mms/model/VcalModel;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VcalModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    goto/16 :goto_0

    .line 150
    :cond_6
    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    new-instance v0, Lcom/android/mms/model/ImageModel;

    .line 152
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p5

    .line 151
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    goto/16 :goto_0

    .line 153
    :cond_7
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 154
    new-instance v0, Lcom/android/mms/model/VideoModel;

    .line 155
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p5

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    goto/16 :goto_0

    .line 156
    :cond_8
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 157
    new-instance v0, Lcom/android/mms/model/AudioModel;

    .line 158
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 157
    invoke-direct {v0, p0, v2, p2, v1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 159
    :cond_9
    const-string/jumbo v0, "ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 160
    const-string/jumbo v0, "application/oct-stream"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 163
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->convertToVcardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    :cond_a
    const-string/jumbo v0, "text/x-vCalendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    new-instance v0, Lcom/android/mms/model/VcalModel;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VcalModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    goto/16 :goto_0

    .line 168
    :cond_b
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 169
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/x-vCard"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 168
    if-eqz v0, :cond_c

    .line 170
    new-instance v0, Lcom/android/mms/model/TextModel;

    .line 171
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v5

    move-object v1, p0

    move-object v3, p2

    move-object v6, p5

    .line 170
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .line 172
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 173
    :cond_c
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 174
    new-instance v0, Lcom/android/mms/model/ImageModel;

    .line 175
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p5

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    goto/16 :goto_0

    .line 176
    :cond_d
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    new-instance v0, Lcom/android/mms/model/VideoModel;

    .line 178
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p5

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    goto/16 :goto_0

    .line 179
    :cond_e
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 180
    new-instance v0, Lcom/android/mms/model/AudioModel;

    .line 181
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 180
    invoke-direct {v0, p0, v2, p2, v1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 182
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/x-vCard"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 183
    new-instance v0, Lcom/android/mms/model/VcardModel;

    .line 184
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 183
    invoke-direct {v0, p0, v2, p2, v1}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 186
    :cond_10
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[MediaModelFactory] getGenericMediaModel Unsupported Content-Type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {p0, p5}, Lcom/android/mms/model/MediaModelFactory;->createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 195
    new-instance v0, Lcom/android/mms/model/VcardModel;

    const-string/jumbo v1, "text/x-vCard"

    .line 196
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 195
    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 198
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported TAG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move v1, v7

    .line 204
    goto/16 :goto_1

    :cond_14
    move v1, v2

    .line 215
    goto/16 :goto_2

    .line 245
    :cond_15
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    goto/16 :goto_3

    :cond_16
    move v1, v2

    goto/16 :goto_2
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {p3, v2}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 50
    instance-of v0, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v0, :cond_0

    move-object v3, p1

    .line 52
    check-cast v3, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v0, p0

    move-object v4, p2

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    move-object v9, p1

    move-object v10, v5

    .line 54
    invoke-static/range {v6 .. v11}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 98
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 99
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string/jumbo v0, "Text"

    .line 110
    :goto_0
    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 111
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    const-string/jumbo v0, "Image"

    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const-string/jumbo v0, "&lt;"

    const-string/jumbo v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "&gt;"

    const-string/jumbo v2, ">"

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "&quot;"

    const-string/jumbo v2, "\""

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "&apos;"

    const-string/jumbo v2, "\'"

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "&amp;"

    const-string/jumbo v2, "&"

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
