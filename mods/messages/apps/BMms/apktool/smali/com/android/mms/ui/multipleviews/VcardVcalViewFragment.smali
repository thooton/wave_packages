.class public Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;
.super Lcom/android/mms/ui/multipleviews/BaseViewFragment;
.source "VcardVcalViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;,
        Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;
    }
.end annotation


# instance fields
.field private mVcardVcalHandler:Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;

.field private mVcardVcalTimeoutRunnable:Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;-><init>()V

    .line 49
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
    const v1, 0x7f0f00a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    const v2, 0x7f0f00a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    iget-object v3, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    if-eqz v3, :cond_5

    .line 85
    iget-object v3, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v3

    .line 88
    :goto_0
    if-nez v3, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isEditSlideShowMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaWithTextModel;->getMessageText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    const v0, 0x7f0200b1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isPlayAllMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;

    invoke-direct {v0, v4}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;-><init>(Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mVcardVcalHandler:Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;

    .line 109
    new-instance v0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;-><init>(Lcom/android/mms/ui/multipleviews/IAttachmentSelection;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mVcardVcalTimeoutRunnable:Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mVcardVcalHandler:Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mVcardVcalTimeoutRunnable:Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_3
    return-void

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const v0, 0x7f0200ae

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    move-object v3, v4

    goto/16 :goto_0
.end method

.method public static newInstance(Lcom/android/mms/model/MediaWithTextModel;)Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;

    invoke-direct {v0}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;-><init>()V

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iput-object p0, v0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;

    .line 56
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    check-cast p1, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->setRetainInstance(Z)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f04001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;->initView(Landroid/view/View;)V

    .line 75
    return-object v0
.end method

.method public onMenuUpdate(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onPauseMedia()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onPlayMedia()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onResumeMedia()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onStopMedia()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
