.class public Lcom/android/mms/ui/MmsThumbnailPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "MmsThumbnailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsThumbnailPresenter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms"


# instance fields
.field private mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field private mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MmsThumbnailPresenter;Lcom/android/mms/util/ItemLoadedFuture;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/MmsThumbnailPresenter;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 86
    new-instance v0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsThumbnailPresenter$1;-><init>(Lcom/android/mms/ui/MmsThumbnailPresenter;)V

    .line 85
    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 44
    return-void
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 1

    .prologue
    .line 65
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 67
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVcard()Lcom/android/mms/model/VcardModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVcardThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcardModel;)V

    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVcal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVcal()Lcom/android/mms/model/VcalModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVcalThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcalModel;)V

    goto :goto_0
.end method

.method private presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v0}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 120
    return-void
.end method

.method private presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v0}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 116
    return-void
.end method


# virtual methods
.method public cancelBackgroundLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->cancelThumbnailLoading()V

    .line 144
    :cond_0
    iput-object v2, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 145
    iput-object v2, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mModel:Lcom/android/mms/model/Model;

    invoke-virtual {v0, p0}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 147
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public present(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 53
    :cond_0
    return-void
.end method

.method public present(Lcom/android/mms/util/ItemLoadedCallback;I)V
    .locals 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    return-void
.end method

.method protected presentVcalThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcalModel;)V
    .locals 0

    .prologue
    .line 82
    invoke-interface {p1, p2}, Lcom/android/mms/ui/SlideViewInterface;->setVcal(Lcom/android/mms/model/VcalModel;)V

    .line 83
    return-void
.end method

.method protected presentVcardThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcardModel;)V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVcard(Landroid/net/Uri;Ljava/lang/String;)V

    .line 130
    return-void

    .line 128
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
