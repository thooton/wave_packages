.class public Lcom/android/mms/ui/multipleviews/ImageViewFragment;
.super Lcom/android/mms/ui/multipleviews/BaseViewFragment;
.source "ImageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;,
        Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageRunnable;
    }
.end annotation


# instance fields
.field private mImageHandler:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;

.field private mImageTimeoutRunnable:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageRunnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;-><init>()V

    .line 53
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    const v0, 0x7f0f0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0f009f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    if-eqz v2, :cond_6

    .line 85
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v2}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v3

    .line 88
    :goto_0
    if-nez v3, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isEditSlideShowMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v2}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v2}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_1
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    const v0, 0x7f02009c

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isPlayAllMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    new-instance v0, Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;

    invoke-direct {v0, v4}, Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;-><init>(Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mImageHandler:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;

    .line 124
    new-instance v0, Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageRunnable;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageRunnable;-><init>(Lcom/android/mms/ui/multipleviews/IAttachmentSelection;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mImageTimeoutRunnable:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageRunnable;

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mImageHandler:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mImageTimeoutRunnable:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageRunnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_3
    return-void

    .line 100
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 106
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->newInstance(Landroid/net/Uri;)Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    move-result-object v1

    .line 105
    const v2, 0x7f0f00a0

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 107
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1

    :cond_5
    move-object v0, v3

    .line 110
    check-cast v0, Lcom/android/mms/model/ImageModel;

    .line 111
    new-instance v2, Lcom/android/mms/ui/multipleviews/ImageViewFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/multipleviews/ImageViewFragment$1;-><init>(Lcom/android/mms/ui/multipleviews/ImageViewFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    goto :goto_1

    :cond_6
    move-object v3, v4

    goto/16 :goto_0
.end method

.method public static newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/ImageViewFragment;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;

    invoke-direct {v0}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;-><init>()V

    .line 57
    if-eqz v0, :cond_0

    .line 58
    iput-object p0, v0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    .line 60
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->setRetainInstance(Z)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    .line 73
    const v0, 0x7f04001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->initView(Landroid/view/View;)V

    .line 75
    return-object v0
.end method

.method public onMenuUpdate(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onPauseMedia()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onPlayMedia()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onResumeMedia()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onStop()V

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mImageHandler:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mImageHandler:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment;->mImageTimeoutRunnable:Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageRunnable;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/ImageViewFragment$ImageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onStopMedia()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
