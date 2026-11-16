.class public Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;
.super Landroid/widget/LinearLayout;
.source "MultiAttachmentViewOverlay.java"


# instance fields
.field private mAttachmentCount:Landroid/widget/TextView;

.field private mVideoPlayImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public hideVideoPlayImg()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->mVideoPlayImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    const v0, 0x7f0f010b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->mAttachmentCount:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0f010a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->mVideoPlayImg:Landroid/widget/ImageView;

    .line 45
    return-void
.end method

.method public showAttachmentCount(I)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->mAttachmentCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->mAttachmentCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public showVideoPlayImg()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->mVideoPlayImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    return-void
.end method
