.class public Lcom/android/mms/model/CarrierContentRestriction;
.super Ljava/lang/Object;
.source "CarrierContentRestriction.java"

# interfaces
.implements Lcom/android/mms/model/ContentRestriction;


# static fields
.field private static mCreationMode:I

.field private static sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/mms/ContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 46
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "image/bmp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "image/bmp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    invoke-static {}, Lcom/google/android/mms/ContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 51
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/wave_2ch_lpcm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/wave_2ch_lpcm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    invoke-static {}, Lcom/google/android/mms/ContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sput p1, Lcom/android/mms/model/CarrierContentRestriction;->mCreationMode:I

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-static {}, Lcom/google/android/mms/ContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 83
    invoke-static {}, Lcom/google/android/mms/ContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 84
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/wave_2ch_lpcm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/wave_2ch_lpcm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    invoke-static {}, Lcom/google/android/mms/ContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 93
    :goto_0
    return-void

    .line 68
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 69
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 74
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/amr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 77
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "video/h263"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkAudioContentType(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string/jumbo v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported audio content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/mms/UnsupportContentTypeException;->putContentType(Ljava/lang/String;)Lcom/android/mms/UnsupportContentTypeException;

    move-result-object v0

    throw v0

    .line 146
    :cond_1
    return-void
.end method

.method public checkImageContentType(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string/jumbo v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported image content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/mms/UnsupportContentTypeException;->putContentType(Ljava/lang/String;)Lcom/android/mms/UnsupportContentTypeException;

    move-result-object v0

    throw v0

    .line 134
    :cond_1
    return-void
.end method

.method public checkMessageSize(IILandroid/content/ContentResolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 103
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 104
    :cond_0
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string/jumbo v1, "Negative message size or increase size"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    add-int v0, p1, p2

    .line 111
    if-ltz v0, :cond_2

    add-int/lit16 v1, v0, 0x400

    .line 112
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    .line 111
    if-le v1, v2, :cond_3

    .line 113
    :cond_2
    new-instance v1, Lcom/android/mms/ExceedMessageSizeException;

    .line 114
    const-string/jumbo v2, "Exceed message size limitation"

    .line 113
    invoke-direct {v1, v2}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/mms/ExceedMessageSizeException;->putMmsSize(I)Lcom/android/mms/ExceedMessageSizeException;

    move-result-object v0

    throw v0

    .line 116
    :cond_3
    return-void
.end method

.method public checkVideoContentType(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string/jumbo v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported video content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/mms/UnsupportContentTypeException;->putContentType(Ljava/lang/String;)Lcom/android/mms/UnsupportContentTypeException;

    move-result-object v0

    throw v0

    .line 158
    :cond_1
    return-void
.end method
