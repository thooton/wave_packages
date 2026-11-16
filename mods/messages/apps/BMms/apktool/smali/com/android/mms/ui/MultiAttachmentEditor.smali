.class public Lcom/android/mms/ui/MultiAttachmentEditor;
.super Landroid/widget/LinearLayout;
.source "MultiAttachmentEditor.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMediaSize:I

.field mMmsMultiView:Landroid/view/View;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mmsMultiLayoutContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMediaSize:I

    .line 83
    iput-object p1, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private createMultiAttachmentView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMediaSize:I

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMmsMultiView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 148
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiAttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    const v0, 0x7f0f00eb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiAttachmentEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMmsMultiView:Landroid/view/View;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMmsMultiView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMmsMultiView:Landroid/view/View;

    const v1, 0x7f0f00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mmsMultiLayoutContainer:Landroid/widget/LinearLayout;

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mmsMultiLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMmsMultiView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_2

    .line 160
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Attachment type initSlideShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mmsMultiLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mmsMultiLayoutContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiAttachmentEditor;->displayMultiAttachments(Landroid/widget/LinearLayout;)V

    .line 164
    :cond_2
    return-void
.end method

.method private displayMultiAttachments(Landroid/widget/LinearLayout;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    move v3, v4

    move v0, v4

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    move v5, v4

    move v6, v0

    .line 183
    :goto_1
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 187
    const v1, 0x7f040029

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    check-cast v0, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;

    .line 188
    invoke-virtual {v8, v5}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 195
    check-cast v1, Lcom/android/mms/model/ImageModel;

    .line 196
    invoke-virtual {v0, v12, v10}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 197
    new-instance v9, Lcom/android/mms/ui/MultiAttachmentEditor$1;

    invoke-direct {v9, p0, v0}, Lcom/android/mms/ui/MultiAttachmentEditor$1;-><init>(Lcom/android/mms/ui/MultiAttachmentEditor;Lcom/android/mms/ui/multipleviews/MessageAttachmentView;)V

    invoke-virtual {v1, v9}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 226
    :goto_2
    if-gt v7, v11, :cond_7

    .line 227
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    const/16 v9, 0x400

    if-le v1, v9, :cond_6

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiAttachmentEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f070135

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setMemorySize(Ljava/lang/String;Z)V

    .line 239
    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiAttachmentEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 240
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setPadding(IIII)V

    .line 242
    if-le v7, v11, :cond_8

    .line 243
    const/4 v1, 0x2

    if-ne v6, v1, :cond_8

    .line 244
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->hideVideoPlayImg()V

    .line 246
    add-int/lit8 v1, v7, -0x3

    add-int/lit8 v1, v1, 0x1

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->showMultipleAttachmentViewCount(I)V

    .line 247
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    add-int/lit8 v1, v6, 0x1

    .line 257
    :goto_4
    if-ne v1, v11, :cond_9

    .line 261
    :cond_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v0, v10}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setVideoView(Z)V

    move-object v1, v2

    .line 207
    check-cast v1, Lcom/android/mms/model/VideoModel;

    .line 208
    new-instance v9, Lcom/android/mms/ui/MultiAttachmentEditor$2;

    invoke-direct {v9, p0, v0}, Lcom/android/mms/ui/MultiAttachmentEditor$2;-><init>(Lcom/android/mms/ui/MultiAttachmentEditor;Lcom/android/mms/ui/multipleviews/MessageAttachmentView;)V

    invoke-virtual {v1, v9}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    goto :goto_2

    .line 216
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {v0, v10}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setAudioView(Z)V

    goto :goto_2

    .line 218
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVcal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    invoke-virtual {v0, v10}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setVcalView(Z)V

    goto :goto_2

    .line 220
    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    invoke-virtual {v0, v10}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setVcardView(Z)V

    goto/16 :goto_2

    :cond_5
    move v1, v6

    .line 183
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto/16 :goto_1

    .line 232
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiAttachmentEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f070386

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setMemorySize(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 236
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->hideMemorySizeView()V

    goto/16 :goto_3

    .line 251
    :cond_8
    add-int/lit8 v1, v6, 0x1

    .line 252
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 176
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v1, v6

    goto :goto_4
.end method


# virtual methods
.method public canAddTextForMms(Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    .line 109
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    .line 111
    iget v4, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMediaSize:I

    if-eqz v4, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTotalTextMessageSize()I

    move-result v0

    .line 115
    iget-object v4, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getRemainMessageSize()I

    move-result v4

    .line 121
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 122
    iget v5, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMediaSize:I

    .line 123
    add-int/2addr v0, v4

    sub-int/2addr v0, v3

    .line 128
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getSubjectSize()I

    move-result v3

    sub-int/2addr v0, v3

    .line 139
    :cond_0
    if-ltz v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    .line 125
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mMediaSize:I

    .line 126
    sub-int v0, v4, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 139
    goto :goto_1
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;)Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mmsMultiLayoutContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mmsMultiLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/MultiAttachmentEditor;->createMultiAttachmentView()V

    .line 102
    const/4 v0, 0x1

    return v0
.end method
