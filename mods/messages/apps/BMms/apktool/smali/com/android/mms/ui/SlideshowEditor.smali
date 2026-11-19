.class public Lcom/android/mms/ui/SlideshowEditor;
.super Ljava/lang/Object;
.source "SlideshowEditor.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    .line 50
    return-void
.end method

.method private generateTextSrc(Lcom/android/mms/model/SlideshowModel;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string/jumbo v0, "text_"

    .line 100
    const-string/jumbo v0, ".txt"

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "text_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 106
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 107
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "text_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 112
    const/4 v0, 0x1

    or-int/2addr v0, v3

    move p2, v4

    .line 118
    :goto_1
    if-nez v0, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public addNewSlide()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v0

    return v0
.end method

.method public addNewSlide(I)Z
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 75
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 76
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 78
    new-instance v2, Lcom/android/mms/model/TextModel;

    .line 79
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "text/plain"

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v5, v0}, Lcom/android/mms/ui/SlideshowEditor;->generateTextSrc(Lcom/android/mms/model/SlideshowModel;I)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 78
    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "The limitation of the number of slides is reached."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public addSlide(ILcom/android/mms/model/SlideModel;)Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 132
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "The limitation of the number of slides is reached."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public changeAudio(ILandroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 212
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 214
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->getDuration()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 215
    return-void
.end method

.method public changeDuration(II)V
    .locals 1

    .prologue
    .line 256
    if-ltz p2, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public changeImage(ILandroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    new-instance v1, Lcom/android/mms/model/ImageModel;

    .line 207
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    .line 206
    invoke-direct {v1, v2, p2, v3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 208
    return-void
.end method

.method public changeLayout(I)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 263
    return-void
.end method

.method public changeText(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 193
    if-nez v1, :cond_1

    .line 194
    new-instance v1, Lcom/android/mms/model/TextModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    .line 195
    const-string/jumbo v3, "text/plain"

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v4, p1}, Lcom/android/mms/ui/SlideshowEditor;->generateTextSrc(Lcom/android/mms/model/SlideshowModel;I)Ljava/lang/String;

    move-result-object v4

    .line 196
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 194
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 197
    invoke-virtual {v1, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {v1, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public changeVcal(ILandroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/android/mms/model/VcalModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/android/mms/model/VcalModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 238
    return-void
.end method

.method public changeVcard(ILandroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/android/mms/model/VcardModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 244
    invoke-virtual {v0}, Lcom/android/mms/model/VcardModel;->getDuration()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 245
    return-void
.end method

.method public changeVideo(ILandroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/android/mms/model/VideoModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    .line 219
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v2

    .line 218
    invoke-direct {v0, v1, p2, v2}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 220
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 222
    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->getDuration()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 223
    return-void
.end method

.method public moveSlideDown(I)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 253
    return-void
.end method

.method public moveSlideUp(I)V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 249
    return-void
.end method

.method public removeAllSlides()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public removeAudio(I)Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    move-result v0

    return v0
.end method

.method public removeImage(I)Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    move-result v0

    return v0
.end method

.method public removeSlide(I)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 148
    return-void
.end method

.method public removeVideo(I)Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    move-result v0

    return v0
.end method

.method public setSlideshow(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    .line 54
    return-void
.end method
