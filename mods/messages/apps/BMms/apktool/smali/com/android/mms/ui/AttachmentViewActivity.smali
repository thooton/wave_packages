.class public Lcom/android/mms/ui/AttachmentViewActivity;
.super Lcom/android/mms/ui/BaseAttachmentViewActivity;
.source "AttachmentViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentViewActivity$LinearLayoutManagerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDotsLayout:Landroid/widget/LinearLayout;

.field private mDotsTextview:[Landroid/widget/TextView;

.field private mRecyclerViewHeight:I

.field private mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

.field private mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/AttachmentViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/AttachmentViewActivity;)Lcom/android/mms/ui/SlidesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/AttachmentViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->initView()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/AttachmentViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->removeEmptySlideObjects()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/mms/ui/AttachmentViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/AttachmentViewActivity;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mRecyclerViewHeight:I

    .line 47
    return-void
.end method

.method private calculateRecyclerViewHeight()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 334
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 335
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mRecyclerViewHeight:I

    .line 336
    return-void
.end method

.method private changeDotsColor(I)V
    .locals 4

    .prologue
    const v3, 0x7f08004b

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    div-int/lit8 v0, p1, 0x3

    .line 153
    if-lez v0, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    return-void
.end method

.method private displayDotsLayout()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    :goto_0
    move v0, v1

    .line 116
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 117
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    aput-object v2, v3, v0

    .line 119
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 120
    const v4, 0x7f070389

    .line 119
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsTextview:[Landroid/widget/TextView;

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/mms/ui/AttachmentViewActivity;->changeDotsColor(I)V

    .line 127
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const v0, 0x7f0f000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSelectedAttachmentContainer:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f0f000b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsLayout:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f0f000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->calculateRecyclerViewHeight()V

    .line 91
    iget v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mRecyclerViewHeight:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->resetRecyclerViewHeight(I)V

    .line 94
    new-instance v0, Lcom/android/mms/ui/AttachmentViewActivity$LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/mms/ui/AttachmentViewActivity$LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;IZ)V

    .line 95
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 97
    new-instance v0, Lcom/android/mms/ui/SlidesAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SlidesAdapter;-><init>(Ljava/util/List;Lcom/android/mms/ui/multipleviews/IAttachmentSelection;)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 99
    return-void
.end method

