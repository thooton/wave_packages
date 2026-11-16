.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowPresenter$1;,
        Lcom/android/mms/ui/SlideshowPresenter$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHeightTransformRatio:F

.field private mItemLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
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

.field protected mLocation:I

.field protected final mSlideNumber:I

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SlideshowPresenter;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/util/ItemLoadedFuture;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 64
    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 65
    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    .line 84
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 356
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    .line 355
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mItemLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 74
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mContext:Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 78
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_0

    .line 79
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 79
    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 82
    :cond_0
    return-void
.end method

.method private getHeightTransformRatio(II)F
    .locals 2

    .prologue
    .line 113
    if-lez p1, :cond_0

    .line 114
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0

    .line 116
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getWidthTransformRatio(II)F
    .locals 2

    .prologue
    .line 106
    if-lez p1, :cond_0

    .line 107
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0

    .line 109
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private transformHeight(I)I
    .locals 2

    .prologue
    .line 124
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformWidth(I)I
    .locals 2

    .prologue
    .line 120
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public cancelBackgroundLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->cancelThumbnailLoading()V

    .line 444
    :cond_0
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    invoke-virtual {v0, p0}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 446
    return-void
.end method

.method public getLocation()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    return v0
.end method

.method public goBackward()V
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_0

    .line 386
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 388
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 392
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 394
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 398
    instance-of v1, v0, Lcom/android/mms/ui/SlideView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 399
    check-cast v1, Lcom/android/mms/ui/SlideView;

    .line 400
    invoke-virtual {v1}, Lcom/android/mms/ui/SlideView;->resetImage()V

    .line 403
    :cond_0
    instance-of v1, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_2

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 405
    :cond_2
    instance-of v1, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 406
    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/SlideshowPresenter$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowPresenter$6;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 419
    :cond_4
    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_6

    .line 420
    instance-of v1, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v1, :cond_5

    .line 421
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$7;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$7;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    move-object v1, p1

    .line 426
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$8;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$8;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 433
    :cond_6
    instance-of v0, p1, Lcom/android/mms/model/RegionModel;

    goto :goto_0
.end method

.method public present(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 132
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 3

    .prologue
    .line 175
    if-eqz p3, :cond_0

    .line 176
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 181
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 183
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_0

    .line 184
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 185
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_0

    .line 186
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 187
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSeekTo()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_0
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 9

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 270
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v6

    .line 271
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v7

    .line 272
    int-to-float v0, v7

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v5, v0

    .line 273
    int-to-float v0, v6

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v4, v0

    .line 284
    if-eqz p4, :cond_0

    .line 285
    new-instance v8, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v8, p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 295
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;IIIILandroid/os/Handler;)V

    .line 308
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 311
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 312
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 313
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v1

    .line 314
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    .line 312
    invoke-interface {v0, v1, v2, v6, v7}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 318
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 320
    return-void
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 161
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    check-cast p2, Lcom/android/mms/model/TextModel;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    check-cast p2, Lcom/android/mms/model/ImageModel;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    check-cast p2, Lcom/android/mms/model/VideoModel;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVcal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    check-cast p2, Lcom/android/mms/model/VcalModel;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVcal(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcalModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 141
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 142
    instance-of v2, v0, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_1

    .line 143
    check-cast v0, Lcom/android/mms/model/RegionMediaModel;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    check-cast v0, Lcom/android/mms/model/AudioModel;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    check-cast v0, Lcom/android/mms/model/VcardModel;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVcard(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcardModel;Z)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    check-cast v0, Lcom/android/mms/model/VcalModel;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVcal(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcalModel;Z)V

    goto :goto_0

    .line 153
    :cond_4
    return-void
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 242
    if-eqz p4, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 244
    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 247
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 254
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 255
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v1

    .line 256
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    .line 257
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    .line 258
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    .line 254
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIII)V

    .line 260
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setTextVisibility(Z)V

    .line 261
    return-void

    .line 249
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected presentVcal(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcalModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v1

    .line 194
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p2}, Lcom/android/mms/model/VcalModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/mms/model/VcalModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    if-eqz p4, :cond_0

    .line 208
    invoke-virtual {p2}, Lcom/android/mms/model/VcalModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {p2}, Lcom/android/mms/model/VcalModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/mms/model/VcalModel;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 208
    invoke-interface {p1, v3, v4, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V

    .line 212
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 213
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 214
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    .line 213
    invoke-interface {v0, v3, v4, v1, v2}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 217
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Lcom/android/mms/model/VcalModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 219
    return-void
.end method

.method protected presentVcal(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcalModel;Z)V
    .locals 0

    .prologue
    .line 223
    if-eqz p3, :cond_0

    .line 224
    invoke-interface {p1, p2}, Lcom/android/mms/ui/SlideViewInterface;->setVcal(Lcom/android/mms/model/VcalModel;)V

    .line 226
    :cond_0
    return-void
.end method

.method protected presentVcard(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcardModel;Z)V
    .locals 3

    .prologue
    .line 229
    if-eqz p3, :cond_0

    .line 231
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 232
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVcard(Landroid/net/Uri;Ljava/lang/String;)V

    .line 234
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/SlideListItemView;

    if-eqz v0, :cond_1

    .line 235
    check-cast p1, Lcom/android/mms/ui/SlideListItemView;

    .line 236
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideListItemView;->setVcard(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    return-void

    .line 232
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5

    .prologue
    .line 329
    if-eqz p4, :cond_0

    .line 330
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    .line 332
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 333
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 334
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v1

    .line 335
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    .line 336
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    .line 337
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    .line 333
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 341
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setVideoVisibility(Z)V

    .line 343
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 345
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 353
    :cond_2
    :goto_1
    return-void

    .line 338
    :cond_3
    instance-of v0, p1, Lcom/android/mms/ui/SlideListItemView;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mItemLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v0}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    goto :goto_0

    .line 346
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_5

    .line 347
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_1

    .line 348
    :cond_5
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_6

    .line 349
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo()V

    goto :goto_1

    .line 350
    :cond_6
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 351
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSeekTo()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_1
.end method

.method public setLocation(I)V
    .locals 0

    .prologue
    .line 377
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 378
    return-void
.end method
