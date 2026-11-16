.class public Lcom/android/mms/ui/SlidesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SlidesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

.field private mMediaWithTextModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaWithTextModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SlidesAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/SlidesAdapter;)Lcom/android/mms/ui/multipleviews/IAttachmentSelection;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter;->mIAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/SlidesAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter;->mMediaWithTextModelList:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/mms/ui/SlidesAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SlidesAdapter;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/mms/ui/multipleviews/IAttachmentSelection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaWithTextModel;",
            ">;",
            "Lcom/android/mms/ui/multipleviews/IAttachmentSelection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/mms/ui/SlidesAdapter;->mMediaWithTextModelList:Ljava/util/List;

    .line 72
    iput-object p2, p0, Lcom/android/mms/ui/SlidesAdapter;->mIAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    .line 73
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/SlidesAdapter;->onBindViewHolder(Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;I)V
    .locals 6

    .prologue
    const/high16 v5, 0x100000

    const/4 v4, 0x0

    .line 105
    sget-object v0, Lcom/android/mms/ui/SlidesAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 108
    if-nez v1, :cond_0

    .line 109
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    const v2, 0x7f02008e

    .line 109
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void

    .line 114
    :cond_0
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 117
    const v3, 0x7f02009d

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    if-le v0, v5, :cond_7

    .line 165
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->mediaSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    div-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    iget-object v2, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->mediaSize:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070387

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_1
    return-void

    .line 114
    :cond_2
    const-string/jumbo v2, "img"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 121
    check-cast v0, Lcom/android/mms/model/ImageModel;

    .line 122
    new-instance v2, Lcom/android/mms/ui/SlidesAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/SlidesAdapter$3;-><init>(Lcom/android/mms/ui/SlidesAdapter;Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;)V

    invoke-virtual {v0, v2}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 129
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->overlayVideoIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_3
    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f02009a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 114
    :cond_4
    const-string/jumbo v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 138
    check-cast v0, Lcom/android/mms/model/VideoModel;

    .line 139
    new-instance v2, Lcom/android/mms/ui/SlidesAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/SlidesAdapter$4;-><init>(Lcom/android/mms/ui/SlidesAdapter;Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;)V

    invoke-virtual {v0, v2}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 146
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->overlayVideoIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_5
    const-string/jumbo v2, "ref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 152
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f0200b1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string/jumbo v2, "text/x-vCalendar"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f0200ae

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 167
    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_8

    .line 168
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->mediaSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    iget-object v2, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->mediaSize:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 171
    :cond_8
    iget-object v0, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->mediaSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    iget-object v2, p1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->mediaSize:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/SlidesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    const v1, 0x7f04005a

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    invoke-direct {v1, v0}, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    new-instance v2, Lcom/android/mms/ui/SlidesAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/SlidesAdapter$1;-><init>(Lcom/android/mms/ui/SlidesAdapter;Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v2, Lcom/android/mms/ui/SlidesAdapter$2;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/SlidesAdapter$2;-><init>(Lcom/android/mms/ui/SlidesAdapter;Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    return-object v1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlidesAdapter;->mIAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    .line 185
    return-void
.end method
