.class public Lcom/android/mms/ui/multipleviews/MessageAttachmentView;
.super Landroid/widget/LinearLayout;
.source "MessageAttachmentView.java"


# instance fields
.field private mAttachmentMemorySize:Landroid/widget/TextView;

.field private mAttachmentView:Landroid/widget/ImageView;

.field private mAttachmentViewOverlay:Landroid/widget/ImageView;

.field private mMessageAttachmentFL:Landroid/widget/FrameLayout;

.field private mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

.field private mMultipleAttachmentViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private setAttachmentViewBg(Z)V
    .locals 3

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMessageAttachmentFL:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 185
    const v2, 0x7f020006

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMessageAttachmentFL:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    const v2, 0x7f020005

    .line 187
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setWidthAndHeight()V
    .locals 3

    .prologue
    const/16 v2, 0x4b

    const/16 v1, 0x36

    .line 172
    sget-boolean v0, Landroid/os/Build;->IS_XP3:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 180
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public hideMemorySizeView()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentMemorySize:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    return-void
.end method

.method public hideVideoPlayImg()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->hideVideoPlayImg()V

    .line 123
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0f00c5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentMemorySize:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0f00c1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMessageAttachmentFL:Landroid/widget/FrameLayout;

    .line 57
    const v0, 0x7f0f00c3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentViewOverlay:Landroid/widget/ImageView;

    .line 58
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setWidthAndHeight()V

    .line 59
    return-void
.end method

.method public setAudioView(Z)V
    .locals 3

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    const v2, 0x7f02009a

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setAttachmentViewBg(Z)V

    .line 135
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    const v2, 0x7f02009b

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 4

    .prologue
    const/16 v3, 0x4b

    const/16 v2, 0x36

    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_0

    .line 84
    sget-boolean v0, Landroid/os/Build;->IS_XP3:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-static {p1, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setAttachmentViewBg(Z)V

    .line 96
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-static {p1, v3, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setMemorySize(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentMemorySize:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentMemorySize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentMemorySize:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 164
    if-eqz p2, :cond_0

    const v0, 0x7f080047

    .line 163
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    return-void

    .line 164
    :cond_0
    const v0, 0x7f080048

    goto :goto_0
.end method

.method public setVcalView(Z)V
    .locals 3

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    const v2, 0x7f0200ae

    .line 139
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setAttachmentViewBg(Z)V

    .line 146
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    const v2, 0x7f0200af

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVcardView(Z)V
    .locals 3

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    const v2, 0x7f0200b1

    .line 150
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setAttachmentViewBg(Z)V

    .line 158
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    const v2, 0x7f0200b2

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVideoView(Z)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultipleAttachmentViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 100
    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultipleAttachmentViewStub:Landroid/view/ViewStub;

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultipleAttachmentViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultipleAttachmentViewStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 103
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    if-nez v1, :cond_0

    .line 106
    const v1, 0x7f0f0109

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    .line 104
    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->showVideoPlayImg()V

    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    const v2, 0x7f02008f

    .line 112
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setAttachmentViewBg(Z)V

    .line 117
    return-void
.end method

.method public showMultipleAttachmentViewCount(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    if-nez v0, :cond_0

    .line 63
    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultipleAttachmentViewStub:Landroid/view/ViewStub;

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultipleAttachmentViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultipleAttachmentViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 66
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    if-nez v1, :cond_0

    .line 70
    const v1, 0x7f0f0109

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    .line 68
    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mMultiAttachmentViewOverlay:Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/multipleviews/MultiAttachmentViewOverlay;->showAttachmentCount(I)V

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->mAttachmentViewOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :cond_1
    return-void
.end method
