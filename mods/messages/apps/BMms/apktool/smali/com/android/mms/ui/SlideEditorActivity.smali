.class public Lcom/android/mms/ui/SlideEditorActivity;
.super Landroid/app/Activity;
.source "SlideEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideEditorActivity$1;,
        Lcom/android/mms/ui/SlideEditorActivity$2;,
        Lcom/android/mms/ui/SlideEditorActivity$3;,
        Lcom/android/mms/ui/SlideEditorActivity$4;,
        Lcom/android/mms/ui/SlideEditorActivity$5;,
        Lcom/android/mms/ui/SlideEditorActivity$6;,
        Lcom/android/mms/ui/SlideEditorActivity$7;,
        Lcom/android/mms/ui/SlideEditorActivity$8;,
        Lcom/android/mms/ui/SlideEditorActivity$9;
    }
.end annotation


# instance fields
.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mDirty:Z

.field private mDone:Landroid/widget/Button;

.field private final mDoneClickListener:Landroid/view/View$OnClickListener;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mNextSlide:Landroid/widget/ImageButton;

.field private final mOnNavigateBackward:Landroid/view/View$OnClickListener;

.field private final mOnNavigateForward:Landroid/view/View$OnClickListener;

.field private final mOnPreview:Landroid/view/View$OnClickListener;

.field private final mOnRemoveSlide:Landroid/view/View$OnClickListener;

.field private final mOnReplaceImage:Landroid/view/View$OnClickListener;

.field private final mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mPosition:I

.field private mPreSlide:Landroid/widget/ImageButton;

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mPreview:Landroid/widget/Button;

.field private mRemoveSlide:Landroid/widget/Button;

.field private mReplaceImage:Landroid/widget/Button;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mSubjectSize:I

.field private mTextEditor:Landroid/widget/EditText;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSubjectSize:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/SlideEditorActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/ui/SlideEditorActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateMmsSizeIndicator()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 284
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 283
    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 295
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$2;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    .line 314
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$3;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 363
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$4;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    .line 369
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$5;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    .line 383
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$6;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    .line 392
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$7;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    .line 401
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$8;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 906
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$9;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 80
    return-void
.end method

.method private getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method private getAudioString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    const v0, 0x7f070247

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFromClipboard()Ljava/lang/String;
    .locals 3

    .prologue
    .line 655
    const-string/jumbo v1, ""

    .line 657
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 658
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_0

    .line 660
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_1

    .line 664
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 667
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPictureString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    const v0, 0x7f070248

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 952
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 947
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSizeWithOverHead(I)I
    .locals 1

    .prologue
    .line 986
    add-int/lit16 v0, p1, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getVideoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 964
    const v0, 0x7f070249

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    const-string/jumbo v0, "message_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 236
    const-string/jumbo v0, "slide_index"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 239
    const-string/jumbo v0, "slide_index"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    goto :goto_0
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method private pasteFromClipBoard()V
    .locals 2

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getFromClipboard()Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPaste(I)V

    .line 676
    return-void
.end method

.method private previewSlideshow()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 419
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v2

    .line 418
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    .line 420
    return-void
.end method

.method private setReplaceButtonText(I)V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 680
    return-void
.end method

.method private showCurrentSlide()V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 975
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 976
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateTitle()V

    .line 978
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    const v0, 0x7f07019d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    .line 983
    :goto_0
    return-void

    .line 981
    :cond_0
    const v0, 0x7f070157

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0
.end method

.method private showDurationDialog()V
    .locals 3

    .prologue
    .line 683
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 685
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 689
    new-instance v1, Lcom/android/mms/ui/SlideEditorActivity$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideEditorActivity$10;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 688
    const v2, 0x7f06001d

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 708
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 709
    return-void
.end method

.method private showLayoutSelectorDialog()V
    .locals 3

    .prologue
    .line 712
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 713
    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 715
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 718
    new-instance v1, Lcom/android/mms/ui/LayoutSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 719
    new-instance v2, Lcom/android/mms/ui/SlideEditorActivity$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideEditorActivity$11;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 733
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 734
    return-void
.end method

