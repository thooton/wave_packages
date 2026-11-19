.class public Lcom/android/mms/model/MediaWithTextModel;
.super Lcom/android/mms/model/Model;
.source "MediaWithTextModel.java"


# instance fields
.field private mMediaModel:Lcom/android/mms/model/MediaModel;

.field private mMessageText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/mms/model/MediaWithTextModel;->mMessageText:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/mms/model/MediaWithTextModel;->mMediaModel:Lcom/android/mms/model/MediaModel;

    .line 34
    return-void
.end method


# virtual methods
.method public changeAudio(Lcom/android/mms/model/AudioModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/mms/model/MediaWithTextModel;->mMediaModel:Lcom/android/mms/model/MediaModel;

    .line 62
    return-void
.end method

.method public changeImage(Lcom/android/mms/model/ImageModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/model/MediaWithTextModel;->mMediaModel:Lcom/android/mms/model/MediaModel;

    .line 58
    return-void
.end method

.method public changeVideo(Lcom/android/mms/model/VideoModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mms/model/MediaWithTextModel;->mMediaModel:Lcom/android/mms/model/MediaModel;

    .line 66
    return-void
.end method

.method public getMediaModel()Lcom/android/mms/model/MediaModel;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/model/MediaWithTextModel;->mMediaModel:Lcom/android/mms/model/MediaModel;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/model/MediaWithTextModel;->mMessageText:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaModel(Lcom/android/mms/model/MediaModel;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/mms/model/MediaWithTextModel;->mMediaModel:Lcom/android/mms/model/MediaModel;

    .line 46
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/mms/model/MediaWithTextModel;->mMessageText:Ljava/lang/String;

    .line 42
    return-void
.end method
