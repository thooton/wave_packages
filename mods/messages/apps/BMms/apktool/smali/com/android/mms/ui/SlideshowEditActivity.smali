.class public Lcom/android/mms/ui/SlideshowEditActivity;
.super Landroid/app/ListActivity;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowEditActivity$1;,
        Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    }
.end annotation


# instance fields
.field private mAddSlideItem:Landroid/view/View;

.field private mDirty:Z

.field private mList:Landroid/widget/ListView;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mResultIntent:Landroid/content/Intent;

.field private mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mState:Landroid/os/Bundle;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 80
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 434
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowEditActivity$1;-><init>(Lcom/android/mms/ui/SlideshowEditActivity;)V

    .line 433
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 56
    return-void
.end method

.method private addNewSlide()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    const v0, 0x7f070191

    .line 330
    const/4 v1, 0x0

    .line 329
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private adjustAddSlideVisibility()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private cleanupSlideshowModel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 218
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 220
    :cond_0
    return-void
.end method

.method private createAddSlideItem()Landroid/view/View;
    .locals 3

    .prologue
    .line 133
    const-string/jumbo v0, "layout_inflater"

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    const v1, 0x7f04005d

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    const v0, 0x7f0f0105

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    const v2, 0x7f070152

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    const v0, 0x7f0f0104

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    const v2, 0x7f070153

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    const v0, 0x7f0f0101

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 144
    const v2, 0x7f020056

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    return-object v1
.end method

.method private initSlideList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 226
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 227
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    .line 228
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    const v2, 0x7f04005d

    .line 227
    invoke-direct {v0, p0, v2, v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    return-void
.end method

.method private openSlide(I)V
    .locals 5

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v1, "slide_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string/jumbo v1, "subject_size"

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "subject_size"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 337
    if-eq p2, v1, :cond_0

    .line 338
    return-void

    .line 341
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 343
    :pswitch_0
    monitor-enter p0

    .line 344
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 348
    if-eqz p3, :cond_1

    const-string/jumbo v0, "done"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    .line 350
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 354
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V

    .line 355
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Failed to initialize the slide-list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    .line 359
    return-void

    .line 341
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 472
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 473
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 475
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 503
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 477
    :pswitch_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideUp(I)V

    .line 479
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 480
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 484
    :pswitch_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideDown(I)V

    .line 486
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 487
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 491
    :pswitch_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 497
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->createAddSlideItem()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    if-eqz p1, :cond_1

    .line 101
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v1, "message_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 111
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Cannot startup activity, null Uri."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    .line 113
    return-void

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 117
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V

    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Failed to initialize the slide-list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    const v0, 0x7f07014d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 449
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 450
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 452
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 454
    if-lez v0, :cond_0

    .line 455
    const v1, 0x7f07014f

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020080

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 458
    const/4 v0, 0x1

    const v1, 0x7f070150

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 459
    const v1, 0x7f02007f

    .line 458
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 462
    :cond_1
    const/4 v0, 0x3

    const v1, 0x7f070152

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 463
    const v1, 0x7f020076

    .line 462
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 465
    const/4 v0, 0x2

    const v1, 0x7f070151

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 466
    const v1, 0x108003c

    .line 465
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 468
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->cancelBackgroundLoading()V

    .line 211
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 212
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/mms/ui/SlideshowEditActivity;->openSlide(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 271
    :pswitch_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideUp(I)V

    .line 273
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 274
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 278
    :pswitch_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideDown(I)V

    .line 280
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 281
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 285
    :pswitch_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 291
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    goto :goto_0

    .line 295
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 297
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 198
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 199
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    :try_start_2
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot update the message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 237
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 239
    if-lez v0, :cond_0

    .line 240
    const v1, 0x7f07014f

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020080

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 244
    const v0, 0x7f070150

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 245
    const v1, 0x7f02007f

    .line 244
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 248
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f070151

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 249
    const v1, 0x108003c

    .line 248
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 254
    const/4 v0, 0x3

    const v1, 0x7f070152

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 255
    const v1, 0x7f020076

    .line 254
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 259
    :cond_3
    const/4 v0, 0x4

    .line 260
    const v1, 0x7f070154

    .line 259
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 260
    const v1, 0x7f02007c

    .line 259
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 262
    return v4
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v2, "slide_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 165
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v1, "slide_index"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v1, "message_uri"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    const-string/jumbo v0, "state"

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 188
    return-void
.end method
