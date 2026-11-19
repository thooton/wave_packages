.class Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private final mResource:I

.field private final mSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;)V
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 376
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    .line 377
    iput p2, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mResource:I

    .line 378
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 379
    iput-object p3, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 380
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideListItemView;

    .line 394
    const v1, 0x7f0f0105

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 395
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f070267

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 398
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v1

    div-int/lit16 v2, v1, 0x3e8

    .line 399
    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 400
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0d0001

    .line 400
    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-nez v1, :cond_0

    .line 407
    const-string/jumbo v1, "MmsThumbnailPresenter"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 406
    invoke-static {v1, v2, v0, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 410
    :cond_0
    iput p1, v0, Lcom/android/mms/ui/SlideListItemView;->mPosition:I

    .line 412
    iget-object v1, v0, Lcom/android/mms/ui/SlideListItemView;->mImageLoadedCallback:Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;

    if-nez v1, :cond_1

    .line 413
    new-instance v1, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;

    invoke-direct {v1, v0}, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;-><init>(Lcom/android/mms/ui/SlideListItemView;)V

    iput-object v1, v0, Lcom/android/mms/ui/SlideListItemView;->mImageLoadedCallback:Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mPresenter:Lcom/android/mms/ui/Presenter;

    check-cast v1, Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v2, v0, Lcom/android/mms/ui/SlideListItemView;->mImageLoadedCallback:Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;

    invoke-virtual {v1, v2, p1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->present(Lcom/android/mms/util/ItemLoadedCallback;I)V

    .line 419
    iput-object v6, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 421
    return-object v0

    .line 416
    :cond_1
    iget-object v1, v0, Lcom/android/mms/ui/SlideListItemView;->mImageLoadedCallback:Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->reset(Lcom/android/mms/ui/SlideListItemView;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelBackgroundLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/Presenter;->cancelBackgroundLoading()V

    .line 427
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 429
    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mResource:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->createViewFromResource(ILandroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