.method private removeEmptySlideObjects()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/android/mms/ui/AttachmentViewActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentViewActivity$4;-><init>(Lcom/android/mms/ui/AttachmentViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method private resetRecyclerViewHeight(I)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 362
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    # FEAT(imessage): D-pad zoom/pan, play/pause, seek & slide switching in WaveAttachmentViewer.
    invoke-static {p0, p1}, Lcom/android/mms/ui/WaveAttachmentViewer;->dispatchKeyEvent(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :wave_attach_stock_key

    const/4 v0, 0x1

    return v0

    :wave_attach_stock_key
    .line 381
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 382
    const v1, 0x7f0f0157

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/BaseViewFragment;

    .line 383
    instance-of v1, v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    if-eqz v1, :cond_0

    .line 384
    check-cast v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    .line 385
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->onKeyEvent()V

    .line 387
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    # FEAT(imessage): exit photo zoom before closing WaveAttachmentViewer.
    invoke-static {p0}, Lcom/android/mms/ui/WaveAttachmentViewer;->onBackPressed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :wave_attach_stock_back

    return-void

    :wave_attach_stock_back
    invoke-static {p0}, Lcom/android/mms/ui/WaveAttachmentViewer;->isActive(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :wave_attach_stock_back2

    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onBackPressed()V

    return-void

    :wave_attach_stock_back2
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->isSingleSlideMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->finish()V

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/AttachmentViewActivity;->resetRecyclerViewHeight(Z)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onCreate(Landroid/os/Bundle;)V

    # FEAT(imessage): modern full-screen attachment viewer (photos/zoom, video, voice waveform, vCard).
    invoke-static {p0}, Lcom/android/mms/ui/WaveAttachmentViewer;->onCreate(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :wave_attach_stock_oncreate

    return-void

    :wave_attach_stock_oncreate
    .line 75
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->setContentView(I)V

    .line 80
    new-instance v0, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;-><init>(Lcom/android/mms/ui/BaseAttachmentViewActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method public onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/android/mms/ui/AttachmentViewActivity$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/ui/AttachmentViewActivity$3;-><init>(Lcom/android/mms/ui/AttachmentViewActivity;Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public onDataLoadFinished()V
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/android/mms/ui/AttachmentViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attachment onDataLoadFinished media list size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->removeEmptySlideObjects()V

    .line 258
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->displayDotsLayout()V

    .line 259
    return-void
.end method

.method public onDataRemove(I)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesAdapter:Lcom/android/mms/ui/SlidesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemRemoved(I)V

    .line 295
    return-void
.end method

.method public onDataUpdate(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/android/mms/ui/AttachmentViewActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/AttachmentViewActivity$1;-><init>(Lcom/android/mms/ui/AttachmentViewActivity;Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public onItemClick(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    const-string/jumbo v0, "VIEW_VCARD_FROM_MMS"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const v0, 0x7f07037e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v2, "SingleItemOnly"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string/jumbo v2, "calling_package_name"

    const-string/jumbo v3, "com.android.mms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/AttachmentViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/AttachmentViewActivity;->resetRecyclerViewHeight(Z)V

    goto :goto_0
.end method

.method public onLoadContainerView(I)V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onLoadContainerView(I)V

    .line 222
    sget-object v0, Lcom/android/mms/ui/AttachmentViewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Attachment no fragment loaded till now onLoadContainerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentViewActivity;->changeDotsColor(I)V

    .line 224
    return-void
.end method

.method public onPlayAllMenuItemSelect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/AttachmentViewActivity;->resetRecyclerViewHeight(Z)V

    .line 372
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 132
    const/16 v0, 0x7e1

    if-ne p1, v0, :cond_0

    .line 133
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const v0, 0x7f07036b

    .line 137
    const/4 v1, 0x0

    .line 136
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playMediaInFullView()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->resetRecyclerViewHeight(Z)V

    .line 377
    return-void
.end method

.method public resetRecyclerViewHeight(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 339
    sget-object v0, Lcom/android/mms/ui/AttachmentViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "base resetRecyclerViewHeight isEnter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 341
    const v1, 0x7f0f0157

    .line 340
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/BaseViewFragment;

    .line 343
    if-eqz p1, :cond_1

    .line 344
    invoke-direct {p0, v3}, Lcom/android/mms/ui/AttachmentViewActivity;->resetRecyclerViewHeight(I)V

    .line 345
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onPlayMedia()V

    .line 356
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mSlidesRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 357
    return-void

    .line 350
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mRecyclerViewHeight:I

    invoke-direct {p0, v1}, Lcom/android/mms/ui/AttachmentViewActivity;->resetRecyclerViewHeight(I)V

    .line 351
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mDotsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/BaseViewFragment;->onStopMedia()V

    goto :goto_0
.end method

.method public setInitialSlideSize(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->setInitialSlideSize(I)V

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    .line 266
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    new-instance v2, Lcom/android/mms/model/MediaWithTextModel;

    invoke-direct {v2, v3, v3}, Lcom/android/mms/model/MediaWithTextModel;-><init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Lcom/android/mms/ui/AttachmentViewActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentViewActivity$2;-><init>(Lcom/android/mms/ui/AttachmentViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

# FEAT(imessage): lifecycle & menu hooks for WaveAttachmentViewer.
.method protected onPause()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/ui/WaveAttachmentViewer;->onPause(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onPause()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/ui/WaveAttachmentViewer;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onDestroy()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/mms/ui/WaveAttachmentViewer;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :wave_attach_stock_menu

    const/4 v0, 0x1

    return v0

    :wave_attach_stock_menu
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/mms/ui/WaveAttachmentViewer;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :wave_attach_stock_item

    const/4 v0, 0x1

    return v0

    :wave_attach_stock_item
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