.method private showPasteMenu()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 646
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getFromClipboard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateMmsSizeIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 990
    const v0, 0x7f0f0013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 992
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->updateTotalMessageSize()V

    .line 993
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v1

    .line 994
    if-nez v1, :cond_0

    .line 995
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1002
    :goto_0
    return-void

    .line 997
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getSubjectSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getSizeWithOverHead(I)I

    move-result v1

    .line 999
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1000
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 999
    const v1, 0x7f070327

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 423
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f070155

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 424
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const v4, 0x7f070176

    const v3, 0x7f070174

    const v6, 0x7f070179

    const/4 v5, 0x0

    .line 738
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 739
    return-void

    .line 742
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 903
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->invalidateOptionsMenu()V

    .line 904
    return-void

    .line 746
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    goto :goto_0

    .line 753
    :pswitch_1
    :try_start_0
    const-string/jumbo v0, ".jpg"

    .line 754
    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-static {v0, v2, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 756
    if-nez v1, :cond_2

    .line 757
    const/4 v0, 0x1

    .line 781
    :goto_1
    if-eqz v0, :cond_1

    .line 782
    const-string/jumbo v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 784
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 760
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 762
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 763
    const v0, 0x7f07019d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v5

    goto :goto_1

    .line 776
    :catch_0
    move-exception v0

    .line 778
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 779
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    .line 777
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    move v0, v5

    goto :goto_1

    .line 772
    :catch_1
    move-exception v0

    .line 774
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 775
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    .line 773
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    move v0, v5

    goto :goto_1

    .line 768
    :catch_2
    move-exception v0

    .line 770
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    goto :goto_1

    .line 765
    :catch_3
    move-exception v0

    .line 766
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "add image failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    const/4 v0, 0x1

    goto :goto_1

    .line 791
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 792
    const v0, 0x7f07019d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 793
    :catch_4
    move-exception v0

    .line 794
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "add image failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    const-string/jumbo v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 797
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 807
    :catch_5
    move-exception v0

    .line 808
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 809
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 810
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    .line 808
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 803
    :catch_6
    move-exception v0

    .line 804
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 805
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 806
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    .line 804
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto/16 :goto_0

    .line 799
    :catch_7
    move-exception v0

    .line 801
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 817
    :pswitch_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 818
    const-string/jumbo v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 819
    if-nez v0, :cond_3

    .line 820
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 822
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 823
    return-void

    .line 826
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 830
    :cond_5
    if-eqz v0, :cond_6

    .line 831
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_a

    goto/16 :goto_0

    .line 835
    :catch_8
    move-exception v0

    .line 836
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "add audio failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    const-string/jumbo v0, "add music failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 833
    :cond_6
    :try_start_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "uri from activity result data is null"

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_a

    .line 841
    :catch_9
    move-exception v0

    .line 843
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :catch_a
    move-exception v0

    .line 847
    const v0, 0x7f070177

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 854
    :pswitch_4
    :try_start_5
    const-string/jumbo v0, ".3gp"

    .line 855
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-static {v0, v1, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_5 .. :try_end_5} :catch_c

    goto/16 :goto_0

    .line 858
    :catch_b
    move-exception v0

    .line 859
    const-string/jumbo v0, "add video failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 861
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 867
    :catch_c
    move-exception v0

    .line 869
    const v0, 0x7f070177

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 868
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 863
    :catch_d
    move-exception v0

    .line 865
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 876
    :pswitch_5
    :try_start_6
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_6
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_6 .. :try_end_6} :catch_f

    goto/16 :goto_0

    .line 877
    :catch_e
    move-exception v0

    .line 878
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "add video failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    const-string/jumbo v0, "add video failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 881
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 891
    :catch_f
    move-exception v0

    .line 893
    const v0, 0x7f07017c

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    :catch_10
    move-exception v0

    .line 889
    const v0, 0x7f070177

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 883
    :catch_11
    move-exception v0

    .line 885
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 899
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 900
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    .line 899
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    goto/16 :goto_0

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0a0002

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setContentView(I)V

    .line 158
    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BasicSlideEditorView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V

    .line 161
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_1
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f0f0090

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 185
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 189
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 191
    :cond_2
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/SlideEditorActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "subject_size"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSubjectSize:I

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 201
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Loaded slideshow is empty; can\'t edit nothingness, exiting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    .line 203
    return-void

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 207
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 209
    const-string/jumbo v0, "SlideshowPresenter"

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 208
    invoke-static {v0, p0, v1, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 212
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 218
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 219
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateMmsSizeIndicator()V

    .line 225
    return-void

    .line 214
    :cond_5
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-gez v0, :cond_4

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Create SlideshowModel failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    .line 223
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 279
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 278
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 527
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 633
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 529
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    .line 636
    :cond_0
    :goto_0
    return v5

    .line 533
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeText()Z

    goto :goto_0

    .line 540
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 541
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0, v0, v5}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 546
    :pswitch_4
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->capturePicture(Landroid/app/Activity;I)V

    goto :goto_0

    .line 550
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeImage(I)Z

    .line 551
    const v0, 0x7f070157

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0

    .line 555
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 556
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 558
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 563
    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 562
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v0

    .line 566
    const/4 v2, 0x4

    invoke-static {p0, v2, v0, v1, v4}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/app/Activity;IJZ)V

    goto :goto_0

    .line 571
    :pswitch_8
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeAudio(I)Z

    goto :goto_0

    .line 575
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string/jumbo v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 578
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 583
    :pswitch_a
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 582
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v0

    .line 584
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 585
    const/4 v2, 0x7

    invoke-static {p0, v2, v0, v1, v5}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/app/Activity;IJZ)V

    goto/16 :goto_0

    .line 589
    :cond_1
    const v0, 0x7f070178

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 595
    :pswitch_b
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeVideo(I)Z

    goto/16 :goto_0

    .line 599
    :pswitch_c
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    goto/16 :goto_0

    .line 605
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 606
    const v0, 0x7f070191

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 612
    :pswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V

    goto/16 :goto_0

    .line 616
    :pswitch_e
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDurationDialog()V

    goto/16 :goto_0

    .line 620
    :pswitch_f
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->pasteFromClipBoard()V

    goto/16 :goto_0

    .line 624
    :pswitch_10
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 625
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v5}, Landroid/widget/EditText;->setStartIndex(IZ)V

    goto/16 :goto_0

    .line 629
    :pswitch_11
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1, v4}, Landroid/widget/EditText;->setPerformActionMode(IIZ)V

    goto/16 :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 260
    :cond_0
    monitor-enter p0

    .line 261
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 264
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 265
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 271
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    :try_start_2
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot update the message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    .prologue
    const v4, 0x7f020077

    const/16 v8, 0xc

    const v7, 0x7f020083

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    return v5

    .line 431
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 435
    if-nez v0, :cond_1

    .line 436
    return v5

    .line 440
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 441
    const/16 v1, 0x10

    const v2, 0x7f07010a

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 442
    const/16 v1, 0x11

    const v2, 0x7f07010b

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 444
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showPasteMenu()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    const/16 v1, 0xf

    const v2, 0x7f070109

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 450
    :cond_3
    const/16 v1, 0xb

    const v2, 0x7f07019c

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 451
    const v2, 0x1080489

    .line 450
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 454
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 456
    const v1, 0x7f070156

    invoke-interface {p1, v5, v5, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 457
    const v2, 0x7f020086

    .line 456
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 461
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 463
    const-string/jumbo v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 465
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 466
    const/4 v2, 0x3

    const v3, 0x7f070158

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 467
    const v3, 0x7f020084

    .line 466
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 476
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 477
    const/4 v2, 0x5

    const v3, 0x7f07015a

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 478
    const v3, 0x7f020085

    .line 477
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 491
    :cond_6
    :goto_1
    const-string/jumbo v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 493
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 494
    const/16 v1, 0x8

    const v2, 0x7f07015c

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 495
    const v2, 0x7f020087

    .line 494
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 504
    :cond_7
    :goto_2
    const/4 v1, 0x7

    const v2, 0x7f070152

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 505
    const v2, 0x7f020076

    .line 504
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 508
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    const-string/jumbo v2, "%s"

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 509
    const/16 v1, 0xa

    invoke-interface {p1, v5, v1, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 511
    const v1, 0x7f02007d

    .line 509
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 516
    const v0, 0x7f0701a1

    .line 521
    :goto_3
    const/16 v1, 0x9

    invoke-interface {p1, v5, v1, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 522
    return v6

    .line 468
    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_5

    .line 469
    const v2, 0x7f070157

    invoke-interface {p1, v5, v6, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 471
    const/4 v2, 0x2

    const v3, 0x7f07022c

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 479
    :cond_9
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_6

    .line 480
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 481
    const/16 v2, 0xd

    const v3, 0x7f070159

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 483
    const/4 v3, 0x4

    const v4, 0x7f07022f

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 484
    const v3, 0x7f070230

    invoke-interface {v2, v5, v8, v5, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 486
    :cond_a
    const v2, 0x7f070230

    invoke-interface {p1, v5, v8, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 496
    :cond_b
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 497
    const/4 v1, 0x6

    const v2, 0x7f07015b

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020081

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 498
    const/16 v1, 0xe

    const v2, 0x7f07022e

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 499
    const v2, 0x7f020081

    .line 498
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 518
    :cond_c
    const v0, 0x7f0701a2

    goto/16 :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    const-string/jumbo v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string/jumbo v0, "message_uri"

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 231
    return-void
.end method
